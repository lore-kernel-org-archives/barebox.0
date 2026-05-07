Delivery-date: Thu, 07 May 2026 13:55:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKxKF-001xCW-0S
	for lore@lore.pengutronix.de;
	Thu, 07 May 2026 13:55:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKxKA-00044N-2q
	for lore@pengutronix.de; Thu, 07 May 2026 13:55:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=U4ClSWQwv/SSJ3ulN7im1ZUT9JkQdHR+mqGY1W8SMEs=; b=QmcNwaAm1SKPHLwVaKxA5mJzXD
	IQaS5YaRfCykGC+sinkSxUUaCKFnOrMb9tuIoVuKbJUkZR6a1XGNJRX6O2RsOKLEI6hsgI5AJviqU
	gAbZ0Aqj1/U9Ph0sZmov88yVG+ncRSDvVra6+QFBWWGodMIphut+8scc//koCcEnWyGmDMrMXTuxS
	jo5+HAQpvIkJFI/6+G54Ny0aOuSTds0FSEX2hQGE8BT+/CAz714z1bMcM6uFkT08eYz2U13wrEwCc
	GfXg83IjMKAgVgL6Arw5B4D1lmiQDVIq8C/mGb/nvTgj5u2wXElVPG2TL9OzhEFZ+ypvTECF7cZzr
	IRprIO1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKxJ0-00000003iOC-12qo;
	Thu, 07 May 2026 11:54:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKxIx-00000003iMZ-2cjy
	for barebox@lists.infradead.org;
	Thu, 07 May 2026 11:54:12 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wKxIv-0003Ky-Q9; Thu, 07 May 2026 13:54:09 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu,  7 May 2026 13:54:07 +0200
Message-ID: <20260507115408.1370019-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_045411_683284_291E2D3A 
X-CRM114-Status: UNSURE (   7.91  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fs: fix memory leak in automount_add()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The struct automount is allocated before validating the path, but both
error paths (filename_lookup failure and !d_is_dir check) skip freeing
it. Move the allocation after validation succeeds.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 fs/fs.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/fs/fs.c b/fs/fs.c
index 5ca98ec12704..dc6c30802d89 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -3450,7 +3450,7 @@ EXPORT_SYMBOL(automount_remove);
 
 int automount_add(const char *pathname, const char *cmd)
 {
-	struct automount *am = xzalloc(sizeof(*am));
+	struct automount *am;
 	struct path path;
 	int ret;
 
@@ -3463,6 +3463,7 @@ int automount_add(const char *pathname, const char *cmd)
 		goto out;
 	}
 
+	am = xzalloc(sizeof(*am));
 	am->path = dpath(path.dentry, d_root);
 	am->dentry = dget(path.dentry);
 	am->dentry->d_flags |= DCACHE_NEED_AUTOMOUNT;
-- 
2.47.3



