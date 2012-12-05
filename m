Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgG3E-0001Qz-IH
 for barebox@lists.infradead.org; Wed, 05 Dec 2012 14:34:17 +0000
Received: from cpebcc81008dd2c-cmbcc81008dd29.cpe.net.cable.rogers.com
 ([99.253.156.71]:54231 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
 (Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
 id 1TgG3D-0006rz-D3
 for barebox@lists.infradead.org; Wed, 05 Dec 2012 09:34:15 -0500
Date: Wed, 5 Dec 2012 09:34:12 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.DEB.2.02.1212050932001.13598@oneiric>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Define and use OMAP4 GPIO macros rather than magic constants.
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


Add and use meaningful macro names for OMAP4 GPIO addresses, and add a
comment to explain the 0x100 offset for OMAP4.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/arch/arm/mach-omap/include/mach/omap4-silicon.h b/arch/arm/mach-omap/include/mach/omap4-silicon.h
index 71ffe39..008eafb 100644
--- a/arch/arm/mach-omap/include/mach/omap4-silicon.h
+++ b/arch/arm/mach-omap/include/mach/omap4-silicon.h
@@ -101,6 +101,21 @@
 #define OMAP44XX_MMC4_BASE		(OMAP44XX_L4_PER_BASE + 0x0D1100)
 #define OMAP44XX_MMC5_BASE		(OMAP44XX_L4_PER_BASE + 0x0D5100)

+/* GPIO
+ *
+ *  Note that, while the GPIO controller is the same as on an OMAP3,
+ * the base address has an additional offset of 0x100, which you can
+ * see being added here so that the OMAP_GPIO_* macros you see in
+ * mach-omap/gpio.c don't need to be adjusted based on the platform.
+ */
+
+#define OMAP44XX_GPIO1_BASE		(OMAP44XX_L4_WKUP_BASE + 0x10100)
+#define OMAP44XX_GPIO2_BASE		(OMAP44XX_L4_PER_BASE  + 0x55100)
+#define OMAP44XX_GPIO3_BASE		(OMAP44XX_L4_PER_BASE  + 0x57100)
+#define OMAP44XX_GPIO4_BASE		(OMAP44XX_L4_PER_BASE  + 0x59100)
+#define OMAP44XX_GPIO5_BASE		(OMAP44XX_L4_PER_BASE  + 0x5B100)
+#define OMAP44XX_GPIO6_BASE		(OMAP44XX_L4_PER_BASE  + 0x5D100)
+
 /* GPMC */
 #define OMAP_GPMC_BASE		0x50000000

diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
index c756664..dc1dbae 100644
--- a/arch/arm/mach-omap/omap4_generic.c
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -611,17 +611,17 @@ const struct gpmc_config omap4_nand_cfg = {

 static int omap4_gpio_init(void)
 {
-	add_generic_device("omap-gpio", 0, NULL, 0x4a310100,
+	add_generic_device("omap-gpio", 0, NULL, OMAP44XX_GPIO1_BASE,
 				0xf00, IORESOURCE_MEM, NULL);
-	add_generic_device("omap-gpio", 1, NULL, 0x48055100,
+	add_generic_device("omap-gpio", 1, NULL, OMAP44XX_GPIO2_BASE,
 				0xf00, IORESOURCE_MEM, NULL);
-	add_generic_device("omap-gpio", 2, NULL, 0x48057100,
+	add_generic_device("omap-gpio", 2, NULL, OMAP44XX_GPIO3_BASE,
 				0xf00, IORESOURCE_MEM, NULL);
-	add_generic_device("omap-gpio", 3, NULL, 0x48059100,
+	add_generic_device("omap-gpio", 3, NULL, OMAP44XX_GPIO4_BASE,
 				0xf00, IORESOURCE_MEM, NULL);
-	add_generic_device("omap-gpio", 4, NULL, 0x4805b100,
+	add_generic_device("omap-gpio", 4, NULL, OMAP44XX_GPIO5_BASE,
 				0xf00, IORESOURCE_MEM, NULL);
-	add_generic_device("omap-gpio", 5, NULL, 0x4805d100,
+	add_generic_device("omap-gpio", 5, NULL, OMAP44XX_GPIO6_BASE,
 				0xf00, IORESOURCE_MEM, NULL);

 	return 0;

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
