Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from m50-135.163.com ([123.125.50.135])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aqK1L-0003en-TL
 for barebox@lists.infradead.org; Wed, 13 Apr 2016 12:35:49 +0000
From: Du Huanpeng <d-hp@163.com>
Date: Wed, 13 Apr 2016 20:35:18 +0800
Message-Id: <1460550918-15092-1-git-send-email-d-hp@163.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] wchar_t: wchar_t should go to stddef.h
To: barebox@lists.infradead.org
Cc: Du Huanpeng <u74147@gmail.com>

From: Du Huanpeng <u74147@gmail.com>

according to C99 standard, the definition of wchar_t
should go stddef.h
this patch also remove wchar_t local definition and
use stddef.h instead.

Signed-off-by: Du Huanpeng <u74147@gmail.com>
---
 fs/efi.c               | 3 +--
 include/linux/stddef.h | 2 ++
 include/wchar.h        | 3 +--
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/fs/efi.c b/fs/efi.c
index 0f74cda..83c4682 100644
--- a/fs/efi.c
+++ b/fs/efi.c
@@ -32,6 +32,7 @@
 #include <efi.h>
 #include <mach/efi.h>
 #include <mach/efi-device.h>
+#include <linux/stddef.h>
 
 /* Open modes */
 #define EFI_FILE_MODE_READ      0x0000000000000001
@@ -92,8 +93,6 @@ struct efi_file_info {
 	s16 FileName[1];
 };
 
-typedef unsigned short wchar_t;
-
 struct efifs_priv {
 	struct efi_file_handle *root_dir;
 	struct efi_file_io_interface *protocol;
diff --git a/include/linux/stddef.h b/include/linux/stddef.h
index e366328..680d0c7 100644
--- a/include/linux/stddef.h
+++ b/include/linux/stddef.h
@@ -17,6 +17,8 @@ enum {
 #include <linux/types.h>
 #endif
 
+typedef unsigned short wchar_t;
+
 #undef offsetof
 #define offsetof(TYPE, MEMBER) ((size_t) &((TYPE *)0)->MEMBER)
 
diff --git a/include/wchar.h b/include/wchar.h
index 702d8e2..adb4f37 100644
--- a/include/wchar.h
+++ b/include/wchar.h
@@ -2,8 +2,7 @@
 #define __WCHAR_H
 
 #include <linux/types.h>
-
-typedef u16 wchar_t;
+#include <linux/stddef.h>
 
 wchar_t *strdup_wchar(const wchar_t *src);
 
-- 
1.9.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
