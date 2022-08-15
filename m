Delivery-date: Mon, 15 Aug 2022 10:53:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNVqw-006EjE-IN
	for lore@lore.pengutronix.de; Mon, 15 Aug 2022 10:53:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNVqw-0002L8-UP
	for lore@pengutronix.de; Mon, 15 Aug 2022 10:53:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zpkLTrtjxI0M7LCF0x1sNubQMwQuXFNz4YfMa25gyow=; b=HjqnT5RM2I0hgM+rbcxgnRMlXR
	EjK7R2ZN45d3ThreUqZulaR53Ibwnlr/HuJMvQIzKCo7ROaJp5bfPb6+VPR0ANCT8Gb7phPzyZ7kc
	R9BqsI97IVolFAuaFFTCj36qAjGPIQBu1ZAJCWdU5YJbXukEvJbVKvLqurQIvPoPVi7KHlX3Jz//1
	+D44kR6l5h7GXNqeBsWat0d8P50fMnf6uKWI/uJGCAc2IpZ/tb5PydIzwxC0nixbctcG8xgDttGIw
	dAl4fZgbNGtpVljPLQnRjSSEtL8up12G5pG5tkofqEOzvFs7D1UPlYlrsUGB7QX4vegoRNkjjsOOI
	zX45gy3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNVp6-00DPCT-IM; Mon, 15 Aug 2022 08:51:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNVhF-00DKDz-Ev
	for barebox@bombadil.infradead.org; Mon, 15 Aug 2022 08:43:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description;
	bh=zpkLTrtjxI0M7LCF0x1sNubQMwQuXFNz4YfMa25gyow=; b=JhaEN4LP4j4zMG+VZ+/KLCKYEO
	D5R7FBbZU4by5XYX3c55PeX9O4DBwCxnC0TjOi1T9KTzByXB2GPkbV2pG55KOFQ9BdeTwqHXWKHiC
	PdcljQvfXb+cZQn8jrih4UAmL52ib29AruSDqiR6Hw4fRldNA6tg85l6jmmH+0sJkyfKh4869bckZ
	EXlxstB8y/aWonNyXJ7FfBwkhmKNz2clnrUIL7Iwo5tZyTChikpEAXrd30x+NxQJya2pqA48XWniN
	kXkSkXLEjNVDlMZf4U/yd8YM22wgEv7YEN05Q4QQFnGm2C+CRe18SBubAL4+Ymu+2zoWPHao2nXr9
	oGZTjA8w==;
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNVh3-002cwF-DB
	for barebox@lists.infradead.org; Mon, 15 Aug 2022 08:43:34 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27F8gm7Y848771
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Mon, 15 Aug 2022 10:42:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1660552968;
	bh=zpkLTrtjxI0M7LCF0x1sNubQMwQuXFNz4YfMa25gyow=; l=4610;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=P2oDBxlAotZ1KcK+o/RjQmhFnhifBPfxAGT7M8A9mP6FeOAixAnvV1h7WZGMFop8w
	 iIWWc/+vXZPgPWldgTC1GCrYRs+Lw3KURuBkg1MV7UI4I28kNb18WVYxhcgmv5ck+Q
	 A5XEof2Z21oZbKJfTeRzb0LjWTTdkfX+ViDvcJKOnWMEJ4pUuVqdo41QFNI5YDUZK1
	 +TMPkoRKm+fSV3Kc6Pxugod4XxZwLBotdbRoKdidbCvzGZflQEAaFW7Gp/poEq4ylb
	 dF3urkHm94jHImKlQYY+9Y5rDcpJhzm7xsO1Nw+vgJMYApbyJhmGSPiGT8vMBpP2B9
	 166h/NfL1FHWw==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27F8gX5e822382
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Mon, 15 Aug 2022 10:42:33 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ( [192.168.12.73]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 4025DC94FBA; Mon, 15 Aug 2022 10:42:27 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 27F8gPQV811076
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 15 Aug 2022 10:42:27 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oNVg1-000EIz-TI;
	Mon, 15 Aug 2022 10:42:25 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Mon, 15 Aug 2022 10:42:12 +0200
Message-Id: <1dca8aa1f29d25f28b90f0c29c339df82e7d977f.1660552646.git.enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <cover.1660552646.git.enrico.scholz@sigma-chemnitz.de>
References: <cover.1660552646.git.enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_094330_353556_DB403B8B 
X-CRM114-Status: GOOD (  18.47  )
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
Subject: [PATCH v3 08/18] tftp: allocate buffers and fifo dynamically
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Use the actual blocksize for allocating buffers instead of assuming an
hardcoded value.

This requires to add an additional 'START' state which is entered
after receiving (RRQ) or sending (WRQ) the OACK.  Without it, the next
state would be entered and the (not allocated yet) fifo be used.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 91 ++++++++++++++++++++++++++++++++++++-------------------
 1 file changed, 59 insertions(+), 32 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index b552a5dc2f63..0b6d57c4603f 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -63,10 +63,12 @@
 #define STATE_WAITACK	6
 #define STATE_LAST	7
 #define STATE_DONE	8
+/* OACK from server has been received and we can begin to sent either the ACK
+   (for RRQ) or data (for WRQ) */
+#define STATE_START	9
 
 #define TFTP_BLOCK_SIZE		512	/* default TFTP block size */
 #define TFTP_MTU_SIZE		1432	/* MTU based block size */
-#define TFTP_FIFO_SIZE		4096
 
 #define TFTP_ERR_RESEND	1
 
@@ -106,6 +108,7 @@ static char const * const tftp_states[] = {
 	[STATE_WAITACK] = "WAITACK",
 	[STATE_LAST] = "LAST",
 	[STATE_DONE] = "DONE",
+	[STATE_START] = "START",
 };
 
 static int tftp_send(struct file_priv *priv)
@@ -294,19 +297,9 @@ static void tftp_recv(struct file_priv *priv,
 	case TFTP_OACK:
 		tftp_parse_oack(priv, pkt, len);
 		priv->tftp_con->udp->uh_dport = uh_sport;
-
-		if (priv->push) {
-			/* send first block */
-			priv->state = STATE_WDATA;
-			priv->block = 1;
-		} else {
-			/* send ACK */
-			priv->state = STATE_OACK;
-			priv->block = 0;
-			tftp_send(priv);
-		}
-
+		priv->state = STATE_START;
 		break;
+
 	case TFTP_DATA:
 		len -= 2;
 		priv->block = ntohs(*(uint16_t *)pkt);
@@ -330,6 +323,12 @@ static void tftp_recv(struct file_priv *priv,
 			/* Same block again; ignore it. */
 			break;
 
+		if (len > priv->blocksize) {
+			pr_warn("tftp: oversized packet (%u > %d) received\n",
+				len, priv->blocksize);
+			break;
+		}
+
 		priv->last_block = priv->block;
 
 		tftp_timer_reset(priv);
@@ -372,6 +371,36 @@ static void tftp_handler(void *ctx, char *packet, unsigned len)
 	tftp_recv(priv, pkt, net_eth_to_udplen(packet), udp->uh_sport);
 }
 
+
+static int tftp_start_transfer(struct file_priv *priv)
+{
+	priv->fifo = kfifo_alloc(priv->blocksize);
+	if (!priv->fifo)
+		return -ENOMEM;
+
+	if (priv->push) {
+		priv->buf = xmalloc(priv->blocksize);
+		if (!priv->buf) {
+			kfifo_free(priv->fifo);
+			priv->fifo = NULL;
+			return -ENOMEM;
+		}
+	}
+
+	if (priv->push) {
+		/* send first block */
+		priv->state = STATE_WDATA;
+		priv->block = 1;
+	} else {
+		/* send ACK */
+		priv->state = STATE_OACK;
+		priv->block = 0;
+		tftp_send(priv);
+	}
+
+	return 0;
+}
+
 static struct file_priv *tftp_do_open(struct device_d *dev,
 		int accmode, struct dentry *dentry)
 {
@@ -403,47 +432,45 @@ static struct file_priv *tftp_do_open(struct device_d *dev,
 	priv->blocksize = TFTP_BLOCK_SIZE;
 	priv->block_requested = -1;
 
-	priv->fifo = kfifo_alloc(TFTP_FIFO_SIZE);
-	if (!priv->fifo) {
-		ret = -ENOMEM;
-		goto out;
-	}
-
 	parseopt_hu(fsdev->options, "port", &port);
 
 	priv->tftp_con = net_udp_new(tpriv->server, port, tftp_handler, priv);
 	if (IS_ERR(priv->tftp_con)) {
 		ret = PTR_ERR(priv->tftp_con);
-		goto out1;
+		goto out;
 	}
 
 	ret = tftp_send(priv);
 	if (ret)
-		goto out2;
+		goto out1;
 
 	tftp_timer_reset(priv);
-	while (priv->state != STATE_RDATA &&
-			priv->state != STATE_DONE &&
-			priv->state != STATE_WDATA) {
+	while (priv->state != STATE_DONE && priv->state != STATE_START) {
 		ret = tftp_poll(priv);
 		if (ret == TFTP_ERR_RESEND)
 			tftp_send(priv);
 		if (ret < 0)
-			goto out2;
+			goto out1;
 	}
 
-	if (priv->state == STATE_DONE && priv->err) {
+	if (priv->state == STATE_DONE) {
+		/* this should not happen; STATE_DONE without error happens
+		   after completing the transfer but this has not been started
+		   yet */
+		if (WARN_ON(priv->err == 0))
+			priv->err = -EIO;
+
 		ret = priv->err;
-		goto out2;
+		goto out1;
 	}
 
-	priv->buf = xmalloc(priv->blocksize);
+	ret = tftp_start_transfer(priv);
+	if (ret < 0)
+		goto out1;
 
 	return priv;
-out2:
-	net_unregister(priv->tftp_con);
 out1:
-	kfifo_free(priv->fifo);
+	net_unregister(priv->tftp_con);
 out:
 	free(priv);
 
@@ -561,7 +588,7 @@ static int tftp_read(struct device_d *dev, FILE *f, void *buf, size_t insize)
 		if (priv->state == STATE_DONE)
 			return outsize;
 
-		if (TFTP_FIFO_SIZE - kfifo_len(priv->fifo) >= priv->blocksize)
+		if (kfifo_len(priv->fifo) == 0)
 			tftp_send(priv);
 
 		ret = tftp_poll(priv);
-- 
2.37.1



