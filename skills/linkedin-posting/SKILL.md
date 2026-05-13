---
name: linkedin-posting
description: "Use when the user wants to create, review, publish, edit, delete, verify, or inspect LinkedIn posts using browser automation. Covers safe confirmation, login/session handling, text posts, image posts, post editing, post deletion, and activity checks."
version: 1.0.0
author: Hermes Agent
license: MIT
metadata:
  hermes:
    tags: [linkedin, social-media, browser, posting, publishing, verification]
---

# LinkedIn Posting

## Overview

Use this skill when the user wants help posting to LinkedIn, checking their LinkedIn activity, drafting LinkedIn content, or verifying whether a post was published. The workflow is optimized for browser automation and real LinkedIn accounts, so it emphasizes confirmation before public actions and verification after publishing.

LinkedIn posts can be public and can affect the user's professional reputation. Treat posting as an external side effect: never publish ambiguous content, never invent credentials, and always confirm the exact post text before clicking the final publish button unless the user has already provided explicit final wording and asked you to post it.

## When to Use

Use this skill for:
- Posting a text update to LinkedIn.
- Posting an image/photo with optional caption to LinkedIn.
- Drafting or improving LinkedIn post copy before publishing.
- Checking whether the user's profile has posts or recent activity.
- Opening the LinkedIn post composer and preparing content.
- Editing an existing LinkedIn post after the user confirms the target post and final replacement text.
- Deleting an existing LinkedIn post after explicit confirmation.
- Verifying a newly published, edited, or deleted post.
- Troubleshooting a LinkedIn session that appears logged out.

Do not use this skill for:
- Scraping LinkedIn at scale.
- Sending connection requests or messages in bulk.
- Circumventing CAPTCHA, account verification, or platform restrictions.
- Handling passwords in persistent memory.
- Posting content that is illegal, deceptive, impersonating, or spammy.

## Safety Rules

1. Do not save LinkedIn credentials to memory.
2. Prefer the user entering credentials directly when possible.
3. If the user wants credentials loaded from environment variables, look for clearly named keys such as `LINKEDIN_EMAIL` and `LINKEDIN_PASSWORD`; never print the password value.
4. If the user voluntarily provides credentials in chat, use them only for the current task and do not repeat them in final responses.
5. Before publishing, confirm the exact content if it is not already explicitly approved.
6. Before uploading an image, confirm the exact local file path/URL and caption.
7. Before editing a post, confirm both the target post and the final replacement content.
8. Before deleting a post, require explicit confirmation because deletion is destructive and may be irreversible.
9. If the user asks for a test post, use harmless wording and still confirm when possible.
10. Do not publish sensitive personal information, private data, or controversial claims unless the user explicitly provides and approves the final text.
11. If LinkedIn shows CAPTCHA, 2FA, suspicious login, identity verification, or security challenge, pause and ask the user to complete/provide the required code.

## Browser Workflow: Login

1. Navigate to:
   https://www.linkedin.com/login

2. If already logged in, LinkedIn may redirect to the feed:
   https://www.linkedin.com/feed/

3. If login form appears, identify fields:
   - Email or phone
   - Password
   - Sign in

4. Enter credentials only if the user explicitly provided them for this session or is typing directly in the browser.

5. After clicking Sign in, verify successful login by checking for:
   - Global navigation bar.
   - Profile menu with the user's name.
   - Feed composer button such as "Start a post" / "Bắt đầu bài đăng".

6. If navigation seems stale or the page becomes empty, reload/navigate again to:
   https://www.linkedin.com/feed/
   or
   https://www.linkedin.com/login

## Browser Workflow: Check Existing Posts

To inspect the user's posts/activity:

1. Open the feed:
   https://www.linkedin.com/feed/

2. Click the user's profile link/avatar, often labeled:
   - "View profile"
   - "Truy cập hồ sơ của <name>"

3. On the profile page, locate the Activity section:
   - Vietnamese: "Hoạt động"
   - English: "Activity"

4. Look for indicators:
   - "Bạn chưa đăng bài nào" = no posts yet.
   - "You haven't posted yet" = no posts yet.
   - "0 lượt hiển thị bài đăng" = zero post impressions recently.

5. For all recent activity, navigate to the profile activity URL if available:
   <profile-url>/recent-activity/all/

6. Confirm whether LinkedIn says:
   - "Hiện không có gì để xem" / "Nothing to see here"
   - Or displays recent posts, comments, reactions, or shares.

## Browser Workflow: Publish a Text Post

1. Navigate to:
   https://www.linkedin.com/feed/

2. Find and click the composer:
   - English: "Start a post"
   - Vietnamese: "Bắt đầu bài đăng"

