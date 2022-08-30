Delivery-date: Tue, 30 Aug 2022 09:46:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvx0-001UX0-48
	for lore@lore.pengutronix.de; Tue, 30 Aug 2022 09:46:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvww-0005CB-Sw
	for lore@pengutronix.de; Tue, 30 Aug 2022 09:46:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y6qpAEoh9TGDBkLlZ5yLFbSfWyLZ85kYHND8Kq2I+Og=; b=k0FjqFRqNdS3GxI+CfxIdgPVvu
	LmN5vyNWNhQuQpf1/TxKrxZDoQJko5xHP0wQO7iq7e7i4uBs6CSdML9RU+njuyQnq5uJEkqrCfh0C
	TSA2rIWVN2rnWt+aBane5jLBR6HRXdiaahK8pIdR7Yk3gZujHnOpRC5J/8P1lcwRCZn6d5WlNoRs5
	Ar4f/xL1YMZLXgovPV/YgibglOK2fa4pHPVsfgHPBfqhPFc+E/6Qyms2C99CHzjgLeck0j5RlU/gy
	aYClfFlua7EnQ+H+36NSB60ROukW6XG/1EJnr9Ncs5onVJO8/k+TdlkEWM1chiy5gJ87O9Z2D0ayl
	o0gwTyZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvvH-00Es0g-VS; Tue, 30 Aug 2022 07:44:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvqL-00EpWQ-WA
	for barebox@bombadil.infradead.org; Tue, 30 Aug 2022 07:39:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description;
	bh=Y6qpAEoh9TGDBkLlZ5yLFbSfWyLZ85kYHND8Kq2I+Og=; b=OSTMnIjnw/aUa8T43W4yljA6IH
	xhIlCpkjho6C0NqZ7PmwwQq0en8/CZDIIuFmUbT5UB/2w9GOBahXfNBrKFw7VHqaVHDxm8H5DL+lY
	YssfrlbcFxab+gMDZr1mxcgEFJBtHPKLaO27FvJZEhqrPJtDyVSe5JY28fCK25fcT2p/ADNta7cMQ
	iqdYF94qOBiyL+yOpZfieLP/RUGnIhLFpSPQIkS6r/PeJuPVU0TQx5vU8biuF0Lon++bRWg26viB/
	GQojTTy06Vsw2kdP0m8MsrMsNlwa/z6DR7OP/L7u13TFrM6eBhyhMKk7opLd0/eUJClyiWvZy7H59
	rhVxZdJw==;
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvqC-007m64-5F
	for barebox@lists.infradead.org; Tue, 30 Aug 2022 07:39:25 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27U7cgkZ993575
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Tue, 30 Aug 2022 09:38:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1661845122;
	bh=Y6qpAEoh9TGDBkLlZ5yLFbSfWyLZ85kYHND8Kq2I+Og=; l=7644;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=2R/UQY4pZ8GTL54CrS93rcODPuaBTJ13/+mQFQuyb+FYCYkwTqBr/46Zo3cptu5fn
	 eSGxbVh65wQ6/KxtIvQbq1tDfhSUWkjD4pfo3un8/1sapP/8JXzYfhC1jVYvAGjEEW
	 fsN1BimyLqd21l4LOSC2dQhMLejX54tJH9P9SCD5Gu5+wGC97b/W4p18Wxmwi+iANt
	 +CsvXq/TrDBUlOikC768EXtiRcGMmigU697V3PmUwlMJ4sdCdJzxtPYNGlP9B5qW9B
	 VU4ovDSBZvAlTXP9XlUXhSFmt6a/KZW//eX+ropHd3Kfb8+dKlMFr0mAXFMRS+gRn0
	 1o5qi+b9hRJFQ==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27U7cQt71001083
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Tue, 30 Aug 2022 09:38:27 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ( [192.168.12.72]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 344DC97C90; Tue, 30 Aug 2022 09:38:22 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27U7cK9h772615
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Tue, 30 Aug 2022 09:38:20 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oSvpE-00BJ3A-3Y;
	Tue, 30 Aug 2022 09:38:20 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Tue, 30 Aug 2022 09:38:05 +0200
Message-Id: <20220830073816.2694734-11-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
References: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_083921_534189_F7205995 
X-CRM114-Status: GOOD (  23.71  )
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
Subject: [PATCH v4 10/21] tftp: allocate buffers and fifo dynamically
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Use the actual blocksize for allocating buffers instead of assuming an
hardcoded value.

This requires to add an additional 'START' state which is entered
after receiving (RRQ) or sending (WRQ) the OACK.  Without it, the next
state would be entered and the (not allocated yet) fifo be used.

For non-rfc 2347 servers (which do not understand OACK and start with
data transfer immediately after RRQ/WRQ), additional transitions in
the state machine were implemented.

Code adds some sanity checks in the new code paths.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 194 ++++++++++++++++++++++++++++++++++++++++--------------
 1 file changed, 144 insertions(+), 50 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 07de8334f202..64a94797cda3 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -59,14 +59,15 @@
 #define STATE_WRQ	2
 #define STATE_RDATA	3
 #define STATE_WDATA	4
-#define STATE_OACK	5
+/* OACK from server has been received and we can begin to sent either the ACK
+   (for RRQ) or data (for WRQ) */
+#define STATE_START	5
 #define STATE_WAITACK	6
 #define STATE_LAST	7
 #define STATE_DONE	8
 
 #define TFTP_BLOCK_SIZE		512	/* default TFTP block size */
 #define TFTP_MTU_SIZE		1432	/* MTU based block size */
-#define TFTP_FIFO_SIZE		4096
 
 #define TFTP_ERR_RESEND	1
 
@@ -111,10 +112,10 @@ static char const * const tftp_states[] = {
 	[STATE_WRQ] = "WRQ",
 	[STATE_RDATA] = "RDATA",
 	[STATE_WDATA] = "WDATA",
-	[STATE_OACK] = "OACK",
 	[STATE_WAITACK] = "WAITACK",
 	[STATE_LAST] = "LAST",
 	[STATE_DONE] = "DONE",
+	[STATE_START] = "START",
 };
 
 static int tftp_send(struct file_priv *priv)
@@ -166,7 +167,6 @@ static int tftp_send(struct file_priv *priv)
 	case STATE_RDATA:
 		if (priv->block == priv->block_requested)
 			return 0;
-	case STATE_OACK:
 		xp = pkt;
 		s = (uint16_t *)pkt;
 		*s++ = htons(TFTP_ACK);
@@ -261,11 +261,39 @@ static void tftp_timer_reset(struct file_priv *priv)
 	priv->progress_timeout = priv->resend_timeout = get_time_ns();
 }
 
