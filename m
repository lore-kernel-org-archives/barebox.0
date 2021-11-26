Delivery-date: Fri, 26 Nov 2021 14:33:12 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mqbLk-0001b4-Uc
	for lore@lore.pengutronix.de; Fri, 26 Nov 2021 14:33:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mqbLk-0006SN-1m
	for lore@pengutronix.de; Fri, 26 Nov 2021 14:33:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cJnhuLqzqyKkzHBnIkgCjHX0XpCJ+ZPsTqy2/e0JoMc=; b=K0JIUl11aW84Mu
	+Xb/bKzqMV6NmgJlD8B0nX7g5P93nAQOo7MEqiG1uDwDB37jjCxWdcOPkxS7hy+9tTaGpmoiBXb1s
	oizxH7VC4WagbwiCtI7NlXi3Xnr0HUlpEk5dw9+0nIHo2tNGdUgFwUBC48x2fO3RK6vo1iG3aPsUz
	Prlx/AWm3HN7/XeS2zuaZtdZpky6ot4rwYb6Mqgr6JZTiB4R+MB9qHzeF54h58mHBhgNPNI4+Bu6O
	E0yOLKaWwGUXh/zMh4PZ0bvWwoFWAQah6KKLVgw6tcuENb15Z4KC0Z783omXY5ris02/nztJA5V9g
	FP3oGCCkkEdB2P+hAnfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqbJu-00AbVr-Fg; Fri, 26 Nov 2021 13:31:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqbJp-00AbUP-DF
 for barebox@lists.infradead.org; Fri, 26 Nov 2021 13:31:14 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mqbJm-0006C9-23; Fri, 26 Nov 2021 14:31:10 +0100
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1mqbJl-00CbLC-E2; Fri, 26 Nov 2021 14:31:09 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: David Jander <david@protonic.nl>, Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 26 Nov 2021 14:31:08 +0100
Message-Id: <20211126133108.3003431-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211126_053113_479196_918A8991 
X-CRM114-Status: GOOD (  13.80  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1] nvmem: bsec.c: Use SMC_READ_OTP in stm32_bsec_read_mac()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: David Jander <david@protonic.nl>

TF-A (version >= v2.4?) apparently does not copy all of OTP to shadow
registers so reading the MAC address area will read all-zeroes.
Make sure to read the _real_ OTP register in this case.

Signed-off-by: David Jander <david@protonic.nl>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/nvmem/bsec.c | 21 ++++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/nvmem/bsec.c b/drivers/nvmem/bsec.c
index d9b38c8414..a31eff7358 100644
--- a/drivers/nvmem/bsec.c
+++ b/drivers/nvmem/bsec.c
@@ -82,20 +82,27 @@ static void stm32_bsec_set_unique_machine_id(struct regmap *map)
 	machine_id_set_hashable(unique_id, sizeof(unique_id));
 }
 
-static int stm32_bsec_read_mac(struct regmap *map, int offset, u8 *mac)
+static int stm32_bsec_read_mac(struct bsec_priv *priv, int offset, u8 *mac)
 {
-	u8 res[8];
+	u32 val[2];
 	int ret;
 
-	ret = regmap_bulk_read(map, offset * 4, res, 8);
+	/* Some TF-A does not copy all of OTP into shadow registers, so make
+	 * sure we read the _real_ OTP bits here.
+	 */
+	ret = bsec_smc(priv, BSEC_SMC_READ_OTP, offset * 4, 0, &val[0]);
+	if (ret)
+		return ret;
+	ret = bsec_smc(priv, BSEC_SMC_READ_OTP, offset * 4 + 4, 0, &val[1]);
 	if (ret)
 		return ret;
 
-	memcpy(mac, res, ETH_ALEN);
+	memcpy(mac, val, ETH_ALEN);
 	return 0;
 }
 
-static void stm32_bsec_init_dt(struct device_d *dev, struct regmap *map)
+static void stm32_bsec_init_dt(struct bsec_priv *priv, struct device_d *dev,
+			       struct regmap *map)
 {
 	struct device_node *node = dev->device_node;
 	struct device_node *rnode;
@@ -118,7 +125,7 @@ static void stm32_bsec_init_dt(struct device_d *dev, struct regmap *map)
 	rnode = of_find_node_by_phandle(phandle);
 	offset = be32_to_cpup(prop++);
 
-	ret = stm32_bsec_read_mac(map, offset, mac);
+	ret = stm32_bsec_read_mac(priv, offset, mac);
 	if (ret) {
 		dev_warn(dev, "error setting MAC address: %s\n", strerror(-ret));
 		return;
@@ -159,7 +166,7 @@ static int stm32_bsec_probe(struct device_d *dev)
 	if (IS_ENABLED(CONFIG_MACHINE_ID))
 		stm32_bsec_set_unique_machine_id(map);
 
-	stm32_bsec_init_dt(dev, map);
+	stm32_bsec_init_dt(priv, dev, map);
 
 	return 0;
 }
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

