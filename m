Delivery-date: Thu, 13 Mar 2025 07:46:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tscKe-00DSNy-3A
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 07:46:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tscKc-0006ev-QI
	for lore@pengutronix.de; Thu, 13 Mar 2025 07:46:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=O7EhV/WdzSAt6kFv1SQRccItRsupRAbNghKMMaToC00=; b=p/h1c2x7OlZrrAGKNO+U3Vpyc8
	vJfvckWWXhm1SxvYoIru8m32v8tirCZFfy28uMubT5U8KR7MwHnJ14IzzomFUjc/EUvGf75ZuMWx5
	IWjkJD2iz6czCY+SrRJXsamjSbOG+ozS+Q/dTsq62Jwk120OY3uNpQsuIXHAluPIKh/FUjNP1cWuj
	dVqHBwwzBmqNDGZ13bAykdijkwpkB7fwnb+TF8+Il1B+no4g77un3tyGVEwOULtUkXawdZdtSXoMs
	aDJfW544CdXcRXOmJTDf5JtylbtTqMNeGQRMxMkf6Djk36Q71JG4RjSA8VcVHpGUV89mZDcXtEg+F
	d0fc2+ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tscKA-0000000AFfy-34Hd;
	Thu, 13 Mar 2025 06:45:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tscK7-0000000AFfa-11Q0
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 06:45:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tscK5-0006TQ-NB; Thu, 13 Mar 2025 07:45:41 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tscK5-005UJ4-1i;
	Thu, 13 Mar 2025 07:45:41 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tscK5-000K2M-1Q;
	Thu, 13 Mar 2025 07:45:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 13 Mar 2025 07:45:40 +0100
Message-Id: <20250313064540.76961-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_234543_280703_441F407E 
X-CRM114-Status: GOOD (  12.51  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fs: combine __d_alloc's allocations into one
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of doing two allocations, one for the struct dentry and one for
the full name, just do one allocation and place them after each other.

This has the extra benefit of fixing a leak of the dentry allocation
when the second allocation for the file name fails.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c                | 13 ++++---------
 include/linux/dcache.h |  2 +-
 2 files changed, 5 insertions(+), 10 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 96ca60341ea4..f8b7340d809d 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -795,7 +795,6 @@ static void dentry_kill(struct dentry *dentry)
 		dput(dentry->d_parent);
 
 	list_del(&dentry->d_child);
-	free(dentry->name);
 	free(dentry);
 }
 
@@ -1427,15 +1426,11 @@ static struct dentry *__d_alloc(struct super_block *sb, const struct qstr *name)
 {
 	struct dentry *dentry;
 
-	dentry = xzalloc(sizeof(*dentry));
-	if (!dentry)
-		return NULL;
-
 	if (!name)
 		name = &slash_name;
 
-	dentry->name = malloc(name->len + 1);
-	if (!dentry->name)
+	dentry = xzalloc(struct_size(dentry, name, name->len + 1));
+	if (!dentry)
 		return NULL;
 
 	memcpy(dentry->name, name->name, name->len);
@@ -3006,9 +3001,9 @@ static char *__dpath(struct dentry *dentry, struct dentry *root)
 
 	ppath = __dpath(dentry->d_parent, root);
 	if (ppath)
-		res = basprintf("%s/%s", ppath, dentry->name);
+		res = basprintf("%s/%s", ppath, dentry->d_name.name);
 	else
-		res = basprintf("/%s", dentry->name);
+		res = basprintf("/%s", dentry->d_name.name);
 	free(ppath);
 
 	return res;
diff --git a/include/linux/dcache.h b/include/linux/dcache.h
index ed7e5c2cbcff..1b51a5656703 100644
--- a/include/linux/dcache.h
+++ b/include/linux/dcache.h
@@ -80,7 +80,7 @@ struct dentry {
 	struct dcookie_struct *d_cookie; /* cookie, if any */
 #endif
 	int d_mounted;
-	unsigned char *name;		/* all names */
+	unsigned char name[];		/* all names */
 };
 
 struct dentry_operations {
-- 
2.39.5



