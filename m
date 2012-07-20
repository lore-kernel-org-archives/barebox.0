Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ss78V-0007wk-TK
 for barebox@lists.infradead.org; Fri, 20 Jul 2012 06:56:31 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1Ss78M-0007k2-7W
 for barebox@lists.infradead.org; Fri, 20 Jul 2012 08:56:18 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1Ss78M-0006Zj-6K
 for barebox@lists.infradead.org; Fri, 20 Jul 2012 08:56:18 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 20 Jul 2012 08:56:16 +0200
Message-Id: <1342767377-24735-3-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1342767377-24735-1-git-send-email-jbe@pengutronix.de>
References: <1342767377-24735-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 2/3] ARM/Samsung: unify device registration for the S3C24XX
 SoCs
To: barebox@lists.infradead.org

Barebox crashes since it has trouble with a resource size of 0. Most of the
S3C24XX based platforms crashes at runtime and can't use devices with resource
sizes of 0 anymore. This patch fix it by unifying the device registration for
all current Barebox's S3C24XX based platforms.

- A9M2410 and A9M2440 compile time tested only.
- Mini2440 also runtime tested.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/boards/a9m2410/a9m2410.c                  |    7 ++-
 arch/arm/boards/a9m2440/a9m2440.c                  |    7 ++-
 arch/arm/boards/mini2440/mini2440.c                |   16 +++---
 .../mach-samsung/include/mach/devices-s3c24xx.h    |   55 ++++++++++++++++++++
 4 files changed, 67 insertions(+), 18 deletions(-)
 create mode 100644 arch/arm/mach-samsung/include/mach/devices-s3c24xx.h

diff --git a/arch/arm/boards/a9m2410/a9m2410.c b/arch/arm/boards/a9m2410/a9m2410.c
index eaafdbd..e2044a9 100644
--- a/arch/arm/boards/a9m2410/a9m2410.c
+++ b/arch/arm/boards/a9m2410/a9m2410.c
@@ -32,6 +32,7 @@
 #include <partition.h>
 #include <nand.h>
 #include <io.h>
+#include <mach/devices-s3c24xx.h>
 #include <mach/s3c-iomap.h>
 #include <mach/s3c24xx-nand.h>
 #include <mach/s3c-generic.h>
@@ -109,8 +110,7 @@ static int a9m2410_devices_init(void)
 	writel(reg, S3C_MISCCR);
 
 	/* ----------- the devices the boot loader should work with -------- */
-	add_generic_device("s3c24x0_nand", DEVICE_ID_DYNAMIC, NULL, S3C24X0_NAND_BASE,
-			0, IORESOURCE_MEM, &nand_info);
+	s3c24xx_add_nand(&nand_info);
 	/*
 	 * SMSC 91C111 network controller on the baseboard
 	 * connected to CS line 1 and interrupt line
@@ -145,8 +145,7 @@ void __bare_init nand_boot(void)
 
 static int a9m2410_console_init(void)
 {
-	add_generic_device("s3c_serial", DEVICE_ID_DYNAMIC, NULL, S3C_UART1_BASE,
-			S3C_UART1_SIZE, IORESOURCE_MEM, NULL);
+	s3c24xx_add_uart1();
 	return 0;
 }
 
diff --git a/arch/arm/boards/a9m2440/a9m2440.c b/arch/arm/boards/a9m2440/a9m2440.c
index 1d20248..8975c15 100644
--- a/arch/arm/boards/a9m2440/a9m2440.c
+++ b/arch/arm/boards/a9m2440/a9m2440.c
@@ -32,6 +32,7 @@
 #include <partition.h>
 #include <nand.h>
 #include <io.h>
+#include <mach/devices-s3c24xx.h>
 #include <mach/s3c-iomap.h>
 #include <mach/s3c24xx-nand.h>
 #include <mach/s3c-generic.h>
@@ -129,8 +130,7 @@ static int a9m2440_devices_init(void)
 	writel(reg, S3C_MISCCR);
 
 	/* ----------- the devices the boot loader should work with -------- */
