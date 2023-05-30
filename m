Delivery-date: Tue, 30 May 2023 13:20:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3xOX-002jzQ-4Q
	for lore@lore.pengutronix.de; Tue, 30 May 2023 13:20:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3xOU-0001Yg-Oe
	for lore@pengutronix.de; Tue, 30 May 2023 13:20:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GwA6st55A2SGu49Xy/YPyU7FI83b9KKof0zzgVsn1Fs=; b=A/A9NstXOCeeifrBfY/Ef+o3A5
	0mmu8l5twuNYr3T3CbWXjpjjXsQGH5+3hL2dBWSVdYYZs0WKiiiVesIgbBTi1FTdLOS5+/R+KbEqC
	nLtt2C7/wYxxH0F6eqtRvLAQBk4V8Kr491poBUY6xFP8nXVVwz52HXLpE/CILnFYMWF7HZIxvG2vJ
	notyka4v3PYwKvvPEmtbt9+Aes7fvvPyt5QZOv+kIIw8LCKtEUxbDnuqqIipmSxxI6tb2Ew8EEJPj
	f/PdBIHowaBRAMMBK4JZvYH1BTta+nfZ+Xa3Pj/oy3osuF5y+CdhUtOaaLDW2/V7u+Ag8h9zMVXtw
	vQfolHkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3xNK-00Dbp9-2A;
	Tue, 30 May 2023 11:18:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3xNA-00Dbiz-1f
	for barebox@lists.infradead.org;
	Tue, 30 May 2023 11:18:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q3xN6-000156-VU; Tue, 30 May 2023 13:18:37 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q3xN6-003rOr-Bq; Tue, 30 May 2023 13:18:36 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q3xN3-0082b4-MV; Tue, 30 May 2023 13:18:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 30 May 2023 13:18:27 +0200
Message-Id: <20230530111832.1916542-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230530111832.1916542-1-s.hauer@pengutronix.de>
References: <20230530111832.1916542-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_041840_613145_57FF3DB6 
X-CRM114-Status: GOOD (  17.78  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 05/10] pinctrl: rockchip: fix bias settings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The RK_BIAS_PULL_* defines do not always directly map to register
values. In some cases they have to be translated according to the
bank->pull_type array. Add the missing translation.

The original Linux driver passes pinctrl generic defines into
rockchip_set_pull() whereas the barebox driver directly passes
RK_BIAS_* values into rockchip_set_pull(), therefore I thought this
translation is not necessary and skipped it. While bringing up
SD on a RK3588 I ended up with wrong bias settings though, this
is fixed with this commit.

Fixes: 018fcba104 ("pinctrl: Update pinctrl-rockchip from kernel")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pinctrl/pinctrl-rockchip.c | 31 ++++++++++++++++++++++++++----
 1 file changed, 27 insertions(+), 4 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 57d676fc98..d7ae77d52a 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -2101,6 +2101,21 @@ static int rockchip_set_drive_perpin(struct rockchip_pin_bank *bank,
 	return ret;
 }
 
+static int rockchip_pull_list[PULL_TYPE_MAX][4] = {
+	{
+		RK_BIAS_DISABLE,
+		RK_BIAS_PULL_UP,
+		RK_BIAS_PULL_DOWN,
+		RK_BIAS_BUS_HOLD
+	},
+	{
+		RK_BIAS_DISABLE,
+		RK_BIAS_PULL_DOWN,
+		RK_BIAS_DISABLE,
+		RK_BIAS_PULL_UP
+	},
+};
+
 static int rockchip_set_pull(struct rockchip_pin_bank *bank,
 					int pin_num, int pull)
 {
@@ -2108,7 +2123,7 @@ static int rockchip_set_pull(struct rockchip_pin_bank *bank,
 	struct rockchip_pin_ctrl *ctrl = info->ctrl;
 	struct device *dev = info->dev;
 	struct regmap *regmap;
-	int reg, ret;
+	int reg, ret, i, pull_type;
 	u8 bit;
 	u32 data, rmask;
 
@@ -2140,19 +2155,27 @@ static int rockchip_set_pull(struct rockchip_pin_bank *bank,
 	case RK3399:
 	case RK3568:
 	case RK3588:
+		pull_type = bank->pull_type[pin_num / 8];
+		ret = -EINVAL;
+		for (i = 0; i < ARRAY_SIZE(rockchip_pull_list[pull_type]); i++) {
+			if (rockchip_pull_list[pull_type][i] == pull) {
+				ret = i;
+				break;
+			}
+		}
 		/*
 		 * In the TRM, pull-up being 1 for everything except the GPIO0_D3-D6,
 		 * where that pull up value becomes 3.
 		 */
 		if (ctrl->type == RK3568 && bank->bank_num == 0 && pin_num >= 27 && pin_num <= 30) {
-			if (pull == RK_BIAS_PULL_UP)
-				pull = 3;
+			if (ret == RK_BIAS_PULL_UP)
+				ret = 3;
 		}
 
 		/* enable the write to the equivalent lower bits */
 		data = ((1 << RK3188_PULL_BITS_PER_PIN) - 1) << (bit + 16);
 		rmask = data | (data >> 16);
-		data |= (pull << bit);
+		data |= (ret << bit);
 
 		ret = regmap_update_bits(regmap, reg, rmask, data);
 		break;
-- 
2.39.2



