Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SPTMx-0000JZ-A9
 for barebox@lists.infradead.org; Wed, 02 May 2012 06:49:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  2 May 2012 08:48:53 +0200
Message-Id: <1335941333-26681-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] uimage/file_to_sdram: fix resource allocation
To: barebox@lists.infradead.org

file_to_sdram is used to load an initrd. The resource size is
then used to pass the initrd size to Linux. This means that
the resource size must exactly match the initrd size. Currently
this is not the case since we request the sdram region in chunks
of 8 Kbytes. Fix this by adjusting the resource size when the file
is loaded.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/uimage.c |    6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/common/uimage.c b/common/uimage.c
index 4933c40..945f3d6 100644
--- a/common/uimage.c
+++ b/common/uimage.c
@@ -404,8 +404,12 @@ struct resource *file_to_sdram(const char *filename, unsigned long adr)
 			res = NULL;
 			goto out;
 		}
-		if (now < BUFSIZ)
+
+		if (now < BUFSIZ) {
+			release_sdram_region(res);
+			res = request_sdram_region("image", adr, ofs + now);
 			goto out;
+		}
 
 		release_sdram_region(res);
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
