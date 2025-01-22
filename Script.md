# isro



```
https://isrolms.iirs.gov.in/course/index.php?categoryid=326&browse=courses&page=1
```


(() => {
    const options = document.querySelectorAll('#url_select6780aee036b762 option');
    const result = Array.from(options).map(option => {
        const categoryId = new URLSearchParams(option.value).get('categoryid');
        return `${categoryId}: ${option.textContent.trim()}`;
    }).join('\n');

    // Download as a text file
    const blob = new Blob([result], { type: 'text/plain' });
    const a = document.createElement('a');
    a.href = URL.createObjectURL(blob);
    a.download = 'categories_list.txt';
    a.click();
})();




# y_link into transcript

```
(() => {
    const segments = document.querySelectorAll('ytd-transcript-segment-renderer');
    const transcript = Array.from(segments).map(segment => {
        const timestamp = segment.querySelector('.segment-timestamp').innerText.trim();
        const text = segment.querySelector('.segment-text').innerText.trim();
        return `${timestamp} -- ${text}`;
    }).join('\n');
    
    // Create a Blob and a download link
    const blob = new Blob([transcript], { type: 'text/plain' });
    const url = URL.createObjectURL(blob);
    const link = document.createElement('a');
    link.href = url;
    link.download = 'transcript.txt';
    document.body.appendChild(link);
    link.click();
    document.body.removeChild(link);
    URL.revokeObjectURL(url);
})();
```




# get the user id
```
(async function fetchLiveChatMessages() {
    const apiKey = "YOUR_API_KEY"; // Replace with your API key
    const videoId = "YOUR_VIDEO_ID"; // Replace with your video ID

    // Step 1: Get liveChatId
    const videoDetailsUrl = `https://www.googleapis.com/youtube/v3/videos?part=liveStreamingDetails&id=${videoId}&key=${apiKey}`;
    const videoResponse = await fetch(videoDetailsUrl);
    const videoData = await videoResponse.json();
    
    if (!videoData.items || !videoData.items[0]?.liveStreamingDetails?.activeLiveChatId) {
        console.error("Could not retrieve liveChatId. Is the video live?");
        return;
    }
    const liveChatId = videoData.items[0].liveStreamingDetails.activeLiveChatId;

    // Step 2: Fetch live chat messages
    const chatUrl = `https://www.googleapis.com/youtube/v3/liveChat/messages?liveChatId=${liveChatId}&part=snippet,authorDetails&key=${apiKey}`;
    const chatResponse = await fetch(chatUrl);
    const chatData = await chatResponse.json();

    // Step 3: Prepare the text content for download
    let chatText = "";
    chatData.items.forEach(item => {
        const userName = item.authorDetails.displayName || "Unknown";
        const userId = item.authorDetails.channelId || "User ID not found";
        const message = item.snippet.displayMessage || "No message";

        chatText += `User Name: ${userName}, User ID: ${userId}, Message: ${message}\n`;
    });

    // Step 4: Download the text content as a .txt file
    const blob = new Blob([chatText], { type: 'text/plain' });
    const link = document.createElement('a');
    link.href = URL.createObjectURL(blob);
    link.download = 'live_chat_messages.txt'; // File name
    link.click();
})();
```

https://www.youtube.com/channel/<ID>









