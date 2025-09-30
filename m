Delivery-date: Tue, 30 Sep 2025 11:35:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3WlM-002jQw-2Z
	for lore@lore.pengutronix.de;
	Tue, 30 Sep 2025 11:35:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3WlM-0005iX-99
	for lore@pengutronix.de; Tue, 30 Sep 2025 11:35:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/oGdJhDx0Ava/r63LwzrKUkUiECtIdIwpCLe8WAtKGI=; b=qx9SSueFwWK5e7h0IZDUd6Yg7m
	EEFMcoiNoxpX73s/ex08mpJGP02BqRHzpeyp2WL1NWKGvLZPczBaWXjQfJQ3EHJPZFH9kLdT+DLJ7
	jcxOiDUqx5aPdtR9HuF6mSPlAHJIVcF3p5M5W3P1dYF0x7xJijlhjrufFGGYIQXGrT9sFu+Qr32/1
	ADrxGr10sEpggUrwp8qOMNlNBiuFsEYm7kyYmczNO/cy2I3+NYzUb/JR0zfphTCb8wS8YXRAaqvgU
	0g7YFV6kRIgOakwhx1Sl3DbAg/393l7XhnL7jznpveGqFNVRxPlnG6hiKFCwEGSz9QXFO/2DryCZJ
	ZaLbA+ZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3Wkr-00000004pSn-3pxy;
	Tue, 30 Sep 2025 09:34:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3Wkp-00000004pSO-3Gif
	for barebox@lists.infradead.org;
	Tue, 30 Sep 2025 09:34:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v3Wkm-0005ZW-VJ; Tue, 30 Sep 2025 11:34:36 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v3Wkm-001DxC-2Y;
	Tue, 30 Sep 2025 11:34:36 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v3Wkm-0000000ExS5-2rt8;
	Tue, 30 Sep 2025 11:34:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 30 Sep 2025 11:34:35 +0200
Message-ID: <20250930093435.3565118-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250930_023439_817893_629E0C2A 
X-CRM114-Status: GOOD (  10.06  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: dts: k3-am62l: Set cpsw3g status to disabled by default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Set the cpsw3 status to disabled by default and enable it in the
board(s) that actually use it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/k3-am62l-main.dtsi | 1 +
 arch/arm/dts/k3-am62l3-evm.dts  | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm/dts/k3-am62l-main.dtsi b/arch/arm/dts/k3-am62l-main.dtsi
index 267664eecd..add0f0905b 100644
--- a/arch/arm/dts/k3-am62l-main.dtsi
+++ b/arch/arm/dts/k3-am62l-main.dtsi
@@ -723,6 +723,7 @@ cpsw3g: ethernet@8000000 {
 		clocks = <&scmi_clk 9>;
 		clock-names = "fck";
 		power-domains = <&scmi_pds 3>;
+		status = "disabled";
 		dmas = <&main_pktdma 0xc600 15>,
 			   <&main_pktdma 0xc601 15>,
 			   <&main_pktdma 0xc602 15>,
diff --git a/arch/arm/dts/k3-am62l3-evm.dts b/arch/arm/dts/k3-am62l3-evm.dts
index 921b58cad2..7bca758754 100644
--- a/arch/arm/dts/k3-am62l3-evm.dts
+++ b/arch/arm/dts/k3-am62l3-evm.dts
@@ -113,6 +113,7 @@ eeprom@51 {
 };
 
 &cpsw3g {
+	status = "okay";
 	pinctrl-names = "default";
 	pinctrl-0 = <&rgmii1_pins_default>,
 		    <&rgmii2_pins_default>;
-- 
2.47.3



