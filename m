Delivery-date: Fri, 10 Feb 2023 15:57:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQUpl-0038Lz-EQ
	for lore@lore.pengutronix.de; Fri, 10 Feb 2023 15:57:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQUpi-0007UL-F5
	for lore@pengutronix.de; Fri, 10 Feb 2023 15:57:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iLvkXsgAewwHk8D2wu7cEzYoPs3LjjRLHpkx6wmXOao=; b=gKs+5Ux4zMbChx
	4ms0DPCCPg6nBhBmBVQPmlf0cg3E1xnWR7XeyjDoUqycvbzL15ZZAhws6QdhwmhZqv/8UjBRuHXkR
	omzkHDwMAs1BHvZIxUibJoJCKvR5fNUf1BWZXlKk4hcbQSvHO1B8FmMmnDRYDsoryhR9nR17iR479
	v72BQuRd0ryft5IKuhiB8Tc+BHGEYY6qlRDAlcPvxMBrwJv1+4geyW9HSt7HLfbaDIxNz/bNWV4f8
	iSWWi9d+k9O15ramBDDqj+YP+yOMhP0Wm51i82xadTwT+qSGKPjjG+kL8DAlMoWFR03OnhiMRBXAQ
	QtMkcubcvs/jKzWaRP5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQUoz-0067wq-00; Fri, 10 Feb 2023 14:56:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQUos-0067vf-QU
	for barebox@lists.infradead.org; Fri, 10 Feb 2023 14:56:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pQUop-0007Af-Gm; Fri, 10 Feb 2023 15:56:07 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pQUon-0040Ge-MW; Fri, 10 Feb 2023 15:56:06 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pQUon-006ftl-VG; Fri, 10 Feb 2023 15:56:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 10 Feb 2023 15:56:03 +0100
Message-Id: <20230210145604.1589875-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230210_065610_875747_398D7CEF 
X-CRM114-Status: GOOD (  11.01  )
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
Subject: [PATCH 1/2] of: base: factor out of_merge_nodes from of_copy_node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Follow-up commit will need to merge two DTs from the root up. Refactor
that part out of of_copy_node to make it usable on its own.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
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



