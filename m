Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cYKnZ-0002FW-3h
 for barebox@lists.infradead.org; Mon, 30 Jan 2017 22:51:49 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Mon, 30 Jan 2017 23:50:56 +0100
Message-Id: <1485816659-26091-2-git-send-email-akurz@blala.de>
In-Reply-To: <1485816659-26091-1-git-send-email-akurz@blala.de>
References: <1485816659-26091-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH 2/5] ARM i.MX: add SoC type detection for i.MX6SL
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

The i.MX6 series SoC type is determined by barebox by examining the
USB_ANALOG_DIGPROG aka IMX6_ANATOP_SI_REV register. This register is located
at a common offset for all mx6 SoC - except for i.MX6SL where a different
offset is used. This creates a dilemma while distinguishing the mx6sl from
non-mx6sl SOC since the SoC type identification register location is type
specific itself.

Access to undocumented and probably invalid or unpredictable registers should
be avoided as possible. For the mx6sl detection an access to the general
USB_ANALOG_DIGPROG @0x260 cannot be avoided when running on mx6sl. This
register contained the value 0x00014009 for different mx6sl Rev. 1.2 based
e-book readers using MCIMX6L7DVN10AB and MCIMX6L8DVN10AB SoC. This
implementation assumes the value of MAJOR_UPPER (here 0x01) to be smaller
than the smallest non-6sl MAJOR_UPPER (0x61 for mx6s).

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/mach-imx/Kconfig             |  4 ++++
 arch/arm/mach-imx/imx6.c              |  3 +++
 arch/arm/mach-imx/include/mach/imx6.h | 19 ++++++++++++++++++-
 3 files changed, 25 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 4dc1098..c1ed5b2 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -148,6 +148,10 @@ config ARCH_IMX6
 	select COMMON_CLK_OF_PROVIDER
 	select HW_HAS_PCI
 
+config ARCH_IMX6SL
+	bool
+	select ARCH_IMX6
+
 config ARCH_IMX6SX
 	bool
 	select ARCH_IMX6
diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index b2979b0..44a8dbe 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -151,6 +151,9 @@ int imx6_init(void)
 	case IMX6_CPUTYPE_IMX6S:
 		cputypestr = "i.MX6 Solo";
 		break;
+	case IMX6_CPUTYPE_IMX6SL:
+		cputypestr = "i.MX6 SoloLite";
+		break;
 	case IMX6_CPUTYPE_IMX6SX:
 		cputypestr = "i.MX6 SoloX";
 		break;
diff --git a/arch/arm/mach-imx/include/mach/imx6.h b/arch/arm/mach-imx/include/mach/imx6.h
index e201721..327676b 100644
--- a/arch/arm/mach-imx/include/mach/imx6.h
+++ b/arch/arm/mach-imx/include/mach/imx6.h
@@ -9,7 +9,9 @@
 void imx6_init_lowlevel(void);
 
 #define IMX6_ANATOP_SI_REV 0x260
+#define IMX6SL_ANATOP_SI_REV 0x280
 
+#define IMX6_CPUTYPE_IMX6SL	0x160
 #define IMX6_CPUTYPE_IMX6S	0x161
 #define IMX6_CPUTYPE_IMX6DL	0x261
 #define IMX6_CPUTYPE_IMX6SX	0x462
@@ -36,6 +38,16 @@ static inline int __imx6_cpu_type(void)
 
 	val = readl(MX6_ANATOP_BASE_ADDR + IMX6_ANATOP_SI_REV);
 	val = (val >> 16) & 0xff;
+	/* non-MX6-standard SI_REV reg offset for MX6SL */
+	if (IS_ENABLED(CONFIG_ARCH_IMX6SL) &&
+	    val < (IMX6_CPUTYPE_IMX6S & 0xff)) {
+		uint32_t tmp;
+		tmp = readl(MX6_ANATOP_BASE_ADDR + IMX6SL_ANATOP_SI_REV);
+		tmp = (tmp >> 16) & 0xff;
+		if ((IMX6_CPUTYPE_IMX6SL & 0xff) == tmp)
+			/* intentionally skip scu_get_core_count() for MX6SL */
+			return IMX6_CPUTYPE_IMX6SL;
+	}
 
 	val |= scu_get_core_count() << 8;
 
@@ -68,14 +80,19 @@ DEFINE_MX6_CPU_TYPE(mx6dl, IMX6_CPUTYPE_IMX6DL);
 DEFINE_MX6_CPU_TYPE(mx6q, IMX6_CPUTYPE_IMX6Q);
 DEFINE_MX6_CPU_TYPE(mx6d, IMX6_CPUTYPE_IMX6D);
 DEFINE_MX6_CPU_TYPE(mx6sx, IMX6_CPUTYPE_IMX6SX);
+DEFINE_MX6_CPU_TYPE(mx6sl, IMX6_CPUTYPE_IMX6SL);
 DEFINE_MX6_CPU_TYPE(mx6ul, IMX6_CPUTYPE_IMX6UL);
 
 static inline int __imx6_cpu_revision(void)
 {
 
 	uint32_t rev;
+	uint32_t si_rev_offset = IMX6_ANATOP_SI_REV;
+
+	if (IS_ENABLED(CONFIG_ARCH_IMX6SL) && cpu_mx6_is_mx6sl())
+		si_rev_offset = IMX6SL_ANATOP_SI_REV;
 
-	rev = readl(MX6_ANATOP_BASE_ADDR + IMX6_ANATOP_SI_REV);
+	rev = readl(MX6_ANATOP_BASE_ADDR + si_rev_offset);
 
 	switch (rev & 0xfff) {
 	case 0x00:
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
