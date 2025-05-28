Delivery-date: Wed, 28 May 2025 14:04:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFWM-001B35-04
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 14:04:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFWD-0006sA-U7
	for lore@pengutronix.de; Wed, 28 May 2025 14:04:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GtFaLEAq8r5x1605H2aqYNJZj5qxtl8hAA3KACYFIKg=; b=QJ6qSVAtb0DiScHBXkSTOQghQF
	Zjr2vgZmXahaU5YG7O3SldOjEG5fg44OGmnB109E6avRuXx6GaVD9lJCW+6aMPhslVpXO9RkfZscs
	aFrmFH5zm5KcO7nsJ6kF6Me8o+OHYLIa7YFJAJoGl0Y7OcEoq+lHNtVP6ncAhGsa+dXTNYeI6lqMv
	bL8/jOHave2ZOGlIHrfaYKWP/WeVSlFeRrlHvAxl0+pApcaUbAJNRg4D1qw+zD9is/oAT1uDLzrmj
	4ob8x+iQAsd8Cn6+vIIzU7o0iITrAiZ5QDvwn724YCJnHP11EcJkWMvRoyICTyHeMEMBeVxFo4fz9
	eGz5KaOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFVY-0000000D2mR-11ar;
	Wed, 28 May 2025 12:03:44 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFU3-0000000D2bN-46cp
	for barebox@bombadil.infradead.org;
	Wed, 28 May 2025 12:02:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=GtFaLEAq8r5x1605H2aqYNJZj5qxtl8hAA3KACYFIKg=; b=C997B2Ght4rLpVBoAYFSAtu7OQ
	CQvFkeDmjGATlOaFciHhBOAch1lh/+WlFMZL3zecxb4TPEWvj+WLxdAKhezLIpzIv7EB5G1Rubaai
	d1yNhSYlQMFGB0Vz6Yj/Eu6HMxpwVF/JsT+fNoxniDmKkzo08ybtIDG4rGLqrR7l3goPFEiogzow9
	MmhyZEjh0sXtQ3gDDON/XGWSVqG3jzyzMwMxmXbqfYatyRsPw71Hd94iEUEZ/g3/zDN1c/Td2ZhJ+
	Nl5mWQhD4RFCFftXlpsje7PgkkvJ7tL6QweIFdp0z01uEGDbEjZPjzcSbQDMLOYFXvBpB62EJWQdB
	F6kTGD6w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFTz-0000000DarF-3o3r
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 12:02:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFTq-0004U1-CU; Wed, 28 May 2025 14:01:58 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFTq-000aAa-0d;
	Wed, 28 May 2025 14:01:58 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFE2-00CB0R-1r;
	Wed, 28 May 2025 13:45:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 May 2025 13:45:36 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250528-arm-k3-am62l-v1-24-3f88e6d10d99@pengutronix.de>
References: <20250528-arm-k3-am62l-v1-0-3f88e6d10d99@pengutronix.de>
In-Reply-To: <20250528-arm-k3-am62l-v1-0-3f88e6d10d99@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748432738; l=5002;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Ofy9jsS8PfH35+Pv7gfgMfcXJiMXBJf0vqE77TPhn+0=;
 b=i4ej1TJ4vOj+KYOd8TLnvM8SppEk7bbAfFB2z7N8ez56g/luRz4aO7NVQtNSxJdNjXUawlzEw
 SDdofHP/PvRB+nZiHmpY6dCpcngcqiURS7jCPeZkz8lflk/ys+qMDSo
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_130208_107437_65ECD0F4 
X-CRM114-Status: GOOD (  16.90  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 24/31] clk: arm_scmi: implement clock parent setting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds support for getting/setting the clk parents in the SCMI clk
driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk-scmi.c | 80 +++++++++++++++++++++++++++++++++++++++++++++-----
 1 file changed, 72 insertions(+), 8 deletions(-)

diff --git a/drivers/clk/clk-scmi.c b/drivers/clk/clk-scmi.c
index 5c9f61ae0b6f94da104cda682e8b399fc4f9c84e..62228d7ba2c12b6bf4ae41dff4aa4553fd3e325e 100644
--- a/drivers/clk/clk-scmi.c
+++ b/drivers/clk/clk-scmi.c
@@ -20,6 +20,7 @@ struct scmi_clk {
 	struct clk_hw hw;
 	const struct scmi_clock_info *info;
 	const struct scmi_protocol_handle *ph;
+	struct clk_parent_data *parent_data;
 };
 
 #define to_scmi_clk(clk) container_of(clk, struct scmi_clk, hw)
@@ -74,6 +75,34 @@ static int scmi_clk_set_rate(struct clk_hw *hw, unsigned long rate,
 	return scmi_proto_clk_ops->rate_set(clk->ph, clk->id, rate);
 }
 
