Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x233.google.com ([2a00:1450:4008:c01::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UNdse-0007yI-Sr
 for barebox@lists.infradead.org; Thu, 04 Apr 2013 06:42:41 +0000
Received: by mail-bk0-f51.google.com with SMTP id y8so1264270bkt.24
 for <barebox@lists.infradead.org>; Wed, 03 Apr 2013 23:42:38 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
Date: Thu, 04 Apr 2013 08:42:35 +0200
Message-ID: <1365057755.3836.17.camel@mars>
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
Subject: [PATCH] ARM omap: add omap4_get_sysclk()
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org

This patch adds a function to get actual system clock.

Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
---
 arch/arm/mach-omap/include/mach/omap4-clock.h |    4 ++++
 arch/arm/mach-omap/omap4_clock.c              |   19 +++++++++++++++++++
 2 files changed, 23 insertions(+)

diff --git a/arch/arm/mach-omap/include/mach/omap4-clock.h b/arch/arm/mach-omap/include/mach/omap4-clock.h
index 8f49aa3..9e53e16 100644
--- a/arch/arm/mach-omap/include/mach/omap4-clock.h
+++ b/arch/arm/mach-omap/include/mach/omap4-clock.h
@@ -4,7 +4,10 @@
 /* PRCM */
 #define CM_SYS_CLKSEL				0x4a306110
 
+#define CM_SYS_CLKSEL_12M		0x1
+#define CM_SYS_CLKSEL_16M8		0x3
 #define CM_SYS_CLKSEL_19M2		0x4
+#define CM_SYS_CLKSEL_26M		0x5
 #define CM_SYS_CLKSEL_38M4		0x7
 
 /* PRM.CKGEN module registers */
@@ -341,5 +344,6 @@ void omap4_enable_gpio1_wup_clocks(void);
 void omap4_enable_gpio_clocks(void);
 void omap4_enable_all_clocks(void);
 void omap4_do_scale_tps62361(u32 reg, u32 volt_mv);
+int omap4_get_sysclk(void);
 
 #endif /* __MACH_OMAP4_CLOCK_H */
diff --git a/arch/arm/mach-omap/omap4_clock.c b/arch/arm/mach-omap/omap4_clock.c
index 889d1f9..37af756 100644
--- a/arch/arm/mach-omap/omap4_clock.c
+++ b/arch/arm/mach-omap/omap4_clock.c
@@ -413,3 +413,22 @@ void omap4_do_scale_tps62361(u32 reg, u32 volt_mv)
 				OMAP44XX_PRM_VC_VAL_BYPASS, LDELAY))
 		debug("Scaling voltage failed for vdd_mpu from TPS\n");
 }
+
+int omap4_get_sysclk(void)
+{
+	int omap4_cm_sys_clks[] = {
+		-1,
+		12000000, /* CM_SYS_CLKSEL_12M */
+		-1,
+		16800000, /* CM_SYS_CLKSEL_16M8 */
+		19200000, /* CM_SYS_CLKSEL_19M2 */
+		26000000, /* CM_SYS_CLKSEL_26M */
+		-1,
+		38400000, /* CM_SYS_CLKSEL_38M4 */
+	};
+	int v = __raw_readl(CM_SYS_CLKSEL);
+
+	if (v >= ARRAY_SIZE(omap4_cm_sys_clks))
+		return -1;
+	return omap4_cm_sys_clks[v];
+}
-- 
1.7.10.4




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
