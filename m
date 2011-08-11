Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from quix.smartspb.net ([217.119.16.133])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QrSdV-0004KD-2Y
	for barebox@lists.infradead.org; Thu, 11 Aug 2011 10:37:14 +0000
Received: from milas.spb.ru ([217.119.30.118])
	by quix.smartspb.net with esmtps (TLSv1:AES256-SHA:256)
	(Exim 4.61 (FreeBSD)) (envelope-from <shc@milas.spb.ru>)
	id 1QrSdT-000Ghm-Us
	for barebox@lists.infradead.org; Thu, 11 Aug 2011 14:37:11 +0400
Received: from localhost (localhost.localdomain [127.0.0.1])
	by milas.spb.ru (Postfix) with ESMTP id 41BF6C7402
	for <barebox@lists.infradead.org>; Thu, 11 Aug 2011 14:37:06 +0400 (MSD)
Received: from milas.spb.ru ([127.0.0.1])
	by localhost (milas.spb.ru [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BqLmfnJopFDR for <barebox@lists.infradead.org>;
	Thu, 11 Aug 2011 14:37:05 +0400 (MSD)
From: Alexander Shiyan <shc@milas.spb.ru>
Message-Id: <1313059025.19612@milas.spb.ru>
Date: Thu, 11 Aug 2011 14:37:05 +0400 (MSD)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="bound1313059025"
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: I2C support to PCM-038 board
To: barebox@lists.infradead.org

This is a multi-part message in MIME format.

--bound1313059025
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 7bit

Hello.

Please review and apply this simple patch.
Thanks!

diff -urN barebox-v2011.08.0.orig/arch/arm/boards/pcm038/pcm038.c barebox-v2011.08.0/arch/arm/boards/pcm038/pcm038.c
--- barebox-v2011.08.0.orig/arch/arm/boards/pcm038/pcm038.c	2011-08-04 16:42:13.000000000 +0400
+++ barebox-v2011.08.0/arch/arm/boards/pcm038/pcm038.c	2011-08-11 11:10:16.000000000 +0400
@@ -40,6 +40,7 @@
 #include <mach/imx-pll.h>
 #include <mach/imxfb.h>
 #include <asm/mmu.h>
+#include <i2c/i2c.h>
 #include <usb/isp1504.h>
 #include <mach/spi.h>
 #include <mach/iomux-mx27.h>
@@ -261,6 +262,14 @@
 		PD23_AF_USBH2_DATA2,
 		PD24_AF_USBH2_DATA1,
 		PD26_AF_USBH2_DATA5,
+#ifdef CONFIG_I2C
+		/* I2C1 */
+		PD17_PF_I2C_DATA | GPIO_PUEN,
+		PD18_PF_I2C_CLK,
+		/* I2C2 */
+		PC5_PF_I2C2_SDA,
+		PC6_PF_I2C2_SCL,
+#endif
 	};

 	pcm038_mmu_init();
@@ -298,6 +307,12 @@
 	register_device(&sram_dev);
 	imx27_add_fb(&pcm038_fb_data);

+#ifdef CONFIG_I2C
+	PCCR0 |= PCCR0_I2C1_EN | PCCR0_I2C2_EN;
+	imx27_add_i2c0(NULL);
+	imx27_add_i2c1(NULL);
+#endif
+
 #ifdef CONFIG_USB
 	pcm038_usbh_init();
 	register_device(&usbh2_dev);
diff -urN barebox-v2011.08.0.orig/arch/arm/mach-imx/include/mach/devices-imx27.h barebox-v2011.08.0/arch/arm/mach-imx/include/mach/devices-imx27.h
--- barebox-v2011.08.0.orig/arch/arm/mach-imx/include/mach/devices-imx27.h	2011-08-04 16:42:13.000000000 +0400
+++ barebox-v2011.08.0/arch/arm/mach-imx/include/mach/devices-imx27.h	2011-08-11 11:20:26.000000000 +0400
@@ -11,6 +11,11 @@
 	return imx_add_i2c((void *)IMX_I2C1_BASE, 0, pdata);
 }

+static inline struct device_d *imx27_add_i2c1(struct i2c_platform_data *pdata)
+{
+	return imx_add_i2c((void *)IMX_I2C2_BASE, 1, pdata);
+}
+
 static inline struct device_d *imx27_add_uart0(void)
 {
 	return imx_add_uart((void *)IMX_UART1_BASE, 0);

--bound1313059025
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--bound1313059025--
