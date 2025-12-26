# ProjectMemoryLeaks
Project to analyze &amp; fix memory leaks using Xcode AI

## XCode AI & Fixing Memory leaks

## Memory-Leak-Prone iOS App
### Prompt 1 — Create a view/controller with a retain cycle
Create a simple SwiftUI or UIKit example that intentionally causes a memory leak using a strong reference cycle between a view model and a view/controller. Include a closure that captures `self` strongly. 
### Prompt 2 — Add async task retain cycle
Add an async Task or Timer in this view model that captures self strongly so that the object will not deallocate. I want to show how this leak appears in the memory graph.

### Memory Graph showing Leaks in created project

<img width="1193" height="400" alt="Screenshot 2025-12-14 at 8 04 16 PM" src="https://github.com/user-attachments/assets/d10ea1a0-7172-4355-882b-5a391db9e8eb" />
<img width="1233" height="287" alt="Screenshot 2025-12-14 at 8 03 44 PM" src="https://github.com/user-attachments/assets/3ec80416-67e1-43a5-829a-05aaf1bcc5e1" />
<img width="1233" height="421" alt="Screenshot 2025-12-14 at 8 03 26 PM" src="https://github.com/user-attachments/assets/bbad71ad-b245-4f79-8f2c-b54f33290f43" />
<img width="1189" height="437" alt="Screenshot 2025-12-14 at 8 03 12 PM" src="https://github.com/user-attachments/assets/3b194dcc-db4e-4cf1-a46c-27562cd04df1" />
<img width="1224" height="441" alt="Screenshot 2025-12-14 at 8 02 52 PM" src="https://github.com/user-attachments/assets/f935ba4d-0f8e-4c08-9d33-43c1d35542e7" />


## 🎥 Section 2 — Prompts to Use Xcode AI for Memory Graph Interpretation

### Prompt 3 - I want you to help me understand and investigate a few memory leaks, and will be sharing memory graphs. Don't make any code changes

<img width="1505" height="847" alt="Screenshot 2025-12-14 at 10 33 39 PM" src="https://github.com/user-attachments/assets/23e48f79-a161-474c-b599-8177275ee80d" />

Use these after recording a memory graph capture.

### Prompt 4 — Interpret memory graph
Interpret this memory graph snapshot. Identify which objects are leaking and explain why they remain in memory. Describe the retain cycle in simple terms.

<img width="1505" height="847" alt="Screenshot 2025-12-14 at 10 38 35 PM" src="https://github.com/user-attachments/assets/922b7ee7-7ff0-4aee-b402-f96d669cb530" />
<img width="1505" height="847" alt="Screenshot 2025-12-14 at 10 38 21 PM" src="https://github.com/user-attachments/assets/0a131907-8970-4a7e-b44c-2adc2adba9c0" />

### Prompt 5 - First just tell me what's wrong with LeakyViewModel and you already have access to it

<img width="1505" height="847" alt="Screenshot 2025-12-14 at 10 41 22 PM" src="https://github.com/user-attachments/assets/1012053f-9352-47c3-b19f-90f833c20f99" />

### Prompt 6 - can't you check the LeakyViewModel in this project, do i've to provide you here as binoculars are already enabled in options to allow you to search the project for context.

<img width="1505" height="847" alt="Screenshot 2025-12-14 at 10 42 41 PM" src="https://github.com/user-attachments/assets/0276f368-974a-46e4-8ae2-0038ec275117" />


## 🎥 Section 3 — Prompts to Demonstrate AI-Assisted Code Modifications
### Prompt 10 — AI to refactor leaked code
Refactor this code to avoid retain cycles and improve memory safety. Use weak/unowned appropriately and simplify the architecture if needed. Apply the required code changes

https://github.com/user-attachments/assets/d1c36bc5-c6a2-46ea-a8a9-a0680756da31

## No leaks after applying changes

<img width="1505" height="847" alt="Screenshot 2025-12-14 at 11 14 23 PM" src="https://github.com/user-attachments/assets/86b67c5b-736b-4801-84c3-88159185580d" />
<img width="1505" height="847" alt="Screenshot 2025-12-14 at 11 09 25 PM" src="https://github.com/user-attachments/assets/a2e81045-9225-49d8-ae53-1e1a68da1fa5" />
<img width="1505" height="847" alt="Screenshot 2025-12-14 at 11 07 59 PM" src="https://github.com/user-attachments/assets/c3cd4358-cc9a-42de-b901-b1555d4f576e" />





