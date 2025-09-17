Delivery-date: Wed, 17 Sep 2025 17:51:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyuRX-0047p8-1D
	for lore@lore.pengutronix.de;
	Wed, 17 Sep 2025 17:51:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyuRV-0000ja-JN
	for lore@pengutronix.de; Wed, 17 Sep 2025 17:51:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=edXFjx/tJhXbJ6pjNV+oTy/okcm1iuVZ03OrDosEaiY=; b=Uw2enH4kP0DLywjw2cyt+SV7qN
	9Mm0ruQKk8ZLDlSQANFZGCPVwZDvukE2UYHZr+JyuIeZrvT7BUV261xu1a7CkZniKZpbMp/b2tMVt
	mY7kWsbYHXowDSM9K0rhZJnicE9r2xRLb47G6RytAAYwjy9zVeIiM2L0hE3SD6rrPUE46eHyfGaG6
	w5w5im2jBV0t1VVQmO5JbFXp/X4Xpqb7Mzw0M89OkBZgiJc9FwsStMMOWRBMXZv5CWFL1L+bSAZUB
	ag7xbBlkcXP5YdjQqIOrXZKmigjoPFBrBJ3ISbTySA8MBgOjGdIgqkUq4lY+/la3zmzY86Atq2Ly7
	nixSl4MA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyuR7-0000000CtFl-3bWW;
	Wed, 17 Sep 2025 15:51:13 +0000
Received: from cczrelay01.in2p3.fr ([134.158.66.141])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyuR4-0000000CtAB-3yRY
	for barebox@lists.infradead.org;
	Wed, 17 Sep 2025 15:51:12 +0000
Received: from [127.0.1.1] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(authenticated bits=0)
	by cczrelay01.in2p3.fr (8.14.4/8.14.4) with ESMTP id 58HFNoCA032210
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
	Wed, 17 Sep 2025 17:24:02 +0200
From: David Picard <david.picard@clermont.in2p3.fr>
Date: Wed, 17 Sep 2025 17:22:08 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250917-boards-enclustra-sa2-add-support-v1-5-2de8f69107a1@clermont.in2p3.fr>
References: <20250917-boards-enclustra-sa2-add-support-v1-0-2de8f69107a1@clermont.in2p3.fr>
In-Reply-To: <20250917-boards-enclustra-sa2-add-support-v1-0-2de8f69107a1@clermont.in2p3.fr>
To: Sascha Hauer <s.hauer@pengutronix.de>,
        BAREBOX <barebox@lists.infradead.org>
Cc: David Picard <david.picard@clermont.in2p3.fr>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758122641; l=1836;
 i=david.picard@clermont.in2p3.fr; s=20250917; h=from:subject:message-id;
 bh=AMlSrFwaR0GEe4ZeemSvlw1NP3nrm8kK5jPGIhqMqQ8=;
 b=EMC50uAEfeVhZ3DwZ4FgR12LcJgHtXIHdz0hP0+2lLEe96PFuKaGskiqQvRLpUJM6LT2b3ZKg
 TkJELc5JGulBw3EZuYQQDz+NN3JOAdY2TbnG9Y/fp+EOvspuG9jNrDV
X-Developer-Key: i=david.picard@clermont.in2p3.fr; a=ed25519;
 pk=Ew2hyxWdBXm7qaK2tHrk3KcOlOjoh3+irqJPSHtq/PU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_085111_266627_1282A4B7 
X-CRM114-Status: UNSURE (   9.85  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 05/11] ARM: dts: socfpga: adapt upstream SA2 device tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: David Picard <david.picard@clermont.in2p3.fr>
---
 arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi | 25 +++++++++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi b/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi
index 73bd75fcf224fbf31fce27dda6566d4bfe37d624..52a9d1a6c396fb3df56acbaf99d40594dea19944 100644
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
@@ -57,7 +62,8 @@ isl12020: rtc@6f {
 		reg = <0x6f>;
 	};
 
-	atsha204a: crypto@64 {
+	atsha204a: atsha204a@64 {
+		status = "okay";
 		compatible = "atmel,atsha204a";
 		reg = <0x64>;
 	};
@@ -125,6 +131,21 @@ mdio0 {
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



