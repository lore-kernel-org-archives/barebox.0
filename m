Delivery-date: Mon, 27 Nov 2023 07:51:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VSo-00AesN-05
	for lore@lore.pengutronix.de;
	Mon, 27 Nov 2023 07:51:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VSn-000198-UT
	for lore@pengutronix.de; Mon, 27 Nov 2023 07:51:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Si655ccTQ99GgigH7WUMLxNRXGhxBEtoUg3rEcpT+Bk=; b=rPJxu4mXDZesq4HkhV9Yn2d4ly
	pL9EJmLqMrNB1hjSwbmRMMoSNXQE1GzK6LTV8F8NTJqZyhYboONu/PlkDc9UH0uAQJNGQkuBfeqjl
	haDBV0jvVfQF5gPg5NXJY9fs3c281YJ3pxU/a5qMrimbQ3t6b0Kvr5QJhr4NKdH2qhBNnPr44sZAe
	YaaP9CMSqAhjRWYY8fCCOJsB+hAwWJ1BIr9FS3LLk5+keadi0omEqloIEuBCR85uZXbGibJbqAIw3
	Bgm11WPMcIlcRqdEufqVkJGiTirQAJ2suD6VJqIrKzE6bC1gXlaaKMHTnp1vwg63pv6THyXLlh+tk
	MBO8xCbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VRT-001bZr-1l;
	Mon, 27 Nov 2023 06:50:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VRL-001bWL-1u
	for barebox@lists.infradead.org;
	Mon, 27 Nov 2023 06:49:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VRK-0000dh-F4; Mon, 27 Nov 2023 07:49:54 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VRK-00Bsj2-28; Mon, 27 Nov 2023 07:49:54 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VRJ-009GPh-3B;
	Mon, 27 Nov 2023 07:49:54 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 Nov 2023 07:49:41 +0100
Message-Id: <20231127064947.2207726-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231127064947.2207726-1-a.fatoum@pengutronix.de>
References: <20231127064947.2207726-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231126_224955_673825_D1F1B0CA 
X-CRM114-Status: GOOD (  17.31  )
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
Subject: [PATCH 07/13] clk: add struct clk_init_data::parent_hws
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For cases where all clock parents are internal to the clock controller,
parent_hws allows specifying direct pointers to the clk_hw structures
instead of globally unique names. Add support for this to barebox to be
used by the incoming STM32MP13 clock driver.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/clk.c   | 59 ++++++++++++++++++++++++++++++++++-----------
 include/linux/clk.h |  3 +++
 2 files changed, 48 insertions(+), 14 deletions(-)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index acd90e6e5889..4130f413a36d 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -431,7 +431,7 @@ int clk_get_phase(struct clk *clk)
 	return ret;
 }
 
-int bclk_register(struct clk *clk)
+static int __bclk_register(struct clk *clk)
 {
 	struct clk_hw *hw = clk_to_clk_hw(clk);
 	struct clk *c;
@@ -445,8 +445,6 @@ int bclk_register(struct clk *clk)
 		}
 	}
 
-	clk->parents = xzalloc(sizeof(struct clk *) * clk->num_parents);
-
 	list_add_tail(&clk->list, &clks);
 
 	if (clk->ops->init) {
@@ -461,7 +459,19 @@ int bclk_register(struct clk *clk)
 	return 0;
 out:
 	list_del(&clk->list);
-	free(clk->parents);
+
+	return ret;
+}
+
+int bclk_register(struct clk *clk)
+{
+	int ret;
+
+	clk->parents = xzalloc(sizeof(struct clk *) * clk->num_parents);
+
+	ret = __bclk_register(clk);
+	if (ret)
+		free(clk->parents);
 
 	return ret;
 }
@@ -470,7 +480,7 @@ struct clk *clk_register(struct device *dev, struct clk_hw *hw)
 {
 	struct clk *clk;
 	const struct clk_init_data *init = hw->init;
-	char **parent_names;
+	char **parent_names = NULL;
 	int i, ret;
 
 	if (!hw->init)
@@ -483,20 +493,32 @@ struct clk *clk_register(struct device *dev, struct clk_hw *hw)
 	clk->name = xstrdup(init->name);
 	clk->ops = init->ops;
 	clk->num_parents = init->num_parents;
-	parent_names = xzalloc(init->num_parents * sizeof(char *));
 
-	for (i = 0; i < init->num_parents; i++)
-		parent_names[i] = xstrdup(init->parent_names[i]);
+	clk->parents = xzalloc(sizeof(struct clk *) * clk->num_parents);
 
-	clk->parent_names = (const char *const*)parent_names;
+	if (init->parent_names) {
+		parent_names = xzalloc(init->num_parents * sizeof(char *));
+
+		for (i = 0; i < init->num_parents; i++)
+			parent_names[i] = xstrdup(init->parent_names[i]);
+
+		clk->parent_names = (const char *const*)parent_names;
+
+	} else {
+		for (i = 0; i < init->num_parents; i++)
+			clk->parents[i] = clk_hw_to_clk(init->parent_hws[i]);
+	}
 
 	clk->flags = init->flags;
 
-	ret = bclk_register(clk);
+	ret = __bclk_register(clk);
 	if (ret) {
-		for (i = 0; i < init->num_parents; i++)
-			free(parent_names[i]);
-		free(parent_names);
+		if (parent_names) {
+			for (i = 0; i < init->num_parents; i++)
+				free(parent_names[i]);
+			free(parent_names);
+		}
+		free(clk->parents);
 		return ERR_PTR(ret);
 	}
 
@@ -997,6 +1019,15 @@ static const char *clk_hw_stat(struct clk *clk)
 	return "unknown";
 }
 
+static const char *clk_parent_name_by_index(struct clk *clk, u8 idx)
+{
+	if (clk->parent_names)
+		return clk->parent_names[idx];
+	if (clk->parents[idx])
+		return clk->parents[idx]->name;
+	return "unknown";
+}
+
 static void dump_one(struct clk *clk, int verbose, int indent)
 {
 	int enabled = clk_is_enabled(clk);
@@ -1021,7 +1052,7 @@ static void dump_one(struct clk *clk, int verbose, int indent)
 			int i;
 			printf("%*s`---- possible parents: ", indent * 4, "");
 			for (i = 0; i < clk->num_parents; i++)
-				printf("%s ", clk->parent_names[i]);
+				printf("%s ", clk_parent_name_by_index(clk, i));
 			printf("\n");
 		}
 	}
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 6a33f28ee60a..28ed2d2bfd66 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -329,6 +329,8 @@ struct clk_ops {
  * @name: clock name
  * @ops: operations this clock supports
  * @parent_names: array of string names for all possible parents
+ * @parent_hws: array of pointers to all possible parents (when all parents
+ *              are internal to the clk controller)
  * @num_parents: number of possible parents
  * @flags: framework-level hints and quirks
  */
@@ -336,6 +338,7 @@ struct clk_init_data {
 	const char		*name;
 	const struct clk_ops	*ops;
 	const char		* const *parent_names;
+	const struct clk_hw	**parent_hws;
 	unsigned int		num_parents;
 	unsigned long		flags;
 };
-- 
2.39.2



