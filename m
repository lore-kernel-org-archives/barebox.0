Delivery-date: Thu, 25 Sep 2025 14:00:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v1ke7-000vtf-1q
	for lore@lore.pengutronix.de;
	Thu, 25 Sep 2025 14:00:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v1ke5-0005Fv-Gp
	for lore@pengutronix.de; Thu, 25 Sep 2025 14:00:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HWThFXV1OXKx0YWnW4/ZXtju4YK1aSWR/eieCwRMV8Y=; b=Zo0/KoVPHCG6kW6fVWYTb8binR
	D+Uaz1XchCTaGpnC3de/9AXWcLjwOsRhKwrmQmvR1Oywx6MMV7DR9VTvmd0vbE6tVsRgmXAHF+Ro8
	r5KA9CV5d8envBE/vIyXsid1YHFio2oCWCHp2xZnVH5A5be5Q+7+TCmMHJuCkVrkJtMr4tdZn3FWE
	joajFuSKsXjHDIFasWmbhM7YPKWgv6U6+DBV69NLmp1KrOehqIJSb83SSNecWkXQg3TaMbqatMB4S
	g1/UY5Ng6ccYzkywP//PenstJO8lxpRciiQHZFrgNeYrgmDOSGeZ91iw3htujTpdBDVQz4e8FGbxW
	h/eUKKow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1kdJ-00000008jwm-3HMp;
	Thu, 25 Sep 2025 11:59:33 +0000
Received: from cczrelay02.in2p3.fr ([134.158.66.142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1kdG-00000008jqm-1Gqc
	for barebox@lists.infradead.org;
	Thu, 25 Sep 2025 11:59:32 +0000
Received: from [127.0.1.1] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(authenticated bits=0)
	by cczrelay02.in2p3.fr (8.14.4/8.14.4) with ESMTP id 58PBxEkt016594
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
	Thu, 25 Sep 2025 13:59:25 +0200
From: David Picard <david.picard@clermont.in2p3.fr>
Date: Thu, 25 Sep 2025 13:59:11 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-boards-enclustra-sa2-add-support-v2-4-6820ad6c6256@clermont.in2p3.fr>
References: <20250925-boards-enclustra-sa2-add-support-v2-0-6820ad6c6256@clermont.in2p3.fr>
In-Reply-To: <20250925-boards-enclustra-sa2-add-support-v2-0-6820ad6c6256@clermont.in2p3.fr>
To: Sascha Hauer <s.hauer@pengutronix.de>,
        BAREBOX <barebox@lists.infradead.org>
Cc: David Picard <david.picard@clermont.in2p3.fr>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758801565; l=2338;
 i=david.picard@clermont.in2p3.fr; s=20250917; h=from:subject:message-id;
 bh=w3cRqXVUNZgHERR0BTqW9wZRMeS/8Sssf+m7hrBDaAI=;
 b=QuKuxKhKzM7ZRCvKJRAgXzai1xgUnG3Cyi4xlnFLkoVLSEqOTMxOjW4uKY2OmRCVIfqzOsxA0
 kN2H4oc8vyMDgitmyvZca1HVUbYOUHR/RkC/vyjpbVYvG8U0lhtiI6z
X-Developer-Key: i=david.picard@clermont.in2p3.fr; a=ed25519;
 pk=Ew2hyxWdBXm7qaK2tHrk3KcOlOjoh3+irqJPSHtq/PU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_045930_629681_E41D728B 
X-CRM114-Status: GOOD (  10.55  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 04/10] ARM: dts: socfpga: adapt upstream SA2 device tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Adapt the upstream devicetree file:
- use new Barebox deep-probe feature
- make the compatible string more specific
- enable LWHPS2FPGA and HPS2FPGA bridges to allow data exchange between
  FPGA and HPS

Signed-off-by: David Picard <david.picard@clermont.in2p3.fr>
---
 arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi | 35 ++++++++++++++++++++++++--
 1 file changed, 33 insertions(+), 2 deletions(-)

diff --git a/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi b/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi
index 73bd75fcf224fbf31fce27dda6566d4bfe37d624..fa80b7c63d28d17a24d63ac3ee87531ad320ddb1 100644
--- a/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi
+++ b/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi
@@ -9,9 +9,14 @@
 
 #include <arm/intel/socfpga/socfpga_cyclone5.dtsi>
 
+/ {
+	barebox,deep-probe;
+};
+
 / {
 	model = "Enclustra Mercury+ SA2";
-	compatible = "altr,socfpga-cyclone5", "altr,socfpga";
+	compatible = "enclustra,mercury-sa2-st1", "enclustra,mercury-sa2", "altr,socfpga-cyclone5", "altr,socfpga";
+
 
 	chosen {
 		stdout-path = "serial0:115200n8";
@@ -47,6 +52,16 @@ &osc1 {
 	clock-frequency = <50000000>;
 };
 
+&fpga_bridge0 {
+	status = "okay";
+	bridge-enable = <0x1>;
+};
+
+&fpga_bridge1 {
+	status = "okay";
+	bridge-enable = <0x1>;
+};
+
 &i2c_encl {
 	i2c-sda-hold-time-ns = <300>;
 	clock-frequency = <100000>;
@@ -57,7 +72,8 @@ isl12020: rtc@6f {
 		reg = <0x6f>;
 	};
 
-	atsha204a: crypto@64 {
+	atsha204a: atsha204a@64 {
+		status = "okay";
 		compatible = "atmel,atsha204a";
 		reg = <0x64>;
 	};
@@ -125,6 +141,21 @@ mdio0 {
 		phy3: ethernet-phy@3 {
 			reg = <3>;
 
+			/*
+			Ethernet PHY reset pin (active low, GPIO44) :
+			- 1st field: GPIO controller phandle
+			- 2nd field: GPIO line offset
+			- 3rd field: flags (see gpio.txt)
+
+			Reference:
+			- Cyclone 5 HPS technical reference, table 23-1: GPIO44 is on controller
+			GPIO1, whose 1st line is GPIO29. The offset is thus 44 - 29 = 15.
+			- Linux documentation:
+				- Documentation/devicetree/bindings/gpio/gpio.txt
+				- Documentation/devicetree/bindings/gpio/snps,dw-apb-gpio.yaml
+			*/
+			reset-gpios = <&portb 15 0x01>;
+
 			/* Add 2ns RX clock delay (1.2ns + 0.78ns)*/
 			rxc-skew-ps = <1680>;
 			rxd0-skew-ps = <420>;

-- 
2.43.0



