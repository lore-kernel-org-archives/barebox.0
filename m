Delivery-date: Wed, 12 Nov 2025 22:38:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJIXb-000JGX-0I
	for lore@lore.pengutronix.de;
	Wed, 12 Nov 2025 22:38:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJIXa-0002JI-IJ
	for lore@pengutronix.de; Wed, 12 Nov 2025 22:38:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=gcEwaz0zt43Eek3D9LJa+Z5jqluyg9sIOPdKBRBIrtE=; b=WzzUQ4O+pO9gLvWrIumko7vn3M
	ThCZ5MXnxqI4YhVyrCps9jUHQ6pIH3Kqtf4we3rHUX0lV9LmbjeXcS5Muo3WrCqGIWjQPkbaaz983
	SoyxUJAY4CfAbasMgGIrgXF6P7eeskR7OYMNDuDfG8G0NN3dl0yBTBYbINZin0g8MXuH0t8d2Gj0c
	JdyG2Q9kEesqm9LHwxShATGAinBZpKmubgyV2VTms7cFH5ZXLbLh/UzEVIfISDkrPNZaPMXQu1NNK
	tXfUl99CSAR3o2A62pJvHPQG4miG257+rQuidvv7MHmStOE7usuRnt4I7zQC8eu30lRhaJ2cP0hHE
	cstxnubg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJIX1-00000009XoM-064o;
	Wed, 12 Nov 2025 21:37:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJIWy-00000009Xnw-0JqM
	for barebox@lists.infradead.org;
	Wed, 12 Nov 2025 21:37:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vJIWv-0002Bs-PV; Wed, 12 Nov 2025 22:37:29 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vJIWv-0009Qr-1w;
	Wed, 12 Nov 2025 22:37:29 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vJIWv-0000000GyKH-24Rq;
	Wed, 12 Nov 2025 22:37:29 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 12 Nov 2025 22:37:26 +0100
Message-ID: <20251112213727.4036102-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251112_133732_113348_F0188F46 
X-CRM114-Status: GOOD (  10.63  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master] ARM: i.MX93: reinstate aliases
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Regrettably, the i.MX93 device trees no longer list aliases in the SoC
dtsi and instead leave it to the boards. This broke native GPIO
controllers on i.MX93 in barebox, because the driver expects aliases for
all device tree platforms.

Add back the aliases into a barebox override.

Fixes: 7fdf97ba2464 ("dts: update to v6.18-rc1")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/imx93.dtsi | 37 ++++++++++++++++++++++++++++++++++++-
 1 file changed, 36 insertions(+), 1 deletion(-)

diff --git a/arch/arm/dts/imx93.dtsi b/arch/arm/dts/imx93.dtsi
index 676819817b32..e1328de67243 100644
--- a/arch/arm/dts/imx93.dtsi
+++ b/arch/arm/dts/imx93.dtsi
@@ -1,4 +1,39 @@
-/{
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/ {
+	aliases {
+		gpio0 = &gpio1;
+		gpio1 = &gpio2;
+		gpio2 = &gpio3;
+		gpio3 = &gpio4;
+		i2c0 = &lpi2c1;
+		i2c1 = &lpi2c2;
+		i2c2 = &lpi2c3;
+		i2c3 = &lpi2c4;
+		i2c4 = &lpi2c5;
+		i2c5 = &lpi2c6;
+		i2c6 = &lpi2c7;
+		i2c7 = &lpi2c8;
+		mmc0 = &usdhc1;
+		mmc1 = &usdhc2;
+		mmc2 = &usdhc3;
+		serial0 = &lpuart1;
+		serial1 = &lpuart2;
+		serial2 = &lpuart3;
+		serial3 = &lpuart4;
+		serial4 = &lpuart5;
+		serial5 = &lpuart6;
+		serial6 = &lpuart7;
+		serial7 = &lpuart8;
+		spi0 = &lpspi1;
+		spi1 = &lpspi2;
+		spi2 = &lpspi3;
+		spi3 = &lpspi4;
+		spi4 = &lpspi5;
+		spi5 = &lpspi6;
+		spi6 = &lpspi7;
+		spi7 = &lpspi8;
+	};
+
 	chosen {
 		barebox,bootsource-mmc0 = &usdhc1;
 		barebox,bootsource-mmc1 = &usdhc2;
-- 
2.47.3



