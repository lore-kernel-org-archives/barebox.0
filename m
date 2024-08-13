Delivery-date: Tue, 13 Aug 2024 19:02:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sduuX-009GMz-37
	for lore@lore.pengutronix.de;
	Tue, 13 Aug 2024 19:02:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sduuX-0002bU-D0
	for lore@pengutronix.de; Tue, 13 Aug 2024 19:02:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=UoEMsMWl1cm5qsk340AxE+TyRF8hcgoKXi+OYd5C1rs=; b=DXAN19rPgD8T0h7p3v12D0bsIj
	r9WePECW9I0pp/0HhrduibkC3+LkmlMjM8K8RxhW8LDg8FSxswCg5mh8zAmaVRtl1Y+gm6QV+THQD
	GB38mW5WZaotSys0m2A2uIaLUGfxzXrsLSEB0jZ0hOrbBZxwrRfWVJCigkA07nXr0P3+PLA7TVgjB
	IrLeUIh3/z9v92RxKNtVYeEPDArFMqBC/4OcayNPC6IiEeqvaDpWoDTEpMW1kUHJHvngTCzDvHd10
	Hore7FZ8y8WNW+cz+1RdWzjk+PSXqlXOpdpavRS51SvhPwxZi904+QvFo3gA4tbUnNVCyUeRJkUn6
	o1lAganA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdutv-00000004RMw-2Jil;
	Tue, 13 Aug 2024 17:01:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdutV-00000004RF4-0uXr
	for barebox@lists.infradead.org;
	Tue, 13 Aug 2024 17:01:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1sdutR-0002RS-Qq; Tue, 13 Aug 2024 19:01:09 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1sdutR-000ALl-Dr; Tue, 13 Aug 2024 19:01:09 +0200
Received: from rhi by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <rhi@pengutronix.de>)
	id 1sdutR-000pLe-1D;
	Tue, 13 Aug 2024 19:01:09 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>
Date: Tue, 13 Aug 2024 19:01:03 +0200
Message-Id: <20240813170103.197350-1-rhi@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240813_100113_274232_FA7A90B7 
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] =?UTF-8?q?ARM:=20i.MX8MP:=20K=C3=B6nig+Bauer=20AlphaJet:?= =?UTF-8?q?=20remove=20barebox=20partition=20from=20eMMC?=
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The board cannot boot from eMMC because the SoM does not configure the
boot pins appropriately, and has no way of choosing the eMMC as a boot
medium. Instead, the area is used for the GPT partition table. Remove
the confusing entry from the fixed partition table.

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 arch/arm/dts/imx8mp-koenigbauer-alphajet.dts | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm/dts/imx8mp-koenigbauer-alphajet.dts b/arch/arm/dts/imx8mp-koenigbauer-alphajet.dts
index 5f8c83f2a26c..0f6f7e844e88 100644
--- a/arch/arm/dts/imx8mp-koenigbauer-alphajet.dts
+++ b/arch/arm/dts/imx8mp-koenigbauer-alphajet.dts
@@ -79,11 +79,6 @@ &usdhc3 { /* on-SoM eMMC */
 	#address-cells = <1>;
 	#size-cells = <1>;
 
-	partition@0 {
-		label = "barebox";
-		reg = <0x0 0xe0000>;
-	};
-
 	env_emmc: partition@e0000 {
 		label = "barebox-environment";
 		reg = <0xe0000 0x20000>;
-- 
2.39.2



