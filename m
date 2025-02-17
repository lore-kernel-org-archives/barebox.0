Delivery-date: Mon, 17 Feb 2025 19:23:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tk5m6-003aPm-06
	for lore@lore.pengutronix.de;
	Mon, 17 Feb 2025 19:23:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tk5m2-0003WH-Vt
	for lore@pengutronix.de; Mon, 17 Feb 2025 19:23:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ybmETehAsHGsnw+spGQl1Pyz2JOF2Nx87Hguo0JuJos=; b=ew8XioqloU09JS/HJQ53MCg+6f
	9IY2bcL+If0An3l2fGeiXZWe45KKv7/CApe20NL7cDElIhzYoyzf1SxHD3ZOWTifZyLZVRK1Z/f+A
	zve+TARv5uMp3W17lVoehgFjbuoRNFrCsgHCltHd+isVYpGJt1yDqOrqjV33LPpnGxTnMYngWhXYK
	rZbi+kdp3ATGCxtian33t1bKNCZmFolSfkNAhTc+wSY9vJfyclD+6zeEOhTkYCoIdVNZBJgIpT1JD
	+bZFP3g2z02IZozg1h3bQjrv3qkjjdd9tsss18LMu27liWfuiiSqcJDgKw3HKdgQ4p4G2704/rQ/C
	WWXEseDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tk5lK-00000005aaC-0MwX;
	Mon, 17 Feb 2025 18:22:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tk5Xr-00000005YyR-4AxS
	for barebox@bombadil.infradead.org;
	Mon, 17 Feb 2025 18:08:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=ybmETehAsHGsnw+spGQl1Pyz2JOF2Nx87Hguo0JuJos=; b=cEg2eY4J43d4d+IoCppOQktttq
	s1HznZhmp9eSoIsCfKhNQCrHDIneFtAm21E5EQ4OLuieLh3b1gmxFxqLvwqTbK6KL3bSndqhRAXQz
	TJFE8XFMlja9ZzxfC3JYXJO3ACufzC5tHOrJNq4zLSqOLQSwDHsXDUE4LvYGqy/PjulP5bQu1zAaO
	IvkKjV2QubXxT8lxPXHv3w0n/vDXv1fj+ZnDV9ZG0Xgyn9B5ki6B859ztg4KNJNcfS2FiMBTBzDWg
	A4OQ01OVfEHP9NcRQO5GB9MmKS2EmsuTO5vwYEP0vsy1hQO8eTa0amcMJxil4BaBO4Bp0ah6B4Etv
	mpDDt/9Q==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tk5Xp-00000001rio-02ML
	for barebox@lists.infradead.org;
	Mon, 17 Feb 2025 18:08:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tk5Xm-00011E-Rs; Mon, 17 Feb 2025 19:08:34 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tk5Xm-001S7e-0P;
	Mon, 17 Feb 2025 19:08:34 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tk5Xm-00Gc9q-06;
	Mon, 17 Feb 2025 19:08:34 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Michael Kopfensteiner <michael.kopfensteiner@vahle.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Feb 2025 19:08:30 +0100
Message-Id: <20250217180833.3955657-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250217180833.3955657-1-a.fatoum@pengutronix.de>
References: <20250217180833.3955657-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_180837_145142_DAFEA3FF 
X-CRM114-Status: GOOD (  10.30  )
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
Subject: [PATCH 3/6] ARM: IMX8MP: var-dart-dt8mcustomboard.dts: use new-style partition binding
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The fixed-partitions compatible is meant to be used for the partitions
container holding the individual partitions and not for every individual
partition.

This didn't lead to problems so far, because barebox ignored the
compatible and parsed them as legacy partitions.

Resolve the confusion by changing the description to use the new-style
binding correctly.

While at it, we also drop some leading zeroes for readability's sake.

Cc: Michael Kopfensteiner <michael.kopfensteiner@vahle.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../dts/imx8mp-var-dart-dt8mcustomboard.dts   | 23 ++++++++++---------
 1 file changed, 12 insertions(+), 11 deletions(-)

diff --git a/arch/arm/dts/imx8mp-var-dart-dt8mcustomboard.dts b/arch/arm/dts/imx8mp-var-dart-dt8mcustomboard.dts
index ab4c5790cf15..f11218c904f5 100644
--- a/arch/arm/dts/imx8mp-var-dart-dt8mcustomboard.dts
+++ b/arch/arm/dts/imx8mp-var-dart-dt8mcustomboard.dts
@@ -356,9 +356,6 @@ &usb_dwc3_1 {
 };
 
 &usdhc2 {
-	#address-cells = <2>;
-	#size-cells = <1>;
-
 	pinctrl-names = "default", "state_100mhz", "state_200mhz";
 	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
 	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
@@ -368,16 +365,20 @@ &usdhc2 {
 	bus-width = <4>;
 	status = "okay";
 
-	partition@0 {
+	partitions {
 		compatible = "fixed-partitions";
-		label = "barebox";
-		reg = <0x00000000 0x00000000 0x000e0000>;
-	};
+		#size-cells = <2>;
+		#address-cells = <1>;
 
-	env_sd: partition@e0000 {
-		compatible = "fixed-partitions";
-		label = "barebox-environment";
-		reg = <0x00000000 0x000e0000 0x00020000>;
+		partition@0 {
+			label = "barebox";
+			reg = <0x0 0x0 0xe0000>;
+		};
+
+		env_sd: partition@e0000 {
+			label = "barebox-environment";
+			reg = <0x0 0xe0000 0x20000>;
+		};
 	};
 };
 
-- 
2.39.5



