Delivery-date: Fri, 11 Feb 2022 10:13:41 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nIRzp-00Ch7p-7B
	for lore@lore.pengutronix.de; Fri, 11 Feb 2022 10:13:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nIRzn-0004h8-Ss
	for lore@pengutronix.de; Fri, 11 Feb 2022 10:13:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qzKAFb2/jxRorb1JewYmlJfSpm5NTpUcDRh7u5JLlc4=; b=eU0PzMZbN8Y1e/
	Qm/sYwEtv4ped6Hk+TA39aIhQsZA73aoQsHWznvE/L9bLe9sbbQWa/mo5X14X3YXssuRG3lYAVFtt
	W41FymottWaSc7HXJ2aNPym9eNsGqFQUnVE/kxtHdv8P9SWBFWmEMR9ZBUS6KKFa7gVEmQvUcMuLL
	moQNiwBwsyQL+GPGna26FqVwuuW+gq4xZCDzm2ccIaricW+vVWBkiWkrr5gmZ/wVm++8qnRsc2A1w
	UJg36O9cGdsAF7LwMMWLc9TMdA8VicUDevmUhjr62/1gqfRMy+EoUU/TwI26m0hzHZqT1/UcIDH0N
	D/55P5QTHJWQ/A4bhEvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIRyE-006Izg-9f; Fri, 11 Feb 2022 09:12:02 +0000
Received: from mxout1.routing.net ([2a03:2900:1:a::a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIRy9-006Iz8-RE
 for barebox@lists.infradead.org; Fri, 11 Feb 2022 09:11:59 +0000
Received: from mxbox4.masterlogin.de (unknown [192.168.10.79])
 by mxout1.routing.net (Postfix) with ESMTP id E718140719;
 Fri, 11 Feb 2022 09:11:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1644570712;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=YQPPSWgnrLeobTNJCHw10bhxioJYePMxYImAgx6zIUk=;
 b=GO0PefgMZwl94eRIpwtq2+2kj2kfCGgCGfIpd9E1jy4rnnbnrhWjvuv2MJifYqSjgiJl73
 JAGI3GbpAkcBrodxOOhZWr6zx65Gv9IeLDMejHUbRuoAcK3MV4p6gMZa82qE+Lz28AHZW2
 fwPA1O00dj0/ZGyNpdIphbcN7Eg9tUg=
Received: from localhost.localdomain (fttx-pool-217.61.154.74.bambit.de
 [217.61.154.74])
 by mxbox4.masterlogin.de (Postfix) with ESMTPSA id 6ACF780C5E;
 Fri, 11 Feb 2022 09:11:45 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: barebox@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>
Date: Fri, 11 Feb 2022 10:11:14 +0100
Message-Id: <20220211091114.11220-1-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mail-ID: 69347f6a-bade-4197-8031-4bf4fee0d5f1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_011158_091151_2EF64F62 
X-CRM114-Status: UNSURE (   7.28  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: Rockchip: rk3568: add tsadc and spi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Frank Wunderlich <frank-w@public-files.de>

Add tsadc and spi node from linux.

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 arch/arm/dts/rk3568-pinctrl.dtsi |  9 ++++++++
 arch/arm/dts/rk3568.dtsi         | 35 ++++++++++++++++++++++++++++++++
 2 files changed, 44 insertions(+)

diff --git a/arch/arm/dts/rk3568-pinctrl.dtsi b/arch/arm/dts/rk3568-pinctrl.dtsi
index a588ca95ace2..8f90c66dd9e9 100644
--- a/arch/arm/dts/rk3568-pinctrl.dtsi
+++ b/arch/arm/dts/rk3568-pinctrl.dtsi
@@ -3108,4 +3108,13 @@
 				<4 RK_PA0 3 &pcfg_pull_none_drv_level_2>;
 		};
 	};
+
+	tsadc {
+		/omit-if-no-ref/
+		tsadc_pin: tsadc-pin {
+			rockchip,pins =
+				/* tsadc_pin */
+				<0 RK_PA1 0 &pcfg_pull_none>;
+		};
+	};
 };
diff --git a/arch/arm/dts/rk3568.dtsi b/arch/arm/dts/rk3568.dtsi
index 0f19d3f0c0c3..6afd95b01c0c 100644
--- a/arch/arm/dts/rk3568.dtsi
+++ b/arch/arm/dts/rk3568.dtsi
@@ -772,6 +772,21 @@
 		clock-names = "tclk", "pclk";
 	};
 
+	spi3: spi@fe640000 {
+		compatible = "rockchip,rk3568-spi", "rockchip,rk3066-spi";
+		reg = <0x0 0xfe640000 0x0 0x1000>;
+		interrupts = <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru CLK_SPI3>, <&cru PCLK_SPI3>;
+		clock-names = "spiclk", "apb_pclk";
+		dmas = <&dmac0 26>, <&dmac0 27>;
+		dma-names = "tx", "rx";
+		pinctrl-names = "default";
+		pinctrl-0 = <&spi3m0_cs0 &spi3m0_cs1 &spi3m0_pins>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
 	uart1: serial@fe650000 {
 		compatible = "rockchip,rk3568-uart", "snps,dw-apb-uart";
 		reg = <0x0 0xfe650000 0x0 0x100>;
@@ -1030,6 +1045,26 @@
 		status = "disabled";
 	};
 
+	tsadc: tsadc@fe710000 {
+		compatible = "rockchip,rk3568-tsadc";
+		reg = <0x0 0xfe710000 0x0 0x100>;
+		interrupts = <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>;
+		assigned-clocks = <&cru CLK_TSADC_TSEN>, <&cru CLK_TSADC>;
+		assigned-clock-rates = <17000000>, <700000>;
+		clocks = <&cru CLK_TSADC>, <&cru PCLK_TSADC>;
+		clock-names = "tsadc", "apb_pclk";
+		resets = <&cru SRST_P_TSADC>, <&cru SRST_TSADC>,
+			 <&cru SRST_TSADCPHY>;
+		rockchip,grf = <&grf>;
+		rockchip,hw-tshut-temp = <95000>;
+		pinctrl-names = "init", "default", "sleep";
+		pinctrl-0 = <&tsadc_pin>;
+		pinctrl-1 = <&tsadc_shutorg>;
+		pinctrl-2 = <&tsadc_pin>;
+		#thermal-sensor-cells = <1>;
+		status = "disabled";
+	};
+
 	saradc: saradc@fe720000 {
 		compatible = "rockchip,rk3568-saradc";
 		reg = <0x0 0xfe720000 0x0 0x100>;
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

