Delivery-date: Thu, 16 Jun 2022 16:06:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1q92-003yyC-Hk
	for lore@lore.pengutronix.de; Thu, 16 Jun 2022 16:06:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1q92-0002rk-AB
	for lore@pengutronix.de; Thu, 16 Jun 2022 16:06:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GLwV8x+rKxzfZ3KEXDmCABAaf1QH5AxCKS/ssPIT+a0=; b=oqjnI9vTeGpgLtDJdwP2Bn/HTI
	tkEdaEJAWG/sYfAjyoVH6y/6tjiUzWN9PXNywjGV6DMBSPUaFaJm+v9VyrWv0uohJE8ejZXniIxok
	b0lk+y2eZqOm8JSEVtBljj3kwLYZZQBAN9QTNZS/f1FPw5YyPdR8N+47msj8EP4+obMCZFqSftFhO
	VoB29+B09Ka4xFMmoJxJvc8zvZcZGQKt000bwNogP/w8G+HigA1DUsVLAbg9zi3f4erwhHC1BBmQM
	lT1WyCKpTe4+4rh+viXSzXRhkCVcbgC6nAvcfjSb3ZhpVdQTugityO/lL9g3fRFxj6AX7bOk8StQw
	bzj1qaog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1q7Z-002hjY-CG; Thu, 16 Jun 2022 14:05:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1q5E-002gdD-LX
	for barebox@lists.infradead.org; Thu, 16 Jun 2022 14:02:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1o1q5B-0001hc-Di
	for barebox@lists.infradead.org; Thu, 16 Jun 2022 16:02:49 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1o1q59-000sfw-Ay
	for barebox@lists.infradead.org; Thu, 16 Jun 2022 16:02:48 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1o1q59-009G6l-Up
	for barebox@lists.infradead.org; Thu, 16 Jun 2022 16:02:47 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 16 Jun 2022 16:02:46 +0200
Message-Id: <20220616140246.2191569-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220616140246.2191569-1-m.felsch@pengutronix.de>
References: <20220616140246.2191569-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_070252_757213_58AA9EA3 
X-CRM114-Status: GOOD (  10.23  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] ARM: i.MX8MM: increase off-on delay on the SD Vcc regulator
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This commit is ported from u-boot commit 247bbeb74c ("ARM: dts: imx8m:
increase off-on delay on the SD Vcc regulator"). Currently barebox
supports only SDR25/HS mode but it gets important as soon as barebox
supports faster modes.

8<---------------------------------------------------------------------
    ARM: dts: imx8m: increase off-on delay on the SD Vcc regulator

    Some SD Card controller and power circuitry has increased capacitance,
    which keeps the internal logic remains powered after regulator is switch
    off. This is generally the case when card is switched to SD104 mode,
    where a power cycle should be performed. In case if the card internal
    logic remains powered, it causes a subsequent failure of mode
    transition, effectively leading to failed enumeration.

    Introduce a delay of 20 msec in order to provide a possibility for
    internal card circuitry to drain voltages and perform a power cycle
    correctly.

    Similar fix is done in commit c49d0ac38a76 ("ARM: dts: rmobile: Increase
    off-on delay on the SD Vcc regulator") targeted Renesas SOCs.

    Signed-off-by: Andrey Zhizhikin <andrey.zhizhikin@leica-geosystems.com>
    Cc: Stefano Babic <sbabic@denx.de>
8<---------------------------------------------------------------------

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/dts/imx8mm-evk.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/dts/imx8mm-evk.dts b/arch/arm/dts/imx8mm-evk.dts
index 854e9db869..6c06ad7e47 100644
--- a/arch/arm/dts/imx8mm-evk.dts
+++ b/arch/arm/dts/imx8mm-evk.dts
@@ -24,6 +24,10 @@
 	};
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



