Delivery-date: Mon, 04 Mar 2024 20:03:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDax-008cyZ-2J
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:03:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDaw-0006wL-AV
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:03:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2oIRtjtTLFQqaDgHNC8S2MXwwg37J0hlak11MEhDfWw=; b=ko+v2iO0fADzG4aOZ2ZE8NXlvA
	MJP2bZEK0no48frG1OUzA9EW5m3zNHYshnfg++g1rCmB2aq+anZz96PycU2/2NqRcFBuLvJSNiRh4
	f7tMtdQFZTIEY5JoD1GcIKAzUsfNRauEA6CmsrOCg6tslEzeTZtQWkEQFRq6RrbPQKTtoCUAACcaW
	rYS8TXr2G2D8DVUjk2/gKeQIxg2Ckp9ICy2yUcU9fwvGH2q3Qy7lUieDCs3zvipreU3k2eOgv8SN1
	R+3RVSimiYC0zHVsKERtKKxf1QWi+EuwkIb/fqClxqcNtBtw7wEqc9A/1fv398/qf8+Qh89GW0wXf
	Q7I8Jq/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaQ-0000000AISI-2kJ8;
	Mon, 04 Mar 2024 19:02:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaJ-0000000AIN4-3P5O
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:02:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=2oIRtjtTLFQqaDgHNC8S2MXwwg37J0hlak11MEhDfWw=; b=aB929JhR6gxUEJJQHT1BRHJgA3
	nM4uzWwF4QDqz9nOcLu/1GOEAzBfOstoFXbhVGQ3XLJnEQJSFB8APCj83I2xQKelmnNdPGCwSWzYr
	+xk9RbCK/AfNkrKxBeFs+kU/dXG7cjRZsigwYnQxbFaQZzqdrzf6EGfFoew7n4oJq+NjZpe4dGz83
	q24A35WdZ2lrng5CgyILSlMZ/TSlfghFcER//cO771aaW8ztQbI78k7Pu1dTvLDaY2g44qeyxFfRO
	3nVSafC1OdwVnIMRBfsb+WkEaLi4Kd5C5vdgmd8spka9qTNe7iaUZEQ2ZJsTKZibi7YUMukE5PxDM
	OT0h1laQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaF-000000051vY-2OLW
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:02:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaD-0005zn-MR; Mon, 04 Mar 2024 20:02:41 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaD-004PGo-9M; Mon, 04 Mar 2024 20:02:41 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYK-00Ed9V-12;
	Mon, 04 Mar 2024 20:00:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:59:13 +0100
Message-Id: <20240304190038.3486881-29-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190243_823760_106245ED 
X-CRM114-Status: GOOD (  13.73  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 028/113] fs: drop unused LOOKUP_ flags
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Most flags used during VFS lookup are apparently unused, so let's delete
them to make the code easier to reason about.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c               | 11 +----------
 include/linux/namei.h | 13 -------------
 2 files changed, 1 insertion(+), 23 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 7c4e2f250ea8..7d9bee539db5 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1696,9 +1696,7 @@ static int follow_automount(struct path *path, struct nameidata *nd,
 	 * as being automount points.  These will need the attentions
 	 * of the daemon to instantiate them before they can be used.
 	 */
-	if (!(nd->flags & (LOOKUP_PARENT | LOOKUP_DIRECTORY |
-			LOOKUP_OPEN | LOOKUP_CREATE | LOOKUP_AUTOMOUNT)) &&
-			path->dentry->d_inode)
+	if (!(nd->flags & (LOOKUP_PARENT | LOOKUP_DIRECTORY)) && path->dentry->d_inode)
 		return -EISDIR;
 
 	return automount_mount(path->dentry);
@@ -2278,12 +2276,6 @@ static struct dentry *filename_create(struct filename *name,
 	int error;
 	bool is_dir = (lookup_flags & LOOKUP_DIRECTORY);
 
-	/*
-	 * Note that only LOOKUP_REVAL and LOOKUP_DIRECTORY matter here. Any
-	 * other flags passed in are ignored!
-	 */
-	lookup_flags &= LOOKUP_REVAL;
-
 	name = filename_parentat(name, 0, path, &last, &type);
 	if (IS_ERR(name))
 		return ERR_CAST(name);
@@ -2298,7 +2290,6 @@ static struct dentry *filename_create(struct filename *name,
 	/*
 	 * Do the final lookup.
 	 */
-	lookup_flags |= LOOKUP_CREATE | LOOKUP_EXCL;
 	dentry = __lookup_hash(&last, path->dentry, lookup_flags);
 	if (IS_ERR(dentry))
 		goto unlock;
diff --git a/include/linux/namei.h b/include/linux/namei.h
index 9f6e568591af..29c3460ace2a 100644
--- a/include/linux/namei.h
+++ b/include/linux/namei.h
@@ -19,30 +19,17 @@ enum {LAST_NORM, LAST_ROOT, LAST_DOT, LAST_DOTDOT, LAST_BIND};
  *  - follow links at the end
  *  - require a directory
  *  - ending slashes ok even for nonexistent files
- *  - internal "there are more path components" flag
- *  - dentry cache is untrusted; force a real lookup
- *  - suppress terminal automount
  */
 #define LOOKUP_FOLLOW		0x0001
 #define LOOKUP_DIRECTORY	0x0002
 #define LOOKUP_AUTOMOUNT	0x0004
 
 #define LOOKUP_PARENT		0x0010
-#define LOOKUP_REVAL		0x0020
-#define LOOKUP_RCU		0x0040
-#define LOOKUP_NO_REVAL		0x0080
 
 /*
  * Intent data
  */
-#define LOOKUP_OPEN		0x0100
-#define LOOKUP_CREATE		0x0200
-#define LOOKUP_EXCL		0x0400
-#define LOOKUP_RENAME_TARGET	0x0800
 
 #define LOOKUP_JUMPED		0x1000
-#define LOOKUP_ROOT		0x2000
-#define LOOKUP_EMPTY		0x4000
-#define LOOKUP_DOWN		0x8000
 
 #endif /* _LINUX_NAMEI_H */
-- 
2.39.2



