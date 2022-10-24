Delivery-date: Mon, 24 Oct 2022 14:23:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omwUb-000gRf-FH
	for lore@lore.pengutronix.de; Mon, 24 Oct 2022 14:23:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omwUZ-0001W8-OV
	for lore@pengutronix.de; Mon, 24 Oct 2022 14:23:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mdqUiV5JIM5LLSW+r+jBK9dQGwQqOJUKV3XcTytBZfE=; b=uo8uJwuRWhHVj/4KO7LbhLTbVM
	eHpLcq9ia0/N8rz5Q8Tidzm4Gbu55JpgbfpZZ7Wt39hnuDUudNIr6OGY3Ts/ZcbDfEu2JiEOoxvfa
	KXX7H7yHRjXOCZGA9iWaaw98XDhPzQHUg9W3gZC5yL0IuhzRkiR87L6MrSJQbF9ewfCyGasDF/E6Z
	F+G6xX4QM1zW7K4ePHVIB2/Isfr6bHNqVSOTT10VopL+Px3Y3pWTtAFoNxadnuOUmQjW30OZINI/g
	YRq5uRA5xoEMC4yQ6mF9b5h0WxPWz24LOkV8yJQzA3MzY+vUOo3sTGYWdLFFzBZkSpUfXZlH1VGM1
	1cSekoTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omwTH-001Lpo-7w; Mon, 24 Oct 2022 12:22:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omwTA-001LmS-2W
	for barebox@lists.infradead.org; Mon, 24 Oct 2022 12:22:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1omwT6-0001A2-CT; Mon, 24 Oct 2022 14:22:12 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1omwT6-0006qX-Ki; Mon, 24 Oct 2022 14:22:11 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1omwT4-007kVN-Ok; Mon, 24 Oct 2022 14:22:10 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: has@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 24 Oct 2022 14:22:10 +0200
Message-Id: <20221024122210.1846979-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221024120952.2162839-1-h.assmann@pengutronix.de>
References: <20221024120952.2162839-1-h.assmann@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_052216_141639_F25668C7 
X-CRM114-Status: UNSURE (   9.72  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! ARM: i.MX8MP: add TQ mba8mpxl board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Many instances of the partname: were removed in

  https://lore.barebox.org/barebox/20221019104022.2568647-1-s.hauer@pengutronix.de/T/#t

Don't add new ones for this new board

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts
index 8bd9efbaefad..c47e7285a703 100644
--- a/arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts
+++ b/arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts
@@ -13,12 +13,12 @@
 	chosen {
 		environment-sd {
 			compatible = "barebox,environment";
-			device-path = &usdhc2, "partname:barebox-environment";
+			device-path = &env_sd2;
 			status = "disabled";
 		};
 		environment-emmc {
 			compatible = "barebox,environment";
-			device-path = &usdhc3, "partname:barebox-environment";
+			device-path = &env_sd3;
 			status = "disabled";
 		};
 	};
@@ -33,7 +33,7 @@
 		reg = <0x0 0xe0000>;
 	};
 
-	partition@e0000 {
+	env_sd2: partition@e0000 {
 		label = "barebox-environment";
 		reg = <0xe0000 0x20000>;
 	};
@@ -48,7 +48,7 @@
 		reg = <0x0 0xe0000>;
 	};
 
-	partition@e0000 {
+	env_sd3: partition@e0000 {
 		label = "barebox-environment";
 		reg = <0xe0000 0x20000>;
 	};
-- 
2.30.2



