Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cUEZi-0004GY-Mw
 for barebox@lists.infradead.org; Thu, 19 Jan 2017 15:24:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 19 Jan 2017 16:23:54 +0100
Message-Id: <20170119152355.2280-5-s.hauer@pengutronix.de>
In-Reply-To: <20170119152355.2280-1-s.hauer@pengutronix.de>
References: <20170119152355.2280-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/5] ARM: i.MX7: initialize architected timer
To: Barebox List <barebox@lists.infradead.org>

This is the same that U-Boot does. The registers are not documented.
Without this the architected timer on the i.MX7 does not work.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx7.c | 35 +++++++++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm/mach-imx/imx7.c b/arch/arm/mach-imx/imx7.c
index fde66d838..ca094fe83 100644
--- a/arch/arm/mach-imx/imx7.c
+++ b/arch/arm/mach-imx/imx7.c
@@ -46,6 +46,39 @@ void imx7_init_lowlevel(void)
 	writel(0, aips2 + 0x50);
 }
 
+#define SC_CNTCR	0x0
+#define SC_CNTSR	0x4
+#define SC_CNTCV1	0x8
+#define SC_CNTCV2	0xc
+#define SC_CNTFID0	0x20
+#define SC_CNTFID1	0x24
+#define SC_CNTFID2	0x28
+#define SC_counterid	0xfcc
+
+#define SC_CNTCR_ENABLE         (1 << 0)
+#define SC_CNTCR_HDBG           (1 << 1)
+#define SC_CNTCR_FREQ0          (1 << 8)
+#define SC_CNTCR_FREQ1          (1 << 9)
+
+static int imx7_timer_init(void)
+{
+	void __iomem *sctr = IOMEM(MX7_SCTR_BASE_ADDR);
+	unsigned long val, freq;
+
+	freq = 8000000;
+	asm("mcr p15, 0, %0, c14, c0, 0" : : "r" (freq));
+
+	writel(freq, sctr + SC_CNTFID0);
+
+	/* Enable system counter */
+	val = readl(sctr + SC_CNTCR);
+	val &= ~(SC_CNTCR_FREQ0 | SC_CNTCR_FREQ1);
+	val |= SC_CNTCR_FREQ0 | SC_CNTCR_ENABLE | SC_CNTCR_HDBG;
+	writel(val, sctr + SC_CNTCR);
+
+	return 0;
+}
+
 int imx7_init(void)
 {
 	const char *cputypestr;
@@ -53,6 +86,8 @@ int imx7_init(void)
 
 	imx7_init_lowlevel();
 
+	imx7_timer_init();
+
 	imx7_boot_save_loc();
 
 	imx7_silicon_revision = imx7_cpu_revision();
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