-	add_generic_device("s3c24x0_nand", DEVICE_ID_DYNAMIC, NULL, S3C24X0_NAND_BASE, 0,
-			   IORESOURCE_MEM, &nand_info);
+	s3c24xx_add_nand(&nand_info);
 	/*
 	 * cs8900 network controller onboard
 	 * Connected to CS line 5 + A24 and interrupt line EINT9,
@@ -164,8 +164,7 @@ void __bare_init nand_boot(void)
 
 static int a9m2440_console_init(void)
 {
-	add_generic_device("s3c_serial", DEVICE_ID_DYNAMIC, NULL, S3C_UART1_BASE,
-			S3C_UART1_SIZE, IORESOURCE_MEM, NULL);
+	s3c24xx_add_uart1();
 	return 0;
 }
 
diff --git a/arch/arm/boards/mini2440/mini2440.c b/arch/arm/boards/mini2440/mini2440.c
index 3d3b820..3523949 100644
--- a/arch/arm/boards/mini2440/mini2440.c
+++ b/arch/arm/boards/mini2440/mini2440.c
@@ -39,6 +39,7 @@
 #include <io.h>
 #include <mach/gpio.h>
 #include <mach/s3c-iomap.h>
+#include <mach/devices-s3c24xx.h>
 #include <mach/s3c24xx-nand.h>
 #include <mach/s3c-generic.h>
 #include <mach/s3c-mci.h>
@@ -297,8 +298,7 @@ static int mini2440_devices_init(void)
 	reg |= 0x10000;
 	writel(reg, S3C_MISCCR);
 
-	add_generic_device("s3c24x0_nand", DEVICE_ID_DYNAMIC, NULL, S3C24X0_NAND_BASE,
-			0, IORESOURCE_MEM, &nand_info);
+	s3c24xx_add_nand(&nand_info);
 
 	add_dm9000_device(0, S3C_CS4_BASE + 0x300, S3C_CS4_BASE + 0x304,
 			  IORESOURCE_MEM_16BIT, &dm9000_data);
@@ -312,12 +312,9 @@ static int mini2440_devices_init(void)
 	devfs_add_partition("nand0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 #endif
-	add_generic_device("s3c_mci", 0, NULL, S3C2410_SDI_BASE, 0,
-			   IORESOURCE_MEM, &mci_data);
-	add_generic_device("s3c_fb", 0, NULL, S3C2410_LCD_BASE, 0,
-			   IORESOURCE_MEM, &s3c24x0_fb_data);
-	add_generic_device("ohci", 0, NULL, S3C2410_USB_HOST_BASE, 0x100,
-			   IORESOURCE_MEM, NULL);
+	s3c24xx_add_mci(&mci_data);
+	s3c24xx_add_fb(&s3c24x0_fb_data);
+	s3c24xx_add_ohci();
 	armlinux_set_bootparams((void*)S3C_SDRAM_BASE + 0x100);
 	armlinux_set_architecture(MACH_TYPE_MINI2440);
 
@@ -344,8 +341,7 @@ static int mini2440_console_init(void)
 	s3c_gpio_mode(GPH2_TXD0);
 	s3c_gpio_mode(GPH3_RXD0);
 
-	add_generic_device("s3c_serial", DEVICE_ID_DYNAMIC, NULL, S3C_UART1_BASE,
-			S3C_UART1_SIZE, IORESOURCE_MEM, NULL);
+	s3c24xx_add_uart1();
 	return 0;
 }
 
diff --git a/arch/arm/mach-samsung/include/mach/devices-s3c24xx.h b/arch/arm/mach-samsung/include/mach/devices-s3c24xx.h
new file mode 100644
index 0000000..51fd9a1
--- /dev/null
+++ b/arch/arm/mach-samsung/include/mach/devices-s3c24xx.h
@@ -0,0 +1,55 @@
+/*
+ * Copyright 2012 Juergen Beisert
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#ifndef INCLUDE_MACH_DEVICES_S3C24XX_H
+# define INCLUDE_MACH_DEVICES_S3C24XX_H
+
+#include <driver.h>
+#include <mach/s3c24xx-iomap.h>
+#include <mach/s3c24xx-nand.h>
+#include <mach/s3c-mci.h>
+#include <mach/s3c24xx-fb.h>
+
+static inline void s3c24xx_add_nand(struct s3c24x0_nand_platform_data *d)
+{
+	add_generic_device("s3c24x0_nand", DEVICE_ID_DYNAMIC, NULL,
+				S3C24X0_NAND_BASE, 0x80, IORESOURCE_MEM, d);
+}
+
+static inline void s3c24xx_add_mci(struct s3c_mci_platform_data *d)
+{
+	add_generic_device("s3c_mci", DEVICE_ID_DYNAMIC, NULL,
+				S3C2410_SDI_BASE, 0x80, IORESOURCE_MEM, d);
+}
+
+static inline void s3c24xx_add_fb(struct s3c_fb_platform_data *d)
+{
+	add_generic_device("s3c_fb", DEVICE_ID_DYNAMIC, NULL,
+				S3C2410_LCD_BASE, 0x80, IORESOURCE_MEM, d);
+}
+
+static inline void s3c24xx_add_ohci(void)
+{
+	add_generic_device("ohci", DEVICE_ID_DYNAMIC, NULL,
+			S3C2410_USB_HOST_BASE, 0x100, IORESOURCE_MEM, NULL);
+}
+
+static inline void s3c24xx_add_uart1(void)
+{
+	add_generic_device("s3c_serial", DEVICE_ID_DYNAMIC, NULL, S3C_UART1_BASE,
+			S3C_UART1_SIZE, IORESOURCE_MEM, NULL);
+}
+
+#endif /* INCLUDE_MACH_DEVICES_S3C24XX_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
