Delivery-date: Fri, 23 May 2025 13:23:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uIQV6-001sMt-2p
	for lore@lore.pengutronix.de;
	Fri, 23 May 2025 13:23:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uIQV6-0004t7-C4
	for lore@pengutronix.de; Fri, 23 May 2025 13:23:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7MWtjVJFZCLimfE88yaMWDJQk0gzmMdSMWOqkS2XSKE=; b=I4e0Y2UMeD88H1NUvvQ8zwP02G
	ZM594Xcvgp9qVUHLgQ/Q/B/Ob8rfM6fIlRHmjAsqZ08ZBsG9H4XMwNmDbA3jXS++jPEMo8l3L34WK
	JaGyF3/8GZ5d/F1fiIUuyQu2QlVx1iCJ1WDEiVRYAh8Rhj5jCZlhbo9xs/WlgRoSQ1WwSO1jWE9fo
	aXt/xFzDdgm/UwHoAN2mR/W6mirbvlJRCVKlZW/KaP/XunfDGJ1L3+J3r24BdCHUHKx9Ew1CCP3kk
	1pilDiUQuBUv3UOxvCmR1P22EYgQVXcCvxkQtIJGPnHHJjHmMIdjJ/o03FHEKXlYghOz8PGTY/1dC
	T4IX1j7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIQUp-00000003hKw-3C2z;
	Fri, 23 May 2025 11:23:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIPRC-00000003YiU-3397
	for barebox@lists.infradead.org;
	Fri, 23 May 2025 10:15:39 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1uIPRA-0004aU-47; Fri, 23 May 2025 12:15:36 +0200
From: Philipp Zabel <p.zabel@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 23 May 2025 12:15:35 +0200
Message-Id: <20250523101535.2069540-1-p.zabel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250523_031538_763211_F3B2548D 
X-CRM114-Status: UNSURE (   9.79  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: imx6ull-evk: Grow barebox partition, reduce environment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Keep using the first 1 MiB on the boot uSDHC for barebox + environment,
but change the split from 768/256 to 896/128 KiB.

This allows to install multi-board barebox binaries that have grown past
the 768 KiB limit without changing GPT partitions.

Now i.MX6ULL is aligned with the other i.MX6 boards as of commit
3fb70de496b3 ("ARM: i.MX: increase barebox partition sizes").

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 arch/arm/dts/imx6ull-14x14-evk.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/dts/imx6ull-14x14-evk.dts b/arch/arm/dts/imx6ull-14x14-evk.dts
index ad283ca968..fdd0df28a3 100644
--- a/arch/arm/dts/imx6ull-14x14-evk.dts
+++ b/arch/arm/dts/imx6ull-14x14-evk.dts
@@ -15,12 +15,12 @@ &usdhc2 {
 
 	partition@0 {
 		label = "barebox";
-		reg = <0x0 0xc0000>;
+		reg = <0x0 0xe0000>;
 	};
 
-	environment_usdhc2: partition@c0000 {
+	environment_usdhc2: partition@e0000 {
 		label = "barebox-environment";
-		reg = <0xc0000 0x40000>;
+		reg = <0xe0000 0x20000>;
 	};
 };
 
-- 
2.49.0



