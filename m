Delivery-date: Mon, 27 Jan 2025 10:32:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tcLTo-0053Il-31
	for lore@lore.pengutronix.de;
	Mon, 27 Jan 2025 10:32:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tcLTp-0007J7-1r
	for lore@pengutronix.de; Mon, 27 Jan 2025 10:32:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=pMU2HxtS2bZyvk4SxlrYNQWHQfO6UuRwanK1JBgOkcs=; b=mPCEzc85iRz6Po6rfIhHuE9o4r
	cJ54B1IyrEsqULb3EeqdnteQYsMs0V+twwQmNbBQwbDBAE0D/0NpsmTVLdf4KwMpCQpAVKseVS4jU
	x51smdNOVkF61HcrDOkvxW0XgBcWTachoHEu2EALSRxaMpK1UhYhc5LD3PwEvLYCV1uiVE02gkoE/
	cYN+M8zKnRCDhtSDboyqSNZhK9ST9Gn70RFGaDtpAG+39JWm6kAdQQaxeDsuahWJqNYptiIZ1zNHL
	KGd9yGr2I8Barq2AXrGaRYJQP3OfseU6OxybUg0il2t2RcbDVzaZ+nIFK10xoG9BOfOgC1okynNOd
	VoEgeO+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tcLT7-000000020ft-0vu7;
	Mon, 27 Jan 2025 09:31:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tcLT3-000000020eE-3gzF
	for barebox@lists.infradead.org;
	Mon, 27 Jan 2025 09:31:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1tcLT0-00077n-KS; Mon, 27 Jan 2025 10:31:38 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1tcLT0-0026J6-1P;
	Mon, 27 Jan 2025 10:31:38 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1tcLT0-00284N-1F;
	Mon, 27 Jan 2025 10:31:38 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Mon, 27 Jan 2025 10:31:30 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250127-fix-phytec-som-8mm-ddr-static-v1-1-ade507aeb4b7@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAHFSl2cC/x3MMQqAMAxA0atIZgM2YBWvIg7aRs1QlaaIIt7d4
 viG/x9QjsIKXfFA5FNU9i3DlAW4ddwWRvHZQBXVlaEGZ7nwWO/EDnUP2IaA3kfUNCZxaJyl2U6
 easuQH0fkHPz/fnjfDwvEZHZvAAAA
X-Change-ID: 20250127-fix-phytec-som-8mm-ddr-static-1c62f6bd256e
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250127_013141_920168_3063D488 
X-CRM114-Status: GOOD (  11.15  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: i.MX8MM: Phytec i.MX8MM SoC: change ddr_fsp0_cfg to
 static struct
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Otherwise the symbol can be defined multiple times when building a multi
target barebox.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 arch/arm/boards/phytec-som-imx8mm/lpddr4-timing.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/phytec-som-imx8mm/lpddr4-timing.c b/arch/arm/boards/phytec-som-imx8mm/lpddr4-timing.c
index 7d01c181c04722e033e30318fb7e910d9a63354c..9efeedd7d217b77564d8e937c28c8e354dde3392 100644
--- a/arch/arm/boards/phytec-som-imx8mm/lpddr4-timing.c
+++ b/arch/arm/boards/phytec-som-imx8mm/lpddr4-timing.c
@@ -329,7 +329,7 @@ static struct dram_cfg_param ddr_ddrphy_cfg[] = {
 };
 
 /* P0 message block paremeter for training firmware */
-struct dram_cfg_param ddr_fsp0_cfg[] = {
+static struct dram_cfg_param ddr_fsp0_cfg[] = {
 	{ 0xd0000, 0x0 },
 	{ 0x54003, 0xbb8 },
 	{ 0x54004, 0x2 },

---
base-commit: 9777d52859f99dd61307e6a4491f352f1f6ade8c
change-id: 20250127-fix-phytec-som-8mm-ddr-static-1c62f6bd256e

Best regards,
-- 
Stefan Kerkmann <s.kerkmann@pengutronix.de>



