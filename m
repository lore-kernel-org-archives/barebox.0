Delivery-date: Mon, 04 Mar 2024 20:07:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDea-008dOm-2o
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:07:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDea-0002Ne-7h
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:07:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vwSEaZfeWK2yjavStTZ5NcU45c+O7j+2yg6sdDLZbB8=; b=4vWoCphuPL7Ei3u2l02oW27rio
	OjklHfrBsnXleofXlFPE0adf/stI6osGIbgA83uOPY/hs8nXUegBYN/HhCkYrTRcqe7LvTG7UG2m1
	/CrX4T0UncnT6ld+LFxWDC4wCnfwdXEDQiVXoztxGwO0BEYSwiEOcBlwxy785tT/+zB3BD7NR6W7Z
	Jm4d61mwlV7hnMjeXWjUAdgh9E3hw50DO7Dh980sr7IxAWiSsJp2mQDmC2H7kZ52TF+ADYJC+0bwA
	FgSG8jtZ/gMVkOrF6bHk5QeFLpJlZMXsse8ZCnZilldh398N85TxN437e4de/YBCAoOJAqD2TwO8A
	Ni6zPriw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDe0-0000000AKzx-3X7u;
	Mon, 04 Mar 2024 19:06:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaM-0000000AIHL-0PHz
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:02:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaI-0006H2-Q5; Mon, 04 Mar 2024 20:02:46 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaI-004PM5-9B; Mon, 04 Mar 2024 20:02:46 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYK-00Ed9V-1u;
	Mon, 04 Mar 2024 20:00:45 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:59:19 +0100
Message-Id: <20240304190038.3486881-35-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_110250_280413_86E62D8B 
X-CRM114-Status: GOOD (  12.70  )
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
Subject: [PATCH v2 034/113] fs: set current working dir directly when mounting root
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The default current working directory is the root directory, but this
can't be initialized statically, because the root directory is only
mounted at runtime. Therefore, the get_pwd accessor initializes the
current working directory on first access.

Instead we could just initialize them when we mount the root directory
and simplify the code a tiny bit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index c034f2cb9a0d..bf527f1b2d9b 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1651,11 +1651,6 @@ static inline void get_root(struct path *root)
 
 static inline void get_pwd(struct path *pwd)
 {
-	if (!cwd_dentry) {
-		cwd_dentry = d_root;
-		cwd_mnt = mnt_root;
-	}
-
 	pwd->dentry = cwd_dentry;
 	pwd->mnt = cwd_mnt;
 
@@ -3211,6 +3206,9 @@ int mount(const char *device, const char *fsname, const char *pathname,
 		fsdev->vfsmount.mountpoint = d_root;
 		fsdev->vfsmount.parent = &fsdev->vfsmount;
 		fsdev->path = xstrdup("/");
+
+		cwd_dentry = d_root;
+		cwd_mnt = mnt_root;
 	}
 
 	fsdev->vfsmount.mnt_root = fsdev->sb.s_root;
-- 
2.39.2



