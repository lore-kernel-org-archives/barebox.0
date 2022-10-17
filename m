Delivery-date: Mon, 17 Oct 2022 18:20:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okSqW-00Bjw3-4c
	for lore@lore.pengutronix.de; Mon, 17 Oct 2022 18:20:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okSqU-0004UW-7d
	for lore@pengutronix.de; Mon, 17 Oct 2022 18:20:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jSPGbFnK4rBJkMRu2gFmIKdHv0jzsZdxvVdQHolNb2g=; b=BMBRJiUSoKLZXhmyENUZ8L3qJm
	o5cFWH4Y0RlZzNG++GDCiZ4FSxw9i7IhCJzKicg2Bp5xfSdt6COeinlik7EORN3I4R4emtQvTKOAH
	t3QRzSW0oF2+140XTELsXoaV7SsFDSRZTXVa0HroLP6e3FxBkKvyxysHJBUPaccbtPyWtW1jAmtq2
	Paxyyvx85pFRraAi1HueXbbm8P6y2KIYnF0jbCB9O+fmV1aU+XDZ6WzA/3mlrwcIl2LuHBUEfdMse
	0Z2su+xBrgUd7+1QhAGiaZFcJo71wPZkGsOCJ0P8nSqhfKTI6jxuY7ZZsymcSnzULG9venvIraHQ+
	mFk79W8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okSp0-00DjvS-VU; Mon, 17 Oct 2022 16:18:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okSot-00Djse-F1
	for barebox@lists.infradead.org; Mon, 17 Oct 2022 16:18:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1okSon-0004DN-LX
	for barebox@lists.infradead.org; Mon, 17 Oct 2022 18:18:21 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1okSom-00270j-VV
	for barebox@lists.infradead.org; Mon, 17 Oct 2022 18:18:20 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1okSol-001OfX-TJ
	for barebox@lists.infradead.org; Mon, 17 Oct 2022 18:18:19 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 17 Oct 2022 18:18:17 +0200
Message-Id: <20221017161818.333094-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221017161818.333094-1-m.felsch@pengutronix.de>
References: <20221017161818.333094-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_091827_523409_4F9C30D0 
X-CRM114-Status: UNSURE (   9.00  )
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
Subject: [PATCH next 2/3] ARM: dts: i.MX8MP: assume hsio power domain to be powered
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With a very recent barebox version we get the following error message:

  imx8mq-usb-phy 382f0040.usb-phy@382f0040.of: error No such device: power domain attach failed

This is because of the lack of the power-domain driver. With the
assumption that the TF-A left this power-domain powered we can set this
flag to tell barebox that everything is okay.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/dts/imx8mp.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/dts/imx8mp.dtsi b/arch/arm/dts/imx8mp.dtsi
index b251ebeada..7e46a71546 100644
--- a/arch/arm/dts/imx8mp.dtsi
+++ b/arch/arm/dts/imx8mp.dtsi
@@ -7,3 +7,7 @@
 		syscon = <&src>;
 	};
 };
+
+&hsio_blk_ctrl {
+	barebox,allow-dummy;
+};
-- 
2.30.2



