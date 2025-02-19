Delivery-date: Wed, 19 Feb 2025 16:26:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tkly3-004MH0-0E
	for lore@lore.pengutronix.de;
	Wed, 19 Feb 2025 16:26:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tkly1-0000SZ-Rc
	for lore@pengutronix.de; Wed, 19 Feb 2025 16:26:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gs02pE732Xem10hvXibYsH5GFvQvKyfu7FO4q31ODg4=; b=PU8q7cLs/KWDVw
	8nfIxpY+AvzCGsHTNDXkSFzrZ5FZi5z0V2/IhZpi3fzLjrP8CGKeCAkME4J3fnh9lnrrNWHTydgWj
	dzFHB9IMBMcXStkrO0l6SrEhITA3017U8fu0vQzqC4dWdysXpXUDNG3IHaeN35kIj0igzlNJv+6m5
	Dn+m38T60TxCLlud8EaW3TiXCt/tp9UI6dHDrJeWRIe5TanSkNj1Ljt7nGE05OozO5n5KS8APpdOa
	HosxkyU7MNjW0L1iqWIjtvZQ3wVCbKL1UjgnT+qmBmcyTBg2TCZwK5GS1Zyskv6XbL6ETT77vp5lH
	SdcsOznabncZidNliISg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tklxm-0000000DXPK-0Q1J;
	Wed, 19 Feb 2025 15:26:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkkuf-0000000DFBW-1qVa
	for barebox@bombadil.infradead.org;
	Wed, 19 Feb 2025 14:18:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=gs02pE732Xem10hvXibYsH5GFvQvKyfu7FO4q31ODg4=; b=LWcoaAoAkNwCrsdXC7O1L/ugui
	v4gNsOz17z9/IHFUCO99rZLoPTuqNEKEdGAeYfJXMH62jiHeJy3puvBAcmD2MuLqmVIjSSffqKwlj
	rESqZ4FozBgJ1eTFcxjc4CXe+QvIQaKz7cxAVN6BQY74PSWrv3VWrTtfCJ9DudjKVj/1NU5X95WSc
	PIrlVIfmPiFBSUrbYnfBAbCVc3D7lnC4AQ84av2ExDkUoQqyy+1+EDfoIRqcSCKafuUGJ+4DYtncw
	/KuP3LdNUC0KxNpIOGHQQ+yj1WyfqTKdCpgwV31UO1F3GT8z7KSpmnxJgLjpYfRziOCz5e8Hcx4P2
	sNy0nH7g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkkuc-00000002BER-1sIS
	for barebox@lists.infradead.org;
	Wed, 19 Feb 2025 14:18:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tkkuZ-0005QJ-Ay; Wed, 19 Feb 2025 15:18:51 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tkkuZ-001mVy-0L;
	Wed, 19 Feb 2025 15:18:51 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tkkuY-0081Wd-3C;
	Wed, 19 Feb 2025 15:18:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 19 Feb 2025 15:18:43 +0100
Message-Id: <20250219141844.1912413-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250219141844.1912413-1-s.hauer@pengutronix.de>
References: <20250219141844.1912413-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250219_141854_744758_335B33FA 
X-CRM114-Status: GOOD (  13.40  )
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
Cc: Jonathan Bar Or <jonathanbaror@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/5] CVE-2025-26725: fs: jffs2: fix malloc(size + constant) buffer overflow issues
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The pattern malloc(size + constant) is dangerous when size can be
manipulated by an attacker. In that case 'size' can be manipulated
in a way that 'size + constant' is 0 due to integer overflow. The
result is a zero sized buffer to which is then data written to.

Avoid this by using size_add() and struct_size() instead.

Reported-by: Jonathan Bar Or <jonathanbaror@gmail.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/jffs2/malloc.c    | 4 ++--
 fs/jffs2/nodelist.h  | 2 +-
 fs/jffs2/readinode.c | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/fs/jffs2/malloc.c b/fs/jffs2/malloc.c
index e0e29fa648..61c2430c18 100644
--- a/fs/jffs2/malloc.c
+++ b/fs/jffs2/malloc.c
@@ -15,10 +15,10 @@
 #include <linux/jffs2.h>
 #include "nodelist.h"
 
-struct jffs2_full_dirent *jffs2_alloc_full_dirent(int namesize)
+struct jffs2_full_dirent *jffs2_alloc_full_dirent(size_t namesize)
 {
 	struct jffs2_full_dirent *ret;
-	ret = kmalloc(sizeof(*ret) + namesize, GFP_KERNEL);
+	ret = kmalloc(struct_size(ret, name, namesize), GFP_KERNEL);
 	dbg_memalloc("%p\n", ret);
 	return ret;
 }
diff --git a/fs/jffs2/nodelist.h b/fs/jffs2/nodelist.h
index d8687319c7..28b35d6d58 100644
--- a/fs/jffs2/nodelist.h
+++ b/fs/jffs2/nodelist.h
@@ -440,7 +440,7 @@ void jffs2_do_clear_inode(struct jffs2_sb_info *c, struct jffs2_inode_info *f);
 
 /* malloc.c */
 
-struct jffs2_full_dirent *jffs2_alloc_full_dirent(int namesize);
+struct jffs2_full_dirent *jffs2_alloc_full_dirent(size_t namesize);
 void jffs2_free_full_dirent(struct jffs2_full_dirent *);
 struct jffs2_full_dnode *jffs2_alloc_full_dnode(void);
 void jffs2_free_full_dnode(struct jffs2_full_dnode *dnode);
diff --git a/fs/jffs2/readinode.c b/fs/jffs2/readinode.c
index 605130d60c..4634ee5818 100644
--- a/fs/jffs2/readinode.c
+++ b/fs/jffs2/readinode.c
@@ -601,7 +601,7 @@ static inline int read_direntry(struct jffs2_sb_info *c, struct jffs2_raw_node_r
 		spin_unlock(&c->erase_completion_lock);
 	}
 
-	fd = jffs2_alloc_full_dirent(rd->nsize + 1);
+	fd = jffs2_alloc_full_dirent(size_add(rd->nsize, 1));
 	if (unlikely(!fd))
 		return -ENOMEM;
 
-- 
2.39.5



