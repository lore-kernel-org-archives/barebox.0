Delivery-date: Mon, 27 Nov 2023 07:51:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VSl-00Aerb-07
	for lore@lore.pengutronix.de;
	Mon, 27 Nov 2023 07:51:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VSl-00017F-0o
	for lore@pengutronix.de; Mon, 27 Nov 2023 07:51:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gMDi6qhDsAY3KsFtw/fQlDCdMGeCpeDui98voQXBscA=; b=HNHP02YhjWv+Z/UIMjZIZzOJH1
	+ELWoNlZkbg77uFRz46fcSuZQGScUkEmrwOq91rJlyqwxb00oegwl9VX8lk5G3jxbE3FR6UyytPma
	wpNzbJyUTJGVLaECnna4grFRaOASG2VjI2wWyDqVDDqQ7DenPujwv9BHKu4tcnhgrmVDsMCPOiqMN
	qm9w3/lQgloXRhET0LbPDFHgt5WZIAJwm0o87oEFw7JEDUMH76uRiKSJPAb7EKh2+wCScDKsWYIf1
	uOfjdBe9jcybcaer4gg86hWGdyyPrwoWaTxckYx5HZ2XAM4bA2OkDLuY3Byfxo+HLZ4GmVRtQWg/U
	1mmgJMRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VRZ-001bcA-0m;
	Mon, 27 Nov 2023 06:50:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VRL-001bWG-1T
	for barebox@lists.infradead.org;
	Mon, 27 Nov 2023 06:49:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VRK-0000dD-73; Mon, 27 Nov 2023 07:49:54 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VRJ-00Bsin-RB; Mon, 27 Nov 2023 07:49:53 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VRJ-009GPh-2S;
	Mon, 27 Nov 2023 07:49:53 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 Nov 2023 07:49:36 +0100
Message-Id: <20231127064947.2207726-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231127064947.2207726-1-a.fatoum@pengutronix.de>
References: <20231127064947.2207726-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231126_224955_681350_E2AC6201 
X-CRM114-Status: GOOD (  16.91  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 02/13] clk: factor out clk_hw_get_parent_index
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

clk_ops::set_parent passes the parent as an index, so clk_set_parent
needs to determine the index. Linux provides this information via
clk_hw_get_parent_index and some drivers depend on this, so factor out
the code in question in barebox as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/clk.c   | 55 ++++++++++++++++++++++++++++++++++++---------
 include/linux/clk.h |  6 +++++
 2 files changed, 50 insertions(+), 11 deletions(-)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 5b85c375cfed..25d32e9e12f9 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -211,6 +211,47 @@ int clk_hw_set_rate(struct clk_hw *hw, unsigned long rate)
 	return clk_set_rate(&hw->clk, rate);
 }
 
+static int clk_fetch_parent_index(struct clk *clk,
+				  struct clk *parent)
+{
+	int i;
+
+	if (!parent)
+		return -EINVAL;
+
+	for (i = 0; i < clk->num_parents; i++) {
+		if (IS_ERR_OR_NULL(clk->parents[i]))
+			clk->parents[i] = clk_lookup(clk->parent_names[i]);
+
+		if (!IS_ERR_OR_NULL(clk->parents[i]))
+			if (clk->parents[i] == parent)
+				break;
+	}
+
+	if (i == clk->num_parents)
+		return -EINVAL;
+
+	return i;
+}
+
+/**
+ * clk_hw_get_parent_index - return the index of the parent clock
+ * @hw: clk_hw associated with the clk being consumed
+ *
+ * Fetches and returns the index of parent clock. Returns -EINVAL if the given
+ * clock does not have a current parent.
+ */
+int clk_hw_get_parent_index(struct clk_hw *hw)
+{
+	struct clk_hw *parent = clk_hw_get_parent(hw);
+
+	if (WARN_ON(parent == NULL))
+		return -EINVAL;
+
+	return clk_fetch_parent_index(clk_hw_to_clk(hw), clk_hw_to_clk(parent));
+}
+EXPORT_SYMBOL_GPL(clk_hw_get_parent_index);
+
 struct clk *clk_lookup(const char *name)
 {
 	struct clk *c;
@@ -245,17 +286,9 @@ int clk_set_parent(struct clk *clk, struct clk *newparent)
 	if (!clk->ops->set_parent)
 		return -EINVAL;
 
-	for (i = 0; i < clk->num_parents; i++) {
-		if (IS_ERR_OR_NULL(clk->parents[i]))
-			clk->parents[i] = clk_lookup(clk->parent_names[i]);
-
-		if (!IS_ERR_OR_NULL(clk->parents[i]))
-			if (clk->parents[i] == newparent)
-				break;
-	}
-
-	if (i == clk->num_parents)
-		return -EINVAL;
+	i = clk_fetch_parent_index(clk, newparent);
+	if (i < 0)
+		return i;
 
 	if (clk->enable_count)
 		clk_enable(newparent);
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 80921136438d..9975c1a601c4 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -139,6 +139,7 @@ int clk_hw_set_parent(struct clk_hw *hw, struct clk_hw *hwp);
  */
 struct clk *clk_get_parent(struct clk *clk);
 struct clk_hw *clk_hw_get_parent(struct clk_hw *hw);
+int clk_hw_get_parent_index(struct clk_hw *hw);
 
 int clk_set_phase(struct clk *clk, int degrees);
 int clk_get_phase(struct clk *clk);
@@ -185,6 +186,11 @@ static inline struct clk *clk_get_parent(struct clk *clk)
 	return NULL;
 }
 
+static inline int clk_hw_get_parent_index(struct clk_hw *hw)
+{
+	return -EINVAL;
+}
+
 static inline int clk_enable(struct clk *clk)
 {
 	return 0;
-- 
2.39.2



