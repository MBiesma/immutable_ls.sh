# immutable_ls.sh

`immutable_ls.sh` is a compact Bash script that recursively lists all **immutable files** in a specified directory. For each file, it shows the **last modification date and time in `ls` style** along with the **file path**, providing system administrators a quick and clear overview.

---

## Features

* Recursively searches in the specified directory
* Displays only files with the **immutable (`i`) flag**
* Date and time in **`ls`-style format** (e.g., `Nov 13 03:24`)
* Compact and readable output
* Suitable for large backup directories or system audits

---

## Usage

1. Clone or download the script:

```bash
git clone <repo-url>
cd <repo-directory>
```

2. Make the script executable:

```bash
chmod +x immutable_ls.sh
```

3. Run the script with the target directory:

```bash
./immutable_ls.sh /path/to/directory
```

### Example output

```
Nov 13 03:24 | ----i-------- | /repos/.../VCCO365Proxy01.vm-59750D2025-11-14T034507_CE46.vib
Nov 14 03:00 | ----i-------- | /repos/.../VCCO365Proxy02.vm-176759D2025-11-14T030020_2D66.vib
Nov 20 03:00 | ----i-------- | /repos/.../VCCO365Proxy01.vm-59750D2025-11-20T030005_A540.vib
```

---

## Installation

Place the script in a directory included in your `PATH` or create an alias:

```bash
alias immutable_ls="/path/to/immutable_ls.sh"
```

Then you can run it from anywhere:

```bash
immutable_ls /path/to/directory
```

---

## Requirements

* Bash (v4+ recommended)
* `lsattr` and `stat` (usually standard on Linux)
* `date` command with `-d` support

---

## License

MIT License – free to use, modify, and share.
