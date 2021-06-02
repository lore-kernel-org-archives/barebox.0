Delivery-date: Wed, 02 Jun 2021 12:01:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loNgk-0000gr-Ab
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 12:01:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loNgf-0001da-Bh
	for lore@pengutronix.de; Wed, 02 Jun 2021 12:01:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+4Z73nkjbioWyJ7tHg9Z+DEg5VYIxokqGWKLenyCFrY=; b=xVYFwcd6q1oNjb
	fEgMtbWtWyKFDDnV84T7QLQhU2XV72FIBioEc2OL/I3OBn0l1lkNfJalw1HlEqWKlK6EwsYj12fc0
	eeSRKDD4B8QxmAGmAcOTzm22PRHiN76AlXa4P+84py4CWAJAdFWbsHMilH4s2jsbhG4wbnSJA7IE1
	cQ1QRtX2kUJiVdRf8+yXxJp4WbBZNjJubfDdPh0U+++dEtOsJrG9+iO5WSCjfagdFGpi1RTSt5Ogi
	XFVAT6qnt85cUY9FUaZGA5IQA/42efISFny/DNK+vo1Kg+feirxWTvHHYmIgAT/JJPHbSSCZF2Mff
	fbHavHVAjj2dVHQpgHcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loNez-0037dK-GA; Wed, 02 Jun 2021 09:59:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loNal-0036Fb-Bc
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 09:55:19 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loNai-0000M8-C6; Wed, 02 Jun 2021 11:55:12 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loNag-00039M-QB; Wed, 02 Jun 2021 11:55:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  2 Jun 2021 11:54:48 +0200
Message-Id: <20210602095507.24609-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210602095507.24609-1-s.hauer@pengutronix.de>
References: <20210602095507.24609-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_025515_597907_1D7EDBCB 
X-CRM114-Status: GOOD (  14.34  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH 05/24] clk: introduce clk_register()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This introduces a clk_register() with the same semantics as in Linux.
This also adds a struct clk_init_data. With this it becomes easier to
port over new clock drivers from Linux.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/clk.c   | 37 +++++++++++++++++++++++++++++++++++++
 include/linux/clk.h |  2 ++
 2 files changed, 39 insertions(+)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 73682126bf..74e2f5d783 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -345,6 +345,43 @@ out:
 	return ret;
 }
 
+struct clk *clk_register(struct device_d *dev, struct clk_hw *hw)
+{
+	struct clk *clk;
+	const struct clk_init_data *init = hw->init;
+	char **parent_names;
+	int i, ret;
+
+	if (!hw->init)
+		return ERR_PTR(-EINVAL);
+
+	clk = clk_hw_to_clk(hw);
+
+	memset(clk, 0, sizeof(*clk));
+
+	clk->name = xstrdup(init->name);
+	clk->ops = init->ops;
+	clk->num_parents = init->num_parents;
+	parent_names = xzalloc(init->num_parents * sizeof(char *));
+
+	for (i = 0; i < init->num_parents; i++)
+		parent_names[i] = xstrdup(init->parent_names[i]);
+
+	clk->parent_names = (const char *const*)parent_names;
+
+	clk->flags = init->flags;
+
+	ret = bclk_register(clk);
+	if (ret) {
+		for (i = 0; i < init->num_parents; i++)
+			free(parent_names[i]);
+		free(parent_names);
+		return ERR_PTR(ret);
+	}
+
+	return clk;
+}
+
 int clk_is_enabled(struct clk *clk)
 {
 	int enabled;
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 66ac6a9f14..654845023a 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -399,6 +399,7 @@ struct clk {
  */
 struct clk_hw {
 	struct clk clk;
+	const struct clk_init_data *init;
 };
 
 static inline struct clk *clk_hw_to_clk(struct clk_hw *hw)
@@ -547,6 +548,7 @@ int clk_parent_set_rate(struct clk_hw *hw, unsigned long rate,
 				unsigned long parent_rate);
 
 int bclk_register(struct clk *clk);
+struct clk *clk_register(struct device_d *dev, struct clk_hw *hw);
 
 struct clk *clk_lookup(const char *name);
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

