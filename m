Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x22b.google.com ([2a00:1450:4008:c01::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpEs2-00065k-73
 for barebox@lists.infradead.org; Wed, 19 Jun 2013 09:40:07 +0000
Received: by mail-bk0-f43.google.com with SMTP id jm2so2233150bkc.2
 for <barebox@lists.infradead.org>; Wed, 19 Jun 2013 02:39:44 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
In-Reply-To: <1371634395.4111.54.camel@mars>
References: <1371634395.4111.54.camel@mars>
Date: Wed, 19 Jun 2013 11:39:41 +0200
Message-ID: <1371634781.28361.0.camel@mars>
Mime-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] ARM omap-fb: add board helper code
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>, barebox@lists.infradead.org

This patch adds OMAP machine dependent framebuffer code so that
board files can make use of driver omap-fb.

Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
---
 arch/arm/mach-omap/Makefile               |    2 +-
 arch/arm/mach-omap/include/mach/omap-fb.h |   47 +++++++++++++++++++++++++++++
 arch/arm/mach-omap/omap_fb.c              |   34 +++++++++++++++++++++
 3 files changed, 82 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-omap/include/mach/omap-fb.h
 create mode 100644 arch/arm/mach-omap/omap_fb.c

diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index 94e42c6..bc5daab 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -15,7 +15,7 @@
 # GNU General Public License for more details.
 #
 #
-obj-$(CONFIG_ARCH_OMAP) += syslib.o omap_devices.o
+obj-$(CONFIG_ARCH_OMAP) += syslib.o omap_devices.o omap_fb.o
 pbl-$(CONFIG_ARCH_OMAP) += syslib.o
 obj-$(CONFIG_OMAP_CLOCK_SOURCE_S32K) += s32k_clksource.o
 obj-$(CONFIG_OMAP_CLOCK_SOURCE_DMTIMER0) += dmtimer0.o
diff --git a/arch/arm/mach-omap/include/mach/omap-fb.h b/arch/arm/mach-omap/include/mach/omap-fb.h
new file mode 100644
index 0000000..f68dc1a
--- /dev/null
+++ b/arch/arm/mach-omap/include/mach/omap-fb.h
@@ -0,0 +1,47 @@
+#ifndef H_BAREBOX_ARCH_ARM_MACH_OMAP_MACH_FB4_H
+#define H_BAREBOX_ARCH_ARM_MACH_OMAP_MACH_FB4_H
+
+#include <fb.h>
+
+#define OMAP_DSS_LCD_TFT	(1u << 0)
+#define OMAP_DSS_LCD_IVS	(1u << 1)
+#define OMAP_DSS_LCD_IHS	(1u << 2)
+#define OMAP_DSS_LCD_IPC	(1u << 3)
+#define OMAP_DSS_LCD_IEO	(1u << 4)
+#define OMAP_DSS_LCD_RF	(1u << 5)
+#define OMAP_DSS_LCD_ONOFF	(1u << 6)
+
+#define OMAP_DSS_LCD_DATALINES(_l)	((_l) << 10)
+#define OMAP_DSS_LCD_DATALINES_msk	OMAP_DSS_LCD_DATALINES(3u)
+#define OMAP_DSS_LCD_DATALINES_12	OMAP_DSS_LCD_DATALINES(0u)
+#define OMAP_DSS_LCD_DATALINES_16	OMAP_DSS_LCD_DATALINES(1u)
+#define OMAP_DSS_LCD_DATALINES_18	OMAP_DSS_LCD_DATALINES(2u)
+#define OMAP_DSS_LCD_DATALINES_24	OMAP_DSS_LCD_DATALINES(3u)
+
+struct omapfb_display {
+	struct fb_videomode mode;
+
+	unsigned long config;
+
+	unsigned int power_on_delay;
+	unsigned int power_off_delay;
+};
+
+struct omapfb_platform_data {
+	struct omapfb_display const *displays;
+	size_t num_displays;
+
+	unsigned int dss_clk_hz;
+
+	unsigned int bpp;
+
+	struct resource const *screen;
+
+	void (*enable)(int p);
+};
+
+struct device_d;
+struct device_d *omap_add_display(struct omapfb_platform_data *o_pdata);
+
+
+#endif	/* H_BAREBOX_ARCH_ARM_MACH_OMAP_MACH_FB4_H */
diff --git a/arch/arm/mach-omap/omap_fb.c b/arch/arm/mach-omap/omap_fb.c
new file mode 100644
index 0000000..ae318d8
--- /dev/null
+++ b/arch/arm/mach-omap/omap_fb.c
@@ -0,0 +1,34 @@
+#include <driver.h>
+#include <common.h>
+#include <linux/ioport.h>
+#include <mach/omap-fb.h>
+
+#if defined(CONFIG_DRIVER_VIDEO_OMAP)
+static struct resource omapfb_resources[] = {
+	{
+		.name	= "omap4_dss",
+		.start	= 0x48040000,
+		.end	= 0x48040000 + 512 - 1,
+		.flags	= IORESOURCE_MEM | IORESOURCE_MEM_32BIT,
+	}, {
+		.name	= "omap4_dispc",
+		.start	= 0x48041000,
+		.end	= 0x48041000 + 3072 - 1,
+		.flags	= IORESOURCE_MEM | IORESOURCE_MEM_32BIT,
+	},
+};
+
+struct device_d *omap_add_display(struct omapfb_platform_data *o_pdata)
+{
+	return add_generic_device_res("omap_fb", -1,
+				      omapfb_resources,
+				      ARRAY_SIZE(omapfb_resources),
+				      o_pdata);
+}
+#else
+struct device_d *omap_add_display(struct omapfb_platform_data *o_pdata)
+{
+	return NULL;
+}
+#endif
+EXPORT_SYMBOL(omap_add_display);
-- 
1.7.10.4




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
