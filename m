Delivery-date: Wed, 15 Apr 2026 12:40:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCxfU-00CNoX-2y
	for lore@lore.pengutronix.de;
	Wed, 15 Apr 2026 12:40:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCxfU-0002EA-Cv
	for lore@pengutronix.de; Wed, 15 Apr 2026 12:40:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=aPRv1agxndL9U03tOFfGET9MRhQkedCGwKzyC1ekpS4=; b=DYxguL76E+44LyvRIwolkkXeeT
	J9FCe1KuCnVH1tz2i5DVZgTZK9uauiIls7ZKYI/ggGiU8E21/QEtlMBMipf91elDRYdrns4yOYulK
	aPqr/Y8pfCFy6hVtSRbFFnYzERHZwzoQmhBSW8LlMu+0XCJe5ou+VcEi1NRAInUxUnmeZSr8CZAPk
	FWgLv8r+RO5KCFUDL1Wn1pcmiqK6aAYsqgTiYeFKf3DkXyiVNTPPQq764kCij1aXPS5xLZ2tK6I1M
	Nb4QeQRbd9jfcp4nS0M7x6lCA1z3PsoOWNhKvULMC2IuEeVVxy6YBGypOBc/pEI4TKRwDPYtIpQPa
	q0o/nOxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCxf5-00000000z2X-2Wrw;
	Wed, 15 Apr 2026 10:39:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCxf4-00000000z1s-02cC
	for barebox@lists.infradead.org;
	Wed, 15 Apr 2026 10:39:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wCxf2-00024w-6M; Wed, 15 Apr 2026 12:39:56 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wCxf2-005UtJ-00;
	Wed, 15 Apr 2026 12:39:56 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wCxf1-0000000Fua4-3odU;
	Wed, 15 Apr 2026 12:39:55 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 15 Apr 2026 12:39:54 +0200
Message-ID: <20260415103955.3792406-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260415_033958_045008_5DD3D99E 
X-CRM114-Status: GOOD (  10.77  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH master] fs: guard against unset dentry in get_fsdevice_by_dentry
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

dentry exists embedded within struct path and may not be initialized at
all places we call get_fsdevice_by_dentry().

Allow handling this gracefully by having the function return NULL
instead of dereferencing potential NULL pointers.

This issue has been detected in combination with the
"fs: fix relative path resolution when CWD is on a TFTP mount" patch
sitting in next, where the MLO runs into the NULL pointer dereference.
It has not been observed in other  configurations.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 6a73a5baa26e..c28192cb8260 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -2099,9 +2099,12 @@ static void putname(struct filename *name)
 
 static struct fs_device *get_fsdevice_by_dentry(struct dentry *dentry)
 {
-	struct super_block *sb;
+	struct super_block *sb = NULL;
 
-	sb = dentry->d_sb;
+	if (dentry)
+		sb = dentry->d_sb;
+	if (!sb)
+		return NULL;
 
 	return container_of(sb, struct fs_device, sb);
 }
-- 
2.47.3



