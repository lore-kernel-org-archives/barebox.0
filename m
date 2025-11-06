Delivery-date: Thu, 06 Nov 2025 09:01:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vGuw8-00Frvg-0P
	for lore@lore.pengutronix.de;
	Thu, 06 Nov 2025 09:01:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vGuw7-0003Iq-Ih
	for lore@pengutronix.de; Thu, 06 Nov 2025 09:01:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Q3GBHjqnu/aln9FR7HAFbyw6eiz3GhO39K8f1XLkV/k=; b=SAk6WBXcrzhs66EbrX7AtLaN2b
	/FYNsAkws61qLXNB8FknMoA0TZ6MR5Qa0eD7sGhr6JitxzDWF5QCCqLttjw/AwaElveIpguI/Xe2y
	shmus7nYSMz1hI1e2LKU/hCW3kMq9xrsuYp6mEycOYgNytcC6syXHieGQQEhh3gNuL9QOaBFlV67V
	IjEtjevP8mlBJZUgy9zXhdKu4ytd59X6lGV/G566qxPKGJUJHUAbxOVVXyF30DlYKHME1G+RCBdGw
	WPJqzUHGuUASFiqQd7i1vwI5suGSe+/7I8Htw+nvEDERnOroZm4r48ul7eXS/eiVg7mLvm6jg82F9
	sbHmiorw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGuvS-0000000F2Az-4BAH;
	Thu, 06 Nov 2025 08:00:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGuvQ-0000000F2A2-1s0g
	for barebox@lists.infradead.org;
	Thu, 06 Nov 2025 08:00:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vGuvO-0003Az-UD; Thu, 06 Nov 2025 09:00:54 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vGuvO-007KI1-2O;
	Thu, 06 Nov 2025 09:00:54 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vGuvP-0000000F9cf-0KdY;
	Thu, 06 Nov 2025 09:00:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  6 Nov 2025 09:00:53 +0100
Message-ID: <20251106080053.3611902-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_000056_485926_1D38B4D4 
X-CRM114-Status: GOOD (  10.38  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: k3: am62l: disable ethernet by default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Disable ethernet by default and enable it on the boards that actually
have ethernet supported.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/k3-am62l-main.dtsi | 3 +++
 arch/arm/dts/k3-am62l3-evm.dts  | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/arch/arm/dts/k3-am62l-main.dtsi b/arch/arm/dts/k3-am62l-main.dtsi
index 267664eecd..aed1d288f7 100644
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
@@ -745,6 +746,7 @@ cpsw_port1: port@1 {
 				label = "port1";
 				phys = <&phy_gmii_sel 1>;
 				ti,syscon-efuse = <&cpsw_mac_syscon 0x0>;
+				status = "disabled";
 			};
 
 			cpsw_port2: port@2 {
@@ -752,6 +754,7 @@ cpsw_port2: port@2 {
 				ti,mac-only;
 				label = "port2";
 				phys = <&phy_gmii_sel 2>;
+				status = "disabled";
 			};
 		};
 
diff --git a/arch/arm/dts/k3-am62l3-evm.dts b/arch/arm/dts/k3-am62l3-evm.dts
index 921b58cad2..6751c71c3b 100644
--- a/arch/arm/dts/k3-am62l3-evm.dts
+++ b/arch/arm/dts/k3-am62l3-evm.dts
@@ -113,17 +113,20 @@ eeprom@51 {
 };
 
 &cpsw3g {
+	status = "okay";
 	pinctrl-names = "default";
 	pinctrl-0 = <&rgmii1_pins_default>,
 		    <&rgmii2_pins_default>;
 };
 
 &cpsw_port1 {
+	status = "okay";
 	phy-mode = "rgmii-rxid";
 	phy-handle = <&cpsw3g_phy0>;
 };
 
 &cpsw_port2 {
+	status = "okay";
 	phy-mode = "rgmii-rxid";
 	phy-handle = <&cpsw3g_phy1>;
 };
-- 
2.47.3



