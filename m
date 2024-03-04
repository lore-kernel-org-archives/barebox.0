Delivery-date: Mon, 04 Mar 2024 20:08:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDfz-008dXb-1u
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:08:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDfy-0003UT-EZ
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:08:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cIYvhfeLu4bEKJxsw2DmK9OXDcqGAhl6CkcVh3+TDiw=; b=WCPlOpNwOctmoW7BlWe5ZS1VSB
	si/Tplk2k3CVYLkkMDwWZU2muqg0ztTwFYIADwsX4xIZ320cJxA84xjMUpo7oCkmsVoz0wK4Tlcnt
	HCNi3JpKk6c7nCskHOh+5IHfC5dA+jE54BT2w+tgvDJAHSNggSVF6M7nB0/RIMUu6LAhdYAoLh8nH
	wKFHJiIGVQT6IBaNQyzeKLbU644mUwD7U+j+HIU9Hw7QrVukAd+e0KfA8npe0y5Utg2PyUmQEgCkq
	44E1NNbV9AdSUiLz3zkQdrY63b++fvJEGmI9pgqKM4oaSlKa9jHPL9EjOoaDesgEdfViMq+bhKPrG
	Su9SFSsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDfN-0000000ALpz-1Zz5;
	Mon, 04 Mar 2024 19:08:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaQ-0000000AIKk-3gZJ
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:03:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaH-0006BL-F2; Mon, 04 Mar 2024 20:02:45 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaG-004PKk-Us; Mon, 04 Mar 2024 20:02:44 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYK-00Ed9V-1c;
	Mon, 04 Mar 2024 20:00:45 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:59:17 +0100
Message-Id: <20240304190038.3486881-33-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_110255_275976_516B383C 
X-CRM114-Status: GOOD (  11.40  )
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
Subject: [PATCH v2 032/113] fs: remove unused member from struct nameidata
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A number of members in the struct are either unused or only ever written
and never read. Drop them to tidy up the code.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index ca1bcef1adf0..be0b38d8bc30 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1605,21 +1605,16 @@ enum {WALK_FOLLOW = 1, WALK_MORE = 2};
 struct nameidata {
 	struct path	path;
 	struct qstr	last;
-	struct inode	*inode; /* path.dentry.d_inode */
 	unsigned int	flags;
-	unsigned	seq, m_seq;
 	int		last_type;
 	unsigned	depth;
 	int		total_link_count;
 	struct saved {
 		struct path link;
 		const char *name;
-		unsigned seq;
 	} *stack, internal[EMBEDDED_LEVELS];
 	struct filename	*name;
-	struct nameidata *saved;
 	struct inode	*link_inode;
-	unsigned	root_seq;
 };
 
 struct filename {
@@ -1879,8 +1874,6 @@ static int follow_dotdot(struct nameidata *nd)
 
 	follow_mount(&nd->path);
 
-	nd->inode = nd->path.dentry->d_inode;
-
 	return 0;
 }
 
@@ -1961,7 +1954,6 @@ static inline int step_into(struct nameidata *nd, struct path *path,
 	   !(flags & WALK_FOLLOW || nd->flags & LOOKUP_FOLLOW)) {
 		/* not a symlink or should not follow */
 		path_to_nameidata(path, nd);
-		nd->inode = inode;
 		return 0;
 	}
 
@@ -2185,7 +2177,6 @@ static const char *path_init(struct nameidata *nd, unsigned flags)
 		return s;
 	} else {
 		get_pwd(&nd->path);
-		nd->inode = nd->path.dentry->d_inode;
 		return s;
 	}
 
-- 
2.39.2