+static int tftp_allocate_transfer(struct file_priv *priv)
+{
+	debug_assert(!priv->fifo);
+	debug_assert(!priv->buf);
+
+	priv->fifo = kfifo_alloc(priv->blocksize);
+	if (!priv->fifo)
+		goto err;
+
+	if (priv->push) {
+		priv->buf = xmalloc(priv->blocksize);
+		if (!priv->buf) {
+			kfifo_free(priv->fifo);
+			priv->fifo = NULL;
+			goto err;
+		}
+	}
+
+	return 0;
+
+err:
+	priv->err = -ENOMEM;
+	priv->state = STATE_DONE;
+
+	return priv->err;
+}
+
 static void tftp_recv(struct file_priv *priv,
 			uint8_t *pkt, unsigned len, uint16_t uh_sport)
 {
 	uint16_t opcode;
 	uint16_t block;
+	int rc;
 
 	/* according to RFC1350 minimal tftp packet length is 4 bytes */
 	if (len < 4)
@@ -294,48 +322,64 @@ static void tftp_recv(struct file_priv *priv,
 			break;
 		}
 
-		priv->block = block + 1;
-		tftp_timer_reset(priv);
+		switch (priv->state) {
+		case STATE_WRQ:
+			priv->tftp_con->udp->uh_dport = uh_sport;
+			priv->state = STATE_START;
+			break;
 
-		if (priv->state == STATE_LAST) {
+		case STATE_WAITACK:
+			priv->state = STATE_WDATA;
+			break;
+
+		case STATE_LAST:
 			priv->state = STATE_DONE;
 			break;
+
+		default:
+			pr_warn("ACK packet in %s state\n",
+				tftp_states[priv->state]);
+			goto ack_out;
 		}
-		priv->tftp_con->udp->uh_dport = uh_sport;
-		priv->state = STATE_WDATA;
+
+		priv->block = block + 1;
+		tftp_timer_reset(priv);
+
+	ack_out:
 		break;
 
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
 
-		if (priv->state == STATE_RRQ || priv->state == STATE_OACK) {
-			/* first block received */
-			priv->state = STATE_RDATA;
+		if (priv->state == STATE_RRQ) {
+			/* first block received; entered only with non rfc
+			   2347 (TFTP Option extension) compliant servers */
 			priv->tftp_con->udp->uh_dport = uh_sport;
+			priv->state = STATE_RDATA;
 			priv->last_block = 0;
+
+			rc = tftp_allocate_transfer(priv);
+			if (rc < 0)
+				break;
 		}
 
 		if (priv->block == priv->last_block)
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
@@ -378,6 +422,30 @@ static void tftp_handler(void *ctx, char *packet, unsigned len)
 	tftp_recv(priv, pkt, net_eth_to_udplen(packet), udp->uh_sport);
 }
 
+static int tftp_start_transfer(struct file_priv *priv)
+{
+	int rc;
+
+	rc = tftp_allocate_transfer(priv);
+	if (rc < 0)
+		/* function sets 'priv->state = STATE_DONE' and 'priv->err' in
+		   error case */
+		return rc;
+
+	if (priv->push) {
+		/* send first block */
+		priv->state = STATE_WDATA;
+		priv->block = 1;
+	} else {
+		/* send ACK */
+		priv->state = STATE_RDATA;
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
@@ -409,48 +477,74 @@ static struct file_priv *tftp_do_open(struct device_d *dev,
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
-		ret = tftp_poll(priv);
-		if (ret == TFTP_ERR_RESEND)
-			tftp_send(priv);
-		if (ret < 0)
-			goto out2;
-	}
 
-	if (priv->state == STATE_DONE && priv->err) {
-		ret = priv->err;
-		goto out2;
-	}
+	/* - 'ret < 0'  ... error
+	   - 'ret == 0' ... further tftp_poll() required
+	   - 'ret == 1' ... startup finished */
+	do {
+		switch (priv->state) {
+		case STATE_DONE:
+			/* branch is entered in two situations:
+			   - non rfc 2347 compliant servers finished the
+			     transfer by sending a small file
+			   - some error occurred */
+			if (priv->err < 0)
+				ret = priv->err;
+			else
+				ret = 1;
+			break;
 
-	priv->buf = xmalloc(priv->blocksize);
+		case STATE_START:
+			ret = tftp_start_transfer(priv);
+			if (!ret)
+				ret = 1;
+			break;
+
+		case STATE_RDATA:
+			/* first data block of non rfc 2347 servers */
+			ret = 1;
+			break;
+
+		case STATE_RRQ:
+		case STATE_WRQ:
+			ret = tftp_poll(priv);
+			if (ret == TFTP_ERR_RESEND) {
+				tftp_send(priv);
+				ret = 0;
+			}
+			break;
+
+		default:
+			debug_assert(false);
+			break;
+		}
+	} while (ret == 0);
+
+	if (ret < 0)
+		goto out1;
 
 	return priv;
-out2:
-	net_unregister(priv->tftp_con);
 out1:
-	kfifo_free(priv->fifo);
+	net_unregister(priv->tftp_con);
 out:
+	if (priv->fifo)
+		kfifo_free(priv->fifo);
+
+	free(priv->filename);
+	free(priv->buf);
 	free(priv);
 
 	return ERR_PTR(ret);
@@ -567,7 +661,7 @@ static int tftp_read(struct device_d *dev, FILE *f, void *buf, size_t insize)
 		if (priv->state == STATE_DONE)
 			return outsize;
 
-		if (TFTP_FIFO_SIZE - kfifo_len(priv->fifo) >= priv->blocksize)
+		if (kfifo_len(priv->fifo) == 0)
 			tftp_send(priv);
 
 		ret = tftp_poll(priv);
-- 
2.37.2



