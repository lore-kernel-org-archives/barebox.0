Delivery-date: Mon, 01 Jul 2024 09:32:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBX0-000QRS-0m
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 09:32:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBWz-0007I2-Io
	for lore@pengutronix.de; Mon, 01 Jul 2024 09:32:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mdcu+0aJscvVoZaDw5e9J3uhvbNsi0KspOhl6K2Oaw4=; b=UwqACUBtj5iRzeErz6TFkx6ZKS
	OrSx5KB7cyixj82GGwSLfKxDKZW7kabRDeT6SCrApO9zLk3m3wuAxVHhXLNco1lk1KQOx+aGX6mjp
	4MU1ke6QL5J+moLCjBXxwOb1tCDDnWPnzGBJU3ExWSyayX7tV0YHYzHFm5XLCpG38SQe2pfkLU2Ec
	IuRYdhZe8Jl1kkLjNgyldTYkJxVAy84C5Dfe+YCnOtXUvyXN3D6imFQiGNA8ETLf3+Xwv/wftga1E
	TTxif7SxcVel6pdqKeIpzV+VX5R0t6Olqqto3bRJQ488gtGnujIkxepQxkws63wthrQpFBiSN7ble
	48XL0kGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBWZ-000000022n8-2V8y;
	Mon, 01 Jul 2024 07:32:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBWR-000000022ic-23iK
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 07:32:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBWQ-0006vb-41; Mon, 01 Jul 2024 09:32:22 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBWP-006JjC-NY; Mon, 01 Jul 2024 09:32:21 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBWP-000hos-23;
	Mon, 01 Jul 2024 09:32:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Jul 2024 09:32:15 +0200
Message-Id: <20240701073220.165946-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240701073220.165946-1-a.fatoum@pengutronix.de>
References: <20240701073220.165946-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_003223_639430_3423E6F5 
X-CRM114-Status: GOOD (  14.83  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/7] pinctrl: rockchip: make use of pinconf-generic.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

So far we defined our own enum to record what bias was indicated by the
device tree properties. Now that we have imported the upstream enum
definition, make use of it to make syncs with Linux easier.

While at it, we replace one usage of RK_BIAS_PULL_UP with `1'. That they
were equal before was a coincidence and now that we use the Linux
definitions, this is no longer the case.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pinctrl/pinctrl-rockchip.c | 38 +++++++++++++-----------------
 1 file changed, 16 insertions(+), 22 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index ca9939c9e91d..d80ac7d5dc04 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -20,6 +20,7 @@
 #include <of.h>
 #include <of_address.h>
 #include <pinctrl.h>
+#include <linux/pinctrl/pinconf-generic.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 
 #include <linux/basic_mmio_gpio.h>
@@ -222,30 +223,23 @@
 #define RK3588_PIN_BANK_FLAGS(ID, PIN, LABEL, M, P)			\
 	PIN_BANK_IOMUX_FLAGS_PULL_FLAGS(ID, PIN, LABEL, M, M, M, M, P, P, P, P)
 
-enum {
-	RK_BIAS_DISABLE = 0,
-	RK_BIAS_PULL_UP,
-	RK_BIAS_PULL_DOWN,
-	RK_BIAS_BUS_HOLD,
-};
-
 static struct rockchip_pinctrl *to_rockchip_pinctrl(struct pinctrl_device *pdev)
 {
 	return container_of(pdev, struct rockchip_pinctrl, pctl_dev);
 }
 
-static int parse_bias_config(struct device_node *np)
+static enum pin_config_param parse_bias_config(struct device_node *np)
 {
 	u32 val;
  
 	if (of_property_read_u32(np, "bias-pull-up", &val) != -EINVAL)
-		return RK_BIAS_PULL_UP;
+		return PIN_CONFIG_BIAS_PULL_UP;
 	else if (of_property_read_u32(np, "bias-pull-down", &val) != -EINVAL)
-		return RK_BIAS_PULL_DOWN;
+		return PIN_CONFIG_BIAS_PULL_DOWN;
 	else if (of_property_read_u32(np, "bias-bus-hold", &val) != -EINVAL)
-		return RK_BIAS_BUS_HOLD;
+		return PIN_CONFIG_BIAS_BUS_HOLD;
 	else
-		return RK_BIAS_DISABLE;
+		return PIN_CONFIG_BIAS_DISABLE;
 }
 
 static struct rockchip_pin_bank *bank_num_to_bank(
@@ -2104,16 +2098,16 @@ static int rockchip_set_drive_perpin(struct rockchip_pin_bank *bank,
 
 static int rockchip_pull_list[PULL_TYPE_MAX][4] = {
 	{
-		RK_BIAS_DISABLE,
-		RK_BIAS_PULL_UP,
-		RK_BIAS_PULL_DOWN,
-		RK_BIAS_BUS_HOLD
+		PIN_CONFIG_BIAS_DISABLE,
+		PIN_CONFIG_BIAS_PULL_UP,
+		PIN_CONFIG_BIAS_PULL_DOWN,
+		PIN_CONFIG_BIAS_BUS_HOLD
 	},
 	{
-		RK_BIAS_DISABLE,
-		RK_BIAS_PULL_DOWN,
-		RK_BIAS_DISABLE,
-		RK_BIAS_PULL_UP
+		PIN_CONFIG_BIAS_DISABLE,
+		PIN_CONFIG_BIAS_PULL_DOWN,
+		PIN_CONFIG_BIAS_DISABLE,
+		PIN_CONFIG_BIAS_PULL_UP
 	},
 };
 
@@ -2142,7 +2136,7 @@ static int rockchip_set_pull(struct rockchip_pin_bank *bank,
 	case RK2928:
 	case RK3128:
 		data = BIT(bit + 16);
-		if (pull == RK_BIAS_DISABLE)
+		if (pull == PIN_CONFIG_BIAS_DISABLE)
 			data |= BIT(bit);
 		ret = regmap_write(regmap, reg, data);
 		break;
@@ -2169,7 +2163,7 @@ static int rockchip_set_pull(struct rockchip_pin_bank *bank,
 		 * where that pull up value becomes 3.
 		 */
 		if (ctrl->type == RK3568 && bank->bank_num == 0 && pin_num >= 27 && pin_num <= 30) {
-			if (ret == RK_BIAS_PULL_UP)
+			if (ret == 1)
 				ret = 3;
 		}
 
-- 
2.39.2



