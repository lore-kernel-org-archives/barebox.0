Delivery-date: Sun, 28 Aug 2022 16:05:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSIuu-00D8Fx-Um
	for lore@lore.pengutronix.de; Sun, 28 Aug 2022 16:05:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSIum-0002Nu-U7
	for lore@pengutronix.de; Sun, 28 Aug 2022 16:05:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RN3igowj/XJjidPv22Ju5SJUOIABt0vcIBWkoGOxxAc=; b=y8ocYIyhWTPS5MlmUGjhBuAlQP
	3hzA/KR6d2W6BVjoNYO0FbXkwSC6kXVwjmv3ZNqGyNbNx6QSmJOKFt3OzpR5UPfL+2z86vuYDYO5d
	ZOigAnaWKCkQmstUpYjVH+/COtdrCypNqFxZuZjn/Xi9zqHgUmEQV8JCyu9GXIj0aZy0pzhTjOCpT
	T6UNx7dYnDvr4utm1bM8u5tjG7WpCdS9mIBOR0T+jr79phZXovifUiN/q8hzhxRsYNWwdLXzzYK1l
	eNEC3zfSDWAzypZXoT0Jp8PjIDtotIvETlmMOkYDfJ+MnG+vTncF8DdvL6TPJas8W9NZtdLHFsdRO
	mafBqdPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSIt2-00HK7C-MV; Sun, 28 Aug 2022 14:03:40 +0000
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSIso-00HJn3-O3
	for barebox@lists.infradead.org; Sun, 28 Aug 2022 14:03:29 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27SE2hkq789811
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Sun, 28 Aug 2022 16:02:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1661695364;
	bh=RN3igowj/XJjidPv22Ju5SJUOIABt0vcIBWkoGOxxAc=; l=4563;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=N07ESGh7fsb4Vpnp8sgGG0LbxIMe+rKtpZa/iAQM9A3V6gRb/J0P+W47U2FmQkQer
	 g2T0Mc6sx/lAImIyx0doNpE0y6j1gHv9M0vbkHroQEkMEK3g6rO9GzwYg+CBYfTbil
	 4Xy4fyxqSHB3+0XO9ehnG5yPCjYAnAXICvj0WVeqinlHmGj2kl/lyNLAoIfzicSc+v
	 fSq+hMvOy5Io32ByUH1CrphwitsAjeHzOwsyJbcbeFmS2D2UoaAGuZdn6i8vpM9kDm
	 tiLo6ggKMM6bSiJNtoSyF2dblU8EldzPyX/c5Wm1VwckHvDBc7x1Aqcd9fq92SoTCT
	 xStLh+CpYw9EA==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27SE2eAM980523
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Sun, 28 Aug 2022 16:02:40 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ( [192.168.12.72]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 3E4104227C6; Sun, 28 Aug 2022 16:02:38 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27SE2bX9756480
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Sun, 28 Aug 2022 16:02:38 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oSIs1-003u7g-DC;
	Sun, 28 Aug 2022 16:02:37 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Sun, 28 Aug 2022 16:02:28 +0200
Message-Id: <20220828140231.930643-6-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220828140231.930643-1-enrico.scholz@sigma-chemnitz.de>
References: <20220828140231.930643-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220828_070327_737065_B33348DF 
X-CRM114-Status: GOOD (  19.44  )
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
Subject: [PATCH 5/8] tftp: support non rfc 2347 servers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

State machine must be changed for servers without OACK support.  Here,
objects for data transfer must be allocated before the first datagram
is handled and it is possible that whole transfer finishes at this
point.

Fixes "tftp: allocate buffers and fifo dynamically"

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 87 ++++++++++++++++++++++++++++++++++++-------------------
 1 file changed, 58 insertions(+), 29 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index fb6c368b3a64..7edea904aabe 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -64,13 +64,12 @@
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
-/* OACK from server has been received and we can begin to sent either the ACK
-   (for RRQ) or data (for WRQ) */
-#define STATE_START	9
 
 #define TFTP_BLOCK_SIZE		512	/* default TFTP block size */
 #define TFTP_MTU_SIZE		1432	/* MTU based block size */
@@ -363,7 +362,6 @@ static char const * const tftp_states[] = {
 	[STATE_WRQ] = "WRQ",
 	[STATE_RDATA] = "RDATA",
 	[STATE_WDATA] = "WDATA",
-	[STATE_OACK] = "OACK",
 	[STATE_WAITACK] = "WAITACK",
 	[STATE_LAST] = "LAST",
 	[STATE_DONE] = "DONE",
@@ -431,7 +429,6 @@ static int tftp_send(struct file_priv *priv)
 		break;
 
 	case STATE_RDATA:
-	case STATE_OACK:
 		xp = pkt;
 		s = (uint16_t *)pkt;
 		*s++ = htons(TFTP_ACK);
@@ -649,6 +646,7 @@ static void tftp_recv(struct file_priv *priv,
 {
 	uint16_t opcode;
 	uint16_t block;
+	int rc;
 
 	/* according to RFC1350 minimal tftp packet length is 4 bytes */
 	if (len < 4)
@@ -711,12 +709,20 @@ static void tftp_recv(struct file_priv *priv,
 		len -= 2;
 		block = ntohs(*(uint16_t *)pkt);
 
-		if (priv->state == STATE_RRQ || priv->state == STATE_OACK) {
-			/* first block received */
-			priv->state = STATE_RDATA;
+		if (priv->state == STATE_RRQ) {
+			/* first block received; entered only with non rfc
+			   2347 (TFTP Option extension) compliant servers */
 			priv->tftp_con->udp->uh_dport = uh_sport;
+			priv->state = STATE_RDATA;
 			priv->last_block = 0;
-			tftp_window_cache_reset(&priv->cache);
+			priv->ack_block = priv->windowsize;
+
+			rc = tftp_allocate_transfer(priv);
+			if (rc < 0) {
+				priv->err = rc;
+				priv->state = STATE_DONE;
+				break;
+			}
 		}
 
 		if (priv->state != STATE_RDATA) {
@@ -726,7 +732,6 @@ static void tftp_recv(struct file_priv *priv,
 		}
 
 		tftp_handle_data(priv, block, pkt + 2, len);
-
 		break;
 
 	case TFTP_ERROR:
@@ -775,7 +780,7 @@ static int tftp_start_transfer(struct file_priv *priv)
 		priv->block = 1;
 	} else {
 		/* send ACK */
-		priv->state = STATE_OACK;
+		priv->state = STATE_RDATA;
 		priv->last_block = 0;
 		tftp_send(priv);
 	}
@@ -828,26 +833,49 @@ static struct file_priv *tftp_do_open(struct device_d *dev,
 		goto out1;
 
 	tftp_timer_reset(priv);
-	while (priv->state != STATE_DONE && priv->state != STATE_START) {
-		ret = tftp_poll(priv);
-		if (ret == TFTP_ERR_RESEND)
-			tftp_send(priv);
-		if (ret < 0)
-			goto out1;
-	}
 
-	if (priv->state == STATE_DONE) {
-		/* this should not happen; STATE_DONE without error happens
-		   after completing the transfer but this has not been started
-		   yet */
-		if (WARN_ON(priv->err == 0))
-			priv->err = -EIO;
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
 
-		ret = priv->err;
-		goto out1;
-	}
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
 
-	ret = tftp_start_transfer(priv);
 	if (ret < 0)
 		goto out1;
 
@@ -855,6 +883,7 @@ static struct file_priv *tftp_do_open(struct device_d *dev,
 out1:
 	net_unregister(priv->tftp_con);
 out:
+	debug_assert(!priv->fifo);
 	free(priv);
 
 	return ERR_PTR(ret);
-- 
2.37.2



