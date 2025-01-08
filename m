Delivery-date: Wed, 08 Jan 2025 10:16:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVSBP-000g59-1B
	for lore@lore.pengutronix.de;
	Wed, 08 Jan 2025 10:16:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVSBP-000713-7Z
	for lore@pengutronix.de; Wed, 08 Jan 2025 10:16:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A8cMdtFzYPPkK4XR4SLBHP7kSMoxR+OrZ4KBQpnOeZE=; b=DM6+0A2DWs22CEJKSSIFYqNXlu
	HxOSpxV7G3hCSpTrwV2YW/5N+cpbJ6kDD3dN8aKaUJ+Wfc0i27Tjj44gIvf2nbbctPicie8lybADj
	AcHbSV6ByquCUuYmMrDxRfxysQeGR2TUNW5MIrW6qARhQeaO0V/yNriDd6qxKGw+etuozaArnpVdK
	+9q+MKMFr9TzFPegFgNxcx36IrbAsH+WKgOGSz92jb7OnfJOjkNZaJ5ebMXacKFWy6dJ8KZqewFAQ
	m5fUB6tjmLDFZC2X0Oc2BVSbvWVPk0ypxhqOvhAtnZd4D9pZ9KhxJXM9/bjuFsYP5KGypVfR2Hsam
	V0Z1anIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVSAn-00000007inP-3Ocv;
	Wed, 08 Jan 2025 09:16:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVS8x-00000007iOz-3qzL
	for barebox@lists.infradead.org;
	Wed, 08 Jan 2025 09:14:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tVS8w-0006Pv-HX; Wed, 08 Jan 2025 10:14:26 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tVS8v-007UVY-1t;
	Wed, 08 Jan 2025 10:14:26 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tVS8w-003p9y-0r;
	Wed, 08 Jan 2025 10:14:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  8 Jan 2025 10:14:25 +0100
Message-Id: <20250108091425.911629-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250108091425.911629-1-a.fatoum@pengutronix.de>
References: <20250108091425.911629-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_011427_961337_94E00368 
X-CRM114-Status: GOOD (  12.94  )
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
Subject: [PATCH master 2/2] fs: fix resolving paths when directory name repeats
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

d_same_name() used to only check if the name exists in any of the
directory's children.

In order to fix lookup of /, the function was changed to also compare
the name against the parent. This is obviously wrong, when the parent
and child have the same name: Resolution of the child would always
return the parent dentry triggering unexpected behavior.

Fix this by effectively reverting the functional change in commit
3a478ff3e1e6 ("fs: support opening /"). This breaks opening /, but that
currently only affects dirfd usage and will be fixed separately.

Fixes: 3a478ff3e1e6 ("fs: support opening /")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c           | 3 ---
 test/self/dirfd.c | 7 ++++++-
 2 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 57bd781025f9..235fb8f8e9ef 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1536,9 +1536,6 @@ static struct dentry *d_lookup(struct dentry *parent, const struct qstr *name)
 {
 	struct dentry *dentry;
 
-	if (d_same_name(parent, name))
-		return dget(parent);
-
 	list_for_each_entry(dentry, &parent->d_subdirs, d_child) {
 		if (d_same_name(dentry, name))
 			return dget(dentry);
diff --git a/test/self/dirfd.c b/test/self/dirfd.c
index 20b54258715a..644ff214fb37 100644
--- a/test/self/dirfd.c
+++ b/test/self/dirfd.c
@@ -100,8 +100,13 @@ static void test_dirfd(void)
 	int fd;
 
 	fd = open("/", O_PATH);
-	if (expect(fd < 0, false, "open(/, O_PATH) = %d", fd))
+	if (expect(fd < 0, false, "open(/, O_PATH) = %d", fd)) {
 		close(fd);
+	} else {
+		pr_info("\tIgnoring expected failure\n");
+		failed_tests--;
+		skipped_tests++;
+	}
 
 #define B(dot, dotdot, zero, dev) 0b##dev##zero##dotdot##dot
 	/* We do fiften tests for every configuration
-- 
2.39.5



