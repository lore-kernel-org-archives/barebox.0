Delivery-date: Thu, 14 Jul 2022 21:37:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oC4e5-0084nq-Cl
	for lore@lore.pengutronix.de; Thu, 14 Jul 2022 21:37:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oC4e3-0002dT-Fb
	for lore@pengutronix.de; Thu, 14 Jul 2022 21:37:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WLM7NHnqD/ZXzg6PuPsSueQKrcc3WCYKzB0l7d1xCt4=; b=Z1FiCYAE5P+QIj
	sMowBqhDK1qrhEQHeQAyez6Hs59mGbTyGXtHYduZ620c9xxRGrGJz1NcH4g/0yJr2D98EHSWwcfec
	cINWkZWX47SyOa8pvCQjHu7Y6puZMEqxV6pW2423sfSmE23HTUjWSZgjiI5cmrTrOeqrYKfaCAvRn
	utQZ5EIllM8Oxc3HRa2RFeJ5dJHm4eNKjBYnbdP44smrboclqsD587roQ2ef/Ew5q2GolcEhOhdCE
	klGra4tNIG38WXDJ4YalA9QxTQzXGXhNIMLOGORoAFyr0eCu2GoAtwWG4H/H6icAK7yUlzJ5ppZm5
	BHOvqd5fM8a6smCAHrmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oC4cU-000mBs-Sx; Thu, 14 Jul 2022 19:35:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oC4cP-000lyy-Uj
	for barebox@lists.infradead.org; Thu, 14 Jul 2022 19:35:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oC4cL-0002Lh-Pg; Thu, 14 Jul 2022 21:35:21 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oC4cK-000yIV-0w; Thu, 14 Jul 2022 21:35:20 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oC4cJ-008xIE-2u; Thu, 14 Jul 2022 21:35:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 14 Jul 2022 21:35:09 +0200
Message-Id: <20220714193509.2134503-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_123526_005762_F8C77A7C 
X-CRM114-Status: GOOD (  10.63  )
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
Cc: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] fs: Check if automount actually mounts something
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

An automount command that returns successfully but doesn't mount
anything makes barebox hang as can be reproduced with:

automount -d /mnt/foo true
ls /mnt/foo

Check if the current dentry is a mountpoint after running the automount
command, otherwise return with an error from automount_mount().

Reported-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index 460fc2f7f1..bd6f144742 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -3191,6 +3191,10 @@ static int automount_mount(struct dentry *dentry)
 			printf("running automount command '%s' failed\n",
 					am->cmd);
 			ret = -ENODEV;
+		} else if (!(dentry->d_flags & DCACHE_MOUNTED)) {
+			printf("automount command '%s' didn't mount anything\n",
+					am->cmd);
+			ret = -ENODEV;
 		}
 
 		break;
-- 
2.30.2



