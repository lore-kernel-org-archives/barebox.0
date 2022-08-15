Delivery-date: Mon, 15 Aug 2022 10:54:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNVrY-006EkR-Js
	for lore@lore.pengutronix.de; Mon, 15 Aug 2022 10:54:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNVrV-0002PA-O3
	for lore@pengutronix.de; Mon, 15 Aug 2022 10:54:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rss8goYlU2A05LYh7clTUFFqOkGqFNsDNlMO0uENGi4=; b=qdGSyDS8BiHxGRYg0RGGDOGIZq
	Dut0Qh1mn331dgm4cGuD+nBTh/Tqt6PLKz8gSnClr1Nk9Hx/scb4TRXZyI5Z03usIHwDKkvq/2w2T
	ihqhnlFbv8cCtDeXWYCo52ZXWDTgXInY9qb6ujY4Mjgrs3diL33vFAENDRZQX9oxpLt2sxtA2/L76
	sUH8PxAM7vNJmAlY4/Ot/Ec/iryD+PkCWnMHPNrV7W7C9y8W08SqMEDg1TMEVkcaMKUMs6Hx7B4kB
	xuL5F+xDM9qY9Z6oCkSyDaIBdwSH6dESTlZOrIsIFWKcTFLnpA/vgGi0koFo9a0hxPqXY4Vr7jDFO
	LVtlUN3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNVpb-00DPSR-Bu; Mon, 15 Aug 2022 08:52:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNVhH-00DKFR-Ed
	for barebox@bombadil.infradead.org; Mon, 15 Aug 2022 08:43:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description;
	bh=rss8goYlU2A05LYh7clTUFFqOkGqFNsDNlMO0uENGi4=; b=SJ5AKQd6va1S1gKyfD/HhdoZrq
	bBS7QtrB0BGFrqC0PtrAbrTkQjsTzD20GMhH4zDteTQ+63LGguWJ6jA8raaj5i39Bj8zU6ZkZinJG
	CdQQgW3iA2TnIY0P6OVu7jjM0XBn+D4K8CGStdC6glS916VElP08auMkzkgK+0mut4eeHfSw90vdx
	NPJCz6KidpBWu3T3BRozXWj/DDJicSfTHNY6lJZZp0DnOUxw5E2rut+zDUIJi8fqNE+awyyqiKLrr
	ouEnQVqqC2xYTsK3x7CJur9tmOmklKC4Q/f0kbxDwWj/oB8INV1r3vvdU76wp4VZ6Jo0w/7X1VReQ
	onRI2Q4w==;
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNVhD-002cwE-P0
	for barebox@lists.infradead.org; Mon, 15 Aug 2022 08:43:41 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27F8gmun662031
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Mon, 15 Aug 2022 10:42:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1660552968;
	bh=rss8goYlU2A05LYh7clTUFFqOkGqFNsDNlMO0uENGi4=; l=2150;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=X9htlxwSWNiXFZUPs+syG3ZFRTZQOtZlnBI0otEFGzDrJBDA+hcQ82hmxjsKFEGGk
	 reF3gue17e7Y/QWv+jsquq6ebNWO61XBQ84Vy2Z7yJsoS0vwrMRNsQeQAmV1pya7KF
	 c/Clzth7MGssmORu0DrpwWDlt2rq9vX0TT/SB5d9pYLwCWcwlfhiIlXzI9r2vmXvXO
	 6CcShhXR/2/3rx97BGbuV1bxqC6kLHT8BwE3cCuL9ItVQwCzqjRpFvXZfaIxUcgHgi
	 StaUIJt/6JXvJaVbe6UyGSSPdJEOD9JyGj5B0vdeiJTcJGDOYkUcylnEwCcS5q8VVv
	 0Lzi+RboqLbww==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27F8gYUd2540873
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Mon, 15 Aug 2022 10:42:34 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ( [192.168.12.72]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 8C8227DEC39; Mon, 15 Aug 2022 10:42:29 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27F8gP13634056
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 15 Aug 2022 10:42:27 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oNVg1-000EJ6-VD;
	Mon, 15 Aug 2022 10:42:25 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Mon, 15 Aug 2022 10:42:14 +0200
Message-Id: <7882d2bd463dd3e0ec1b9ca60261a597ca99f54b.1660552646.git.enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <cover.1660552646.git.enrico.scholz@sigma-chemnitz.de>
References: <cover.1660552646.git.enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_094340_148164_16804991 
X-CRM114-Status: GOOD (  11.28  )
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
X-Spam-Status: No, score=-103.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 10/18] tftp: record whether tftp file is opened for lookup operation only
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
index 38a9e955ee92..9f881249ce07 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -87,6 +87,7 @@ struct file_priv {
 	void *buf;
 	int blocksize;
 	int block_requested;
+	bool is_getattr;
 };
 
 struct tftp_priv {
@@ -415,7 +416,7 @@ static int tftp_start_transfer(struct file_priv *priv)
 }
 
 static struct file_priv *tftp_do_open(struct device_d *dev,
-		int accmode, struct dentry *dentry)
+		int accmode, struct dentry *dentry, bool is_getattr)
 {
 	struct fs_device_d *fsdev = dev_to_fs_device(dev);
 	struct file_priv *priv;
@@ -444,6 +445,7 @@ static struct file_priv *tftp_do_open(struct device_d *dev,
 	priv->filename = dpath(dentry, fsdev->vfsmount.mnt_root);
 	priv->blocksize = TFTP_BLOCK_SIZE;
 	priv->block_requested = -1;
+	priv->is_getattr = is_getattr;
 
 	parseopt_hu(fsdev->options, "port", &port);
 
@@ -494,7 +496,7 @@ static int tftp_open(struct device_d *dev, FILE *file, const char *filename)
 {
 	struct file_priv *priv;
 
-	priv = tftp_do_open(dev, file->flags, file->dentry);
+	priv = tftp_do_open(dev, file->flags, file->dentry, false);
 	if (IS_ERR(priv))
 		return PTR_ERR(priv);
 
@@ -710,7 +712,7 @@ static struct dentry *tftp_lookup(struct inode *dir, struct dentry *dentry,
 	struct file_priv *priv;
 	loff_t filesize;
 
-	priv = tftp_do_open(&fsdev->dev, O_RDONLY, dentry);
+	priv = tftp_do_open(&fsdev->dev, O_RDONLY, dentry, true);
 	if (IS_ERR(priv))
 		return NULL;
 
-- 
2.37.1



