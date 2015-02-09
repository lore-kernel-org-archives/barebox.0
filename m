Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YKpsI-0008WQ-Fk
 for barebox@lists.infradead.org; Mon, 09 Feb 2015 15:03:48 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id EE1E0A00105
 for <barebox@lists.infradead.org>; Mon,  9 Feb 2015 16:04:02 +0100 (CET)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Mon, 9 Feb 2015 16:01:46 +0100
Message-Id: <1423494107-29051-1-git-send-email-w.egorov@phytec.de>
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
Subject: [PATCH: For next 1/2] ARM: am33xx: Add a function to retrieve the
 reset reason
To: barebox@lists.infradead.org

This patch adds a function to retrieve the last occurred reset reason
on the AM335x.

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
 arch/arm/mach-omap/am33xx_generic.c              | 41 ++++++++++++++++++++++++
 arch/arm/mach-omap/include/mach/am33xx-generic.h | 13 ++++++++
 arch/arm/mach-omap/include/mach/am33xx-silicon.h |  1 +
 3 files changed, 55 insertions(+)

diff --git a/arch/arm/mach-omap/am33xx_generic.c b/arch/arm/mach-omap/am33xx_generic.c
index 912138d..ceafc09 100644
--- a/arch/arm/mach-omap/am33xx_generic.c
+++ b/arch/arm/mach-omap/am33xx_generic.c
@@ -476,3 +476,44 @@ int am33xx_of_register_bootdevice(void)
 
 	return 0;
 }
+
+static const char *resetreason_str[] = {
+	[AM33XX_RESET_ICEPICK]	= "IcePick",
+	[AM33XX_RESET_EXTWARM]	= "External warm",
+	[AM33XX_RESET_WD1]	= "Watchdog1 timer",
+	[AM33XX_RESET_WD0]	= "Watchdog0 timer",
+	[AM33XX_RESET_GLOBALSW]	= "Global warm software",
+	[AM33XX_RESET_COLD]	= "Power-on (cold)",
+	[AM33XX_RESET_UNKNOWN]	= "Unknown",
+};
+
+const char *am33xx_get_reset_reason_str(void)
+{
+	return resetreason_str[am33xx_get_reset_reason()];
+}
+
+enum am33xx_resetreason am33xx_get_reset_reason(void)
+{
+	static int init;
+	static uint32_t val;
+
+	if (!init) {
+		/* save value of AM33XX_PRM_RSTST register */
+		val = readl(AM33XX_PRM_RSTST);
+		/* clear AM33XX_PRM_RSTST - must be cleared by software
+		 * (warm reset insensitive) */
+		writel(val, AM33XX_PRM_RSTST);
+		init = 1;
+	}
+
+	switch (val) {
+	case (1 << 9): return AM33XX_RESET_ICEPICK;
+	case (1 << 5): return AM33XX_RESET_EXTWARM;
+	case (1 << 4): return AM33XX_RESET_WD1;
+	case (1 << 3): return AM33XX_RESET_WD0;
+	case (1 << 1): return AM33XX_RESET_GLOBALSW;
+	case (1 << 0): return AM33XX_RESET_COLD;
+	}
+
+	return AM33XX_RESET_UNKNOWN;
+}
diff --git a/arch/arm/mach-omap/include/mach/am33xx-generic.h b/arch/arm/mach-omap/include/mach/am33xx-generic.h
index 03418b0..18ca6e7 100644
--- a/arch/arm/mach-omap/include/mach/am33xx-generic.h
+++ b/arch/arm/mach-omap/include/mach/am33xx-generic.h
@@ -36,4 +36,17 @@ int am33xx_devices_init(void);
 void am33xx_select_rmii2_crs_dv(void);
 int am33xx_of_register_bootdevice(void);
 
+enum am33xx_resetreason {
+	AM33XX_RESET_ICEPICK,
+	AM33XX_RESET_EXTWARM,
+	AM33XX_RESET_WD1,
+	AM33XX_RESET_WD0,
+	AM33XX_RESET_GLOBALSW,
+	AM33XX_RESET_COLD,
+	AM33XX_RESET_UNKNOWN,
+};
+
+enum am33xx_resetreason am33xx_get_reset_reason(void);
+const char *am33xx_get_reset_reason_str(void);
+
 #endif /* __MACH_AM33XX_GENERIC_H */
diff --git a/arch/arm/mach-omap/include/mach/am33xx-silicon.h b/arch/arm/mach-omap/include/mach/am33xx-silicon.h
index 4e63b43..7c209ec 100644
--- a/arch/arm/mach-omap/include/mach/am33xx-silicon.h
+++ b/arch/arm/mach-omap/include/mach/am33xx-silicon.h
@@ -68,6 +68,7 @@
 
 #define AM33XX_PRM_RSTCTRL		(AM33XX_PRM_BASE + 0x0f00)
 #define AM33XX_PRM_RSTCTRL_RESET	0x1
+#define AM33XX_PRM_RSTST		(AM33XX_PRM_BASE + 0x0f08)
 
 /* CTRL */
 #define AM33XX_CTRL_BASE		(AM33XX_L4_WKUP_BASE + 0x210000)
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
