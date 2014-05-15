Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x234.google.com ([2a00:1450:4013:c00::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wkrae-00025k-H2
 for barebox@lists.infradead.org; Thu, 15 May 2014 09:04:37 +0000
Received: by mail-ee0-f52.google.com with SMTP id e53so410256eek.25
 for <barebox@lists.infradead.org>; Thu, 15 May 2014 02:04:14 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Thu, 15 May 2014 11:08:55 +0200
Message-Id: <1400144937-6006-1-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH] commands: rename "gpiolib" -> "gpioinfo"
To: barebox@lists.infradead.org

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 drivers/gpio/gpiolib.c |    8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 54ec5a6..611e41e 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -305,8 +305,6 @@ static int do_gpiolib(int argc, char *argv[])
 {
 	int i;
 
-	printf("gpiolib: gpio lists\n");
-
 	for (i = 0; i < ARCH_NR_GPIOS; i++) {
 		struct gpio_info *gi = &gpio_desc[i];
 		int val = -1, dir = -1;
@@ -316,7 +314,7 @@ static int do_gpiolib(int argc, char *argv[])
 
 		/* print chip information and header on first gpio */
 		if (gi->chip->base == i) {
-			printf("\ngpios %u-%u, chip %s:\n",
+			printf("\nGPIOs %u-%u, chip %s:\n",
 				gi->chip->base,
 				gi->chip->base + gi->chip->ngpio - 1,
 				gi->chip->dev->name);
@@ -330,7 +328,7 @@ static int do_gpiolib(int argc, char *argv[])
 			val = gi->chip->ops->get(gi->chip,
 						i - gi->chip->base);
 
-		printf("  gpio %*d: %*s %*s %*s  %s\n", 4, i,
+		printf("  GPIO %*d: %*s %*s %*s  %s\n", 4, i,
 			3, (dir < 0) ? "unk" : ((dir == GPIOF_DIR_IN) ? "in" : "out"),
 			3, (val < 0) ? "unk" : ((val == 0) ? "lo" : "hi"),
 			9, gi->requested ? "true" : "false",
@@ -340,7 +338,7 @@ static int do_gpiolib(int argc, char *argv[])
 	return 0;
 }
 
-BAREBOX_CMD_START(gpiolib)
+BAREBOX_CMD_START(gpioinfo)
 	.cmd		= do_gpiolib,
 	BAREBOX_CMD_DESC("list registered GPIOs")
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
