Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSp4w-0002Ng-A7
 for barebox@lists.infradead.org; Thu, 07 Nov 2019 21:12:35 +0000
Received: from astat.fritz.box (a89-183-53-44.net-htp.de [89.183.53.44])
 by lynxeye.de (Postfix) with ESMTPA id 47DEDE74264
 for <barebox@lists.infradead.org>; Thu,  7 Nov 2019 22:11:26 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu,  7 Nov 2019 22:11:10 +0100
Message-Id: <20191107211119.68064-10-dev@lynxeye.de>
In-Reply-To: <20191107211119.68064-1-dev@lynxeye.de>
References: <20191107211119.68064-1-dev@lynxeye.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 09/18] ARM: zynq: move clock controller driver to drivers/clk
To: barebox@lists.infradead.org

No functional change, just adjusting the Zynq code to common practise.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-zynq/Makefile                                  | 2 +-
 drivers/clk/Makefile                                         | 1 +
 drivers/clk/zynq/Makefile                                    | 1 +
 arch/arm/mach-zynq/clk-zynq7000.c => drivers/clk/zynq/clkc.c | 0
 4 files changed, 3 insertions(+), 1 deletion(-)
 create mode 100644 drivers/clk/zynq/Makefile
 rename arch/arm/mach-zynq/clk-zynq7000.c => drivers/clk/zynq/clkc.c (100%)

diff --git a/arch/arm/mach-zynq/Makefile b/arch/arm/mach-zynq/Makefile
index 459c95762256..b401c77983d3 100644
--- a/arch/arm/mach-zynq/Makefile
+++ b/arch/arm/mach-zynq/Makefile
@@ -1 +1 @@
-obj-y += zynq.o devices.o clk-zynq7000.o
+obj-y += zynq.o devices.o
diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index 1bd5f9035896..8160620dc618 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -9,6 +9,7 @@ obj-$(CONFIG_ARCH_MVEBU)	+= mvebu/
 obj-$(CONFIG_ARCH_MXS)		+= mxs/
 obj-$(CONFIG_ARCH_ROCKCHIP)	+= rockchip/
 obj-$(CONFIG_ARCH_TEGRA)	+= tegra/
+obj-$(CONFIG_ARCH_ZYNQ)		+= zynq/
 obj-$(CONFIG_ARCH_ZYNQMP)	+= zynqmp/
 obj-$(CONFIG_CLK_SOCFPGA)	+= socfpga/
 obj-$(CONFIG_SOC_QCA_AR9331)	+= clk-ar933x.o
diff --git a/drivers/clk/zynq/Makefile b/drivers/clk/zynq/Makefile
new file mode 100644
index 000000000000..8fedfc77e4dc
--- /dev/null
+++ b/drivers/clk/zynq/Makefile
@@ -0,0 +1 @@
+obj-y += clkc.o
diff --git a/arch/arm/mach-zynq/clk-zynq7000.c b/drivers/clk/zynq/clkc.c
similarity index 100%
rename from arch/arm/mach-zynq/clk-zynq7000.c
rename to drivers/clk/zynq/clkc.c
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
