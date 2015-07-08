Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZCijM-0003F6-UG
 for barebox@lists.infradead.org; Wed, 08 Jul 2015 06:21:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  8 Jul 2015 08:20:54 +0200
Message-Id: <1436336454-21067-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] socfpga_mkimage: Fix/clarify error message
To: Barebox List <barebox@lists.infradead.org>

The actual max_image_size may be smaller than the define MAX_IMAGE_SIZE
due to the additional header needed, so print max_image_size in the
error message. Also, when complaining about a too big image say how big
the image actually is.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/socfpga_mkimage.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/socfpga_mkimage.c b/scripts/socfpga_mkimage.c
index bab1b1a..1a7a66d 100644
--- a/scripts/socfpga_mkimage.c
+++ b/scripts/socfpga_mkimage.c
@@ -234,8 +234,8 @@ int main(int argc, char *argv[])
 	}
 
 	if (s.st_size > max_image_size) {
-		fprintf(stderr, "input image too big. Maximum is %d bytes\n",
-				MAX_IMAGE_SIZE);
+		fprintf(stderr, "input image too big. Maximum is %d bytes, got %ld bytes\n",
+				max_image_size, s.st_size);
 		exit(1);
 	}
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
