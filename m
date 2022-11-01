Delivery-date: Tue, 01 Nov 2022 14:32:56 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oprNw-00AqaY-GU
	for lore@lore.pengutronix.de; Tue, 01 Nov 2022 14:32:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oprNv-0006V9-5X
	for lore@pengutronix.de; Tue, 01 Nov 2022 14:32:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fULZUiElFDBBQlFJ89bldgakDVi5uEuvWXh+LXbNM5A=; b=XEYIaxy3yOxzIBm6jZ9xWqO2vW
	qS81yJJOgX/bz4+NBoxnjKIG2O5vj3+eeIOArmKlqlOaFmACHibZr4Q4jsbXn3zOv3g5JRlpkXgtv
	9tkEMJD9AVaDh0zssv3rSoDL1JngtokKLuqnfNaRnYNUB5xvcMmAdzASimPB7TvMYm+z8/lpg8xM8
	w4IQozM3y2+g/dZdhNMH8SSNqawSKgPzh0WHc8fBZnh0KLJr7+m/YFUDIoDC3YLKQCrfiHAWQD7QR
	4kDIouXpAC5jC/xAT1E7W2QgvY4Cn2p3L2Ju0DER8C3VP4+nLEqrl4pDXCfT217w99189fPvgbOdv
	B3K3XU/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oprM7-005Hfa-Nt; Tue, 01 Nov 2022 13:31:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oprM3-005He9-AT
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 13:31:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oprLx-0006DO-LG
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 14:30:53 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1oprLx-001gdF-Tl
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 14:30:53 +0100
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1oprLw-002sq2-An
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 14:30:52 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue,  1 Nov 2022 14:30:50 +0100
Message-Id: <20221101133050.687403-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_063059_378144_055D7285 
X-CRM114-Status: GOOD (  12.15  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: dts: i.MX8MP: increase off-on delay on the SD Vcc regulator
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This commit is required to fix the SD card detection mechanism. Without
this commit the SD card (auto-)detection fails when booted from this
sd-card:

  mmc1: Query interface conditions failed: -110
  mmc1: SD operation condition set timed out

The commit is ported from U-Boot:

| commit 247bbeb74c186963d9365db3136d0285618bd9a7
| Author: Andrey Zhizhikin <andrey.zhizhikin@leica-geosystems.com>
| Date:   Sat Dec 5 17:29:17 2020 +0000
|
|     ARM: dts: imx8m: increase off-on delay on the SD Vcc regulator
|
|     Some SD Card controller and power circuitry has increased capacitance,
|     which keeps the internal logic remains powered after regulator is switch
|     off. This is generally the case when card is switched to SD104 mode,
|     where a power cycle should be performed. In case if the card internal
|     logic remains powered, it causes a subsequent failure of mode
|     transition, effectively leading to failed enumeration.
|
|     Introduce a delay of 20 msec in order to provide a possibility for
|     internal card circuitry to drain voltages and perform a power cycle
|     correctly.
|
|     Similar fix is done in commit c49d0ac38a76 ("ARM: dts: rmobile: Increase
|     off-on delay on the SD Vcc regulator") targeted Renesas SOCs.
|
|     Signed-off-by: Andrey Zhizhikin <andrey.zhizhikin@leica-geosystems.com>
|     Cc: Stefano Babic <sbabic@denx.de>

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/dts/imx8mp-evk.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/dts/imx8mp-evk.dts b/arch/arm/dts/imx8mp-evk.dts
index 3264ade4b8..77b438287c 100644
--- a/arch/arm/dts/imx8mp-evk.dts
+++ b/arch/arm/dts/imx8mp-evk.dts
@@ -35,6 +35,10 @@
 	reset-deassert-us = <100000>;
 };
 
+&reg_usdhc2_vmmc {
+	off-on-delay-us = <20000>;
+};
+
 &usdhc2 {
 	#address-cells = <1>;
 	#size-cells = <1>;
-- 
2.30.2



