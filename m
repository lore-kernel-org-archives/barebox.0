Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SzvOf-0000Pg-9C
 for barebox@lists.infradead.org; Fri, 10 Aug 2012 20:01:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 Aug 2012 22:00:58 +0200
Message-Id: <1344628865-32574-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1344628865-32574-1-git-send-email-s.hauer@pengutronix.de>
References: <1344628865-32574-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/9] ARM s3c boards: Do not hardcode image sizes
To: barebox@lists.infradead.org
Cc: Juergen Beisert <jbe@pengutronix.de>

The existing nand_boot functions all do the same, so move it to
a common place. To be flexible enough for future boards the real
image size is used instead of hardcoded 256k.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/boards/a9m2410/a9m2410.c               |    7 -------
 arch/arm/boards/a9m2440/a9m2440.c               |    7 -------
 arch/arm/boards/friendlyarm-mini2440/mini2440.c |    7 -------
 drivers/mtd/nand/nand_s3c24xx.c                 |   10 ++++++++++
 4 files changed, 10 insertions(+), 21 deletions(-)

diff --git a/arch/arm/boards/a9m2410/a9m2410.c b/arch/arm/boards/a9m2410/a9m2410.c
index fb3f1ba..8d97282 100644
--- a/arch/arm/boards/a9m2410/a9m2410.c
+++ b/arch/arm/boards/a9m2410/a9m2410.c
@@ -137,13 +137,6 @@ static int a9m2410_devices_init(void)
 
 device_initcall(a9m2410_devices_init);
 
-#ifdef CONFIG_S3C_NAND_BOOT
-void __bare_init nand_boot(void)
-{
-	s3c24x0_nand_load_image(_text, 256 * 1024, 0);
-}
-#endif
-
 static int a9m2410_console_init(void)
 {
 	s3c24xx_add_uart1();
diff --git a/arch/arm/boards/a9m2440/a9m2440.c b/arch/arm/boards/a9m2440/a9m2440.c
index 6beb72e..ac1c7a4 100644
--- a/arch/arm/boards/a9m2440/a9m2440.c
+++ b/arch/arm/boards/a9m2440/a9m2440.c
@@ -156,13 +156,6 @@ static int a9m2440_devices_init(void)
 
 device_initcall(a9m2440_devices_init);
 
-#ifdef CONFIG_S3C_NAND_BOOT
-void __bare_init nand_boot(void)
-{
-	s3c24x0_nand_load_image(_text, 256 * 1024, 0);
-}
-#endif
-
 static int a9m2440_console_init(void)
 {
 	s3c24xx_add_uart1();
diff --git a/arch/arm/boards/friendlyarm-mini2440/mini2440.c b/arch/arm/boards/friendlyarm-mini2440/mini2440.c
index a032fbc..251287e 100644
--- a/arch/arm/boards/friendlyarm-mini2440/mini2440.c
+++ b/arch/arm/boards/friendlyarm-mini2440/mini2440.c
@@ -324,13 +324,6 @@ static int mini2440_devices_init(void)
 
 device_initcall(mini2440_devices_init);
 
-#ifdef CONFIG_S3C_NAND_BOOT
-void __bare_init nand_boot(void)
-{
-	s3c24x0_nand_load_image(_text, 256 * 1024, 0);
-}
-#endif
-
 static int mini2440_console_init(void)
 {
 	/*
diff --git a/drivers/mtd/nand/nand_s3c24xx.c b/drivers/mtd/nand/nand_s3c24xx.c
index c629701..3d5732e 100644
--- a/drivers/mtd/nand/nand_s3c24xx.c
+++ b/drivers/mtd/nand/nand_s3c24xx.c
@@ -603,6 +603,16 @@ void __nand_boot_init s3c24x0_nand_load_image(void *dest, int size, int page)
 	disable_nand_controller(host);
 }
 
+#include <asm-generic/sections.h>
+
+void __nand_boot_init nand_boot(void)
+{
+	void *dest = _text;
+	int size = barebox_image_size;
+	int page = 0;
+
+	s3c24x0_nand_load_image(dest, size, page);
+}
 #ifdef CONFIG_NAND_S3C_BOOT_DEBUG
 #include <command.h>
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