3. Wait for the create-post dialog:
   - Vietnamese: "Cửa sổ bật lên Tạo bài đăng"
   - English: "Create a post"

4. Locate the editor textbox:
   - English: "Text editor for creating content"
   - Vietnamese: "Trình soạn thảo văn bản để tạo nội dung"

5. Type the approved post text.

6. Verify the post button is enabled:
   - English: "Post"
   - Vietnamese: "Đăng bài"

7. Click the final publish button only after content is approved.

8. Wait for success dialog or toast:
   - Vietnamese: "Đăng thành công"
   - English: "Post successful" or similar.

9. If a verification/premium prompt appears after publishing, choose a non-destructive option unless the user asks otherwise:
   - "Later" / "Để sau"
   - Or click "View post" / "Xem bài đăng" to verify the post.

## Browser Workflow: Publish an Image Post

Use this when the user wants to post a photo/image to LinkedIn.

1. Confirm the image source:
   - Local file path preferred.
   - If the user gives a URL, download or open it only when safe and verify it is an image.
   - If the user gives multiple images, confirm the order.

2. Confirm the caption text. Caption may be empty if the user explicitly wants only an image.

3. Navigate to:
   https://www.linkedin.com/feed/

4. Click one of the media entry points:
   - Vietnamese: "Thêm ảnh"
   - English: "Add photo" / "Photo"
   - Or open "Bắt đầu bài đăng" / "Start a post" first, then click "Thêm phương tiện truyền thông" / "Add media".

5. Upload the image file using the browser file upload control. If the browser tool cannot interact with a file chooser, use DOM inspection to find an `input[type=file]` element; if unavailable, report the limitation instead of pretending success.

6. Wait for the upload preview/thumbnail to appear. Verify the expected image filename or preview is visible when possible.

7. Add the approved caption in the editor.

8. Click "Next" / "Tiếp" if LinkedIn shows an intermediate media screen.

9. Click "Post" / "Đăng bài" only after verifying the image preview and caption.

10. Verify the published post contains the caption and image/media preview.

## Browser Workflow: Edit an Existing Post

Editing is a side effect. Confirm the exact target post and new content before saving.

1. Locate the target post:
   - Use the direct post URL if the user provides it.
   - Otherwise go to profile Activity / Recent Activity and identify the post by text, timestamp, or media.

2. Open the post control menu:
   - Often a three-dot menu.
   - Vietnamese labels may include "menu điều khiển cho bài đăng".
   - English labels may include "More" or "Control menu".

3. Choose edit:
   - Vietnamese: "Chỉnh sửa bài đăng" / "Sửa bài đăng".
   - English: "Edit post".

4. Wait for the edit dialog/editor.

5. Replace the existing text with the approved final text. Do not make partial/ambiguous edits unless requested.

6. For image edits, note that LinkedIn may not allow replacing media after publishing. If media replacement is unavailable, explain that the safe workflow is delete/repost or create a new post.

7. Click save:
   - Vietnamese: "Lưu".
   - English: "Save".

8. Verify the post now displays the updated text.

## Browser Workflow: Delete an Existing Post

Deleting is destructive. Require explicit confirmation immediately before deleting, even if the user mentioned deletion earlier.

1. Locate the target post via direct URL or profile activity.

2. Confirm the exact post to delete by quoting a short snippet or timestamp to the user.

3. Open the post control menu:
   - Three-dot menu / "More" / "menu điều khiển cho bài đăng".

4. Choose delete:
   - Vietnamese: "Xóa bài đăng" / "Xóa".
   - English: "Delete post" / "Delete".

5. LinkedIn usually shows a confirmation dialog. Read the dialog and click the destructive confirmation only after the user explicitly confirmed deletion.

6. Verify deletion by checking that:
   - The post detail page is gone or unavailable, or
   - The post no longer appears in Recent Activity / profile Activity.

7. Final response should say the post was deleted and how it was verified. Do not claim deletion if verification failed.

## Verification After Publishing

Always verify after publishing, editing, or deleting.

Preferred publish verification:
1. Click "View post" / "Xem bài đăng" if shown.
2. Confirm the post detail page contains:
   - User's name.
   - Timestamp such as "Vừa rồi" / "Just now".
   - Visibility text such as "Hiển thị với bất kỳ ai trên hoặc ngoài LinkedIn" / public visibility.
   - Exact post text.
   - Expected image/media preview if it is an image post.

Edit verification:
1. Reopen or refresh the target post.
2. Confirm the displayed text matches the approved edited text.
3. If media was involved, confirm whether LinkedIn preserved or changed it.

