Delivery-date: Mon, 12 Jun 2023 14:52:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8h1u-003q3F-M2
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 14:52:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8h1s-0005rq-9z
	for lore@pengutronix.de; Mon, 12 Jun 2023 14:52:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qxyz5+Fgdl10IQpFDNhvlvkY9GtIPRNiIszYNkHIMlg=; b=Hj/I548DSBvUkmFYpufwfEaYaD
	6qSvXDiaZxflaByF0iUS+4ccbJpgifCbwewOy1ox5gOoHof+8jhGoqfPFhAQNne2CCkUSViSh6pCV
	peN7BM/LLwRMcyaE0O6lYT/AuO/b1yg4uxsPX7Z/oNRl0rgXOnUdQOSIkFkzTtQMcYfQqT9Ujcw07
	rukgpcZw6e8MN8WWACfxW1FinPlnNVPhfYICXu4x08KZ7z5UGUiKfupnDObtyQ47RFwuTIr1UOo66
	pLlbNfVVZCPkGOZkX/KAa+5tpqMAUFRimDlSaEXcQ56hLDyMStPdLT97eD2hAAEtswRKL/ACrHQJy
	tlNpYHOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8h0q-0044Jw-20;
	Mon, 12 Jun 2023 12:51:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8h0m-0044Hy-37
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 12:51:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h0l-0005Re-P6; Mon, 12 Jun 2023 14:51:07 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h0l-006tSa-44; Mon, 12 Jun 2023 14:51:07 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h0j-004XjU-Sd; Mon, 12 Jun 2023 14:51:05 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Jun 2023 14:51:03 +0200
Message-Id: <20230612125104.1082800-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612125104.1082800-1-a.fatoum@pengutronix.de>
References: <20230612125104.1082800-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_055109_006047_4EB53C09 
X-CRM114-Status: GOOD (  10.96  )
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
Subject: [PATCH v4 5/6] of: implement of_move_node helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Reparenting nodes can be a useful thing to do in fixups. Add a helper
for that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/base.c | 18 ++++++++++++++++++
 include/of.h      |  1 +
 2 files changed, 19 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index e3416b5b75a7..43a4a923d9c5 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2695,6 +2695,24 @@ void of_delete_node(struct device_node *node)
 	free(node);
 }
 
+void of_move_node(struct device_node *parent, struct device_node *node)
+{
+	if (!node)
+		return;
+
+	list_del(&node->list);
+	list_del(&node->parent_list);
+
+	free(node->full_name);
+	node->full_name = basprintf("%s/%s", parent->full_name, node->name);
+
+	if (!node->parent)
+		return;
+
+	list_add(&node->list, &parent->list);
+	list_add_tail(&node->parent_list, &parent->children);
+}
+
 /*
  * of_find_node_by_chosen - Find a node given a chosen property pointing at it
  * @propname:   the name of the property containing a path or alias
diff --git a/include/of.h b/include/of.h
index 0037bad6c4d7..686c1632c267 100644
--- a/include/of.h
+++ b/include/of.h
@@ -187,6 +187,7 @@ extern struct device_node *of_create_node(struct device_node *root,
 extern void of_merge_nodes(struct device_node *np, const struct device_node *other);
 extern struct device_node *of_copy_node(struct device_node *parent,
 				const struct device_node *other);
+void of_move_node(struct device_node *parent, struct device_node *node);
 extern struct device_node *of_dup(const struct device_node *root);
 extern void of_delete_node(struct device_node *node);
 
-- 
2.39.2



