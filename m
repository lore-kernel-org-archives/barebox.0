Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMiTp-0002Am-4C
 for barebox@lists.infradead.org; Fri, 12 Oct 2012 16:52:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Oct 2012 18:52:51 +0200
Message-Id: <1350060774-24779-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1350060774-24779-1-git-send-email-s.hauer@pengutronix.de>
References: <1350060774-24779-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/4] ARM i.MX53: enable imx53_init_lowlevel for pbl
To: barebox@lists.infradead.org

The KARO Tx53 board in the revision 8030 has an instable SDRAM
setup. It works as long as the MMU is disabled, but the board
crashes at arbitrary places once the MMU gets enabled. So we
need the PLL setup early. Enable it for pbl.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Makefile |    1 +
 arch/arm/mach-imx/imx53.c  |    4 +++-
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 67f3a8c..e5ef78a 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -7,6 +7,7 @@ obj-$(CONFIG_ARCH_IMX31) += imx31.o iomux-v2.o clk-imx31.o
 obj-$(CONFIG_ARCH_IMX35) += imx35.o iomux-v3.o clk-imx35.o
 obj-$(CONFIG_ARCH_IMX51) += imx51.o iomux-v3.o imx5.o clk-imx5.o
 obj-$(CONFIG_ARCH_IMX53) += imx53.o iomux-v3.o imx5.o clk-imx5.o
+pbl-$(CONFIG_ARCH_IMX53) += imx53.o imx5.o
 obj-$(CONFIG_ARCH_IMX6) += imx6.o iomux-v3.o usb-imx6.o clk-imx6.o
 obj-$(CONFIG_IMX_IIM)	+= iim.o
 obj-$(CONFIG_NAND_IMX) += nand.o
diff --git a/arch/arm/mach-imx/imx53.c b/arch/arm/mach-imx/imx53.c
index 38b94fc..cac7b74 100644
--- a/arch/arm/mach-imx/imx53.c
+++ b/arch/arm/mach-imx/imx53.c
@@ -191,6 +191,8 @@ void imx53_init_lowlevel(unsigned int cpufreq_mhz)
 	writel(0xffffffff, ccm + MX5_CCM_CCGR6);
 	writel(0xffffffff, ccm + MX53_CCM_CCGR7);
 
-	clock_notifier_call_chain();
+	if (!IS_ENABLED(__PBL__))
+		clock_notifier_call_chain();
+
 	writel(0, ccm + MX5_CCM_CCDR);
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
