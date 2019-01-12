Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1giEbS-0002DK-Mz
 for barebox@lists.infradead.org; Sat, 12 Jan 2019 08:25:16 +0000
Received: by mail-pl1-x641.google.com with SMTP id gn14so7838238plb.10
 for <barebox@lists.infradead.org>; Sat, 12 Jan 2019 00:25:14 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 12 Jan 2019 00:24:55 -0800
Message-Id: <20190112082456.7441-6-andrew.smirnov@gmail.com>
In-Reply-To: <20190112082456.7441-1-andrew.smirnov@gmail.com>
References: <20190112082456.7441-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/6] commands: digest: Use MAX_LFS_FILESIZE instead of ~0
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Loff_t is a signed type, so ~0 is a negative number. While it works OK
due to clamping/conversion to ulong when passed to
digest_file_window(), it is better not to rely on that fact and use an
appropriate constant.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 commands/digest.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/commands/digest.c b/commands/digest.c
index 0edbbec32c..99b27dcc25 100644
--- a/commands/digest.c
+++ b/commands/digest.c
@@ -6,6 +6,7 @@
 
 #include <common.h>
 #include <command.h>
+#include <linux/pagemap.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <errno.h>
@@ -35,7 +36,7 @@ int __do_digest(struct digest *d, unsigned char *sig,
 
 	while (*argv) {
 		char *filename = "/dev/mem";
-		loff_t start = 0, size = ~0;
+		loff_t start = 0, size = MAX_LFS_FILESIZE;
 		int show_area = 1;
 
 		/* arguments are either file, file+area or area */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
