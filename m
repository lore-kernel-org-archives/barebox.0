Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hiwxA-000214-Fh
 for barebox@lists.infradead.org; Thu, 04 Jul 2019 08:18:54 +0000
From: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Thu, 4 Jul 2019 10:18:49 +0200
Message-Id: <1562228329-198925-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: [PATCH v2] ARM: mach-imx: imx6: Read and print the UID of i.MX6 SOCs
To: barebox@lists.infradead.org

Read the unified ID of the i.MX 6 SOCs and print it in the boot log.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
Changes in v2:
 - Made function available for others through mach-imx/include/mach/imx6.h
---
 arch/arm/mach-imx/imx6.c              | 19 +++++++++++++++++++
 arch/arm/mach-imx/include/mach/imx6.h |  2 ++
 2 files changed, 21 insertions(+)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index e898be9ab545..0fdd9f082fca 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -23,6 +23,7 @@
 #include <mach/reset-reason.h>
 #include <mach/imx6-anadig.h>
 #include <mach/imx6-regs.h>
+#include <mach/imx6-fusemap.h>
 #include <mach/usb.h>
 #include <asm/mmu.h>
 #include <asm/cache-l2x0.h>
@@ -38,6 +39,9 @@
 #define BM_CLPCR_COSC_PWRDOWN		(0x1 << 11)
 #define BM_CLPCR_BYP_MMDC_CH1_LPM_HS	(0x1 << 21)
 
+#define MX6_OCOTP_CFG0			0x410
+#define MX6_OCOTP_CFG1			0x420
+
 static void imx6_init_lowlevel(void)
 {
 	void __iomem *aips1 = (void *)MX6_AIPS1_ON_BASE_ADDR;
@@ -186,17 +190,30 @@ int imx6_cpu_revision(void)
 	return soc_revision;
 }
 
+u64 imx6_uid(void)
+{
+	void __iomem *ocotpbase = IOMEM(MX6_OCOTP_BASE_ADDR);
+	u64 uid;
+
+	uid = ((u64)readl(ocotpbase + MX6_OCOTP_CFG0) << 32);
+	uid |= (u64)readl(ocotpbase + MX6_OCOTP_CFG1);
+
+	return uid;
+}
+
 int imx6_init(void)
 {
 	const char *cputypestr;
 	u32 mx6_silicon_revision;
 	void __iomem *src = IOMEM(MX6_SRC_BASE_ADDR);
+	u64 mx6_uid;
 
 	imx6_init_lowlevel();
 
 	imx6_boot_save_loc();
 
 	mx6_silicon_revision = imx6_cpu_revision();
+	mx6_uid = imx6_uid();
 
 	switch (imx6_cpu_type()) {
 	case IMX6_CPUTYPE_IMX6Q:
@@ -236,6 +253,8 @@ int imx6_init(void)
 
 	imx_set_silicon_revision(cputypestr, mx6_silicon_revision);
 	imx_set_reset_reason(src + IMX_SRC_SRSR, imx_reset_reasons);
+	pr_info("%s unique ID: %llx\n", cputypestr, mx6_uid);
+
 	imx6_setup_ipu_qos();
 	imx6ul_enet_clk_init();
 
diff --git a/arch/arm/mach-imx/include/mach/imx6.h b/arch/arm/mach-imx/include/mach/imx6.h
index 5701bd480c64..f0d20833fd0f 100644
--- a/arch/arm/mach-imx/include/mach/imx6.h
+++ b/arch/arm/mach-imx/include/mach/imx6.h
@@ -124,4 +124,6 @@ static inline int __imx6_cpu_revision(void)
 
 int imx6_cpu_revision(void);
 
+u64 imx6_uid(void);
+
 #endif /* __MACH_IMX6_H */
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
