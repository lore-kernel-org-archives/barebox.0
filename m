Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp44.i.mail.ru ([94.100.177.104])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UG5a0-0003N7-9r
 for barebox@lists.infradead.org; Thu, 14 Mar 2013 10:40:13 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu, 14 Mar 2013 14:40:06 +0400
Message-Id: <1363257606-23877-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1363257606-23877-1-git-send-email-shc_work@mail.ru>
References: <1363257606-23877-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/2] arm: ccmx51: Using imx51_add_usbotg() function for
 register USB
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/ccxmx51/ccxmx51.c |   51 +++---------------------------------
 1 files changed, 5 insertions(+), 46 deletions(-)

diff --git a/arch/arm/boards/ccxmx51/ccxmx51.c b/arch/arm/boards/ccxmx51/ccxmx51.c
index b1c579b..8230f55 100644
--- a/arch/arm/boards/ccxmx51/ccxmx51.c
+++ b/arch/arm/boards/ccxmx51/ccxmx51.c
@@ -195,51 +195,10 @@ static const struct spi_board_info ccxmx51_spi_board_info[] = {
 	},
 };
 
-static void ccxmx51_otghost_init(void)
-{
-#define MX51_USBOTHER_REGS_OFFSET		0x800
-#define MX51_USBCTRL_OFFSET			0x0
-#define MX51_USB_PHY_CTR_FUNC_OFFSET		0x8
-#define MX51_USB_PHY_CTR_FUNC2_OFFSET		0xc
-#define MX51_USB_UTMI_PHYCTRL1_PLLDIV_MASK	0x3
-#define MX51_USB_PLL_DIV_19_2_MHZ		0x00
-#define MX51_USB_PLL_DIV_24_MHZ			0x01
-#define MX51_USB_PLL_DIV_26_MHZ			0x02
-#define MX51_USB_PLL_DIV_27_MHZ			0x03
-#define MX51_OTG_PHYCTRL_OC_DIS_BIT		(1 << 8)
-#define MX51_OTG_UCTRL_OWIE_BIT			(1 << 27)
-#define MX51_OTG_UCTRL_OPM_BIT			(1 << 24)
-
-#define USBOTHER_BASE				(MX51_OTG_BASE_ADDR + MX51_USBOTHER_REGS_OFFSET)
-
-	u32 reg;
-
-	/* Set sysclock to 24 MHz */
-	reg = readl(USBOTHER_BASE + MX51_USB_PHY_CTR_FUNC2_OFFSET);
-	reg &= ~MX51_USB_UTMI_PHYCTRL1_PLLDIV_MASK;
-	reg |= MX51_USB_PLL_DIV_24_MHZ;
-	writel(reg, USBOTHER_BASE + MX51_USB_PHY_CTR_FUNC2_OFFSET);
-
-	/* OC is not used */
-	reg = readl(USBOTHER_BASE + MX51_USB_PHY_CTR_FUNC_OFFSET);
-	reg |= MX51_OTG_PHYCTRL_OC_DIS_BIT;
-	writel(reg, USBOTHER_BASE + MX51_USB_PHY_CTR_FUNC_OFFSET);
-
-	/* Power pins enable */
-	reg = readl(USBOTHER_BASE + MX51_USBCTRL_OFFSET);
-	reg |= MX51_OTG_UCTRL_OWIE_BIT | MX51_OTG_UCTRL_OPM_BIT;
-	writel(reg, USBOTHER_BASE + MX51_USBCTRL_OFFSET);
-
-	/* Setup PORTSC */
-	reg = readl(MX51_OTG_BASE_ADDR + 0x184);
-	reg &= ~(3 << 30);
-	reg |= 1 << 28;
-	writel(reg, MX51_OTG_BASE_ADDR + 0x184);
-
-	mdelay(10);
-
-	add_generic_usb_ehci_device(0, MX51_OTG_BASE_ADDR, NULL);
-}
+static struct imxusb_platformdata ccxmx51_otg_pdata = {
+	.flags	= MXC_EHCI_MODE_UTMI_16_BIT | MXC_EHCI_POWER_PINS_ENABLED,
+	.mode	= IMX_USB_MODE_HOST,
+};
 
 static int ccxmx51_power_init(void)
 {
@@ -453,7 +412,7 @@ static int ccxmx51_devices_init(void)
 		add_generic_device("smc911x", 1, NULL, MX51_CS5_BASE_ADDR, SZ_4K, IORESOURCE_MEM, NULL);
 	}
 
-	ccxmx51_otghost_init();
+	imx51_add_usbotg(&ccxmx51_otg_pdata);
 
 	armlinux_set_bootparams((void *)(MX51_CSD0_BASE_ADDR + 0x100));
 
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
