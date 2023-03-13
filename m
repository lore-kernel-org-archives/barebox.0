Delivery-date: Mon, 13 Mar 2023 14:45:52 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbiUp-0062H4-4V
	for lore@lore.pengutronix.de; Mon, 13 Mar 2023 14:45:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbiUn-0006Lf-3R
	for lore@pengutronix.de; Mon, 13 Mar 2023 14:45:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FVlsjNnQUWPKRwZHX+OIUp4AzvB49GevDTeIv9TL/NI=; b=aFC01dgn5hC5tC6x8ifKBYBxOa
	ZCEJTxIdfRUcL8KhxC5AaXgQo5VmOeuoW2p0Y82kJW1Iofnz29fh7XKBj790igyeuDiQW7sC4yYfO
	+6P/scVf9MuCIx0W5trjFs5MYoazN3YcqoT82NdRgwMap3SxrCddqAL+vt90gqKHQ4af2SLdWFHkS
	AGYGL/cbl1imWVVafgxJvFrhtFQi9IbtFeJ/c9TDVUYLN32BIqyjdS4K3mCyE+XpVCQY32uV+IWug
	0sAWiQBuAu5oTTw6mxu4L+Z5V/yBnF7jThry3YCK1UJiWmNLyRAUv0MvFtwzMnZ4C91S3lDcbfN0V
	kZY85lcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbiTR-005xSX-Hc; Mon, 13 Mar 2023 13:44:26 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbiR2-005vsH-EP
	for barebox@bombadil.infradead.org; Mon, 13 Mar 2023 13:41:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=FVlsjNnQUWPKRwZHX+OIUp4AzvB49GevDTeIv9TL/NI=; b=cSlxeDRsR4IBEURUlIOOb8wTQ/
	FND88vl772KueYKCvOdZ1pmDVRVTM/oTkfkQOq3xZ7P4NCsZjIxyNdjbraE0Lnfvrwl61DVhpoe8Y
	rWOiO7KHDpzSIYowGJdSfQkRkOMPCbFrnbUD6LNgM68hsO1Icv1EOTBK26r0zbXA0nc4FRZEFfMgT
	Z7jllTXwJ4UU9HAxgG741yAMEq1ET9F9A7v7pyZAmvWq5rS87D1ZCFeHiTh+31S/i92vUDQzWNjsA
	NOrkv9CxozMdnZDE92ziS+wvWSJ+xZ+bzC+W69WZQ2hgkaS3gusoWHNR7L0QYTYtVWcA0mIkYiBqY
	MKU9dsyw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pbiQw-001NSp-2T
	for barebox@lists.infradead.org;
	Mon, 13 Mar 2023 13:41:55 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1pbiQr-0004N9-LL
	for barebox@lists.infradead.org; Mon, 13 Mar 2023 14:41:45 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 13 Mar 2023 14:42:00 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230228-v2023-02-0-topic-flexspi-v2-21-3d33126d2434@pengutronix.de>
References: <20230228-v2023-02-0-topic-flexspi-v2-0-3d33126d2434@pengutronix.de>
In-Reply-To: <20230228-v2023-02-0-topic-flexspi-v2-0-3d33126d2434@pengutronix.de>
To: barebox@lists.infradead.org
Cc: 
X-Mailer: b4 0.12.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_134150_906518_E33C5C84 
X-CRM114-Status: UNSURE (   7.84  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 21/23] ARM: i.MX8M: add qspi barebox and
 barebox-environment partitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Use the same partition size layout as done for SD/eMMC devices.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/dts/imx8mm-evk.dtsi | 19 +++++++++++++++++++
 arch/arm/dts/imx8mn-evk.dtsi | 19 +++++++++++++++++++
 arch/arm/dts/imx8mp-evk.dts  | 19 +++++++++++++++++++
 3 files changed, 57 insertions(+)

diff --git a/arch/arm/dts/imx8mm-evk.dtsi b/arch/arm/dts/imx8mm-evk.dtsi
index 4d64dcad1c..a657faa6bc 100644
--- a/arch/arm/dts/imx8mm-evk.dtsi
+++ b/arch/arm/dts/imx8mm-evk.dtsi
@@ -19,6 +19,25 @@
 	};
 };
 
+&{flexspi/flash@0} {
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "barebox";
+			reg = <0x0 0xe0000>;
+		};
+
+		partition@e0000 {
+			label = "barebox-environment";
+			reg = <0xe0000 0x20000>;
+		};
+	};
+
+};
+
 &reg_usdhc2_vmmc {
 	off-on-delay-us = <20000>;
 };
diff --git a/arch/arm/dts/imx8mn-evk.dtsi b/arch/arm/dts/imx8mn-evk.dtsi
index d15f66ff40..c23075216e 100644
--- a/arch/arm/dts/imx8mn-evk.dtsi
+++ b/arch/arm/dts/imx8mn-evk.dtsi
@@ -21,6 +21,25 @@
 	};
 };
 
+&flash0 {
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "barebox";
+			reg = <0x0 0xe0000>;
+		};
+
+		partition@e0000 {
+			label = "barebox-environment";
+			reg = <0xe0000 0x20000>;
+		};
+	};
+
+};
+
 &usdhc2 {
 	#address-cells = <1>;
 	#size-cells = <1>;
diff --git a/arch/arm/dts/imx8mp-evk.dts b/arch/arm/dts/imx8mp-evk.dts
index 28d8c5f929..0acc3731d5 100644
--- a/arch/arm/dts/imx8mp-evk.dts
+++ b/arch/arm/dts/imx8mp-evk.dts
@@ -35,6 +35,25 @@
 	reset-deassert-us = <100000>;
 };
 
+&{flexspi/flash@0} {
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "barebox";
+			reg = <0x0 0xe0000>;
+		};
+
+		partition@e0000 {
+			label = "barebox-environment";
+			reg = <0xe0000 0x20000>;
+		};
+	};
+
+};
+
 &reg_usdhc2_vmmc {
 	off-on-delay-us = <20000>;
 };

-- 
2.30.2



