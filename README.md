# UDS : Unlimited Drive Storage - GUI

### A GUI Port of UDS for Windows
Store files in Google Docs without counting against your quota.

### Features

- Upload files to Google Drive without using storage space
- Download any stored files to your computer

### Logic

- Size of the encoded file is always larger than the original. Base64 encodes binary data to a ratio of about 4:3.
- A single google doc can store about a million characters. This is around 710KB of base64 encoded data.
- Some experiments with multithreading the uploads, but there was no significant performance increase.


## Gui Way

### Authentication

1. Click Push
2. Authorize Access
3. This will open a new tab in your browser for you to sign in with
4. You may have to restart the program before uploading

### Upload

1. Click Push then enter your filename
- currently only supports current directory (issue with the gui not the underlying python if someone wants to fix this please do)
2. Click GO :smile:

### List

1. Click Pull
2. Click Get List

### Download

1. Click Pull
2. Enter Id found in previous step
3. Click Go
4. File will be in the download dir


## Manual Way

### Authentication

1. Head to [Google's API page](https://developers.google.com/drive/api/v3/quickstart/python) and enable the Drive API
2. Download the configuration file as 'client_secret.json' to the UDS directory
3. run `python uds.py` for initial set up

### Upload

```sh
> python uds.py push Ubuntu.Desktop.16.04.iso
Ubuntu.Desktop.16.04.iso will required 543 Docs to store.
Created parent folder with ID 1fc6JGpX6vUWiwflL1jBxM1YpuMHFAms8
Successfully Uploaded Ubuntu.Desktop.16.04.iso: [██████████████████████████████] 100%
```

### List

```sh
> python uds.py list
Name                      Size   Encoded    ID
------------------------  -----  ---------  ---------------------------------
Ubuntu.Desktop.16.04.iso  810 MB  1.1 GB     1fc6JGpX6vUWiwflL1jBxM1YpuMHFAms8
```

### Download

```sh
> python uds.py pull
Downloaded Ubuntu.Desktop.16.04.iso: [██████████████████████████████] 100%
```

**Compatible with Python 3.**
