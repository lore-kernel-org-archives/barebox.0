Delivery-date: Thu, 08 Jun 2023 15:42:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7FuF-00FoNf-0u
	for lore@lore.pengutronix.de; Thu, 08 Jun 2023 15:42:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7FuC-0002IH-J4
	for lore@pengutronix.de; Thu, 08 Jun 2023 15:42:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qpTcjsN5tU9i6Yz0g699OkaMFE1b6i92yM9VRWoO4sI=; b=Y12mKfGPgVdZyPa0TPXhDGn5GT
	Rlnke37nSu1hKfe2yxfWRdhRGv/YYk14kKjxZ/jiXImFkKWVqBLbAMdtRlfZu9lrg93vk0woBPM70
	SFAnO2Y9jgVf2qtXd/1i9DD8nN+nvTRU/hhCNkCgNM7QHOoLGSMi5b5SaemTV8tMJ4qy55YsSTtmZ
	c3ptgHwDLtq4SrQYh4uXubhqoyl2zw1gZZsc6GrBuQb+sloVrCQkSLRayWbs/UZ0hsBaIDFiEtBpd
	YWn4WW/BjriwEl+z1V3nSOgSoa38FBcEuOvy2a/oX3v8bSDSBZ8uFRSZC8UD85pa3pPKMxNWKGgja
	cuxYYuWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7Ft1-009Uqb-0w;
	Thu, 08 Jun 2023 13:41:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7Fsz-009Upp-0Y
	for barebox@lists.infradead.org;
	Thu, 08 Jun 2023 13:41:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q7Fsx-00025u-SJ; Thu, 08 Jun 2023 15:41:07 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q7Fsx-005z9R-7Q; Thu, 08 Jun 2023 15:41:07 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q7Fsw-0094lo-78; Thu, 08 Jun 2023 15:41:06 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  8 Jun 2023 15:40:42 +0200
Message-Id: <20230608134040.2123869-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230608134040.2123869-1-a.fatoum@pengutronix.de>
References: <20230608134040.2123869-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_064109_210391_035D047C 
X-CRM114-Status: GOOD (  16.14  )
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
Subject: [PATCH 2/3] commands: of_diff: simplify error handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The error check and message is duplicated for each argument and
could be unified if we move it to get_tree instead.

While at it, we limit argc to exactly 3 in case we want to add options
in the future.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/of_diff.c | 55 ++++++++++++++++------------------------------
 drivers/of/base.c  |  3 +++
 2 files changed, 22 insertions(+), 36 deletions(-)

diff --git a/commands/of_diff.c b/commands/of_diff.c
index 19a4a26d2012..ff3d46c7f530 100644
--- a/commands/of_diff.c
+++ b/commands/of_diff.c
@@ -17,60 +17,43 @@ static struct device_node *get_tree(const char *filename, struct device_node *ro
 {
 	struct device_node *node;
 
+	if (!root)
+		root = ERR_PTR(-ENOENT);
+
 	if (!strcmp(filename, "-")) {
-		node = of_get_root_node();
-		if (!node)
-			return ERR_PTR(-ENOENT);
-
-		return of_dup(node);
-	}
-
-	if (!strcmp(filename, "+")) {
-		node = of_get_root_node();
-		if (!node)
-			return ERR_PTR(-ENOENT);
-
 		node = of_dup(root);
-
-		of_fix_tree(node);
-
-		return node;
+	} else if (!strcmp(filename, "+")) {
+		node = of_dup(root);
+		if (!IS_ERR(node))
+			of_fix_tree(node);
+	} else {
+		node = of_read_file(filename);
 	}
 
-	return of_read_file(filename);
+	if (IS_ERR(node))
+		printf("Cannot read %s: %pe\n", filename, node);
+
+	return node;
 }
 
 static int do_of_diff(int argc, char *argv[])
 {
-	int ret = 0;
+	int ret = COMMAND_ERROR;
 	struct device_node *a, *b, *root;
 
-	if (argc < 3)
+	if (argc != 3)
 		return COMMAND_ERROR_USAGE;
 
 	root = of_get_root_node();
 	a = get_tree(argv[1], root);
 	b = get_tree(argv[2], root);
 
-	if (IS_ERR(a)) {
-		printf("Cannot read %s: %pe\n", argv[1], a);
-		ret = COMMAND_ERROR;
-		a = NULL;
-		goto out;
-	}
+	if (!IS_ERR(a) && !IS_ERR(b))
+		ret = of_diff(a, b, 0) ? COMMAND_ERROR : COMMAND_SUCCESS;
 
-	if (IS_ERR(b)) {
-		printf("Cannot read %s: %pe\n", argv[2], b);
-		ret = COMMAND_ERROR;
-		b = NULL;
-		goto out;
-	}
-
-	ret = of_diff(a, b, 0) ? COMMAND_ERROR : COMMAND_SUCCESS;
-out:
-	if (a && a != root)
+	if (!IS_ERR(a) && a != root)
 		of_delete_node(a);
-	if (b && b != root)
+	if (!IS_ERR(b) && b != root)
 		of_delete_node(b);
 
 	return ret;
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 5da188115547..e3416b5b75a7 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2660,6 +2660,9 @@ struct device_node *of_copy_node(struct device_node *parent, const struct device
 
 struct device_node *of_dup(const struct device_node *root)
 {
+	if (IS_ERR_OR_NULL(root))
+		return ERR_CAST(root);
+
 	return of_copy_node(NULL, root);
 }
 
-- 
2.39.2



