Delivery-date: Wed, 26 Mar 2025 18:26:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txUWK-004WtH-2T
	for lore@lore.pengutronix.de;
	Wed, 26 Mar 2025 18:26:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txUWJ-0007pg-Sw
	for lore@pengutronix.de; Wed, 26 Mar 2025 18:26:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=unF0gMslfv/wncKLttFXCk7rrpEeyyaDJiLYfUhqodE=; b=QFXnsuMFaaqvPt3QeNZDsmGsTu
	V45f5f5ay6LqkqwASF5+WPyyJ2z2zUAvIzaN3xOobPbR+1mOslt13IPcjpH0/TySdqq/4TZ2cAcu7
	wTS5qjHWF1GLDYGTTL4NIYJCjhTbzwk3nNBNfMd4eJv3LKVGLBuU2g7wqKIWelBI5sxPdtcPJz6IH
	xLlMzEJk8YLOsLQ3nzAwjrLGvs2jVbF5B9Q+rOXa9lnLhc0x06oznNvi2fo6uA6EFqAw+SMVheOw/
	MqdY8SoTbxtYybIUre1vXTpb3anw/Hyg5NCjSEHnc1kOs3EeHI4ph5e5Br5hLVAj4t2wXcjmqMplH
	zaAvHHzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txUVd-00000009ASf-46ZM;
	Wed, 26 Mar 2025 17:25:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txU6u-0000000963P-42ab
	for barebox@lists.infradead.org;
	Wed, 26 Mar 2025 17:00:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txU6t-0003Td-J9; Wed, 26 Mar 2025 18:00:11 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txU6t-001mmM-1H;
	Wed, 26 Mar 2025 18:00:11 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txU6t-002oSB-0y;
	Wed, 26 Mar 2025 18:00:11 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 26 Mar 2025 18:00:08 +0100
Message-Id: <20250326170010.670379-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250326_100013_006231_F9B5E426 
X-CRM114-Status: UNSURE (   9.82  )
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
Subject: [PATCH 1/3] fs: squashfs: drop unused struct squashfs_dir definition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The definition is at the end of the file too late to be used and indeed
it's used nowhere, so drop it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/squashfs/squashfs.c | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/fs/squashfs/squashfs.c b/fs/squashfs/squashfs.c
index 5441271e45f1..7ae8c1296b87 100644
--- a/fs/squashfs/squashfs.c
+++ b/fs/squashfs/squashfs.c
@@ -243,17 +243,6 @@ static int squashfs_read(struct device *_dev, struct file *f, void *buf,
 	return insize;
 }
 
-struct squashfs_dir {
-	struct file file;
-	struct dentry dentry;
-	struct dentry root_dentry;
-	struct inode inode;
-	struct qstr nm;
-	DIR dir;
-	char d_name[256];
-	char root_d_name[256];
-};
-
 static struct fs_driver squashfs_driver = {
 	.read		= squashfs_read,
 	.type		= filetype_squashfs,
-- 
2.39.5



