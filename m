Delivery-date: Tue, 08 Jun 2021 16:07:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqcO5-0007Gq-Jo
	for lore@lore.pengutronix.de; Tue, 08 Jun 2021 16:07:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqcO4-0001hm-Le
	for lore@pengutronix.de; Tue, 08 Jun 2021 16:07:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cyh+AtGUDobqQNlok9qBGmfcIDZ0o6SagAjgEZjojkQ=; b=vH1V1mrgg3V/Yr
	0kiAZ87weUfkn8E6mF9VTvHDyusAC0Ou8u6DsNNReZqltlWROTyIiXlEUxkG+5PeND8VZszkRAS5B
	ua+WT0HajkAMFP7BFBjTTRhVf4GarggYyaT7KAliVb+ptLpaNDZo5xpuEvbrAVtoNcYNnQ96mStRF
	wba8Co177feCUc2M3px8PBZ6/qIWwVPkz6CSJYDm6ep6H3GRybk21O3jFhhAGzChxGfW4AmNEVyQX
	GO2QpdytiMyBAC6uwRgtuQJ+3fkV2jT/kBaNWuWKMyDHX6Gz++x5azUT80EJQkCF1LZQNCcLQsTpi
	41/uKnAShS4EohvKs2kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqcMf-008kBB-Ag; Tue, 08 Jun 2021 14:05:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqcMW-008k4O-S3
 for barebox@lists.infradead.org; Tue, 08 Jun 2021 14:05:50 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqcMU-0001HG-Mb; Tue, 08 Jun 2021 16:05:46 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqcMU-00005B-93; Tue, 08 Jun 2021 16:05:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  8 Jun 2021 16:05:41 +0200
Message-Id: <20210608140545.30696-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210608140545.30696-1-s.hauer@pengutronix.de>
References: <20210608140545.30696-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210608_070548_950181_D301BD90 
X-CRM114-Status: GOOD (  13.39  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/5] pinctrl: Rockchip: rename mux_offset to grf_mux_offset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Rename variable to match with Linux Kernel.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pinctrl/pinctrl-rockchip.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 58f2c4af26..c85109fd2b 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -70,7 +70,7 @@ struct rockchip_pin_ctrl {
 	u32				nr_pins;
 	char				*label;
 	enum rockchip_pinctrl_type	type;
-	int				mux_offset;
+	int				grf_mux_offset;
 	void	(*pull_calc_reg)(struct rockchip_pin_bank *bank, int pin_num,
 				 void __iomem **reg, u8 *bit);
 };
@@ -229,7 +229,7 @@ static int rockchip_pinctrl_set_func(struct rockchip_pin_bank *bank, int pin,
 				     int mux)
 {
 	struct rockchip_pinctrl *info = bank->drvdata;
-	void __iomem *reg = info->reg_base + info->ctrl->mux_offset;
+	void __iomem *reg = info->reg_base + info->ctrl->grf_mux_offset;
 	u8 bit;
 	u32 data;
 
@@ -462,7 +462,7 @@ static struct rockchip_pin_ctrl rk2928_pin_ctrl = {
 	.pin_banks	= rk2928_pin_banks,
 	.nr_banks	= ARRAY_SIZE(rk2928_pin_banks),
 	.type		= RK2928,
-	.mux_offset	= 0xa8,
+	.grf_mux_offset	= 0xa8,
 	.pull_calc_reg	= rk2928_calc_pull_reg_and_bit,
 };
 
@@ -479,7 +479,7 @@ static struct rockchip_pin_ctrl rk3066a_pin_ctrl = {
 	.pin_banks	= rk3066a_pin_banks,
 	.nr_banks	= ARRAY_SIZE(rk3066a_pin_banks),
 	.type		= RK2928,
-	.mux_offset	= 0xa8,
+	.grf_mux_offset	= 0xa8,
 	.pull_calc_reg	= rk2928_calc_pull_reg_and_bit,
 };
 
@@ -494,7 +494,7 @@ static struct rockchip_pin_ctrl rk3066b_pin_ctrl = {
 	.pin_banks	= rk3066b_pin_banks,
 	.nr_banks	= ARRAY_SIZE(rk3066b_pin_banks),
 	.type		= RK3066B,
-	.mux_offset	= 0x60,
+	.grf_mux_offset	= 0x60,
 };
 
 static struct rockchip_pin_bank rk3188_pin_banks[] = {
@@ -508,7 +508,7 @@ static struct rockchip_pin_ctrl rk3188_pin_ctrl = {
 	.pin_banks	= rk3188_pin_banks,
 	.nr_banks	= ARRAY_SIZE(rk3188_pin_banks),
 	.type		= RK3188,
-	.mux_offset	= 0x60,
+	.grf_mux_offset	= 0x60,
 	.pull_calc_reg	= rk3188_calc_pull_reg_and_bit,
 };
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

