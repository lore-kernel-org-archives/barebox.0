Delivery-date: Wed, 03 Jan 2024 19:34:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL648-002Nq3-2L
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:34:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL640-000525-Q3
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:34:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2oIRtjtTLFQqaDgHNC8S2MXwwg37J0hlak11MEhDfWw=; b=gisBuuIp3RllBlhyCcBG7t13m+
	p/y8d62ImfZIr7tAJK8Kj/PAiGBEe45ZyVRFGG+lsAOjYSWanaYl7CV/IQPG5gUVvYB5TpLMFPB+7
	5qBZy23Wt9KSOKhUeLgJZd4JN1N4soGCfkvxdq6K/dfHNVV1y1kGufRFubbqF58Al/BDmlKr1jwSx
	O1lAqOP2PfoJ7dfs1Tow/U8+++qEW2v6RezJ+Aqnk0AChg5hJX0ycKu72InbOLM1mDKpQIeMmG+M5
	6UW3d++Jxet/eqecz2Hgtlva1QUdguhgRQ1Bgk/pffsO7/MIhXHLUp8pDA0lkSfjXI4EnD9NS2U3l
	87ho9VtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL62M-00BibZ-0A;
	Wed, 03 Jan 2024 18:32:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61F-00BhJX-1w
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=2oIRtjtTLFQqaDgHNC8S2MXwwg37J0hlak11MEhDfWw=; b=UY8Joe0rfzOljS3+CG80UgS74A
	JkUkgM2mf+ZgE7TdvSUUKeVnfyF4aiwUbDIQ8CMqdLCpWLZyhr4aA9Gd4bJ+kbSam70XykY5YYDni
	+rxHnRfDj7o65sYOE5DCjbRifahWP62lp7XA9w941NWjT3PIlYj4RvvChaps1g6kqOU+1ZGkcOvZL
	49igLR2z5iX/pB8XFi/v8woXRqFXnpEnhKIHl5IMjAfv4CByxaTzOcCdjyvyYfBjH3zPZyst1GkHA
	w8k+HOmwlgiNIngjYs7GOV8H+AoGdggHfnY8IKbKmRERJSI8INVFigxKKM81y4NQdFE07N+kf1KPr
	KzSW1WAA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL616-005eC0-1V
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL614-0001ic-Bi; Wed, 03 Jan 2024 19:30:58 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL613-000AyI-V2; Wed, 03 Jan 2024 19:30:57 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k2-001j4X-0h;
	Wed, 03 Jan 2024 19:13:22 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:11:48 +0100
Message-Id: <20240103181312.409668-29-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183100_751368_EACBEF7E 
X-CRM114-Status: GOOD (  13.21  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 028/112] fs: drop unused LOOKUP_ flags
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



