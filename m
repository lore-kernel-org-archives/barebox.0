Delivery-date: Mon, 01 Sep 2025 15:50:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ut4vG-006vTj-1o
	for lore@lore.pengutronix.de;
	Mon, 01 Sep 2025 15:50:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ut4vF-0006a2-Bz
	for lore@pengutronix.de; Mon, 01 Sep 2025 15:50:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=CsGkfOjJy59ZuUIJJnEz+7nqYSbO8xCPLhqu6Pp2F7M=; b=DO7nNgG1qeue4+FlU2ojD3XDqU
	13oIb3yp7w9zbz6J3WEgDQW68nbeWjmik4acNTweaeijH7pmbrng8DR/v/5/dcxATvGrvh7vxiMkS
	Setv/1fkLUSpUAPQoTwvS31QuzYGRCYGXNUd8010GslyqvHanoEqaq8NtvUY8a0XNpSI8lyNGCkDO
	AXuJFwH9FsWFHtF2BZCv6STOXWSGNDvnvdeiUkVK5tkaXv0uZrjJjUIi2W17WSDT57M7jx2VrEXBO
	WUHvastAAoVKzRPrUEQysa6ddfLHXiohiAVU8usC0cDgkUIEoxR1tIGiv+b1nWStNpEmA3fDwt4eM
	HeeXFL8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut4ua-0000000CkHv-48AL;
	Mon, 01 Sep 2025 13:49:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut2rS-0000000C4zI-3yHk
	for barebox@lists.infradead.org;
	Mon, 01 Sep 2025 11:38:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ut2rR-0003Uj-Gi; Mon, 01 Sep 2025 13:38:09 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ut2rR-003DN0-14;
	Mon, 01 Sep 2025 13:38:09 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ut2rR-0000000AREM-0yeo;
	Mon, 01 Sep 2025 13:38:09 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Sep 2025 13:38:07 +0200
Message-ID: <20250901113808.2487894-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250901_043810_988734_579482BA 
X-CRM114-Status: GOOD (  11.68  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fs: jffs2: silence false positive by always initializing variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

buffer is not initialized when pointed is true, but that can't
happen, because, unlike Linux, we hardcode the value at 0.

clang warns about that though, so fix the warning by always
initializing buffer.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/jffs2/readinode.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/jffs2/readinode.c b/fs/jffs2/readinode.c
index d56001e5cbb8..c205917619cd 100644
--- a/fs/jffs2/readinode.c
+++ b/fs/jffs2/readinode.c
@@ -30,7 +30,7 @@ static int check_node_data(struct jffs2_sb_info *c, struct jffs2_tmp_dnode_info
 	struct jffs2_raw_node_ref *ref = tn->fn->raw;
 	int err = 0, pointed = 0;
 	struct jffs2_eraseblock *jeb;
-	unsigned char *buffer;
+	unsigned char *buffer = NULL;
 	uint32_t crc, ofs, len;
 	size_t retlen;
 
-- 
2.47.2



