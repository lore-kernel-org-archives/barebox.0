Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VQDsU-0002M5-0E
 for barebox@lists.infradead.org; Sun, 29 Sep 2013 10:05:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 29 Sep 2013 12:04:52 +0200
Message-Id: <1380449100-6295-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1380449100-6295-1-git-send-email-s.hauer@pengutronix.de>
References: <1380449100-6295-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/9] copy_file: Add missing O_TRUNC
To: barebox@lists.infradead.org

Without it, when copying a smaller file over a larger file the
resulting file still has the remaining space from the larger file.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/copy_file.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/copy_file.c b/lib/copy_file.c
index 55dee38..778cc00 100644
--- a/lib/copy_file.c
+++ b/lib/copy_file.c
@@ -29,7 +29,7 @@ int copy_file(const char *src, const char *dst, int verbose)
 		goto out;
 	}
 
-	dstfd = open(dst, O_WRONLY | O_CREAT);
+	dstfd = open(dst, O_WRONLY | O_CREAT | O_TRUNC);
 	if (dstfd < 0) {
 		printf("could not open %s: %s\n", dst, errno_str());
 		goto out;
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
