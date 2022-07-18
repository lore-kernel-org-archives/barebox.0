Delivery-date: Mon, 18 Jul 2022 14:25:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oDPoK-00D7Bn-IQ
	for lore@lore.pengutronix.de; Mon, 18 Jul 2022 14:25:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oDPoH-00084R-1Y
	for lore@pengutronix.de; Mon, 18 Jul 2022 14:25:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+dVd0kb3GGyDOJJy5rK1AfkduYptZpgTkOltpO3p1zg=; b=24UeM3ayz7VTS9XsbHPM5sa0Vv
	IuZlqeJdYdeNNOG/g42Q85IOMGAA1Nw5TIiBmU/zj2rup6jsUnRdH1icetbe/L4/yXNqNVUCi+bbE
	ohrVHgaXaejpmyUOtQdBhaz6oC3C8/Vl/RctEtXN18ZbGkamNBHBYosos/M5nna7UPRpjgBEhtoO+
	7lbC9N8PvSA+sy1zZjObaJWnhpFcwSA3sIiKL5iKarsmsoJG13odGiqRJCi9Y46EdUdt57XHwdCZt
	MBgjpG4rXIMNAJT7fSlBQrpahdnovpx2fXuY1KwPv5Mt3kA7mDqp5W2G7NLrxu1j46NHpCI/XHrpK
	GonUxcXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPmm-00DDwA-Qv; Mon, 18 Jul 2022 12:23:40 +0000
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPmY-00DDXc-N3
	for barebox@lists.infradead.org; Mon, 18 Jul 2022 12:23:28 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 26ICMpXm575046
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Mon, 18 Jul 2022 14:22:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1658146971;
	bh=+dVd0kb3GGyDOJJy5rK1AfkduYptZpgTkOltpO3p1zg=; l=2176;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=vhYyD1+Om6G+RyTzALftW6ukvpO4RaV33tFLe3PbB0u8UvdC8dyK70sKPukH2TtaM
	 OL3AofN5StQVxtMOGAvfwVXdQxUyMHeQm6WfRp+CS/b2kKK/kxEyGY06PzZxQlBkot
	 YZjQ33+UG6GPFNgpGjB+fMoHLYPZMVKi5lJl31pcd27bzHnBxda1p+ub30u1t0p+pl
	 RgKLHtDacFMQ4KZvBcgJ1PfxGACjy0eqw9N2OGd/ti7YJVHbX6tBASJsdDvGRNhJfE
	 iyZK33tRFsh5+5QzFiidwHvtHlaxDkJFO0+9QOM7JY+uu+kZpNZoFKgDTBVGltulWl
	 4I9vVGHThT1Bg==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 26ICMZiJ487155
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Mon, 18 Jul 2022 14:22:35 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ( [192.168.12.73]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 6FE4E25DB53; Mon, 18 Jul 2022 14:22:33 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 26ICMW4Z549155
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 18 Jul 2022 14:22:32 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oDPlg-002g3J-QM;
	Mon, 18 Jul 2022 14:22:32 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Mon, 18 Jul 2022 14:22:20 +0200
Message-Id: <e73274e52d0ef8e0dc0461f0ef8580b85fa68ff7.1658144543.git.enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <cover.1658144543.git.enrico.scholz@sigma-chemnitz.de>
References: <cover.1658144543.git.enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220718_052327_073989_DF0201EE 
X-CRM114-Status: GOOD (  12.33  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-104.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 05/13] tftp: record whether tftp file is opened for lookup operation only
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Opening a tftp is done in two steps: at first `tftp_lookup()` is
called to get the filesize and then it is opened again and data are
read.

The `tftp_lookup()` call sends only a RRQ/WRQ, reads then the "tsize"
from the response and closes the transfer by sending an error datagram.
The tftp server will send a full data window.

To prevent unneeded traffic, later patches set parameters to reduce
the size of the server response.

We need knowledge about type of operation which is recorded in an
"is_getattr" attribute.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 7ad03ae5cdc6..ab1af0e9084c 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -84,6 +84,7 @@ struct file_priv {
 	void *buf;
 	int blocksize;
 	int block_requested;
+	bool is_getattr;
 };
 
 struct tftp_priv {
@@ -372,7 +373,7 @@ static void tftp_handler(void *ctx, char *packet, unsigned len)
 }
 
 static struct file_priv *tftp_do_open(struct device_d *dev,
-		int accmode, struct dentry *dentry)
+		int accmode, struct dentry *dentry, bool is_getattr)
 {
 	struct fs_device_d *fsdev = dev_to_fs_device(dev);
 	struct file_priv *priv;
@@ -400,6 +401,7 @@ static struct file_priv *tftp_do_open(struct device_d *dev,
 	priv->filename = dpath(dentry, fsdev->vfsmount.mnt_root);
 	priv->blocksize = TFTP_BLOCK_SIZE;
 	priv->block_requested = -1;
+	priv->is_getattr = is_getattr;
 
 	priv->fifo = kfifo_alloc(TFTP_FIFO_SIZE);
 	if (!priv->fifo) {
@@ -451,7 +453,7 @@ static int tftp_open(struct device_d *dev, FILE *file, const char *filename)
 {
 	struct file_priv *priv;
 
-	priv = tftp_do_open(dev, file->flags, file->dentry);
+	priv = tftp_do_open(dev, file->flags, file->dentry, false);
 	if (IS_ERR(priv))
 		return PTR_ERR(priv);
 
@@ -667,7 +669,7 @@ static struct dentry *tftp_lookup(struct inode *dir, struct dentry *dentry,
 	struct file_priv *priv;
 	loff_t filesize;
 
-	priv = tftp_do_open(&fsdev->dev, O_RDONLY, dentry);
+	priv = tftp_do_open(&fsdev->dev, O_RDONLY, dentry, true);
 	if (IS_ERR(priv))
 		return NULL;
 
-- 
2.36.1



