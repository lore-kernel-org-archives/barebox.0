Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WDt6O-0000TE-By
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 10:01:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Feb 2014 11:00:19 +0100
Message-Id: <1392285621-17485-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1392285621-17485-1-git-send-email-s.hauer@pengutronix.de>
References: <1392285621-17485-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] ARM: i.MX6: Add PWM clk lookups
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clk-imx6.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/mach-imx/clk-imx6.c b/arch/arm/mach-imx/clk-imx6.c
index c32b6cc..d4de737 100644
--- a/arch/arm/mach-imx/clk-imx6.c
+++ b/arch/arm/mach-imx/clk-imx6.c
@@ -305,6 +305,10 @@ static int imx6_ccm_probe(struct device_d *dev)
 	clkdev_add_physbase(clks[usbphy1], MX6_USBPHY1_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[usbphy2], MX6_USBPHY2_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[enfc_podf], MX6_GPMI_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg_per], MX6_PWM1_BASE_ADDR, "per");
+	clkdev_add_physbase(clks[ipg_per], MX6_PWM2_BASE_ADDR, "per");
+	clkdev_add_physbase(clks[ipg_per], MX6_PWM3_BASE_ADDR, "per");
+	clkdev_add_physbase(clks[ipg_per], MX6_PWM4_BASE_ADDR, "per");
 
 	writel(0xffffffff, ccm_base + CCGR0);
 	writel(0xffffffff, ccm_base + CCGR1);
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
