Delivery-date: Wed, 09 Jun 2021 19:54:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lr2PB-0004b5-Th
	for lore@lore.pengutronix.de; Wed, 09 Jun 2021 19:54:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lr2PA-0004iw-Nr
	for lore@pengutronix.de; Wed, 09 Jun 2021 19:54:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SCrrZLvVf5cQEFMOfkxlBgjCGtR57MWlPracjGQ6Wnw=; b=qHTNs0w3fSgGCp
	knnYFenDmErCSyo4usZajlaxAcdseXfTKYgtM+kpC50QsukIKyn9TVMNz4hZCyLRjlV1GhVVfkKvR
	hBCdVIwXFgCu6/nc2BGMhWMVJAe1wZKL63EfHLT3ez93Zkn+Q3O6IU/YRNtrA4Rs1x6OM6TMAMkk5
	e0nqiu5Gr3ByuWYWeS6RY5gO3tjOC9slXgxidfdlhq8sJH8/+cDORZmp9fA1cfBg5BV+LctrNGCNX
	/Ttv87KeV+6gJImnWe+7bRXcxTMGHtJOV8nuzUOUPqUH3EXVJ/FkVQ6xchSuTsqH1NB9kLuHYeGVt
	7Ifdc+skN+9u++TB2FXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lr2NU-00FRt9-KY; Wed, 09 Jun 2021 17:52:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lr2KL-00FQ0P-De
 for barebox@lists.infradead.org; Wed, 09 Jun 2021 17:49:19 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lr2KJ-00047I-Ez; Wed, 09 Jun 2021 19:49:15 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lr2KJ-00075T-6S; Wed, 09 Jun 2021 19:49:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  9 Jun 2021 19:49:13 +0200
Message-Id: <20210609174913.27194-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210609_104917_489337_C432201A 
X-CRM114-Status: GOOD (  11.44  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! pinctrl: Rockchip: Update from Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The original code uses regmap for the base address and reg for the
offset to add onto it. The barebox port combines both into one pointer
named reg. In rockchip_pinctrl_set_func(), two different offsets are
used with the same base address. The code erroneously uses
reg (base + offset) in place of base, leading to memory writes into
the wrong registers. Fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pinctrl/pinctrl-rockchip.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index c3d89938943c..df702fbb6164 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -715,19 +715,19 @@ static int rockchip_pinctrl_set_func(struct rockchip_pin_bank *bank, int pin,
 				     int mux)
 {
 	struct rockchip_pinctrl *info = bank->drvdata;
-	void __iomem *reg;
+	void __iomem *base, *reg;
 	u8 bit;
 	u32 data, route_location, route_reg, route_val;
 	int iomux_num = (pin / 8);
 	int mux_type;
 	int mask;
 
-	reg = (bank->iomux[iomux_num].type & IOMUX_SOURCE_PMU)
+	base = (bank->iomux[iomux_num].type & IOMUX_SOURCE_PMU)
 				? info->reg_pmu : info->reg_base;
 
 	/* get basic quadrupel of mux registers and the correct reg inside */
 	mux_type = bank->iomux[iomux_num].type;
-	reg += bank->iomux[iomux_num].offset;
+	reg = base + bank->iomux[iomux_num].offset;
 
 	dev_dbg(info->pctl_dev.dev, "setting func of GPIO%d-%d to %d\n",
 		 bank->bank_num, pin, mux);
@@ -750,7 +750,7 @@ static int rockchip_pinctrl_set_func(struct rockchip_pin_bank *bank, int pin,
 	if (bank->route_mask & BIT(pin)) {
 		if (rockchip_get_mux_route(bank, pin, mux, &route_location,
 					   &route_reg, &route_val)) {
-			void __iomem  *route = reg;
+			void __iomem  *route = base;
 
 			/* handle special locations */
 			switch (route_location) {
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

