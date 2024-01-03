Delivery-date: Wed, 03 Jan 2024 19:35:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL65F-002NzZ-2C
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:35:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL659-0006NJ-GR
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:35:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=T5quzTbDz1MLgNy1Ft6KnSnCY0zYCzl+fSEOO/+k6Yc=; b=N5M1XHpCVhq3S7K05GEfcNcsab
	D5/bw8w3VpFKfCuudP7Sza0LcBgPFBJaUPvqIStW3hLe2HaHh1bG9Z6drU2XrQZaqX5tTdnlcjmmE
	1KUNX5i1E7RdObFAH5JuowEW/Hj6lAqeYy7g819eKHT5C1/HLunkg7a2Y+mFVl1G5OcwftISqVHVr
	5PZgEclfzf4Yr9jeFC7v3z3Vr/XIfPGCm+mLDi7jGIoNMSHcQtoI+HyMJFUXd3fUQoBxvWDGvuETJ
	BkS+fOlg1ffahDwhPMlt1Xjj+SwP1UrbgBRaKujv+zae9O2c/cGSqqU+S/w650kW3LFfiZmgCgTNh
	Fomk4srw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL63V-00Bk06-2q;
	Wed, 03 Jan 2024 18:33:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61H-00BhL9-1M
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=T5quzTbDz1MLgNy1Ft6KnSnCY0zYCzl+fSEOO/+k6Yc=; b=YFL4os/br34mJ7pXHcDGz3kxDl
	qcEZtb6AmV2pTJ7rZzVBQAhbCIdHz5Xj2bsmgx1uz1CrxE95QibQ6i+QSXK8EWR4XBC2apQQQmfdb
	xT8aC5PQTIVEAhX7rAHBVnktv6xy6e/6lyiXM7EK8WLQQeV2KD4nZ9qz8xkLeFmEcmj4vuFmZ+Oa8
	cJ4P0BchOCb3EjUNTL328+/PBZmWfVw18ak91RGhXAK8Xfl1lgAvlLVXY/LWBVC0wSQoH5UcXmnLA
	It8va6TKy8VNsaojODli1YVzZsxCxo/xG0L2Vrw+/WCXH7ncbPsWOmVmiREWknWCPVmc+bGyB7E+C
	yFUYK+nQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL618-005eC2-2w
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL613-0001fN-Jl; Wed, 03 Jan 2024 19:30:57 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL613-000AxU-5w; Wed, 03 Jan 2024 19:30:57 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k2-001j4X-21;
	Wed, 03 Jan 2024 19:13:22 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:11:57 +0100
Message-Id: <20240103181312.409668-38-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183103_046979_2ECF9366 
X-CRM114-Status: GOOD (  15.99  )
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
Subject: [PATCH 037/112] fs: support different root directories
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A root directory is a directory that has itself as the parent.
There is only one such directory, but for chroot support we will want to
stop path resolution at a non-root directory as well.

We do this by giving struct nameidata a d_root field, which serves as a
root directory for the lookup. As we initialize it to the global root
directory, this introduces no functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 54f38aa2e63b..7fc638451f13 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1623,6 +1623,7 @@ struct nameidata {
 	} *stack, internal[EMBEDDED_LEVELS];
 	struct filename	*name;
 	struct inode	*link_inode;
+	struct dentry   *d_root;
 };
 
 struct filename {
@@ -1635,6 +1636,7 @@ static void set_nameidata(struct nameidata *p, struct filename *name)
 	p->stack = p->internal;
 	p->name = name;
 	p->total_link_count = 0;
+	p->d_root = d_root;
 }
 
 static void path_get(const struct path *path)
@@ -1820,16 +1822,16 @@ static int lookup_fast(struct nameidata *nd, struct path *path)
  * Return 1 if we went up a level and 0 if we were already at the
  * root.
  */
-static int follow_up(struct path *path)
+static int follow_up(struct nameidata *nd)
 {
-	struct vfsmount *parent, *mnt = path->mnt;
+	struct path *path = &nd->path;
+	struct vfsmount *mnt = path->mnt;
 	struct dentry *mountpoint;
 
-	parent = mnt->parent;
-	if (parent == mnt)
+	if (nd->d_root == path->dentry)
 		return 0;
 
-	mntget(parent);
+	mntget(mnt->parent);
 	mountpoint = dget(mnt->mountpoint);
 	dput(path->dentry);
 	path->dentry = mountpoint;
@@ -1871,7 +1873,7 @@ static int follow_dotdot(struct nameidata *nd)
 			break;
 		}
 
-		if (!follow_up(&nd->path))
+		if (!follow_up(nd))
 			break;
 	}
 
-- 
2.39.2



