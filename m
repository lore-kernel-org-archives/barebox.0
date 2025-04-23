Delivery-date: Wed, 23 Apr 2025 19:41:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7e69-004c1h-2a
	for lore@lore.pengutronix.de;
	Wed, 23 Apr 2025 19:41:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7e68-0003Pm-WA
	for lore@pengutronix.de; Wed, 23 Apr 2025 19:41:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=c9lG2RQcFvDe0g73BjsOr8dooi/elp0FZokFmrNFDJs=; b=bBjAeuBMHeeRVeT2W1kw2dvU0w
	t4tT5Gsp3rtsfbFXhZq9bOSmdelXZJTBmTa1y0yhvCrkj1lUhuW1duJzlCJ2rkX4841lp29qXjdVh
	P0CebPqk5zY8JyuWGV1FefkqbFK7RGrpV3d+XIDvjjEzTYeMoAsgTer9GJdbZZjpMHEZGx9sHmw2e
	QXqfQJaVd4NjnXaO9AR+JNgAfi0JyHhgbCh7KEymdUAu0CkYKtAGI3GXTvF8rreyUSpoHL7WPQBMZ
	ZXF4ypGUkF4gGW+YbilymlJ9zFDu+LuASmGH/LN7cShlobnBM17TVE5Rw0SofSzuOC/qSIlImUqJ2
	DxZfUCbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7e5O-0000000BIOQ-2pW6;
	Wed, 23 Apr 2025 17:40:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7amy-0000000AmGq-0RQt
	for barebox@lists.infradead.org;
	Wed, 23 Apr 2025 14:09:25 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1u7amv-0003Wg-1g
	for barebox@lists.infradead.org; Wed, 23 Apr 2025 16:09:21 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 23 Apr 2025 16:09:13 +0200
Message-Id: <20250423140913.1530237-4-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250423140913.1530237-1-m.felsch@pengutronix.de>
References: <20250423140913.1530237-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250423_070924_152461_1C672B46 
X-CRM114-Status: UNSURE (   9.68  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 4/4] ARM: riotboard: drop static barebox-environment handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Since commit 9f868f78bc54 ("environment: use barebox environment from
GPT partitions") barebox can try to find the barebox-environment based
on a GPT partition GUID.

Make use of this mechanism and drop the barebox local of-partition. This
allows the BSP integrators to provide a proper GPT or if no GPT was
provided we fallback to the autom. minimal GPT mechanism added recently.

This also fixes environment handling if booted from a SD card since SD
card boots make use of eMMC barebox environment at the moment.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
v2:
- Adapt commit message

 arch/arm/dts/imx6s-riotboard.dts | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/arch/arm/dts/imx6s-riotboard.dts b/arch/arm/dts/imx6s-riotboard.dts
index 57817c1197a7..cca34d6dba95 100644
--- a/arch/arm/dts/imx6s-riotboard.dts
+++ b/arch/arm/dts/imx6s-riotboard.dts
@@ -11,11 +11,6 @@
 / {
 	chosen {
 		stdout-path = &uart2;
-
-		environment {
-			compatible = "barebox,environment";
-			device-path = &environment_usdhc4;
-		};
 	};
 };
 
@@ -31,11 +26,6 @@ partition@0 {
 		label = "barebox";
 		reg = <0x0 0xe0000>;
 	};
-
-	environment_usdhc4: partition@e0000 {
-		label = "barebox-environment";
-		reg = <0xe0000 0x20000>;
-	};
 };
 
 &clks {
-- 
2.39.5



