Delivery-date: Tue, 19 Nov 2024 12:34:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tDMUg-003oLW-0U
	for lore@lore.pengutronix.de;
	Tue, 19 Nov 2024 12:34:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tDMUf-0004P5-Jn
	for lore@pengutronix.de; Tue, 19 Nov 2024 12:34:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lFibE50WabHU+IHMJjKdIC/iPaPMoKNdnv3DaDdYCC8=; b=tHRdh9/sYv8nFYhVNb37ueJmRu
	MngG+eeXogH9hwFq7vYoz4VB0bb5bG0PEYoD45ZoZzpBWmVmbL8RYFFIQarwtRdkmUf9tbxppHwYU
	xqVAobCfBGRL63QTAVFMu31iXCqo+QQbFAjY0j1foO71jXCNfFTJyTbhL2wdxR0KdEbfnx9yghEBq
	8GyLidKy63edfk23WiG6uSIKC6T04PiFKRLGHOG+Elf4KLrmk3InAEqWv2ZivSkkNL6YzI/5v7ROE
	Sr+sIKGey1/N9xFcZXmvgwxu33jGhvTYixr0goP7V/zIxyWUUrHRucpfb0g8Ya03vWu/sc0bJz0Z0
	81FvD3Hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tDMUC-0000000CE7z-2xGV;
	Tue, 19 Nov 2024 11:33:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tDMU9-0000000CE7M-3B7C
	for barebox@lists.infradead.org;
	Tue, 19 Nov 2024 11:33:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <uol@pengutronix.de>)
	id 1tDMU7-0004Gd-65; Tue, 19 Nov 2024 12:33:31 +0100
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <uol@pengutronix.de>)
	id 1tDMU6-001YYZ-3D;
	Tue, 19 Nov 2024 12:33:31 +0100
Received: from uol by dude03.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <uol@pengutronix.de>)
	id 1tDMU6-008UjG-2l;
	Tue, 19 Nov 2024 12:33:30 +0100
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 19 Nov 2024 12:33:28 +0100
Message-Id: <20241119113328.2024731-1-u.oelmann@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241119_033333_799203_1A991D21 
X-CRM114-Status: GOOD (  11.68  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: dts: skov-imx6: switch barebox' environment from MBR to GPT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When barebox is booted from an SD-card the latter is usually not MBR-partitioned
anymore but instead utilizes a GUID partition table today which assigns names to
partitions. This allows for more flexibility as it is independent of a specific
partition number. Chose the name "barebox-environment" for the partition that
shall be used for storing barebox' environment.

Signed-off-by: Ulrich Ölmann <u.oelmann@pengutronix.de>
---
 arch/arm/dts/imx6qdl-skov-imx6.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/dts/imx6qdl-skov-imx6.dtsi b/arch/arm/dts/imx6qdl-skov-imx6.dtsi
index b8fc1ec0bca2..1840c69be5db 100644
--- a/arch/arm/dts/imx6qdl-skov-imx6.dtsi
+++ b/arch/arm/dts/imx6qdl-skov-imx6.dtsi
@@ -19,7 +19,7 @@ aliases {
 	chosen {
 		environment-sd {
 			compatible = "barebox,environment";
-			device-path = &usdhc3, "partname:2";
+			device-path = &usdhc3, "partname:barebox-environment";
 			status = "disabled";
 		};
 
-- 
2.39.5



