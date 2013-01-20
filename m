Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tws0L-00072K-En
 for barebox@lists.infradead.org; Sun, 20 Jan 2013 10:19:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 20 Jan 2013 11:19:51 +0100
Message-Id: <1358677194-23423-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1358677194-23423-1-git-send-email-s.hauer@pengutronix.de>
References: <1358677194-23423-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/5] ARM i.MX6: Fix usb phy base addresses
To: barebox@lists.infradead.org

What we had as usb phy1 base address is really usb phy2. Fix the names
and add the missing base address definition for usb phy1.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/imx6-regs.h |    3 ++-
 arch/arm/mach-imx/usb-imx6.c               |   10 +++++-----
 2 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imx6-regs.h b/arch/arm/mach-imx/include/mach/imx6-regs.h
index 7c72cba..d947aa6 100644
--- a/arch/arm/mach-imx/include/mach/imx6-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx6-regs.h
@@ -49,7 +49,8 @@
 #define MX6_WDOG2_BASE_ADDR             (MX6_AIPS1_OFF_BASE_ADDR + 0x40000)
 #define MX6_CCM_BASE_ADDR               (MX6_AIPS1_OFF_BASE_ADDR + 0x44000)
 #define MX6_ANATOP_BASE_ADDR            (MX6_AIPS1_OFF_BASE_ADDR + 0x48000)
-#define MX6_USBPHY1_BASE_ADDR		(MX6_AIPS1_OFF_BASE_ADDR + 0x4a000)
+#define MX6_USBPHY1_BASE_ADDR		(MX6_AIPS1_OFF_BASE_ADDR + 0x49000)
+#define MX6_USBPHY2_BASE_ADDR		(MX6_AIPS1_OFF_BASE_ADDR + 0x4a000)
 #define MX6_SNVS_BASE_ADDR              (MX6_AIPS1_OFF_BASE_ADDR + 0x4C000)
 #define MX6_EPIT1_BASE_ADDR             (MX6_AIPS1_OFF_BASE_ADDR + 0x50000)
 #define MX6_EPIT2_BASE_ADDR             (MX6_AIPS1_OFF_BASE_ADDR + 0x54000)
diff --git a/arch/arm/mach-imx/usb-imx6.c b/arch/arm/mach-imx/usb-imx6.c
index a3c4304..5e3df10 100644
--- a/arch/arm/mach-imx/usb-imx6.c
+++ b/arch/arm/mach-imx/usb-imx6.c
@@ -94,18 +94,18 @@ int imx6_usb_phy2_enable(void)
 	while (readl(MX6_USBOH3_USB_BASE_ADDR + USB_UH1_USBCMD) & USB_CMD_RESET);
 
 	/* reset usbphy */
-	writel(USBPHY_CTRL_SFTRST, MX6_USBPHY1_BASE_ADDR + USBPHY_CTRL + SET);
+	writel(USBPHY_CTRL_SFTRST, MX6_USBPHY2_BASE_ADDR + USBPHY_CTRL + SET);
 	udelay(10);
 	/* clr reset and clkgate */
-	writel(USBPHY_CTRL_SFTRST | USBPHY_CTRL_CLKGATE, MX6_USBPHY1_BASE_ADDR + USBPHY_CTRL + CLR);
+	writel(USBPHY_CTRL_SFTRST | USBPHY_CTRL_CLKGATE, MX6_USBPHY2_BASE_ADDR + USBPHY_CTRL + CLR);
 
 	/* clr all pwd bits => power up phy */
-	writel(0xffffffff, MX6_USBPHY1_BASE_ADDR + CLR);
+	writel(0xffffffff, MX6_USBPHY2_BASE_ADDR + CLR);
 
 	/* set utmilvl2/3 */
-	val = readl(MX6_USBPHY1_BASE_ADDR + USBPHY_CTRL);
+	val = readl(MX6_USBPHY2_BASE_ADDR + USBPHY_CTRL);
 	val |= USBPHY_CTRL_ENUTMILEVEL3 | USBPHY_CTRL_ENUTMILEVEL2;
-	writel(val, MX6_USBPHY1_BASE_ADDR + USBPHY_CTRL + SET);
+	writel(val, MX6_USBPHY2_BASE_ADDR + USBPHY_CTRL + SET);
 
 	return 0;
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
