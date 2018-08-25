Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ftfii-0006C5-CW
 for barebox@lists.infradead.org; Sat, 25 Aug 2018 21:03:45 +0000
Received: by mail-pl1-x641.google.com with SMTP id c6-v6so2480531pls.4
 for <barebox@lists.infradead.org>; Sat, 25 Aug 2018 14:03:34 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 25 Aug 2018 14:03:13 -0700
Message-Id: <20180825210315.4661-5-andrew.smirnov@gmail.com>
In-Reply-To: <20180825210315.4661-1-andrew.smirnov@gmail.com>
References: <20180825210315.4661-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 4/6] ARM: freescale-mx51-babbage: Add USBH1 PHY reset sequence
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

UPLI PHY connected to USBH1 on Babbage board seem to need a special
reset sequence in which STP signal gets asserted for a short period of
time. Without this sequnce running "usb" results in timeout and no USB
devices found.

Similar reset sequences can be found in Babbage board code in U-Boot
as well as efikamx_usb_init() in Barebox.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 .../arm/boards/freescale-mx51-babbage/board.c | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm/boards/freescale-mx51-babbage/board.c b/arch/arm/boards/freescale-mx51-babbage/board.c
index 2e75db547..4839aa568 100644
--- a/arch/arm/boards/freescale-mx51-babbage/board.c
+++ b/arch/arm/boards/freescale-mx51-babbage/board.c
@@ -43,6 +43,41 @@
 
 #define MX51_CCM_CACRR 0x10
 
+#define USBH1_STP	IMX_GPIO_NR(1, 27)
+#define USBH1_PHY_RESET IMX_GPIO_NR(2, 5)
+#define USBH1_HUB_RESET	IMX_GPIO_NR(1, 7)
+
+static int imx51_babbage_reset_usbh1(void)
+{
+	void __iomem *iomuxbase = IOMEM(MX51_IOMUXC_BASE_ADDR);
+
+	if (!of_machine_is_compatible("fsl,imx51-babbage"))
+		return 0;
+
+	imx_setup_pad(iomuxbase, MX51_PAD_EIM_D21__GPIO2_5);
+	imx_setup_pad(iomuxbase, MX51_PAD_GPIO1_7__GPIO1_7);
+
+	gpio_direction_output(USBH1_PHY_RESET, 0);
+	gpio_direction_output(USBH1_HUB_RESET, 0);
+
+	mdelay(10);
+
+	gpio_set_value(USBH1_PHY_RESET, 1);
+	gpio_set_value(USBH1_HUB_RESET, 1);
+
+	imx_setup_pad(iomuxbase, MX51_PAD_USBH1_STP__GPIO1_27);
+	gpio_direction_output(USBH1_STP, 1);
+
+	mdelay(1);
+
+	imx_setup_pad(iomuxbase, MX51_PAD_USBH1_STP__USBH1_STP);
+
+	gpio_free(USBH1_PHY_RESET);
+
+	return 0;
+}
+console_initcall(imx51_babbage_reset_usbh1);
+
 static int imx51_babbage_init(void)
 {
 	if (!of_machine_is_compatible("fsl,imx51-babbage"))
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
