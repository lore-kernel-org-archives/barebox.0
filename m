Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yh0-x232.google.com ([2607:f8b0:4002:c01::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WNuEX-0001Gd-DB
 for barebox@lists.infradead.org; Thu, 13 Mar 2014 01:14:54 +0000
Received: by mail-yh0-f50.google.com with SMTP id c41so363740yho.23
 for <barebox@lists.infradead.org>; Wed, 12 Mar 2014 18:14:32 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 12 Mar 2014 22:14:23 -0300
Message-Id: <1394673263-32510-1-git-send-email-festevam@gmail.com>
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
Subject: [PATCH] ARM: i.MX25: freescale-mx25-3stack: Remove USBH2 pin setting
To: kernel@pengutronix.de
Cc: Fabio Estevam <fabio.estevam@freescale.com>, barebox@lists.infradead.org

From: Fabio Estevam <fabio.estevam@freescale.com>

mx25-3stack only uses USBH1 and USBOTG, so remove USBH2 related pin setting.

Signed-off-by: Fabio Estevam <fabio.estevam@freescale.com>
---
 arch/arm/boards/freescale-mx25-3ds/3stack.c | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/arch/arm/boards/freescale-mx25-3ds/3stack.c b/arch/arm/boards/freescale-mx25-3ds/3stack.c
index f000010..f2f838f 100644
--- a/arch/arm/boards/freescale-mx25-3ds/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3ds/3stack.c
@@ -180,21 +180,6 @@ static iomux_v3_cfg_t imx25_pads[] = {
 	MX25_PAD_UART1_TXD__UART1_TXD,
 	MX25_PAD_UART1_RTS__UART1_RTS,
 	MX25_PAD_UART1_CTS__UART1_CTS,
-	/* USBH2 */
-	MX25_PAD_D9__USBH2_PWR,
-	MX25_PAD_D8__USBH2_OC,
-	MX25_PAD_LD0__USBH2_CLK,
-	MX25_PAD_LD1__USBH2_DIR,
-	MX25_PAD_LD2__USBH2_STP,
-	MX25_PAD_LD3__USBH2_NXT,
-	MX25_PAD_LD4__USBH2_DATA0,
-	MX25_PAD_LD5__USBH2_DATA1,
-	MX25_PAD_LD6__USBH2_DATA2,
-	MX25_PAD_LD7__USBH2_DATA3,
-	MX25_PAD_HSYNC__USBH2_DATA4,
-	MX25_PAD_VSYNC__USBH2_DATA5,
-	MX25_PAD_LSCLK__USBH2_DATA6,
-	MX25_PAD_OE_ACD__USBH2_DATA7,
 	/* i2c */
 	MX25_PAD_I2C1_CLK__I2C1_CLK,
 	MX25_PAD_I2C1_DAT__I2C1_DAT,
-- 
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
