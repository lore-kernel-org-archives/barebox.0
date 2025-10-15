Delivery-date: Wed, 15 Oct 2025 10:17:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8whT-0081yW-0F
	for lore@lore.pengutronix.de;
	Wed, 15 Oct 2025 10:17:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8whR-0006as-2B
	for lore@pengutronix.de; Wed, 15 Oct 2025 10:17:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GI1iLSFG0tcrZPG6qH33/syUSE8xKYLdeBrkIzlL+MY=; b=tS8Y2jXj04TxHnFSR8Qy6WC5FF
	FRkxfxbembmEZnha6ctzCFLMxGc0McWxvnGC+Y59n1SmCXv0sZeMG1McXSnK6qI2qxH7p9gldzZ6H
	4HnF8zuUIlKnIgjDlgn+MBxt99Cf56aMkKWUqW2Oi3opKWG1sBPXCv4UqCAxgXpeC0QW1XLYkwthY
	orgabO03f4yzIzb2ta32IcYMpdgs18EiLeZtkLkhL4qh/BWXGNjNAaW53F9nEQs/lhvlwmstknGMX
	t0RdR89XLQ1cSuqsY3JUfeA+ca0Cm8lWa//sUtqdayCtKxdijcnTPEkXy46FMV7Gmk1LSQB9tyQAi
	aPQXaFfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8wgr-00000000sPw-0jMk;
	Wed, 15 Oct 2025 08:16:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8wgn-00000000sOs-2vjf
	for barebox@lists.infradead.org;
	Wed, 15 Oct 2025 08:16:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1v8wgj-0006SV-NR; Wed, 15 Oct 2025 10:16:49 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed, 15 Oct 2025 10:16:45 +0200
Message-ID: <20251015081648.4078283-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_011653_736445_AF5E1135 
X-CRM114-Status: GOOD (  10.24  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] fs: make dpath always panic on OOM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is effectively already the case since basprintf was changed to be
equivalent to xasprintf. Replace basprintf with xasprintf to make this
clearer and use xstrdup instead of strdup for the root node.

All users, except one, didn't bother to check dpath return value for NULL
anyway.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 fs/fs.c     | 6 +++---
 fs/legacy.c | 2 --
 2 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 529c328f26fc..528299e039d2 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -3022,9 +3022,9 @@ static char *__dpath(struct dentry *dentry, struct dentry *root)
 
 	ppath = __dpath(dentry->d_parent, root);
 	if (ppath)
-		res = basprintf("%s/%s", ppath, dentry->d_name.name);
+		res = xasprintf("%s/%s", ppath, dentry->d_name.name);
 	else
-		res = basprintf("/%s", dentry->d_name.name);
+		res = xasprintf("/%s", dentry->d_name.name);
 	free(ppath);
 
 	return res;
@@ -3058,7 +3058,7 @@ char *dpath(struct dentry *dentry, struct dentry *root)
 	char *res;
 
 	if (dentry == root)
-		return strdup("/");
+		return xstrdup("/");
 
 	res = __dpath(dentry, root);
 
diff --git a/fs/legacy.c b/fs/legacy.c
index 7c73ad7c41e4..c2170f52a40b 100644
--- a/fs/legacy.c
+++ b/fs/legacy.c
@@ -60,8 +60,6 @@ static struct dentry *legacy_lookup(struct inode *dir, struct dentry *dentry,
 	int ret;
 
 	pathname = dpath(dentry, fsdev->vfsmount.mnt_root);
-	if (!pathname)
-		return NULL;
 
 	ret = legacy_ops->stat(&fsdev->dev, pathname, &s);
 	if (!ret) {
-- 
2.47.3



