Delivery-date: Tue, 19 May 2026 14:52:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPJvV-001UzB-2D
	for lore@lore.pengutronix.de;
	Tue, 19 May 2026 14:52:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPJvV-0000c2-2O
	for lore@pengutronix.de; Tue, 19 May 2026 14:52:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=anpYFCzJPJH2wiBqR8QD648EfVu/Pe7m2z/HIYFRDI0=; b=raMTT54OQucikzZ26qAJ3h17ML
	yDtiB+jPNPdaUDoRLq1dUnZHPgsFTIOsP3pq604IEwFQ21hFIW3UkzrOGPTuvb/BTumlLG7N54Fs4
	4rybTf1kEQzLRJ+ZuT+ffIYHZEM/ysISzD7+CrD4yvwpSoxrWsWdG9KNUgWrXd+30pjECtNcdj0mj
	H16ntEFGNVB9SvWGxc3m2hZB/+vgwVcYxVXrL59P0i3oOk3mh/GezCrgnuNjKdiwhijVmlgsxz4s/
	p2wsWUMO+5ViU72geTWosmuGx9BvLrhcpnlR1MtIojsOc+NmCyiFgpQUJE2jnBXujvn8o1DhLHIwn
	Z0NyzlUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPJoe-00000001WO4-2Mhq;
	Tue, 19 May 2026 12:44:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPJoa-00000001WLv-2vYZ
	for barebox@lists.infradead.org;
	Tue, 19 May 2026 12:44:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPJoY-0008Jr-JD; Tue, 19 May 2026 14:44:50 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPJoX-000lWx-38;
	Tue, 19 May 2026 14:44:50 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPJoY-0000000FFpp-1mGV;
	Tue, 19 May 2026 14:44:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 19 May 2026 14:44:47 +0200
Message-ID: <20260519124448.3635366-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_054452_732559_395BAE93 
X-CRM114-Status: GOOD (  10.82  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] fs: ubifs: zero initialize allocated inode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

UBIFS uses kmem_cache_alloc() to allocate an ubifs_inode. The memory
returned from kmem_cache_alloc() is not zeroed. ubifs_alloc_inode()
zeroes all fields in the ubifs_inode except the embedded struct inode.
In Linux this is done in the kmem_cache constructor function which calls
inode_init_once(). In barebox we have the constructor function as well,
but we don't have an equivalent of inode_init_once(), so the constructor
is empty.  zero the inode in the constructor instead so that barebox
gets a zeroed inode.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ubifs/super.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/fs/ubifs/super.c b/fs/ubifs/super.c
index 45037b42ea..4022270d4c 100644
--- a/fs/ubifs/super.c
+++ b/fs/ubifs/super.c
@@ -1128,6 +1128,7 @@ static void kill_ubifs_super(struct super_block *s)
  */
 static void inode_slab_ctor(void *obj)
 {
+	memset(obj, 0, sizeof(struct inode));
 }
 
 static int __init ubifs_init(void)
-- 
2.47.3



