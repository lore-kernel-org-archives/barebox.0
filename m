Delivery-date: Tue, 28 Mar 2023 13:56:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ph7wK-00Ha5k-DP
	for lore@lore.pengutronix.de; Tue, 28 Mar 2023 13:56:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ph7wK-0004LB-0O
	for lore@pengutronix.de; Tue, 28 Mar 2023 13:56:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WveEvu6xcINN+R/GL8Y7tWKkpxwXjkMl9abeUR3IAgY=; b=OV83b8t9xwiOM/WZhADn4bvUZc
	nkWFOvX0IhxjT0YHEBxA6IZbrkOHAA0vkE1GK2Zuzb0n2AaxA5mOVZVgwprgvIEMIQ+DS4Gg/kWhv
	+iZiYHAYYkJSxnzNUY8MwGwj27Fm1JRSKgl0OSlwrmx45zvOhVr5v8YhV+iZr0GTf84xd9z5bU90r
	P8ZnL0dXKGNA08f0F7+VLMhDi9BKKZYPj20KULBSbFecJi2mNW63Yylctyl9NpnO/8EMnFs4I/0a6
	1EHb6sWX0iZOTrOrma5+TY0XjfMoM4r5qkD1ADCO6wrFWQ1njsauWJGMIzko5NnV0Id5RV5LmVGlO
	7OcK1ijg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ph7v0-00EF6I-2D;
	Tue, 28 Mar 2023 11:55:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ph7ux-00EF5Y-2R
	for barebox@lists.infradead.org;
	Tue, 28 Mar 2023 11:55:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ph7uw-000425-8K; Tue, 28 Mar 2023 13:55:10 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ph7uv-007IKx-L9; Tue, 28 Mar 2023 13:55:09 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ph7uu-00AhHk-Ms; Tue, 28 Mar 2023 13:55:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 28 Mar 2023 13:55:08 +0200
Message-Id: <20230328115508.2549660-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230328_045511_809269_DCE07753 
X-CRM114-Status: GOOD (  11.47  )
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
Subject: [PATCH] arm: rockchip: radxa-rock3: Fix SD/eMMC device numbers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Kernel commit d268da063b99 ("arm64: dts: rockchip: Update eMMC, SD
aliases for Radxa SBC boards") changed the alias numbers of the MMC
devices. Changes them accordingly as otherwise the eMMC is used as
SD and vice versa.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/radxa-rock3/board.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/radxa-rock3/board.c b/arch/arm/boards/radxa-rock3/board.c
index 4b4e0613d3..0d425e2667 100644
--- a/arch/arm/boards/radxa-rock3/board.c
+++ b/arch/arm/boards/radxa-rock3/board.c
@@ -21,14 +21,13 @@ static int rock3_probe(struct device *dev)
 	barebox_set_model(model->name);
 	barebox_set_hostname(model->shortname);
 
-	if (bootsource == BOOTSOURCE_MMC && instance == 0)
+	if (bootsource == BOOTSOURCE_MMC && instance == 1)
 		of_device_enable_path("/chosen/environment-sd");
 	else
 		of_device_enable_path("/chosen/environment-emmc");
 
-	rk3568_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT,
-				"/dev/mmc1");
-	rk3568_bbu_mmc_register("sd", 0, "/dev/mmc0");
+	rk3568_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT, "/dev/mmc0");
+	rk3568_bbu_mmc_register("sd", 0, "/dev/mmc1");
 
 	return 0;
 }
-- 
2.39.2



