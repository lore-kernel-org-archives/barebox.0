Delivery-date: Mon, 19 Jan 2026 10:47:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhlqu-002zCH-2Y
	for lore@lore.pengutronix.de;
	Mon, 19 Jan 2026 10:47:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhlqt-0004AZ-R3
	for lore@pengutronix.de; Mon, 19 Jan 2026 10:47:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Icvlt68wxv9VEWXutLkFOjRMZ9GA8UtLFMxfmR/MvpU=; b=JoG0bvuXJa2zma1skM8EKK/5CJ
	Rwx0EyBoZzKatpkI3Ok7K8tttZBkS2C/cdLO6oYfBZJKefZKkanDrQa8YLt1431Sby21bnXJPk1dv
	UFeePCpc7C/m60qjy6MStGWTceOyUzmuPn3UM9lWOMOyrUu37sGkgVKWA5Ml3Q50pVL911tR9Sxz/
	bGZYdaNajXw/GcrUo74uW+47uMlB9X7JLAuPba+xMshx8jX5SVeeyt9Vc7++8g1p8MQE7f/fVYeWA
	XIntFPuWiYo13F8VWRLRBqdM139U22iyDWPc9N5XOwqolDgD5savbQCdzwJWtC94YTLTgtPXEkraw
	AdWyYPwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhlq7-00000001f4v-1YI4;
	Mon, 19 Jan 2026 09:46:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhlq0-00000001f44-0WK5
	for barebox@lists.infradead.org;
	Mon, 19 Jan 2026 09:46:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vhlpy-0003yL-FP; Mon, 19 Jan 2026 10:46:18 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vhlpy-001OBi-35;
	Mon, 19 Jan 2026 10:46:18 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vhlpy-00000003jwj-0i2N;
	Mon, 19 Jan 2026 10:46:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 19 Jan 2026 10:46:17 +0100
Message-ID: <20260119094617.891594-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_014624_504162_55BB3FD3 
X-CRM114-Status: UNSURE (   9.57  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] fs: tmpfile_create(): add missing mntget()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

tmpfile_create() assigns the parentpath->mnt to the new file's path
without mntget() it, so we'll get unbalanced reference count when
the tmpfile is closed. Add the missing mntget().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/fs/fs.c b/fs/fs.c
index 75fd3a3ef9..43840c3a7a 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -2675,6 +2675,7 @@ static struct file *tmpfile_create(const struct path *parentpath,
 	if (!f)
 		return ERR_PTR(-EMFILE);
 
+	mntget(parentpath->mnt);
 	f->f_path.mnt = parentpath->mnt;
 	f->f_path.dentry = d_alloc_anon(&fsdev->sb);
 	f->f_flags = flags;
-- 
2.47.3



