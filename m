Delivery-date: Thu, 24 Jun 2021 10:54:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwL8C-0007GM-2L
	for lore@lore.pengutronix.de; Thu, 24 Jun 2021 10:54:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwL8A-0001gc-2l
	for lore@pengutronix.de; Thu, 24 Jun 2021 10:54:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q9MZcm4NzVYMpCqsw4/plupPaOpLJRkv+UkZ9bmDeao=; b=IqsDG+VY9f3EjC
	t5Qidw8vRYW97vvJVB+QmeZ4QR1SyT+PTik9Uf1wRxcdCEQFr7aFn2FkaT1dwJLrREkMQOHjb28ef
	4jLUZoLeQTf87qME70uk0o+CzOM+Qa/PWwFHk6cuRmWa0wCQARYV3dRSX0kGIqoAHvHNbt3gRiIcA
	u0JqXM2oI5jqvXRvBno9aGwjnB9c0TJ2NTW06OZavgsf6W8NLNV23rLKgM5mey6KRwOtpz/PUiyQ2
	45VvHSkLIvgDWnWvU/+YCgx8d5oW+w8NgQcJdez7EQW4rudJOyWLvxjj/6OQOm6IdvO2BxvHbC4WY
	3VcSAXFmfSmIJmnXwkNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwL6m-00DXgi-Mz; Thu, 24 Jun 2021 08:53:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwL63-00DXFC-8Z
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 08:52:31 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwL60-0000sG-W9; Thu, 24 Jun 2021 10:52:25 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwL60-0000ag-7N; Thu, 24 Jun 2021 10:52:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 24 Jun 2021 10:52:07 +0200
Message-Id: <20210624085223.14616-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210624085223.14616-1-s.hauer@pengutronix.de>
References: <20210624085223.14616-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_015227_577676_8E76232F 
X-CRM114-Status: GOOD (  16.05  )
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
Subject: [PATCH 02/18] of: Add function to duplicate a device tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This adds of_dup() to duplicate a device tree. Previously of_copy_node()
was used for this, but of_copy_node() has issues with potentially
duplicated phandle values when the new tree is inserted to an existing
tree, that is when the parent argument of of_copy_node() is non NULL.
All users of of_copy_node() with a NULL parent argument are converted
to of_dup() which is safe to use leaving only the problematic users
of of_copy_node().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/of_diff.c | 4 ++--
 common/oftree.c    | 2 +-
 drivers/of/base.c  | 5 +++++
 include/of.h       | 1 +
 4 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/commands/of_diff.c b/commands/of_diff.c
index ec039776cf..d9d84fd4bf 100644
--- a/commands/of_diff.c
+++ b/commands/of_diff.c
@@ -25,7 +25,7 @@ static struct device_node *get_tree(const char *filename, struct device_node *ro
 		if (!node)
 			return ERR_PTR(-ENOENT);
 
-		return of_copy_node(NULL, node);
+		return of_dup(node);
 	}
 
 	if (!strcmp(filename, "+")) {
@@ -33,7 +33,7 @@ static struct device_node *get_tree(const char *filename, struct device_node *ro
 		if (!node)
 			return ERR_PTR(-ENOENT);
 
-		node = of_copy_node(NULL, root);
+		node = of_dup(root);
 
 		of_fix_tree(node);
 
diff --git a/common/oftree.c b/common/oftree.c
index 5eaa63ad7e..da8043809b 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -353,7 +353,7 @@ struct fdt_header *of_get_fixed_tree(struct device_node *node)
 		if (!node)
 			return NULL;
 
-		freenp = node = of_copy_node(NULL, node);
+		freenp = node = of_dup(node);
 		if (!node)
 			return NULL;
 	}
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 1434f39ad1..5d93750aec 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2420,6 +2420,11 @@ struct device_node *of_copy_node(struct device_node *parent, const struct device
 	return np;
 }
 
+struct device_node *of_dup(const struct device_node *root)
+{
+	return of_copy_node(NULL, root);
+}
+
 void of_delete_node(struct device_node *node)
 {
 	struct device_node *n, *nt;
diff --git a/include/of.h b/include/of.h
index d67a40bd19..94eb71190d 100644
--- a/include/of.h
+++ b/include/of.h
@@ -162,6 +162,7 @@ extern struct device_node *of_create_node(struct device_node *root,
 					const char *path);
 extern struct device_node *of_copy_node(struct device_node *parent,
 				const struct device_node *other);
+extern struct device_node *of_dup(const struct device_node *root);
 extern void of_delete_node(struct device_node *node);
 
 extern const char *of_get_machine_compatible(void);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