Delete verification:
1. Refresh the post detail page or profile activity.
2. Confirm the deleted post no longer appears or LinkedIn shows it is unavailable.
3. If LinkedIn still shows the post, do not claim deletion; report that deletion could not be verified.

Secondary verification:
1. Go to the user's profile.
2. Open Activity or Recent Activity.
3. Confirm the post appears, changed, or disappeared as expected.

Final response should include:
- Whether the requested action succeeded.
- The exact text posted/edited or a snippet of the deleted target.
- Any visible status, such as public visibility or "just now" timestamp.
- For image posts, whether the image/media preview was visible.
- Avoid mentioning credentials.

## Content Drafting Guidance

When asked to write LinkedIn content, use the `social-content` skill principles:
- Strong first-line hook.
- Short paragraphs.
- One clear idea per post.
- Specific personal context if available.
- Avoid generic AI-sounding language.
- End with a light question or CTA when appropriate.

For a test post, keep it simple and harmless, for example:
"Xin chào LinkedIn! Đây là bài viết thử nghiệm đầu tiên của tôi."

## Common UI Labels

Vietnamese LinkedIn labels:
- "Bắt đầu bài đăng" = Start a post.
- "Thêm ảnh" = Add photo.
- "Thêm phương tiện truyền thông" = Add media.
- "Tiếp" = Next.
- "Đăng bài" = Post.
- "Đăng thành công" = Post successful.
- "Xem bài đăng" = View post.
- "Để sau" = Later.
- "Chỉnh sửa bài đăng" / "Sửa bài đăng" = Edit post.
- "Lưu" = Save.
- "Xóa bài đăng" / "Xóa" = Delete post / Delete.
- "Hoạt động" = Activity.
- "Tất cả hoạt động" = All activity.
- "Bạn chưa đăng bài nào" = You have not posted anything.
- "Hiện không có gì để xem" = Nothing to see here.
- "Trình soạn thảo văn bản để tạo nội dung" = Text editor for creating content.

English LinkedIn labels:
- "Start a post"
- "Photo" / "Add photo"
- "Add media"
- "Next"
- "Post"
- "View post"
- "Edit post"
- "Save"
- "Delete post" / "Delete"
- "Activity"
- "All activity"
- "Text editor for creating content"

## Troubleshooting

1. Browser snapshot shows empty page.
   - Navigate again to https://www.linkedin.com/feed/ or https://www.linkedin.com/login.
   - Take a fresh snapshot.

2. Element refs become unknown.
   - Take a new browser snapshot and use the new refs.
   - LinkedIn rerenders frequently, invalidating old refs.

3. Feed redirects to login after previously being logged in.
   - Session cookie may not persist.
   - Log in again if the user authorizes it.

4. Sign-in click appears to do nothing.
   - Try pressing Enter from the password field.
   - Refresh login page and re-enter credentials.
   - Inspect for duplicate forms or disabled buttons.

5. Post button is disabled.
   - Ensure text was typed into the contenteditable editor, not a hidden placeholder.
   - For image-only posts, ensure the image upload finished and preview is visible.
   - Take a new snapshot and verify the editor contains the exact text or media exists.

6. Image upload cannot be completed.
   - Confirm the file path exists and is an actual image.
   - Look for `input[type=file]` via browser console/DOM inspection.
   - If the browser automation environment cannot operate the native file chooser, explain the limitation and ask the user to upload manually or provide another route.

7. Edit option is missing.
   - Confirm the account owns the post.
   - Some reposted/shared content or ads may not be editable.
   - Media replacement after posting may be unavailable; suggest deleting/reposting only after confirmation.

8. Delete confirmation appears.
   - Treat it as destructive. Ask for explicit final confirmation before clicking the confirm delete button.

9. LinkedIn shows security/verification challenge.
   - Stop and ask the user to complete the challenge or provide the code.
   - Do not attempt to bypass CAPTCHA/security checks.

## Verification Checklist

- [ ] Correct LinkedIn account is logged in.
- [ ] Requested action is clear: post text, post image, edit, delete, or inspect.
- [ ] Exact post text/caption is approved by the user.
- [ ] For image posts, exact image file/URL is confirmed and preview/upload is verified.
- [ ] For edits, target post and final replacement content are confirmed.
- [ ] For deletes, target post is confirmed and explicit final deletion confirmation is received.
- [ ] Post composer or target post menu opened successfully.
- [ ] Text appears in the editor before publishing/saving.
- [ ] Final publish/save/delete confirmation button clicked only after approval.
- [ ] Success state, post detail page, or activity page verification observed.
- [ ] Final answer reports success and exact posted/edited/deleted target details.
- [ ] No credentials are stored or repeated.
