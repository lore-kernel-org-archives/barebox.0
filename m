Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x229.google.com ([2607:f8b0:400e:c03::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a0ToI-0006ng-PI
 for barebox@lists.infradead.org; Sun, 22 Nov 2015 12:32:03 +0000
Received: by pacdm15 with SMTP id dm15so163562979pac.3
 for <barebox@lists.infradead.org>; Sun, 22 Nov 2015 04:31:42 -0800 (PST)
From: Du Huanpeng <u74147@gmail.com>
Date: Sun, 22 Nov 2015 20:31:32 +0800
Message-Id: <1448195492-29194-1-git-send-email-u74147@gmail.com>
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
Subject: [PATCH] fix warning: remove unused variable
To: barebox@lists.infradead.org
Cc: Du Huanpeng <u74147@gmail.com>

Signed-off-by: Du Huanpeng <u74147@gmail.com>
---
 common/filetype.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/common/filetype.c b/common/filetype.c
index 5229869..8cfae88 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -326,7 +326,6 @@ enum filetype file_name_detect_type(const char *filename)
 	int fd, ret;
 	void *buf;
 	enum filetype type = filetype_unknown;
-	unsigned long bootsec;
 
 	fd = open(filename, O_RDONLY);
 	if (fd < 0)
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
