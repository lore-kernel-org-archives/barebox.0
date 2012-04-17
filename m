Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SK3IZ-0007k9-OO
 for barebox@lists.infradead.org; Tue, 17 Apr 2012 07:58:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 17 Apr 2012 09:57:42 +0200
Message-Id: <1334649462-24971-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] filetype: Make it work on files < 512 bytes
To: barebox@lists.infradead.org

This is a brown paper bag type of bugs. Do not assume that a file
has to be at minimun 512 bytes to be detectable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/filetype.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/filetype.c b/common/filetype.c
index 4b5a6fa..15a3732 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -92,10 +92,10 @@ enum filetype file_name_detect_type(const char *filename)
 	if (fd < 0)
 		return fd;
 
-	buf = xmalloc(512);
+	buf = xzalloc(512);
 
 	ret = read(fd, buf, 512);
-	if (ret != 512)
+	if (ret < 0)
 		goto err_out;
 
 	type = file_detect_type(buf);
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
