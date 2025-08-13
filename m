Delivery-date: Wed, 13 Aug 2025 10:18:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1um6hH-0007Fn-2m
	for lore@lore.pengutronix.de;
	Wed, 13 Aug 2025 10:18:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1um6hG-0003PJ-NZ
	for lore@pengutronix.de; Wed, 13 Aug 2025 10:18:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=z8t+oPWrtTbpQRhASHHYbfXM+6bF/dM324RJ4VGyw48=; b=XkiY58IMm/xxhh7JLn+Tb5CyeH
	9EAUv7BLJApaO5ixLcCoOAkDDLjdHQNAM6r4pouHt8b43SMUvfD6bSK0WhWPCCN8PzzToOngRLV/Z
	7jo+2aZ8PTnE1xHXKPB0WkTRQZzMS6NNXyFYUK+HxsbyfZ2/UZrHoghwiXI1Kz5D/cnyDHSX1uZs7
	OmutNznS4OYMnYEYRgaiQlrvG7qBv966kx8MWWsVGQqRf8SdD3H+dzGTsem5JVv37eYW+EZpRqfWm
	/XaOxPu4Wsn1YUHu3NdozSp3EQXCtHrXAmIDvwFoamXgLa1BLw5N1X7Mh889gxHMoXcSgaaqpLLA5
	TWMYD06Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1um6gq-0000000D4Iq-17ZD;
	Wed, 13 Aug 2025 08:18:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1um6es-0000000D3qo-0DPi
	for barebox@lists.infradead.org;
	Wed, 13 Aug 2025 08:16:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1um6eq-0002tS-Pq; Wed, 13 Aug 2025 10:16:28 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1um6eq-0003mt-1x;
	Wed, 13 Aug 2025 10:16:28 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1um6eq-00ETD0-1c;
	Wed, 13 Aug 2025 10:16:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 13 Aug 2025 10:16:27 +0200
Message-Id: <20250813081627.3448631-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250813_011630_086747_C9C3BA28 
X-CRM114-Status: UNSURE (   9.69  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: k3: add syscon-reboot-mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds reboot-mode support for the AM625 and AM62L SoCs.

We only add usbdfu, emmc and nand for now. Most other boot modes require
additional board specific configuration in bit[9-7], so these have to be
added in a board specific dts. Also we only touch the primary boot mode
and leave the secondary boot mode untouched.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/k3-am625.dtsi         | 16 ++++++++++++++++
 arch/arm/dts/k3-am62l-barebox.dtsi | 16 ++++++++++++++++
 2 files changed, 32 insertions(+)

diff --git a/arch/arm/dts/k3-am625.dtsi b/arch/arm/dts/k3-am625.dtsi
index bb61586fe2..2aa77ab2d5 100644
--- a/arch/arm/dts/k3-am625.dtsi
+++ b/arch/arm/dts/k3-am625.dtsi
@@ -9,6 +9,22 @@ chosen {
 	};
 };
 
+&wkup_conf {
+	reboot-mode-syscon@10030 {
+		compatible = "syscon", "simple-mfd";
+		reg = <0x10030 0x4>;
+
+		reboot_mode: reboot-mode {
+			compatible = "syscon-reboot-mode";
+			offset = <0x0>;
+			mask = <0x3f8>;
+			mode-usbdfu = <0x250>;
+			mode-emmc = <0x48>;
+			mode-nand = <0x58>;
+		};
+	};
+};
+
 &phy_gmii_sel {
 	compatible = "ti,am654-phy-gmii-sel", "syscon";
 };
diff --git a/arch/arm/dts/k3-am62l-barebox.dtsi b/arch/arm/dts/k3-am62l-barebox.dtsi
index b287ca5b83..34bf42c01f 100644
--- a/arch/arm/dts/k3-am62l-barebox.dtsi
+++ b/arch/arm/dts/k3-am62l-barebox.dtsi
@@ -15,6 +15,22 @@ &wkup_gpio0 {
 	status = "okay";
 };
 
+&wkup_conf {
+	reboot-mode-syscon@10030 {
+		compatible = "syscon", "simple-mfd";
+		reg = <0x10030 0x4>;
+
+		reboot_mode: reboot-mode {
+			compatible = "syscon-reboot-mode";
+			offset = <0x0>;
+			mask = <0x3f8>;
+			mode-usbdfu = <0x250>;
+			mode-emmc = <0x48>;
+			mode-nand = <0x58>;
+		};
+	};
+};
+
 / {
 	aliases {
 		serial0 = &uart0;
-- 
2.39.5



