Delivery-date: Mon, 04 Mar 2024 20:06:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDdn-008dIn-0r
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:06:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDdk-0001VU-Tm
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:06:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R8Thm0XsD9TpGvXAfS+Y2R+mlkU7af8y8r3VOSbtMNE=; b=Xz+hoLOTJlj3b8pzzR1mx9onMB
	UzwHcBl2sqWSQXmqKBZYaBZEC4b1+TUB1lv1I/tqRFjFbfyq3zQugKg0sc2MznODdIdJMtEz+aX8K
	DiF3ZdVl38+xJWj3nz2rmPNZPux2H3ddqQTIK+XQBStL6gOYlrRfXFBIloFmc6o6lfsQmCMdJ6mXn
	J22zydn2cS+WL8OD5J++qdZ14duIBrONZfUwDidFy1v3jvSKOfrv8IcvEpGaHUw5GnAJtRPsb2ILI
	1D0sLuHayKYy7PmhLqb/9dc40Tv7to/E3DxAoZoPOMotS+VM8g6VVsBbeo/duO2feCVZvtna4Qozm
	vp40W7qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDdE-0000000AKRR-2PS2;
	Mon, 04 Mar 2024 19:05:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaL-0000000AIHP-1n2P
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:02:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaI-0006HR-Tx; Mon, 04 Mar 2024 20:02:46 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaI-004PME-D9; Mon, 04 Mar 2024 20:02:46 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYK-00Ed9V-0u;
	Mon, 04 Mar 2024 20:00:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:59:12 +0100
Message-Id: <20240304190038.3486881-28-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_110249_708606_F5D89988 
X-CRM114-Status: GOOD (  10.55  )
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
Subject: [PATCH v2 027/113] fs: turn creat into static inline helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

creat is a oneliner that can be inlined at no extra cost, so move it
into a header.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c         | 6 ------
 include/fcntl.h | 6 +++++-
 2 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index bd2f0b6294ff..7c4e2f250ea8 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -349,12 +349,6 @@ static int create(struct dentry *dir, struct dentry *dentry)
 	return inode->i_op->create(inode, dentry, S_IFREG | S_IRWXU | S_IRWXG | S_IRWXO);
 }
 
-int creat(const char *pathname, mode_t mode)
-{
-	return open(pathname, O_CREAT | O_WRONLY | O_TRUNC);
-}
-EXPORT_SYMBOL(creat);
-
 static int fsdev_truncate(struct device *dev, FILE *f, loff_t length)
 {
 	struct fs_driver *fsdrv = f->fsdev->driver;
diff --git a/include/fcntl.h b/include/fcntl.h
index 1b4cd8ad3783..06289abc4376 100644
--- a/include/fcntl.h
+++ b/include/fcntl.h
@@ -29,6 +29,10 @@
 #define O_RWSIZE_8	010000000
 
 int open(const char *pathname, int flags, ...);
-int creat(const char *pathname, mode_t mode);
+
+static inline int creat(const char *pathname, mode_t mode)
+{
+	return open(pathname, O_CREAT | O_WRONLY | O_TRUNC);
+}
 
 #endif /* __FCNTL_H */
-- 
2.39.2



