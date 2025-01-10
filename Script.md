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




