Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PrzfE-0003Zd-Cd
	for barebox@lists.infradead.org; Tue, 22 Feb 2011 21:20:57 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 22 Feb 2011 22:20:50 +0100
Message-Id: <1298409650-28408-3-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1298409650-28408-1-git-send-email-jbe@pengutronix.de>
References: <1298409650-28408-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 2/2] mini2440: Consider correct NAND page size for boot.
To: barebox@lists.infradead.org
Cc: Juergen Beisert <juergen@kreuzholzen.de>

From: Juergen Beisert <juergen@kreuzholzen.de>

When booting from NAND, its important to know the correct page size.

Signed-off-by: Juergen Beisert <juergen@kreuzholzen.de>
---
 arch/arm/boards/mini2440/mini2440.c |   22 +++++++++++++++++++++-
 arch/arm/mach-s3c24xx/Kconfig       |   25 +++++++++++++++++++++++++
 2 files changed, 46 insertions(+), 1 deletions(-)

diff --git a/arch/arm/boards/mini2440/mini2440.c b/arch/arm/boards/mini2440/mini2440.c
index 6842a79..d710e6d 100644
--- a/arch/arm/boards/mini2440/mini2440.c
+++ b/arch/arm/boards/mini2440/mini2440.c
@@ -279,9 +279,20 @@ static int mini2440_devices_init(void)
 device_initcall(mini2440_devices_init);
 
 #ifdef CONFIG_S3C24XX_NAND_BOOT
+/*
+ * To make barebox booting from NAND the page size must be known, as
+ * there is no way to autodetect it at this early point of boot time.
+ */
+#ifdef CONFIG_MACH_MINI2440_NAND_512B_PAGE_SIZE
+# define NAND_PAGE_SIZE 512
+#endif
+#ifdef CONFIG_MACH_MINI2440_NAND_2048B_PAGE_SIZE
+# define NAND_PAGE_SIZE 2048
+#endif
+
 void __bare_init nand_boot(void)
 {
-	s3c24x0_nand_load_image((void *)TEXT_BASE, 256 * 1024, 0, 512);
+	s3c24x0_nand_load_image((void *)TEXT_BASE, 256 * 1024, 0, NAND_PAGE_SIZE);
 }
 #endif
 
@@ -388,6 +399,15 @@ Using the default configuration:
 make ARCH=arm mini2440_defconfig
 @endcode
 
+To make barebox booting from NAND you must define the page size of the NAND
+in use on your mini2440. Run the menuconfig
+
+@code
+make ARCH=arm menuconfig
+@endcode
+
+and select the corresponding NAND device in the 'Board specific settings' menu.
+
 Build the binary image:
 
 @code
diff --git a/arch/arm/mach-s3c24xx/Kconfig b/arch/arm/mach-s3c24xx/Kconfig
index 33d230c..eaa955f 100644
--- a/arch/arm/mach-s3c24xx/Kconfig
+++ b/arch/arm/mach-s3c24xx/Kconfig
@@ -67,6 +67,31 @@ config MACH_A9M2410DEV
 
 endchoice
 
+choice
+	prompt "NAND flash size"
+	depends on MACH_MINI2440
+
+config MACH_MINI2440_NAND_512B_PAGE_SIZE
+	bool
+	prompt "is 64 MiB or less"
+	help
+	  Select this if your mini2440 is shipped with a NAND flash with 64 MiB
+	  or less in size. This is true for the Samsung 'K9F1208U0C' device.
+	  Or select this entry, if you are sure, your NAND comes with a page
+	  size of 512 bytes.
+
+config MACH_MINI2440_NAND_2048B_PAGE_SIZE
+	bool
+	prompt "is 128 MiB or more"
+	help
+	  Select this if your mini2440 is shipped with a NAND flash with
+	  128 MiB or more in size. This is true for the Samsung 'K9F1G08UOB',
+	  'K9F2G08UOB' or 'K9K8G08U0A' devices.
+	  Or select this entry, if you are sure, your NAND comes with a page
+	  size of 2048 bytes.
+
+endchoice
+
 endmenu
 
 menu "S3C24X0 Features              "
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
