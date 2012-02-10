Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvrdC-0004jl-C6
 for barebox@lists.infradead.org; Fri, 10 Feb 2012 14:39:23 +0000
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
 ([99.241.91.63] helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
 id 1Rvrd6-0008B3-Tn
 for barebox@lists.infradead.org; Fri, 10 Feb 2012 09:39:17 -0500
Date: Fri, 10 Feb 2012 09:39:10 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.DEB.2.02.1202100937130.23570@oneiric>
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
Subject: [RFC] A first pass at recognizing Pandaboards
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  thoughts on the following patch?  it's certainly not the final
result, but it at least *starts* the process of properly recognizing
newer pandaboards, using code taking very close to verbatim out of
u-boot.

  it's been compile-tested and appears to still work on all boards it
did before.  i'll do a bit more testing to make sure of that, but is
there any philosophical objection to the following as a single patch
submission?

diff --git a/arch/arm/mach-omap/include/mach/omap4-silicon.h b/arch/arm/mach-omap/include/mach/omap4-silicon.h
index db0dfdf..4a98f45 100644
--- a/arch/arm/mach-omap/include/mach/omap4-silicon.h
+++ b/arch/arm/mach-omap/include/mach/omap4-silicon.h
@@ -156,6 +156,9 @@ struct s32ktimer {
 #define OMAP4430_ES2_0	2
 #define OMAP4430_ES2_1	3
 #define OMAP4430_ES2_2	4
+#define OMAP4430_ES2_3	5
+#define OMAP4460_ES1_0	6
+#define OMAP4460_ES1_1	7

 struct ddr_regs {
 	u32 tim1;
diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
index 5223c7e..2816889 100644
--- a/arch/arm/mach-omap/omap4_generic.c
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -7,6 +7,26 @@
 #include <mach/syslib.h>
 #include <mach/xload.h>

+/*
+ *  The following several lines are taken from U-Boot to support
+ * recognizing more revisions of OMAP4 chips.
+ */
+
+#define MIDR_CORTEX_A9_R0P1	0x410FC091
+#define MIDR_CORTEX_A9_R1P2	0x411FC092
+#define MIDR_CORTEX_A9_R1P3	0x411FC093
+#define MIDR_CORTEX_A9_R2P10	0x412FC09A
+
+#define CONTROL_ID_CODE         0x4A002204
+
+#define OMAP4_CONTROL_ID_CODE_ES1_0     0x0B85202F
+#define OMAP4_CONTROL_ID_CODE_ES2_0     0x1B85202F
+#define OMAP4_CONTROL_ID_CODE_ES2_1     0x3B95C02F
+#define OMAP4_CONTROL_ID_CODE_ES2_2     0x4B95C02F
+#define OMAP4_CONTROL_ID_CODE_ES2_3     0x6B95C02F
+#define OMAP4460_CONTROL_ID_CODE_ES1_0  0x0B94E02F
+#define OMAP4460_CONTROL_ID_CODE_ES1_1  0x2B94E02F
+
 void __noreturn reset_cpu(unsigned long addr)
 {
 	writel(PRM_RSTCTRL_RESET, PRM_RSTCTRL);
@@ -359,22 +379,45 @@ static unsigned int cortex_a9_rev(void)

 unsigned int omap4_revision(void)
 {
-	unsigned int chip_rev = 0;
 	unsigned int rev = cortex_a9_rev();

 	switch(rev) {
-	case 0x410FC091:
+	case MIDR_CORTEX_A9_R0P1:
 		return OMAP4430_ES1_0;
-	case 0x411FC092:
-		chip_rev = (readl(OMAP44XX_CTRL_BASE + 0x204)  >> 28) & 0xF;
-		if (chip_rev == 3)
+	case MIDR_CORTEX_A9_R1P2:
+		switch (readl(CONTROL_ID_CODE)) {
+		case OMAP4_CONTROL_ID_CODE_ES2_0:
+			return OMAP4430_ES2_0;
+			break;
+		case OMAP4_CONTROL_ID_CODE_ES2_1:
 			return OMAP4430_ES2_1;
-		else if (chip_rev >= 4)
+			break;
+		case OMAP4_CONTROL_ID_CODE_ES2_2:
 			return OMAP4430_ES2_2;
-		else
+			break;
+		default:
 			return OMAP4430_ES2_0;
+			break;
+		}
+		break;
+	case MIDR_CORTEX_A9_R1P3:
+		return OMAP4430_ES2_3;
+		break;
+        case MIDR_CORTEX_A9_R2P10:
+                switch (readl(CONTROL_ID_CODE)) {
+                case OMAP4460_CONTROL_ID_CODE_ES1_1:
+                        return OMAP4460_ES1_1;
+                        break;
+                case OMAP4460_CONTROL_ID_CODE_ES1_0:
+                default:
+                        return OMAP4460_ES1_0;
+                        break;
+                }
+                break;
+        default:
+                return OMAP4430_SILICON_ID_INVALID;
+                break;
 	}
-	return OMAP4430_SILICON_ID_INVALID;
 }

 /*

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
