![efs](https://igeek.io/images/logup.png)
# 📤 Easy file sharing from the command line 📤

## What is [EFS](https://igeek.io/f) ?
Easy File Sharing (efs) from the command line , free and open-source service to exchange small files.

## Usage :

#### How to upload
```bash
curl -T myfile igeek.io
# Or
curl --upload-file myfile igeek.io
```

#### Upload multiple files at once
```bash
curl -File=@/home/myfile -File1=@myfile igeek.io
# Or
curl -T {/home/file1, file2, /opt/file3} igeek.io
```
#### Upload a stream
```bash
curl http://igeek.io | curl -T - igeek.io
```
#### Upload and Scan for malware (VirusTotal)
```bash
curl -H "vt: yes" -T /home/myfile igeek.io
```
#### Upload with HTTP basic authentication
```bash
curl -u user:password -T /home/myfile igeek.io
```
#### Encrypt your files
```bash
# Encrypt files with password using gpg
cat /home/myfile|gpg -ac -o-|curl -X PUT --upload-file "-" https://igeek.io
# Download and decrypt
curl https://igeek.io/f/6c0XRBqJ6p|gpg -o- > myfile.?
```
