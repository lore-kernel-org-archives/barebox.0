Delivery-date: Fri, 10 Feb 2023 17:55:20 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQWgD-003Hcd-UP
	for lore@lore.pengutronix.de; Fri, 10 Feb 2023 17:55:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQWgA-0000qo-Uk
	for lore@pengutronix.de; Fri, 10 Feb 2023 17:55:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wXbRc9dM5ghfZfTeiyxsEnH/skhKDyP6oJTMFr8f43I=; b=CEqXTqT8U2XiVd
	+7pQqqYMwgwgkJMivzuSoiIsCmI0HJf28ZFsSkBS42h4hWWlkfMqWDqcPdUCPZ0GkV8b1/bD9j7Cs
	HIdOJutdQg5Jdb2g5oqwFjmiBnucPpAGu9iB9AKQ7cI/XL4hjR7dyDViFGtgvyVkOjmj8Zd6bA58W
	30UUpPj77ycEmAfij1saThlCPZoNsngEE/57eEfsHn70/i4ZA0kd5ctcWyXiyjV8eh5WYkhKg1klP
	ceaD804sIMPmyPN9eG76+onkQT3jwaIhONqBrDJHlbeMV1gfmp03p3h+Dw8tRDMNnu0627YZ84fqC
	k/n/U9RHXouCem83gLtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQWez-006aUF-6q; Fri, 10 Feb 2023 16:54:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQWer-006aSP-Uv
	for barebox@lists.infradead.org; Fri, 10 Feb 2023 16:53:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pQWeq-0000Zm-Ke; Fri, 10 Feb 2023 17:53:56 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pQWeo-0041oJ-Pt; Fri, 10 Feb 2023 17:53:56 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pQWep-00F7he-6a; Fri, 10 Feb 2023 17:53:55 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 10 Feb 2023 17:53:50 +0100
Message-Id: <20230210165353.3601175-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230210_085358_014774_234CC739 
X-CRM114-Status: GOOD (  11.72  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/4] of: base: factor out of_merge_nodes from of_copy_node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Later commit will need to merge two DTs from the root up. Refactor
that part out of of_copy_node to make it usable on its own.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no changes
---
 drivers/of/base.c | 17 ++++++++++++-----
 include/of.h      |  1 +
 2 files changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 937847f44ab7..1221cd316cdf 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2616,19 +2616,26 @@ out:
 	return dn;
 }
 
-struct device_node *of_copy_node(struct device_node *parent, const struct device_node *other)
+void of_merge_nodes(struct device_node *np, const struct device_node *other)
 {
-	struct device_node *np, *child;
+	struct device_node *child;
 	struct property *pp;
 
-	np = of_new_node(parent, other->name);
-	np->phandle = other->phandle;
-
 	list_for_each_entry(pp, &other->properties, list)
 		of_new_property(np, pp->name, pp->value, pp->length);
 
 	for_each_child_of_node(other, child)
 		of_copy_node(np, child);
+}
+
+struct device_node *of_copy_node(struct device_node *parent, const struct device_node *other)
+{
+	struct device_node *np;
+
+	np = of_new_node(parent, other->name);
+	np->phandle = other->phandle;
+
+	of_merge_nodes(np, other);
 
 	return np;
 }
diff --git a/include/of.h b/include/of.h
index 7ee1304b932b..1a38774615a4 100644
--- a/include/of.h
+++ b/include/of.h
@@ -180,6 +180,7 @@ extern struct device_node *of_new_node(struct device_node *parent,
 				const char *name);
 extern struct device_node *of_create_node(struct device_node *root,
 					const char *path);
+extern void of_merge_nodes(struct device_node *np, const struct device_node *other);
 extern struct device_node *of_copy_node(struct device_node *parent,
 				const struct device_node *other);
 extern struct device_node *of_dup(const struct device_node *root);
-- 
2.30.2