+static int scmi_clk_set_parent(struct clk_hw *hw, u8 parent_index)
+{
+	struct scmi_clk *clk = to_scmi_clk(hw);
+
+	return scmi_proto_clk_ops->parent_set(clk->ph, clk->id, parent_index);
+}
+
+static int scmi_clk_get_parent(struct clk_hw *hw)
+{
+	struct scmi_clk *clk = to_scmi_clk(hw);
+	u32 parent_id, p_idx;
+	int ret;
+
+	ret = scmi_proto_clk_ops->parent_get(clk->ph, clk->id, &parent_id);
+	if (ret)
+		return 0;
+
+	for (p_idx = 0; p_idx < clk->info->num_parents; p_idx++) {
+		if (clk->parent_data[p_idx].index == parent_id)
+			break;
+	}
+
+	if (p_idx == clk->info->num_parents)
+		return 0;
+
+	return p_idx;
+}
+
 static int scmi_clk_enable(struct clk_hw *hw)
 {
 	struct scmi_clk *clk = to_scmi_clk(hw);
@@ -121,6 +150,8 @@ static const struct clk_ops scmi_clk_ops = {
 	.set_rate = scmi_clk_set_rate,
 	.enable = scmi_clk_enable,
 	.disable = scmi_clk_disable,
+	.set_parent = scmi_clk_set_parent,
+	.get_parent = scmi_clk_get_parent,
 };
 
 static const struct clk_ops scmi_atomic_clk_ops = {
@@ -129,6 +160,8 @@ static const struct clk_ops scmi_atomic_clk_ops = {
 	.set_rate = scmi_clk_set_rate,
 	.enable = scmi_clk_atomic_enable,
 	.disable = scmi_clk_atomic_disable,
+	.set_parent = scmi_clk_set_parent,
+	.get_parent = scmi_clk_get_parent,
 };
 
 static int scmi_clk_ops_init(struct device *dev, struct scmi_clk *sclk,
@@ -136,12 +169,22 @@ static int scmi_clk_ops_init(struct device *dev, struct scmi_clk *sclk,
 {
 	struct clk_init_data init = {
 		.flags = CLK_GET_RATE_NOCACHE,
-	
-		.num_parents = 0,
+		.num_parents = sclk->info->num_parents,
 		.ops = scmi_ops,
 		.name = sclk->info->name,
 	};
 
+	if (sclk->info->num_parents > 0) {
+		init.parent_hws = devm_kcalloc(dev, sclk->info->num_parents,
+					       sizeof(void *), GFP_KERNEL);
+		if (!init.parent_hws)
+			return -ENOMEM;
+
+		for (int i = 0; i < sclk->info->num_parents; i++) {
+			init.parent_hws[i] = sclk->parent_data[i].hw;
+		}
+	}
+
 	sclk->hw.init = &init;
 	return clk_hw_register(dev, &sclk->hw);
 }
@@ -157,6 +200,8 @@ static int scmi_clocks_probe(struct scmi_device *sdev)
 	struct device_node *np = dev->of_node;
 	const struct scmi_handle *handle = sdev->handle;
 	struct scmi_protocol_handle *ph;
+	struct scmi_clk *sclks;
+	int ret;
 
 	if (!handle)
 		return -ENODEV;
@@ -182,13 +227,17 @@ static int scmi_clocks_probe(struct scmi_device *sdev)
 
 	is_atomic = handle->is_transport_atomic(handle, &atomic_threshold);
 
+	sclks = devm_kzalloc(dev, sizeof(*sclks) * count, GFP_KERNEL);
+
 	for (idx = 0; idx < count; idx++) {
-		struct scmi_clk *sclk;
-		const struct clk_ops *scmi_ops;
+		struct scmi_clk *sclk = &sclks[idx];
 
-		sclk = devm_kzalloc(dev, sizeof(*sclk), GFP_KERNEL);
-		if (!sclk)
-			return -ENOMEM;
+		hws[idx] = &sclk->hw;
+	}
+
+	for (idx = 0; idx < count; idx++) {
+		struct scmi_clk *sclk = &sclks[idx];
+		const struct clk_ops *scmi_ops;
 
 		sclk->info = scmi_proto_clk_ops->info_get(ph, idx);
 		if (!sclk->info) {
@@ -210,9 +259,25 @@ static int scmi_clocks_probe(struct scmi_device *sdev)
 		else
 			scmi_ops = &scmi_clk_ops;
 
+		/* Initialize clock parent data. */
+		if (sclk->info->num_parents > 0) {
+			u32 parent_id;
+
+			sclk->parent_data = devm_kcalloc(dev, sclk->info->num_parents,
+							 sizeof(*sclk->parent_data), GFP_KERNEL);
+			if (!sclk->parent_data)
+				return -ENOMEM;
+
+			for (int i = 0; i < sclk->info->num_parents; i++) {
+				sclk->parent_data[i].index = sclk->info->parents[i];
+				sclk->parent_data[i].hw = hws[sclk->info->parents[i]];
+			}
+		}
+
 		err = scmi_clk_ops_init(dev, sclk, scmi_ops);
 		if (err) {
 			dev_err(dev, "failed to register clock %d\n", idx);
+			devm_kfree(dev, sclk->parent_data);
 			devm_kfree(dev, sclk);
 			hws[idx] = NULL;
 		} else {
@@ -220,7 +285,6 @@ static int scmi_clocks_probe(struct scmi_device *sdev)
 				sclk->info->name,
 				scmi_ops == &scmi_atomic_clk_ops ?
 				" (atomic ops)" : "");
-			hws[idx] = &sclk->hw;
 		}
 	}
 

-- 
2.39.5



