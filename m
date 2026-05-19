Delivery-date: Tue, 19 May 2026 15:29:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPKW4-001VeR-0q
	for lore@lore.pengutronix.de;
	Tue, 19 May 2026 15:29:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPKW3-0005XQ-N2
	for lore@pengutronix.de; Tue, 19 May 2026 15:29:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tkFr3k2EO9D+R2ZLGxj2M/FMtlswhgpRPLynVkiWSVU=; b=Hq6tKKy02ZpYdk7qhJ/vXcXhT0
	4eMhvO6bjamo+xCZtEvDfnrwlk5cfbBy/NulcvuEoSkm3o/wc8Kk38lh/2N3KWqh/dZ95td1kNREU
	oRsxwSGR/84tLGJwI+TjPN0QrucjT+EY+tIaiIL3FSPTLHP3f0cIo4/2UYlAeADijyNpcKcDgiYOf
	YuJaw4Btc7jPR6NTQDQszL8gbtzN68npXW5GKrNkaPQSvGdYERHtLK76v2GY34EUueKYAbsvKpiA/
	j5UHoethvfDiUAqlRrF6cROFkpAJ1JHxKo3YjgzvbHwzmdMc1AUIT4y65KVzu1JeKeJIkb9X90909
	qs5mwglw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPKVB-00000001f71-2aVR;
	Tue, 19 May 2026 13:28:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPKV8-00000001f3j-3Ocr
	for barebox@lists.infradead.org;
	Tue, 19 May 2026 13:28:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPKV6-0005PZ-7l; Tue, 19 May 2026 15:28:48 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPKV5-000ls4-1z;
	Tue, 19 May 2026 15:28:48 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPKV6-00000002VD4-0Kvk;
	Tue, 19 May 2026 15:28:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 19 May 2026 15:28:46 +0200
Message-ID: <20260519132846.596555-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260519132846.596555-1-s.hauer@pengutronix.de>
References: <20260519132846.596555-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_062850_849426_685ADAC2 
X-CRM114-Status: GOOD (  13.35  )
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
Subject: [PATCH 2/2] fs: jffs2: zero initialize allocated inode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

JFFS2 uses kmem_cache_alloc() to allocate an ubifs_inode. The memory
returned from kmem_cache_alloc() is not zeroed. jffs2_alloc_inode()
zeroes all fields in the ubifs_inode except the embedded struct inode.
In Linux this is done in the kmem_cache constructor function which calls
inode_init_once(). In barebox we have the constructor function as well,
but we don't have an equivalent of inode_init_once(), so the constructor
is empty.  zero the inode in the constructor instead so that barebox
gets a zeroed inode.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/jffs2/super.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/fs/jffs2/super.c b/fs/jffs2/super.c
index b9a5b99744..6546943173 100644
--- a/fs/jffs2/super.c
+++ b/fs/jffs2/super.c
@@ -55,8 +55,11 @@ static void jffs2_destroy_inode(struct inode *inode)
 	kmem_cache_free(jffs2_inode_cachep, f);
 }
 
-static void jffs2_i_init_once(void *foo)
+static void jffs2_i_init_once(void *obj)
 {
+	struct jffs2_inode_info *f = obj;
+
+	memset(&f->vfs_inode, 0, sizeof(f->vfs_inode));
 }
 
 static const struct super_operations jffs2_super_operations =
-- 
2.47.3



