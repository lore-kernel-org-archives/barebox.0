Delivery-date: Tue, 28 May 2024 22:12:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sC3Bo-00105N-1o
	for lore@lore.pengutronix.de;
	Tue, 28 May 2024 22:12:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sC3Bn-0005pT-R5
	for lore@pengutronix.de; Tue, 28 May 2024 22:12:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HUaCIzYMVk48ELvh1j29/X4uQbPmTlpWNCs90sqC2GM=; b=UMjcAw/y8bdJyKMqqrA/VcLPVO
	p7UaoZYFt+ipdMRnBjCIDOcSJsHASVIozHPwunhMu/DZCCNvzIslTU4Qs0gUJcg4XNvOpmOYNfa5/
	6q3Gyt9wVU4owJkIXGFhkxHqVtvsEy2qjfM3Yt8NGwuC4rpBiltqF76WBCrCuIATB59nNCTW5aXXY
	cdfXkZj+1j8T/muZW7tLvGOvHzbQPu7wmwLCTeVgMbSuxfxAoXCCVzzgxkZiEmENKpgpwNhQnJ/TB
	lWSW13wtwBVh24ozsApOd89ccrNm24ZPcETXXfhF1Z43V/33dDzYg52wVRrGoTQYrJmEkp8rg3gD+
	ysCaVijQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sC3BK-00000001vyD-40e3;
	Tue, 28 May 2024 20:12:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sC3BH-00000001vxs-1zfQ
	for barebox@lists.infradead.org;
	Tue, 28 May 2024 20:12:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sC3BG-0005hd-7N; Tue, 28 May 2024 22:12:22 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sC3BE-003N7d-9N; Tue, 28 May 2024 22:12:20 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sC3BE-0069n8-0b;
	Tue, 28 May 2024 22:12:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 28 May 2024 22:12:14 +0200
Message-Id: <20240528201214.1467597-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240528201214.1467597-1-s.hauer@pengutronix.de>
References: <20240528201214.1467597-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_131223_551568_60A537D8 
X-CRM114-Status: GOOD (  19.14  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/3] ARM: Phytec-phyCARD-imx27: register USB from device tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The i.MX27 USB ports have device tree support, so switch the board
over to use it. We still need to do some board specific setup to reset
the ULPI phys properly, so there's still some board code needed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/phytec-phycard-imx27/pca100.c | 92 ++++++++-----------
 .../arm/dts/imx27-phytec-phycard-s-rdk-bb.dts |  1 +
 arch/arm/dts/imx27-phytec-phycard-s-som.dtsi  | 50 ++++++++++
 3 files changed, 89 insertions(+), 54 deletions(-)
 create mode 100644 arch/arm/dts/imx27-phytec-phycard-s-som.dtsi

diff --git a/arch/arm/boards/phytec-phycard-imx27/pca100.c b/arch/arm/boards/phytec-phycard-imx27/pca100.c
index 6a881498c2..011f9b9d11 100644
--- a/arch/arm/boards/phytec-phycard-imx27/pca100.c
+++ b/arch/arm/boards/phytec-phycard-imx27/pca100.c
@@ -24,30 +24,39 @@
 #include <mach/imx/bbu.h>
 #include <mach/imx/iomux-mx27.h>
 
