# 🛡️ Forensic & Activity Trace Cleaner

This script is designed to wipe user activity traces on Windows, preventing data collection by system analysis and forensic tools such as WinPrefetchView, LastActivityView, and others.

### 🛠️ Key Features
* **Recent & Prefetch:** Completely deletes recent file history and application prefetch records.
* **MRU Lists:** Clears "Most Recently Used" (RunMRU, OpenSaveMRU) lists within the Windows Registry.
* **Link (.lnk) Files:** Removes automatically generated shortcut artifacts from Desktop, Documents, and Downloads.
* **Event Logs:** Irreversibly purges all system event logs using the `wevtutil` command.

### 🚀 Usage
The script is optimized to run in **silent mode**. 
**Note:** It must be executed as **Administrator** to ensure all restricted system logs are successfully cleared.

---
*Disclaimer: Use this tool at your own risk. It is recommended to create a system restore point before execution.*
