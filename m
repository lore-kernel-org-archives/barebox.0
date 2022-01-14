Delivery-date: Fri, 14 Jan 2022 09:49:19 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8IGt-001ssu-9a
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 09:49:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8IGs-0002Qu-4O
	for lore@pengutronix.de; Fri, 14 Jan 2022 09:49:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SdTDsrkBf+wo1dxL8yzlJWZEVJq7HoIRUYOmdx45IE0=; b=qo4tb/zhx9266L
	WmNOLKCRS3rX28q2EXETpKgGtba8XjJgb5I1yj/BJ8iCEZ85Y1Fa98L6QfGEuTOdAfVsfmLkwbJfr
	31EyS6szg0ybk6dlhc4t0B2use3sAjGfF5ChkFQwtRbDitinURhrztOZEUJyQuXF7quE3TFbpOhf4
	F0jFVrOfpBwgzG+HMGwKC5cP1+Z9JOvinU/nAo06eY6RveKhcVCxnBqW/Ysneyp8cLlEOvRp4vy4i
	n2u+VHeIokYNy81jN6QdL5bytAbijWrMs1WwrdcAEK/aocXcLZAdbj3cu9AJgFOyE8GFdXMKTSVp1
	CNzJR8hhOhmnOuBJGr5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8IFh-008LKQ-KC; Fri, 14 Jan 2022 08:48:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8IFc-008LIt-83
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 08:48:01 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n8IFb-0002GM-2R; Fri, 14 Jan 2022 09:47:59 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1n8IFa-001J6D-Ip; Fri, 14 Jan 2022 09:47:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Jan 2022 09:47:56 +0100
Message-Id: <20220114084757.311697-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_004800_316186_C78E31C3 
X-CRM114-Status: GOOD (  13.46  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] pinctrl: rockchip: use alias rather than full of name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Michael Riesch <michael.riesch@wolfvision.net>

We've so far relied on GPIO controllers being named "gpioX", while the
binding mandates gpio controllers being just called "gpio". This already
broke rk3288 support and rk3568.dtsi upstream also differs from the
version in barebox' arch/arm/dts in that regard.

Instead, do like Linux does and use the alias to match the controllers to
the GPIO banks with a fallback to probe order.

Fixes: 3f2f5980d517 ("dts: update to v5.16-rc1")
Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
[afa: drop strncmp in favor of id comparison, reword commit message]
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pinctrl/pinctrl-rockchip.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 5cf77c58b218..ea748b600419 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -877,18 +877,24 @@ static struct rockchip_pin_ctrl *rockchip_pinctrl_get_soc_data(
 	struct rockchip_pin_bank *bank;
 	char *name;
 	int grf_offs, pmu_offs, drv_grf_offs, drv_pmu_offs, i, j;
+	int gpio = 0;
 
 	match = of_match_node(rockchip_pinctrl_dt_match, node);
 	ctrl = (struct rockchip_pin_ctrl *)match->data;
 
 	for_each_child_of_node(node, np) {
+		int id;
+
 		if (!of_find_property(np, "gpio-controller", NULL))
 			continue;
 
+		id = of_alias_get_id(np, "gpio");
+		if (id < 0)
+			id = gpio++;
+
 		bank = ctrl->pin_banks;
 		for (i = 0; i < ctrl->nr_banks; ++i, ++bank) {
-			name = bank->name;
-			if (!strncmp(name, np->name, strlen(name))) {
+			if (bank->bank_num == id) {
 				bank->of_node = np;
 				if (!rockchip_get_bank_data(bank, dev))
 					bank->valid = true;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

