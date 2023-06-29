Delivery-date: Thu, 29 Jun 2023 08:57:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qElbE-0087Io-06
	for lore@lore.pengutronix.de; Thu, 29 Jun 2023 08:57:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qElbB-0003xn-6a
	for lore@pengutronix.de; Thu, 29 Jun 2023 08:57:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rHCoVKlqiffB12HIL4IMW2g44A5sQQNDOl+n7e14byE=; b=Z8xvf6C+fb3BOCD8uo9nF1nkwD
	DWL/aZkWtJbGpgMSjOGOgu57/c9xuWQVuNP7Fz6mgE4S1US2FNFuET5p5qPDDLNpFQpRTGu0jGXlA
	g9adkVIRw2IuqHxzaEpKra0TrLUmjbQgLh+bP44z3d6eX9MMwP6tXO7tXz9r7lk7gcTbIi1/RyGH3
	3pfATETqc7UKkEMj0OZBOXYyIq5JWP918+2n+uhGOLrWW9XMWX6yPi1ICHQ1zlgLAW5pHG92RmZfg
	5hSCFXLP3yPIDLcWuu4rduRCV0gy3NkaHXXCt+KsRUT5fGfkXlfW2khQp4ihMggcquLemrMWZED3B
	c99Y1rCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qEla2-0009tO-0s;
	Thu, 29 Jun 2023 06:56:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qElZz-0009sf-08
	for barebox@lists.infradead.org;
	Thu, 29 Jun 2023 06:56:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qElZx-0003sr-Fq; Thu, 29 Jun 2023 08:56:33 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qElZw-00Aq6C-Qg; Thu, 29 Jun 2023 08:56:32 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qElZw-004hGt-1H;
	Thu, 29 Jun 2023 08:56:32 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 29 Jun 2023 08:56:12 +0200
Message-Id: <20230629065612.1119622-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230628_235635_076665_1D9D01B1 
X-CRM114-Status: GOOD (  15.60  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master v2 1/2] of: implement of_reparent_node helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Reparenting nodes can be a useful thing to do in fixups. Add a helper
for that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - rename from of_move_node to of_reparent_node
  - ensure that there's a parent to avoid null pointer deref
    (Sascha)
  - set node->parent to new_parent (Sascha)
  - Remove broken condition on old parent (Sascha)
---
 drivers/of/base.c           | 26 ++++++++++++++++++++++++++
 include/of.h                |  1 +
 test/self/of_manipulation.c |  8 ++++++--
 3 files changed, 33 insertions(+), 2 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 4dc1c76b136d..e1134e9c694b 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2697,6 +2697,32 @@ void of_delete_node(struct device_node *node)
 	free(node);
 }
 
+/*
+ * of_reparent_node - Move node from beneath one parent to another
+ * @new_parent: The new parent node
+ * @node        The node to be moved
+ */
+int of_reparent_node(struct device_node *new_parent, struct device_node *node)
+{
+	if (!node)
+		return 0;
+
+	if (!new_parent || !node->parent)
+		return -EINVAL;
+
+	list_del(&node->parent_list);
+	list_del(&node->list);
+
+	free(node->full_name);
+	node->full_name = basprintf("%s/%s", new_parent->full_name, node->name);
+
+	list_add(&node->list, &new_parent->list);
+	list_add_tail(&node->parent_list, &new_parent->children);
+	node->parent = new_parent;
+
+	return 0;
+}
+
 /*
  * of_find_node_by_chosen - Find a node given a chosen property pointing at it
  * @propname:   the name of the property containing a path or alias
diff --git a/include/of.h b/include/of.h
index 92a15f5c4a13..4cc26164a703 100644
--- a/include/of.h
+++ b/include/of.h
@@ -188,6 +188,7 @@ extern struct device_node *of_create_node(struct device_node *root,
 extern void of_merge_nodes(struct device_node *np, const struct device_node *other);
 extern struct device_node *of_copy_node(struct device_node *parent,
 				const struct device_node *other);
+int of_reparent_node(struct device_node *parent, struct device_node *node);
 extern struct device_node *of_dup(const struct device_node *root);
 extern void of_delete_node(struct device_node *node);
 
diff --git a/test/self/of_manipulation.c b/test/self/of_manipulation.c
index 64913ac1eab8..8843cfbe607e 100644
--- a/test/self/of_manipulation.c
+++ b/test/self/of_manipulation.c
@@ -37,7 +37,9 @@ static void test_of_basics(struct device_node *root)
 	struct device_node *node1, *node2, *node21;
 
 	node1 = of_new_node(root, "node1");
-	node2 = of_new_node(root, "node2");
+	node2 = of_new_node(node1, "node2");
+
+	of_reparent_node(root, node2);
 
 	assert_equal(node1, node2);
 
@@ -77,7 +79,9 @@ static void test_of_property_strings(struct device_node *root)
 	np1 = of_new_node(root, "np1");
 	np2 = of_new_node(root, "np2");
 	np3 = of_new_node(root, "np3");
-	np4 = of_new_node(root, "np4");
+	np4 = of_new_node(np1, "np4");
+
+	of_reparent_node(root, np4);
 
 	of_property_sprintf(np1, "property-single", "%c%c%c", 'a', 'y', 'y');
 
-- 
2.39.2



