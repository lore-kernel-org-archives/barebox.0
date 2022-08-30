Delivery-date: Tue, 30 Aug 2022 09:48:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvzO-001UdC-BL
	for lore@lore.pengutronix.de; Tue, 30 Aug 2022 09:48:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvzN-0005iN-6H
	for lore@pengutronix.de; Tue, 30 Aug 2022 09:48:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NLdjkN6hww2OysHZXMsz4AwItMB/f35mer81Dj51Uww=; b=HgivE5WlT3xB1SU+o8NxoK3jmK
	ro6nhESum5aR6aoU8BRe92reztQ+K9mSs5Px95g6WB42iuWHCBvU4Ty4DUZ9AdpT9ig5CsjeJtPeY
	UrsAbOwmMRacoFrW6jCjZbk4lAzaII6Cq2y1XyYYg9V6DQyXcH00moQB9dn/rwuA9TA0XINz8z2jP
	rAVl6wVmqujI06ikS6a5QY/qr9XVJzAkdLFIJ06a8KdfuscoUVv61bGsajkJ1wVnOuaOqS4rI06Ke
	jRC6RN2yCC+48OVhH12hJFWKnKhRBlh8wFKdB2u/6JhcGva2ylueUD0GybO2ftchNy/FiFjBlLj1+
	+rL3q8ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvxf-00EtDO-32; Tue, 30 Aug 2022 07:47:04 +0000
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvqK-00Ep2D-0a
	for barebox@lists.infradead.org; Tue, 30 Aug 2022 07:39:32 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27U7cVRm993528
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Tue, 30 Aug 2022 09:38:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1661845112;
	bh=NLdjkN6hww2OysHZXMsz4AwItMB/f35mer81Dj51Uww=; l=2150;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=taxKw5HL6s9p92RIj6ALHzxPwJGmLKng3eT8hrGj7gT0K/BizKMqTCix66cQq+9MI
	 fGypTred2JtxeYP3nVe5vFHXUSZIWNVb2A4AOe1CFSruNsU7UwYvN+4ng+L9dNdlho
	 wQoYLahalEPCSVbKBAu8ZrUa9DZ89iGxyUmHb+C/QRWpzeTO7zWdED3UbNQKSrHAOj
	 I6nXGUcRIP9U/WsAB6/laB5Rd3QLvhnw8E+Ulhcxjwr7dxLeOko3WQGiksdPYVR7Fw
	 fckITd7vZukaACpPbov9W2tCFPn5xUWkqs1hOhKjDElQqpM2zEhCrTtqSM1DfEw88i
	 9/ucvplkdtRow==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27U7cQDe1001086
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Tue, 30 Aug 2022 09:38:27 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ( [192.168.12.72]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 34B07FCBFEA; Tue, 30 Aug 2022 09:38:22 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27U7cKbv772616
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Tue, 30 Aug 2022 09:38:20 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oSvpE-00BJ3I-6Z;
	Tue, 30 Aug 2022 09:38:20 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Tue, 30 Aug 2022 09:38:07 +0200
Message-Id: <20220830073816.2694734-13-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
References: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_003928_581445_7AB12441 
X-CRM114-Status: GOOD (  11.95  )
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
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v4 12/21] tftp: record whether tftp file is opened for lookup operation only
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
index 4e31adcd60ed..7181c58d1083 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -95,6 +95,7 @@ struct file_priv {
 	void *buf;
 	int blocksize;
 	int block_requested;
+	bool is_getattr;
 };
 
 struct tftp_priv {
@@ -460,7 +461,7 @@ static int tftp_start_transfer(struct file_priv *priv)
 }
 
 static struct file_priv *tftp_do_open(struct device_d *dev,
-		int accmode, struct dentry *dentry)
+		int accmode, struct dentry *dentry, bool is_getattr)
 {
 	struct fs_device_d *fsdev = dev_to_fs_device(dev);
 	struct file_priv *priv;
@@ -489,6 +490,7 @@ static struct file_priv *tftp_do_open(struct device_d *dev,
 	priv->filename = dpath(dentry, fsdev->vfsmount.mnt_root);
 	priv->blocksize = TFTP_BLOCK_SIZE;
 	priv->block_requested = -1;
+	priv->is_getattr = is_getattr;
 
 	parseopt_hu(fsdev->options, "port", &port);
 
@@ -567,7 +569,7 @@ static int tftp_open(struct device_d *dev, FILE *file, const char *filename)
 {
 	struct file_priv *priv;
 
-	priv = tftp_do_open(dev, file->flags, file->dentry);
+	priv = tftp_do_open(dev, file->flags, file->dentry, false);
 	if (IS_ERR(priv))
 		return PTR_ERR(priv);
 
@@ -783,7 +785,7 @@ static struct dentry *tftp_lookup(struct inode *dir, struct dentry *dentry,
 	struct file_priv *priv;
 	loff_t filesize;
 
-	priv = tftp_do_open(&fsdev->dev, O_RDONLY, dentry);
+	priv = tftp_do_open(&fsdev->dev, O_RDONLY, dentry, true);
 	if (IS_ERR(priv))
 		return NULL;
 
-- 
2.37.2



