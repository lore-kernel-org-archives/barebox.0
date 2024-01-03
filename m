Delivery-date: Wed, 03 Jan 2024 19:34:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL64w-002NwH-2y
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:34:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL64r-00062o-Nr
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:34:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vwSEaZfeWK2yjavStTZ5NcU45c+O7j+2yg6sdDLZbB8=; b=plHMFogC5cb7/nyw8PbOkD+6pn
	oloeHb4iIoa4s5ENbapkHuPA25x/pQZpDds1vPgBM8+M/DcIj49hujTMcn788xKrPbaEtxkMQs3AW
	G/E3DTh5R85MzK2kS1n/ZxSEvjg8U9VdqeLn6ZeS/eyqqPcUPXLGV0iBUYX1kzo23grT7pLMigwjd
	zR2gLz+MaTEVK18J1JdU4pxxaeocSyxND1GCr/nPx6q93/QHUeRfUhpHutdij+QGSKyh7sRtmVaUi
	sATfUrYys6fSW2FAgBQJbyxBpWB9Tnx4lmxsn5iPo0ih9FVsSQOgs8EE8Vlpmed45uhGZDQhgh+uQ
	/rmp7cMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL63A-00BjgU-31;
	Wed, 03 Jan 2024 18:33:08 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61G-00BhKw-30
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=vwSEaZfeWK2yjavStTZ5NcU45c+O7j+2yg6sdDLZbB8=; b=nkEP7cg22oB7UIO4mmwxWXmb4P
	xVLSQTYJe+2AqGRHUfO7hQpVIUhkni0+mmUIPr3jQyKh3VXjPJtsf1Zuf76WlWPVx/aSJ9itCjJNP
	prSUlNbPd5K0SZSzZQTVn7Am2LB6bZ+s7iUiWR6ZxQcqlpSpXPoTv8S4PnvfQ2FQoQ4v89v4K8Y/r
	eij1v/sUynInzXX6YwjNeyXWRlJbc59oPDsoRuHN5FIDCclwqGVo4YP2OnZAR0T2vL3nnPU6Myfsk
	9RlkaH7iy2QokT1szAl41Ks/lYKrBWQJlrio7zZW9aEfNDq1mVPPI7Arg/hL7gf/I9RjTDfRmIHwZ
	iEWDC9lA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL615-005eBw-2Y
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL614-0001j1-FM; Wed, 03 Jan 2024 19:30:58 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL614-000AyP-2V; Wed, 03 Jan 2024 19:30:58 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k2-001j4X-1Z;
	Wed, 03 Jan 2024 19:13:22 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:11:54 +0100
Message-Id: <20240103181312.409668-35-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183059_930524_7029B973 
X-CRM114-Status: GOOD (  12.13  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 034/112] fs: set current working dir directly when mounting root
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



