Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UoVZt-0001Qp-Fr
 for barebox@lists.infradead.org; Mon, 17 Jun 2013 09:18:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Jun 2013 11:17:52 +0200
Message-Id: <1371460673-14284-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1371460673-14284-1-git-send-email-s.hauer@pengutronix.de>
References: <1371460673-14284-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] ARM: i.MX51: Make imx51_init_lowlevel callable from early
 init
To: barebox@lists.infradead.org

imx_silicon_revision() can't be used from early init context, so
use imx51_silicon_revision() instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Makefile | 1 +
 arch/arm/mach-imx/imx51.c  | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 72125e7..db74d4e 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -6,6 +6,7 @@ obj-$(CONFIG_ARCH_IMX27) += imx27.o clk-imx27.o
 obj-$(CONFIG_ARCH_IMX31) += imx31.o clk-imx31.o
 obj-$(CONFIG_ARCH_IMX35) += imx35.o clk-imx35.o
 obj-$(CONFIG_ARCH_IMX51) += imx51.o imx5.o clk-imx5.o
+pbl-$(CONFIG_ARCH_IMX51) += imx51.o imx5.o
 obj-$(CONFIG_ARCH_IMX53) += imx53.o imx5.o clk-imx5.o esdctl-v4.o
 pbl-$(CONFIG_ARCH_IMX53) += imx53.o imx5.o esdctl-v4.o
 obj-$(CONFIG_ARCH_IMX6) += imx6.o usb-imx6.o clk-imx6.o
diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
index c9f88f5..c75534e 100644
--- a/arch/arm/mach-imx/imx51.c
+++ b/arch/arm/mach-imx/imx51.c
@@ -137,7 +137,7 @@ void imx51_init_lowlevel(unsigned int cpufreq_mhz)
 {
 	void __iomem *ccm = (void __iomem *)MX51_CCM_BASE_ADDR;
 	u32 r;
-	int rev = imx_silicon_revision();
+	int rev = imx51_silicon_revision();
 
 	imx5_init_lowlevel();
 
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
