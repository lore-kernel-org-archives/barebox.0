Delivery-date: Wed, 03 Apr 2024 06:35:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrsL5-005Awm-1u
	for lore@lore.pengutronix.de;
	Wed, 03 Apr 2024 06:35:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrsL5-0001LS-2R
	for lore@pengutronix.de; Wed, 03 Apr 2024 06:35:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7jQ8juu+yOmvZ9qS4RQZ2NXM3sLWoh7lzqwPr7cjAmQ=; b=fvUQm1wiYCslMeNrTvNpS+Cy9E
	6lOJgNYLCkySJ4YnLmCeM6MMwKKdAFdEzcEIRpzpzO2orRuViRE68Leu/gy3c/T1LUOm3nLrtia3a
	F4R5wxHpmGNEOFRUtrEBZakVt1LLEhxJGZYYM5JXQ0agfxZl1Md+h5fPdINj2u28yE/ouaHBm1mpT
	2RvD8j0gLhRrJfy5Q5aZvfFuzCSvKUQY1iUT4RuTJ4cxmOFr+e0Bs54nZd3S3QP7GjB91WdaHp5Ce
	iPc/B5sMjKdwSIMHmSlijMJFPAOn6/fBQqUbG52AO+5FyasrZpWoOirEWIEaGdfwNDfqPm3ZcrkGS
	ITcY3XXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrsKg-0000000DxmH-2Zc0;
	Wed, 03 Apr 2024 04:34:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrsKc-0000000Dxjv-06KB
	for barebox@lists.infradead.org;
	Wed, 03 Apr 2024 04:34:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1rrsKa-000161-M1; Wed, 03 Apr 2024 06:34:36 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1rrsKa-00A6sq-9R; Wed, 03 Apr 2024 06:34:36 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1rrsKa-0082rh-0j;
	Wed, 03 Apr 2024 06:34:36 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed,  3 Apr 2024 06:34:33 +0200
Message-Id: <20240403043433.1917623-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240403043433.1917623-1-o.rempel@pengutronix.de>
References: <20240403043433.1917623-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240402_213438_113100_35215414 
X-CRM114-Status: UNSURE (   9.41  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 2/2] ARM: i.MX8MP: skov: add new bd500 variant support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add bd500 board variant.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/skov-imx8mp/board.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boards/skov-imx8mp/board.c b/arch/arm/boards/skov-imx8mp/board.c
index d4cb9c8279..3cb7a8752a 100644
--- a/arch/arm/boards/skov-imx8mp/board.c
+++ b/arch/arm/boards/skov-imx8mp/board.c
@@ -83,6 +83,9 @@ static const struct board_description imx8mp_variants[] = {
 		.dts_compatible_hdmi = "skov,imx8mp-skov-revb-hdmi",
 		.flags = SKOV_IMX8MP_HAS_HDMI,
 	},
+	[2] = {
+		.dts_compatible = "skov,imx8mp-skov-revc-bd500",
+	},
 };
 
 static const struct board_description imx8mp_basic_variant = {
-- 
2.39.2



