Delivery-date: Wed, 12 Nov 2025 08:32:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJ5LM-00065F-1l
	for lore@lore.pengutronix.de;
	Wed, 12 Nov 2025 08:32:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJ5LM-00024F-0x
	for lore@pengutronix.de; Wed, 12 Nov 2025 08:32:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BJjhTwndQoXZwfiZzjYSG6GlDe0hE7y/qQyVtpycPbs=; b=FlqrtfBg1xQnJjCHdP9PPs0Lco
	jqrWu316LZUg4G9uNM6gcGqjYNHeWI9te8t4qc/b754NAVTRNAiCiQh57IXh3IeYocj42JZZAC3xP
	oj9RY1sQcnZRwlWtksUzX0PSfk2Sw0PuB85P+iTtZpoPsB3AyeRTUWN1ZJxQxnofKPfDOrEPE0Wzl
	5JJTPloW3eqVWGQm9CX9tv/mmeJ5uIXX9Wanw6+moI+2U0K8/SHxGERpHQlzTTIHYtVvbMd/YvTh7
	nng71uoRZ8omAnFIe6tU21XxBGTOR+kiLoLJpLbJa4VVbgIWsG8HFLt9Mw1LyY8/PQPbxKifKosqG
	7Hq8lcpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJ5Kh-00000008HOS-0YFv;
	Wed, 12 Nov 2025 07:31:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJ5Kc-00000008HNz-1p0H
	for barebox@lists.infradead.org;
	Wed, 12 Nov 2025 07:31:55 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vJ5KZ-0001vv-2M; Wed, 12 Nov 2025 08:31:51 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 12 Nov 2025 08:26:15 +0100
Message-ID: <20251112073149.290151-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251111_233154_473984_56AC47D8 
X-CRM114-Status: UNSURE (   9.70  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX8MP: skov: update variant-3 Rev.C
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Update the old variant which was never in production therefore no
regressions are expected.

The new variant has a new 7" JuTouch JT070TM041 panel and an EETI touch.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/boards/skov-imx8mp/board.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/skov-imx8mp/board.c b/arch/arm/boards/skov-imx8mp/board.c
index 0266388849d2..0bc218b004d6 100644
--- a/arch/arm/boards/skov-imx8mp/board.c
+++ b/arch/arm/boards/skov-imx8mp/board.c
@@ -88,7 +88,7 @@ static const struct board_description imx8mp_variants[] = {
 	},
 
 	[3] = {
-		.dts_compatible = "skov,imx8mp-skov-revc-tian-g07017",
+		.dts_compatible = "skov,imx8mp-skov-revc-jutouch-jt070tm041",
 	},
 
 	[4] = {
-- 
2.47.3



