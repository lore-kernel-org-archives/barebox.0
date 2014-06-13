Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x233.google.com ([2a00:1450:4010:c04::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WvMLD-0000Bm-3Q
 for barebox@lists.infradead.org; Fri, 13 Jun 2014 07:56:05 +0000
Received: by mail-lb0-f179.google.com with SMTP id u10so1328231lbd.38
 for <barebox@lists.infradead.org>; Fri, 13 Jun 2014 00:55:40 -0700 (PDT)
Received: from mars.ipredator.se (anon-32-73.vpn.ipredator.se. [46.246.32.73])
 by mx.google.com with ESMTPSA id
 fb6sm512523lac.40.2014.06.13.00.55.38
 for <barebox@lists.infradead.org>
 (version=TLSv1 cipher=RC4-SHA bits=128/128);
 Fri, 13 Jun 2014 00:55:39 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
Date: Fri, 13 Jun 2014 09:54:32 +0200
Message-Id: <1402646075-22747-16-git-send-email-chf.fritz@googlemail.com>
In-Reply-To: <1402646075-22747-1-git-send-email-chf.fritz@googlemail.com>
References: <1402646075-22747-1-git-send-email-chf.fritz@googlemail.com>
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
Subject: [PATCH 15/18] arm: am33xx: add usb platform helper code
To: barebox@lists.infradead.org

---
 arch/arm/mach-omap/Makefile                  |    2 +-
 arch/arm/mach-omap/am33xx_usb.c              |   65 ++++++++++++++++++++++++++
 arch/arm/mach-omap/include/mach/am33xx-usb.h |   11 +++++
 3 files changed, 77 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-omap/am33xx_usb.c
 create mode 100644 arch/arm/mach-omap/include/mach/am33xx-usb.h

diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index c9b6f4b..789f91b 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -23,7 +23,7 @@ obj-$(CONFIG_ARCH_OMAP3) += omap3_generic.o auxcr.o
 pbl-$(CONFIG_ARCH_OMAP3) += omap3_generic.o auxcr.o
 obj-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
 pbl-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
-obj-pbl-$(CONFIG_ARCH_AM33XX) += am33xx_generic.o am33xx_clock.o am33xx_mux.o
+obj-pbl-$(CONFIG_ARCH_AM33XX) += am33xx_generic.o am33xx_clock.o am33xx_mux.o am33xx_usb.o
 obj-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock.o
 pbl-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock.o
 obj-$(CONFIG_OMAP_GPMC) += gpmc.o devices-gpmc-nand.o
diff --git a/arch/arm/mach-omap/am33xx_usb.c b/arch/arm/mach-omap/am33xx_usb.c
new file mode 100644
index 0000000..b4d570e
--- /dev/null
+++ b/arch/arm/mach-omap/am33xx_usb.c
@@ -0,0 +1,65 @@
+#include <driver.h>
+#include <common.h>
+#include <linux/ioport.h>
+#include <mach/am33xx-silicon.h>
+#include <mach/am33xx-usb.h>
+
+#ifdef CONFIG_USB_MUSB_HOST
+static struct resource am33xx_usb_resources[] = {
+	{
+		.name	= "am33xx_usbss",
+		.start	= AM33XX_USBSS_BASE,
+		.end	= AM33XX_USBSS_BASE + 1024 - 1,
+		.flags	= IORESOURCE_MEM | IORESOURCE_MEM_32BIT,
+	}, {
+		.name	= "am33xx_usb0",
+		.start	= AM33XX_USB0_BASE,
+		.end	= AM33XX_USB0_BASE + 767 - 1,
+		.flags	= IORESOURCE_MEM | IORESOURCE_MEM_32BIT,
+	}, {
+		.name	= "am33xx_usb1",
+		.start	= AM33XX_USB1_BASE,
+		.end	= AM33XX_USB1_BASE + 767 - 1,
+		.flags	= IORESOURCE_MEM | IORESOURCE_MEM_32BIT,
+	}, {
+		.name	= "am33xx_usb0phy",
+		.start	= AM33XX_USB0_PHY_BASE,
+		.end	= AM33XX_USB0_PHY_BASE + 255 - 1,
+		.flags	= IORESOURCE_MEM | IORESOURCE_MEM_32BIT,
+	}, {
+		.name	= "am33xx_usb1phy",
+		.start	= AM33XX_USB1_PHY_BASE,
+		.end	= AM33XX_USB1_PHY_BASE + 255 - 1,
+		.flags	= IORESOURCE_MEM | IORESOURCE_MEM_32BIT,
+	}, {
+		.name	= "am33xx_usb0core",
+		.start	= AM33XX_USB0_CORE_BASE,
+		.end	= AM33XX_USB0_CORE_BASE + 1023 - 1,
+		.flags	= IORESOURCE_MEM | IORESOURCE_MEM_32BIT,
+	}, {
+		.name	= "am33xx_usb1core",
+		.start	= AM33XX_USB1_CORE_BASE,
+		.end	= AM33XX_USB1_CORE_BASE + 1023 - 1,
+		.flags	= IORESOURCE_MEM | IORESOURCE_MEM_32BIT,
+	}, {
+		.name	= "am33xx_ctrl_device_base",
+		.start	= AM33XX_IDCODE_REG,
+		.end	= AM33XX_IDCODE_REG + 128 - 1,
+		.flags	= IORESOURCE_MEM | IORESOURCE_MEM_32BIT,
+	},
+};
+
+struct device_d *am33xx_add_usb(struct am33xx_usb_pdata *a_pdata)
+{
+	return add_generic_device_res("am33xx_usb", -1,
+				am33xx_usb_resources,
+				ARRAY_SIZE(am33xx_usb_resources),
+				a_pdata);
+}
+#else
+struct device_d *am33xx_add_usb(struct am33xx_usb_pdata *a_pdata)
+{
+	return NULL;
+}
+#endif
+EXPORT_SYMBOL(am33xx_add_usb0);
diff --git a/arch/arm/mach-omap/include/mach/am33xx-usb.h b/arch/arm/mach-omap/include/mach/am33xx-usb.h
new file mode 100644
index 0000000..ff3b000
--- /dev/null
+++ b/arch/arm/mach-omap/include/mach/am33xx-usb.h
@@ -0,0 +1,11 @@
+#ifndef H_BAREBOX_ARCH_ARM_MACH_OMAP_MACH_AUSB_H
+#define H_BAREBOX_ARCH_ARM_MACH_OMAP_MACH_AUSB_H
+
+struct am33xx_usb_pdata {
+	unsigned int	bus_number;
+};
+
+struct device_d;
+struct device_d *am33xx_add_usb(struct am33xx_usb_pdata *a_pdata);
+
+#endif	/* H_BAREBOX_ARCH_ARM_MACH_OMAP_MACH_AUSB_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
