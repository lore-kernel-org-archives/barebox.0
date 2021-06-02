Delivery-date: Wed, 02 Jun 2021 12:00:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loNgJ-0000ff-Bn
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 12:00:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loNgD-0001Op-Mn
	for lore@pengutronix.de; Wed, 02 Jun 2021 12:00:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QKJhvT/vSFAMRHmGISc8V0qazJSPLS+bp6NDaCcFei0=; b=4fSL+c4zLj4dh6
	HpEQ8CYzZj+z0/m1jZqw3QI0I3KvTLBWv++AucgmNqjZOjbDN3/2WD02V5fEvHqRZDkeMAZH82WfE
	jsMs7VSOYSEoiMcHEfhIx7AV9vvrutFy9xRtDacS+o3Vwva6HtF2Ce9qQiWhGUwnxTAwOLy9Nr0mc
	pa3iOn/qlYrgwbptq5sh9j2hPD9IyilY68S+cONeRHzfCdQoaKELtgfny4lVvMkfIyPuov25ILcmP
	rigWIHKb6xF6t6Lqmn6T8ONm3lxdiQgR/9CeG4C+yc6LhtA5CHz4KX/sRbCFhT2zStellzhqeceyO
	+exi+EvsSgqcKjCYYk6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loNeY-0037RU-02; Wed, 02 Jun 2021 09:59:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loNal-0036FX-Bk
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 09:55:18 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loNai-0000M4-6q; Wed, 02 Jun 2021 11:55:12 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loNag-00038i-N7; Wed, 02 Jun 2021 11:55:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  2 Jun 2021 11:54:45 +0200
Message-Id: <20210602095507.24609-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210602095507.24609-1-s.hauer@pengutronix.de>
References: <20210602095507.24609-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_025515_600526_11CD9885 
X-CRM114-Status: GOOD (  12.11  )
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
Subject: [PATCH 02/24] clk: introduce clk init op
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/clk.c   | 12 ++++++++++++
 include/linux/clk.h |  1 +
 2 files changed, 13 insertions(+)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index b04d44593b..fb5bf57e4b 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -261,6 +261,7 @@ struct clk *clk_get_parent(struct clk *clk)
 int clk_register(struct clk *clk)
 {
 	struct clk *c;
+	int ret;
 
 	list_for_each_entry(c, &clks, list) {
 		if (!strcmp(c->name, clk->name)) {
@@ -274,10 +275,21 @@ int clk_register(struct clk *clk)
 
 	list_add_tail(&clk->list, &clks);
 
+	if (clk->ops->init) {
+		ret = clk->ops->init(clk);
+		if (ret)
+			goto out;
+	}
+
 	if (clk->flags & CLK_IS_CRITICAL)
 		clk_enable(clk);
 
 	return 0;
+out:
+	list_del(&clk->list);
+	free(clk->parents);
+
+	return ret;
 }
 
 int clk_is_enabled(struct clk *clk)
diff --git a/include/linux/clk.h b/include/linux/clk.h
index c49fe9a54c..5d05ffd1b3 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -336,6 +336,7 @@ static inline void clk_put(struct clk *clk)
 #define CLK_GATE_HIWORD_MASK	(1 << 1)
 
 struct clk_ops {
+	int 		(*init)(struct clk *clk);
 	int		(*enable)(struct clk *clk);
 	void		(*disable)(struct clk *clk);
 	int		(*is_enabled)(struct clk *clk);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

