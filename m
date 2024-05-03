Delivery-date: Fri, 03 May 2024 12:12:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2pti-00H5fM-0x
	for lore@lore.pengutronix.de;
	Fri, 03 May 2024 12:12:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2pth-0005zS-I2
	for lore@pengutronix.de; Fri, 03 May 2024 12:12:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Sb8CwQGjd5CYtxue4PnauBFLJlJZNwSfIXR6+HJ4BA4=; b=CZIWCMv/pvcdyAK6PSsduGuIpS
	w17P4MQrKs1h16XlnqgzfW6+N3PmBT0CG8aH5KNQsm0LlliL38vLC5k3qiwOPyhEKFE+MUY9bK1Wx
	S3M+ol42SCVaVUK7w634iTSMmXl6lCJTFwOz4NjNzecvOwJJ2iZd//uCzBA0HUEsPjFIahMwJOQYV
	Sd5ptQMgtf0D6ThDsU41Jt3OT87ZsD7R8i7jsTJchimobzEirdXGA7THD4cyOFWrCD+x9seTjWVac
	UDxxxm73F2MU0tNX/3c9O8I4y7iiM2xfd8rsLyWYRv592wPKGxCu+4qe+uZAmcSUinv5vUNa/LN8u
	qLo5CEzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2ptC-0000000Fzvd-45F9;
	Fri, 03 May 2024 10:11:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2pt8-0000000Fztx-2hYu
	for barebox@lists.infradead.org;
	Fri, 03 May 2024 10:11:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2pt7-0005pA-Bq; Fri, 03 May 2024 12:11:33 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2pt6-00FgRO-VB; Fri, 03 May 2024 12:11:32 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2pt6-0058gK-2q;
	Fri, 03 May 2024 12:11:32 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  3 May 2024 12:11:31 +0200
Message-Id: <20240503101131.1224992-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_031134_701577_66715976 
X-CRM114-Status: UNSURE (   7.59  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] arm: rockchip: mecsbc: drop duplicate reserved-memory node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The exact same node is duplicated. Drop one instance.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/rk3568-mecsbc.dts | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/arch/arm/dts/rk3568-mecsbc.dts b/arch/arm/dts/rk3568-mecsbc.dts
index 05893b8f724a..c9bab7f36e2f 100644
--- a/arch/arm/dts/rk3568-mecsbc.dts
+++ b/arch/arm/dts/rk3568-mecsbc.dts
@@ -91,31 +91,20 @@ data_partitions {
 	reserved-memory {
 		#address-cells = <2>;
 		#size-cells = <2>;
 		ranges;
 
 		/* Address will be determined by the bootloader */
 		ramoops {
 			compatible = "ramoops";
 		};
 	};
-
-	reserved-memory {
-		#address-cells = <2>;
-		#size-cells = <2>;
-		ranges;
-
-		/* Address will be determined by the bootloader */
-		ramoops {
-			compatible = "ramoops";
-		};
-	};
 };
 
 &sdhci {
 	no-sd;
 
 	partitions {
 		compatible = "fixed-partitions";
 		#address-cells = <2>;
 		#size-cells = <2>;
 
-- 
2.39.2



