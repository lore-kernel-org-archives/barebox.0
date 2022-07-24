Delivery-date: Sun, 24 Jul 2022 21:01:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oFgrN-002HiQ-QI
	for lore@lore.pengutronix.de; Sun, 24 Jul 2022 21:01:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oFgrL-0004Y9-6f
	for lore@pengutronix.de; Sun, 24 Jul 2022 21:01:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HZ76rbpQChZGq0B2WpucareJxSwuoQF2u8tnx2o7UcU=; b=pFt5PUYqv7ZVV4/dYZTROFFmvQ
	h8rrCAy+2RGO5G50/CdbMyTXgN55yLBWn40KKU2OqppqEO9n9QfXQmrxxXHRRMXbHD8MUd8rg0/Xy
	Xxh9KJA9k7g67bHuluhByfQGa0A8MIwFGDcN6R9XFxAnB8RXaiSZDPGlgbQuh9ySL+jzO5WNTsoIU
	dJF0jY/l/CHn1Wcdog0VrjozGoqlYJHKFKuWa9Tcfa5IiOdk53bNQ0NYbI7m8vBcnYZVd/v9GCNIn
	i6CjByY7eCYnv+b+PeFX+DYzUc0m+wWgXtDhnwBqy8LPreTqbUcqBDGPsbpx1FSy5M3CmpZrB2gD2
	HHjreh/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFgpv-008rCF-UA; Sun, 24 Jul 2022 19:00:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFgpp-008r49-A1
	for barebox@lists.infradead.org; Sun, 24 Jul 2022 19:00:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oFgpo-00045S-0a; Sun, 24 Jul 2022 21:00:12 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oFgpn-002y0G-5H; Sun, 24 Jul 2022 21:00:11 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oFgpm-0094AA-2O; Sun, 24 Jul 2022 21:00:10 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 24 Jul 2022 21:00:05 +0200
Message-Id: <20220724190006.2160802-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220724190006.2160802-1-a.fatoum@pengutronix.de>
References: <20220724190006.2160802-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220724_120013_389027_4D0695BC 
X-CRM114-Status: UNSURE (   9.31  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 5/6] regulator: fixed: request vin-supply as needed
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

So far, we never considered fixed-regulator vin-supply. This worked as
long as the vin-supply on the board was already turned on.

Do as Linux does and request vin-supply as needed. For deep probe
enabled boards, this may result in breakage that can be resolved with
barebox,allow-dummy-supply. For other boards, a warning will be
printed and the vin-supply populated with the dummy regulator.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v3 -> v4:
  - no change
v2 -> v3:
  - no change
v1 -> v2:
  - new patch
---
 drivers/regulator/fixed.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/regulator/fixed.c b/drivers/regulator/fixed.c
index ec64f39b86c7..bdb01c0a9554 100644
--- a/drivers/regulator/fixed.c
+++ b/drivers/regulator/fixed.c
@@ -72,6 +72,9 @@ static int regulator_fixed_probe(struct device_d *dev)
 	if (!of_property_read_u32(np, "off-on-delay-us", &delay))
 		fix->rdesc.off_on_delay = delay;
 
+	if (of_find_property(np, "vin-supply", NULL))
+		fix->rdesc.supply_name = "vin";
+
 	ret = of_regulator_register(&fix->rdev, np);
 	if (ret)
 		goto err;
-- 
2.30.2



