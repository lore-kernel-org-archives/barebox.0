Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFFlz-0001FX-Cg
 for barebox@lists.infradead.org; Wed, 15 Jul 2015 06:02:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 15 Jul 2015 08:02:02 +0200
Message-Id: <1436940123-25118-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] scripts: imx-image: Do not pad image
To: Barebox List <barebox@lists.infradead.org>

We have to pad the load size to the next 4k boundary, but we don't
need to pad the image itself since we do not care what data the ROM
actually loads.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-image.c | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index e765c1d..a588882 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -823,18 +823,6 @@ int main(int argc, char *argv[])
 		image_size -= now;
 	}
 
-	/* pad until next 4k boundary */
-	now = 4096 - now;
-	if (now) {
-		memset(buf, 0x5a, now);
-
-		ret = xwrite(outfd, buf, now);
-		if (ret) {
-			perror("write");
-			exit(1);
-		}
-	}
-
 	ret = close(outfd);
 	if (ret) {
 		perror("close");
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
