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


