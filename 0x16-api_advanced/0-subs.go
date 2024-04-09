package main

import (
	"encoding/json"
	"fmt"
	"net/http"
	"os"
)

type SubredditData struct {
	SubscriberCount int `json:"subscribers"`
}

type SubredditAbout struct {
	Data SubredditData `json:"data"`
}

func numberOfSubscribers(subreddit string) (int, error) {
	url := fmt.Sprintf("https://www.reddit.com/r/%s/about.json", subreddit)

	client := &http.Client{}
	req, err := http.NewRequest("GET", url, nil)
	if err != nil {
		return 0, err
	}
	req.Header.Set("User-Agent", "Mozilla/5.0")

	resp, err := client.Do(req)
	if err != nil {
		return 0, err
	}
	defer resp.Body.Close()

	if resp.StatusCode != http.StatusOK {
		return 0, fmt.Errorf("Request failed with status code %d", resp.StatusCode)
	}

	var about SubredditAbout
	if err := json.NewDecoder(resp.Body).Decode(&about); err != nil {
		return 0, err
	}

	return about.Data.SubscriberCount, nil
}

func main() {
	if len(os.Args) < 2 {
		fmt.Println("Please provide the name of the subreddit as an argument.")
		return
	}

	subreddit := os.Args[1]
	subscriberCount, err := numberOfSubscribers(subreddit)
	if err != nil {
		fmt.Printf("Error: %v\n", err)
		return
	}

	fmt.Printf("Subscriber count for r/%s: %d\n", subreddit, subscriberCount)
}
