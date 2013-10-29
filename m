Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp40.i.mail.ru ([94.100.177.100])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vb65Z-0005RD-7e
 for barebox@lists.infradead.org; Tue, 29 Oct 2013 09:59:54 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Tue, 29 Oct 2013 13:59:18 +0400
Message-Id: <1383040758-9696-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1383040758-9696-1-git-send-email-shc_work@mail.ru>
References: <1383040758-9696-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/2] USB: i.MX5x: Remove usage of MXC_EHCI_INTERNAL_PHY for
 OTG port
To: barebox@lists.infradead.org

i.MX5x OTG port is hardwired to the internal UTMI PHY, so having
this configurable makes no sense and helps using this port with DT.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/ccxmx51/ccxmx51.c | 3 +--
 drivers/usb/imx/imx-usb-misc.c    | 3 ---
 2 files changed, 1 insertion(+), 5 deletions(-)

diff --git a/arch/arm/boards/ccxmx51/ccxmx51.c b/arch/arm/boards/ccxmx51/ccxmx51.c
index 6b5acb2..6d2606e 100644
--- a/arch/arm/boards/ccxmx51/ccxmx51.c
+++ b/arch/arm/boards/ccxmx51/ccxmx51.c
@@ -220,8 +220,7 @@ static const struct spi_board_info ccxmx51_spi_board_info[] = {
 };
 
 static struct imxusb_platformdata ccxmx51_otg_pdata = {
-	.flags	= MXC_EHCI_MODE_UTMI_16_BIT | MXC_EHCI_INTERNAL_PHY |
-		  MXC_EHCI_POWER_PINS_ENABLED,
+	.flags	= MXC_EHCI_MODE_UTMI_16_BIT | MXC_EHCI_POWER_PINS_ENABLED,
 	.mode	= IMX_USB_MODE_HOST,
 };
 
diff --git a/drivers/usb/imx/imx-usb-misc.c b/drivers/usb/imx/imx-usb-misc.c
index 51d549c..68c8c4b 100644
--- a/drivers/usb/imx/imx-usb-misc.c
+++ b/drivers/usb/imx/imx-usb-misc.c
@@ -279,9 +279,6 @@ static __maybe_unused int mx5_initialize_usb_hw(void __iomem *base, int port,
 
 	switch (port) {
 	case 0:	/* OTG port */
-		if (!(flags & MXC_EHCI_INTERNAL_PHY))
-			return 0;
-
 		/* Adjust UTMI PHY frequency to 24MHz */
 		v = readl(base + MX5_UTMI_PHY_CTRL_1);
 		v = (v & ~0x3) | 0x01;
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
