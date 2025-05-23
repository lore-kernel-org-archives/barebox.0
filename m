Delivery-date: Fri, 23 May 2025 11:22:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uIObx-001qa9-14
	for lore@lore.pengutronix.de;
	Fri, 23 May 2025 11:22:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uIObw-0002we-RA
	for lore@pengutronix.de; Fri, 23 May 2025 11:22:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=H8zfhVp/W4raXthdZ6inpokZaLhKdgaD7WISG4AzMrk=; b=RP+0CVfmxbORDsssw7Vvzo54sP
	YigdWzmOMyxYsU+uHY9wDObR94VmB47cjc8lZS1HfBrBJZOdIhUcaqc+A0CfFN5he0IuXCuw09LY5
	jvo/gqIvN9afBM5nzAZYgczgg2hUxpxQse3DJTqAbG8BnMevq0JRRQBJkhG8xkTBOVUMki6BQhGoB
	03C3xFU13+dPQ8yK5a9w6L0BYH+pOFMovV8NW0oaQo3AAoQsny5nMDhczzH6D5WzgjYgV8O5Lbspd
	G+KFHs8EyBo6XduE7NIZhOXea+JaLdqmIsMTU75YdqYuIlHl8mEAqngTH/sNUL54iYRl1DROtBlf0
	gaJGSqMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIObQ-00000003Qig-1YjZ;
	Fri, 23 May 2025 09:22:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIOYf-00000003QNk-1hDo
	for barebox@lists.infradead.org;
	Fri, 23 May 2025 09:19:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1uIOYc-0001M2-RD; Fri, 23 May 2025 11:19:14 +0200
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <rhi@pengutronix.de>)
	id 1uIOYc-000sSH-28;
	Fri, 23 May 2025 11:19:14 +0200
Received: from rhi by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <rhi@pengutronix.de>)
	id 1uIOYc-00ByYK-1z;
	Fri, 23 May 2025 11:19:14 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>
Date: Fri, 23 May 2025 11:19:11 +0200
Message-Id: <20250523091911.2854126-1-rhi@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250523_021917_441778_1FBAB61B 
X-CRM114-Status: UNSURE (   8.25  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] envfs: remove unused symbols
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

These symbols were once introduced with the fork from U-Boot, but they
were never used anywhere.

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 include/envfs.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/include/envfs.h b/include/envfs.h
index a6614c0a15ee..a74f574722fa 100644
--- a/include/envfs.h
+++ b/include/envfs.h
@@ -14,8 +14,6 @@
 #define ENVFS_MAGIC		    0x798fba79	/* some random number */
 #define ENVFS_INODE_MAGIC	0x67a8c78d
 #define ENVFS_INODE_END_MAGIC	0x68a8c78d
-#define ENVFS_END_MAGIC		0x6a87d6cd
-#define ENVFS_SIGNATURE	"barebox envfs"
 
 struct envfs_inode {
 	uint32_t magic;	/* ENVFS_INODE_MAGIC */
-- 
2.39.5



