Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.mars-solutions.de ([213.239.212.107])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZSrD-0005HQ-2a
 for barebox@lists.infradead.org; Mon, 06 May 2013 21:22:04 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.mars-solutions.de (Postfix) with ESMTP id 0E741A0458B
 for <barebox@lists.infradead.org>; Mon,  6 May 2013 23:21:38 +0200 (CEST)
Received: from mail.mars-solutions.de ([127.0.0.1])
 by localhost (mars-solutions.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X8Mml8mIIp2t for <barebox@lists.infradead.org>;
 Mon,  6 May 2013 23:21:37 +0200 (CEST)
Received: from ASSP.nospam (mars [213.239.212.107])
 by mail.mars-solutions.de (Postfix) with ESMTP id 2595CA0458B
 for <barebox@lists.infradead.org>; Mon,  6 May 2013 23:21:37 +0200 (CEST)
From: Andreas Pretzsch <apr@cn-eng.de>
Date: Mon,  6 May 2013 23:21:28 +0200
Message-Id: <1367875288-29066-3-git-send-email-apr@cn-eng.de>
In-Reply-To: <1367875288-29066-1-git-send-email-apr@cn-eng.de>
References: <1367875288-29066-1-git-send-email-apr@cn-eng.de>
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
Subject: [PATCH 2/2] ARM i.MX31 pcm037: fix erroneous IOMUX GPR setup in
 pcm037_usb_init()
To: barebox@lists.infradead.org

In commit ad09b59f8bb58c27e3872b41f41beb1b9eb1aeb1 "ARM i.MX31: give
register base addresses a proper MX31_ prefix", the IOMUX GPR setup
to enable USBH2 was replaced with an incorrect source register.
Instead of reading the GPR register, USBOTG HWHOST is used as rmw source,
which contains 0x10020001.
Beside the intended GPR[11] setup ("Enable USBH2 signals on AudioPort 3 and
AudioPort6"), this erroneously also sets
	GPR[28] enable USBOTG loopback
	GPR[17] override DSR_DCE1 with USBOTG_DATA4
	GPR[0]  select FIR DMA requests instead of UART2 DMA

Beside breaking UART2, it probably also broke some UART1 and USB OTG setups.
Fix this and replace the address with the appropriate defines.

Signed-off-by: Andreas Pretzsch <apr@cn-eng.de>
---
 arch/arm/boards/pcm037/pcm037.c |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index 276f9cd..9361a9d 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -83,9 +83,9 @@ static void pcm037_usb_init(void)
 	ulpi_setup((void *)(MX31_USB_OTG_BASE_ADDR + 0x170), 1);
 
 	/* Host 2 */
-	tmp = readl(MX31_USB_OTG_BASE_ADDR + 0x8);
-	tmp |= 1 << 11;
-	writel(tmp, MX31_IOMUXC_BASE_ADDR + 0x8);
+	tmp = readl(MX31_IOMUXC_GPR);
+	tmp |= 1 << 11;	/* IOMUX GPR: enable USBH2 signals */
+	writel(tmp, MX31_IOMUXC_GPR);
 
 	imx_iomux_mode(IOMUX_MODE(MX31_PIN_USBH2_CLK, IOMUX_CONFIG_FUNC));
 	imx_iomux_mode(IOMUX_MODE(MX31_PIN_USBH2_DIR, IOMUX_CONFIG_FUNC));
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