-#if defined(CONFIG_USB) && defined(CONFIG_USB_ULPI)
-static void pca100_usb_register(void)
-{
-	mdelay(10);
-
-	gpio_direction_output(GPIO_PORTB + 24, 0);
-	gpio_direction_output(GPIO_PORTB + 23, 0);
-
-	mdelay(10);
-
-	ulpi_setup((void *)(MX27_USB_OTG_BASE_ADDR + 0x170), 1);
-	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, MX27_USB_OTG_BASE_ADDR, NULL);
-	ulpi_setup((void *)(MX27_USB_OTG_BASE_ADDR + 0x570), 1);
-	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, MX27_USB_OTG_BASE_ADDR + 0x400, NULL);
-}
-#else
-static void pca100_usb_register(void) { };
-#endif
-
 static void pca100_usb_init(void)
 {
 	struct device_node *gpio_np;
 	u32 reg;
 	int ret;
+	int i;
+	unsigned int mode[] = {
+		/* USB host 2 */
+		PA0_PF_USBH2_CLK,
+		PA1_PF_USBH2_DIR,
+		PA2_PF_USBH2_DATA7,
+		PA3_PF_USBH2_NXT,
+		PA4_PF_USBH2_STP,
+		PD19_AF_USBH2_DATA4,
+		PD20_AF_USBH2_DATA3,
+		PD21_AF_USBH2_DATA6,
+		PD22_AF_USBH2_DATA0,
+		PD23_AF_USBH2_DATA2,
+		PD24_AF_USBH2_DATA1,
+		PD26_AF_USBH2_DATA5,
+		PC7_PF_USBOTG_DATA5,
+		PC8_PF_USBOTG_DATA6,
+		PC9_PF_USBOTG_DATA0,
+		PC10_PF_USBOTG_DATA2,
+		PC11_PF_USBOTG_DATA1,
+		PC12_PF_USBOTG_DATA4,
+		PC13_PF_USBOTG_DATA3,
+		PE0_PF_USBOTG_NXT,
+		PE1_PF_USBOTG_STP,
+		PE2_PF_USBOTG_DIR,
+		PE24_PF_USBOTG_CLK,
+		PE25_PF_USBOTG_DATA7,
+	};
 
 	gpio_np = of_find_node_by_name_address(NULL, "gpio@10015100");
 	if (!gpio_np)
@@ -83,50 +92,25 @@ static void pca100_usb_init(void)
 	gpio_direction_output(GPIO_PORTB + 23, 1);
 	imx27_gpio_mode((GPIO_PORTB | 24) | GPIO_GPIO | GPIO_IN);
 	gpio_direction_output(GPIO_PORTB + 24, 1);
+
+	/* initizalize gpios */
+	for (i = 0; i < ARRAY_SIZE(mode); i++)
+		imx27_gpio_mode(mode[i]);
+
+	mdelay(10);
+
+	gpio_direction_output(GPIO_PORTB + 24, 0);
+	gpio_direction_output(GPIO_PORTB + 23, 0);
+
 }
 
 static int pca100_probe(struct device *dev)
 {
-	int i;
-	unsigned int mode[] = {
-		/* USB host 2 */
-		PA0_PF_USBH2_CLK,
-		PA1_PF_USBH2_DIR,
-		PA2_PF_USBH2_DATA7,
-		PA3_PF_USBH2_NXT,
-		PA4_PF_USBH2_STP,
-		PD19_AF_USBH2_DATA4,
-		PD20_AF_USBH2_DATA3,
-		PD21_AF_USBH2_DATA6,
-		PD22_AF_USBH2_DATA0,
-		PD23_AF_USBH2_DATA2,
-		PD24_AF_USBH2_DATA1,
-		PD26_AF_USBH2_DATA5,
-		PC7_PF_USBOTG_DATA5,
-		PC8_PF_USBOTG_DATA6,
-		PC9_PF_USBOTG_DATA0,
-		PC10_PF_USBOTG_DATA2,
-		PC11_PF_USBOTG_DATA1,
-		PC12_PF_USBOTG_DATA4,
-		PC13_PF_USBOTG_DATA3,
-		PE0_PF_USBOTG_NXT,
-		PE1_PF_USBOTG_STP,
-		PE2_PF_USBOTG_DIR,
-		PE24_PF_USBOTG_CLK,
-		PE25_PF_USBOTG_DATA7,
-	};
-
 	barebox_set_model("Phytec phyCARD-i.MX27");
 	barebox_set_hostname("phycard-imx27");
 
 	pca100_usb_init();
 
-	/* initizalize gpios */
-	for (i = 0; i < ARRAY_SIZE(mode); i++)
-		imx27_gpio_mode(mode[i]);
-
-	pca100_usb_register();
-
 	imx_bbu_external_nand_register_handler("nand", "/dev/nand0.boot",
 			BBU_HANDLER_FLAG_DEFAULT);
 
diff --git a/arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts b/arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts
index d9ba6abae6..b082bf4554 100644
--- a/arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts
+++ b/arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts
@@ -3,6 +3,7 @@
  */
 
 #include <arm/nxp/imx/imx27-phytec-phycard-s-rdk.dts>
+#include "imx27-phytec-phycard-s-som.dtsi"
 
 / {
 	chosen {
diff --git a/arch/arm/dts/imx27-phytec-phycard-s-som.dtsi b/arch/arm/dts/imx27-phytec-phycard-s-som.dtsi
new file mode 100644
index 0000000000..6bf467f7bf
--- /dev/null
+++ b/arch/arm/dts/imx27-phytec-phycard-s-som.dtsi
@@ -0,0 +1,50 @@
+
+&iomuxc {
+	imx27-phycard-s-som {
+		pinctrl_usbotg: usbotggrp {
+			fsl,pins = <
+				MX27_PAD_USBOTG_CLK__USBOTG_CLK 0x0
+				MX27_PAD_USBOTG_DIR__USBOTG_DIR 0x0
+				MX27_PAD_USBOTG_NXT__USBOTG_NXT 0x0
+				MX27_PAD_USBOTG_STP__USBOTG_STP 0x0
+				MX27_PAD_USBOTG_DATA0__USBOTG_DATA0 0x0
+				MX27_PAD_USBOTG_DATA1__USBOTG_DATA1 0x0
+				MX27_PAD_USBOTG_DATA2__USBOTG_DATA2 0x0
+				MX27_PAD_USBOTG_DATA3__USBOTG_DATA3 0x0
+				MX27_PAD_USBOTG_DATA4__USBOTG_DATA4 0x0
+				MX27_PAD_USBOTG_DATA5__USBOTG_DATA5 0x0
+				MX27_PAD_USBOTG_DATA6__USBOTG_DATA6 0x0
+				MX27_PAD_USBOTG_DATA7__USBOTG_DATA7 0x0
+			>;
+		};
+
+		pinctrl_usbh2: usbh2grp {
+			fsl,pins = <
+				MX27_PAD_USBH2_CLK__USBH2_CLK 0x0
+				MX27_PAD_USBH2_DIR__USBH2_DIR 0x0
+				MX27_PAD_USBH2_NXT__USBH2_NXT 0x0
+				MX27_PAD_USBH2_STP__USBH2_STP 0x0
+				MX27_PAD_CSPI2_SCLK__USBH2_DATA0 0x0
+				MX27_PAD_CSPI2_MOSI__USBH2_DATA1 0x0
+				MX27_PAD_CSPI2_MISO__USBH2_DATA2 0x0
+				MX27_PAD_CSPI2_SS1__USBH2_DATA3 0x0
+				MX27_PAD_CSPI2_SS2__USBH2_DATA4 0x0
+				MX27_PAD_CSPI1_SS2__USBH2_DATA5 0x0
+				MX27_PAD_CSPI2_SS0__USBH2_DATA6 0x0
+				MX27_PAD_USBH2_DATA7__USBH2_DATA7 0x0
+			>;
+		};
+	};
+};
+
+&usbh2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usbh2>;
+	phy_type = "ulpi";
+};
+
+&usbotg {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usbotg>;
+	phy_type = "ulpi";
+};
-- 
2.39.2



