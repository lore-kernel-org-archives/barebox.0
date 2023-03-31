Delivery-date: Fri, 31 Mar 2023 12:32:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1piC42-004394-VS
	for lore@lore.pengutronix.de; Fri, 31 Mar 2023 12:32:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1piC42-00013h-QV
	for lore@pengutronix.de; Fri, 31 Mar 2023 12:32:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=uPbZn/zSZ/1FWw0b75VGZY4+mBRq8rv+KDawBZgkrjI=; b=hNnAi2HtbRbWiR5+8vAm/oahaj
	a5zqli5tDokJeYPLHoeEig6DgucPTDFzSk67lpmvTzOESO9lXXIbSLnh+wwBCDEX/9Pkj2qopKUkT
	hdO85WYpAXguIH2/9YFiOWnzWUtZmOiVRPSoN6ENkaSsvnVeHU4lWqeeZ7b4qrQ8yUChpefJbs9Ql
	cRNgic9X2beIlJm/M27yf+1NQ4otriBgA6h0b91vlC7zpnptT+ooRUEf43ujNENTwZCDZrQCgodLd
	r/SpV7bVPT3tThW41INtZprGUThamu96Ps7gnJSVVIkbAWbZemplv+Ygh0cTmnL/SD4v92+cMUxFr
	hJ2fN/Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piC2g-006wSL-1j;
	Fri, 31 Mar 2023 10:31:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piC2c-006wQn-2u
	for barebox@lists.infradead.org;
	Fri, 31 Mar 2023 10:31:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1piC2Y-0000pf-07; Fri, 31 Mar 2023 12:31:26 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1piC2X-007yQP-8e; Fri, 31 Mar 2023 12:31:25 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1piC2W-006OmG-Hx; Fri, 31 Mar 2023 12:31:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: David Jander <david@protonic.nl>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 31 Mar 2023 12:31:23 +0200
Message-Id: <20230331103123.1525200-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_033130_940385_D61CF352 
X-CRM114-Status: UNSURE (   8.94  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] pinctrl: stm32: Remove check for pins-are-numbered
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Upstream has dropped this property from the device trees that we import,
so drop our check for it to fix boot up on STM32MP1.

Link: https://lore.kernel.org/all/20221129023401.278780-3-bero@baylibre.com/
Fixes: 03b1dd74aa6e ("dts: update to v6.3-rc1")
Reported-by: David Jander <david@protonic.nl>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pinctrl/pinctrl-stm32.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-stm32.c b/drivers/pinctrl/pinctrl-stm32.c
index 15d845e0ad34..1eed5473f6e0 100644
--- a/drivers/pinctrl/pinctrl-stm32.c
+++ b/drivers/pinctrl/pinctrl-stm32.c
@@ -348,11 +348,6 @@ static int stm32_pinctrl_probe(struct device *dev)
 	struct device_node *np = dev->of_node, *child;
 	int ret;
 
-	if (!of_find_property(np, "pins-are-numbered", NULL)) {
-		dev_err(dev, "only pins-are-numbered format supported\n");
-		return -EINVAL;
-	}
-
 	for_each_available_child_of_node(np, child)
 		if (of_property_read_bool(child, "gpio-controller"))
 			nbanks++;
-- 
2.39.2



