Delivery-date: Mon, 05 Sep 2022 12:26:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oV9JY-007NWl-CR
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 12:26:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oV9JY-0004Jh-7O
	for lore@pengutronix.de; Mon, 05 Sep 2022 12:26:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zJIiWCdmd+Z7MvpYGpp36kkclfPEYEdxuatTYWFmOeA=; b=G9f0j78IMXchW3JizEakbhjzZH
	zFE/ywP2LNF3Iw6zZ5vBD2v/RezVxzkDGDp2Kz9E0W94WYm87lmVP3IwvMJLJGSpFnb+hDDVSVPrI
	Vxj969vvLYiGfWrAer0T6mFXJh6tdwxbsrYQt/78ni4yJD7DKOERtkPYyOo5TGMRA7LcSXS55vTb5
	a1XOHdNL9ox12Ikn4SuK6jdFxedqzBkPy5nNOuxFSeDzFwqxsU4idnwP4KTRNwvIpbAhfvaNz2IyV
	rr/AjJ8tpr8kcHlw0xZeMuff1JDVXE6BOqTZXa9BiCVGRBpXn1EtDJwAWf12+9rqZvEv7SJmi/Dkw
	GlMjM06g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV9HZ-000Aow-Hj; Mon, 05 Sep 2022 10:24:46 +0000
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV7vV-00FEBG-EI
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 08:57:58 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 2858v7Np1052066
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Mon, 5 Sep 2022 10:57:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1662368228;
	bh=zJIiWCdmd+Z7MvpYGpp36kkclfPEYEdxuatTYWFmOeA=; l=1627;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=kLF1tFjTxUDFP26XWBWygf2zXmVtbu80Mz3uqQJ80eHAE5+6RFXVx3ghSgWckJVBj
	 vIYyBdDvjHQuBraoHAmKMQxApZdyxv87AJuZFFwuINfH3a5C6zDzB1+qq01oo4P31D
	 PyYT8MWexWlPeoP3avsFsR4WiKAAMmmW8FPi4yDX7bscBo+os9gAiRrgCmeRha95ge
	 vll1CIZzOi/tLPcwu0tYQx4sJpleLknNvTvg26zDfT9rKqnDSkvSQmUdndALJcp1DQ
	 35Z0Gg21cHlsGik8L5WMRlHOa7KBO8MEytcKqq0mO+MHFG35jD2/Ij6tY+P0z38McR
	 n3Zkt81bXxSAA==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 2858v4Xn3106768
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Mon, 5 Sep 2022 10:57:05 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ( [192.168.12.72]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 3D18A4F327; Mon, 5 Sep 2022 10:57:02 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 2858uxev828590
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 5 Sep 2022 10:57:02 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oV7ud-00GAqr-H4;
	Mon, 05 Sep 2022 10:56:59 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Mon,  5 Sep 2022 10:56:56 +0200
Message-Id: <20220905085658.3854939-2-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220905085658.3854939-1-enrico.scholz@sigma-chemnitz.de>
References: <20220905085658.3854939-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_015755_427780_6636B8F0 
X-CRM114-Status: GOOD (  13.83  )
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
X-Spam-Status: No, score=-103.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] fixup! tftp: implement 'windowsize' (RFC 7440) support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

avoid fifo overflow on read() with small buffer sizes.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 2bffae2bf36e..a3fe7dfd590e 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -78,6 +78,9 @@
 /* size of cache which deals with udp reordering */
 #define TFTP_WINDOW_CACHE_NUM	CONFIG_FS_TFTP_REORDER_CACHE_SIZE
 
+/* allocate this number of blocks more than needed in the fifo */
+#define TFTP_EXTRA_BLOCKS	2
+
 /* marker for an emtpy 'tftp_cache' */
 #define TFTP_CACHE_NO_ID	(-1)
 
@@ -546,7 +549,8 @@ static int tftp_allocate_transfer(struct file_priv *priv)
 
 	/* multiplication is safe; both operands were checked in tftp_parse_oack()
 	   and are small integers */
-	priv->fifo = kfifo_alloc(priv->blocksize * priv->windowsize);
+	priv->fifo = kfifo_alloc(priv->blocksize *
+				 (priv->windowsize + TFTP_EXTRA_BLOCKS));
 	if (!priv->fifo)
 		goto err;
 
@@ -1025,7 +1029,12 @@ static int tftp_read(struct device_d *dev, FILE *f, void *buf, size_t insize)
 		if (priv->state == STATE_DONE)
 			return outsize;
 
-		if (priv->last_block == priv->ack_block)
+		/* send the ACK only when fifo has been nearly depleted; else,
+		   when tftp_read() is called with small 'insize' values, it
+		   is possible that there is read more data from the network
+		   than consumed by kfifo_get() and the fifo overflows */
+		if (priv->last_block == priv->ack_block &&
+		    kfifo_len(priv->fifo) <= TFTP_EXTRA_BLOCKS * priv->blocksize)
 			tftp_send(priv);
 
 		ret = tftp_poll(priv);
-- 
2.37.2



