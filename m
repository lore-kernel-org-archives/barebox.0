Delivery-date: Mon, 18 Jul 2022 14:26:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oDPpc-00D7Oq-Ui
	for lore@lore.pengutronix.de; Mon, 18 Jul 2022 14:26:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oDPpZ-0000NW-N1
	for lore@pengutronix.de; Mon, 18 Jul 2022 14:26:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GXdiHXuEJ80TSQ7U/t0bAShuH2u25/yxZTauTvJN6a0=; b=qv221d9zHpgG/uti6fsiqhYGtQ
	xHO7MP5V7vdd5QyJdJRhMqBnIExE9KEZ6ChRai7bLjEvbOzybHWNcBvGCev/og1UpIoDL+tkQJcwM
	hJwEi/FAa4d48xJl44cMhJYBOT2qEhU59u6YcSKLfYTMFh4eFDWc7rsgl/iP6IW+8liOKJ9XQaGes
	Oo+6/tztGgvnYyyT+zYnl4T8cAq3oK7RwGDKrPXtAE+TjHeK+Fquz+lrMbzU+lxn+0lFX5UwiAPWC
	HEvd8gLsArgqPPGytvFGPYor6ipwtieuC/Z7xmajYlB7ZtyyhmzwTRZZhcbXOl5YrCP7B5WHZ3dvI
	2JpI+ioQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPnu-00DEoW-Eh; Mon, 18 Jul 2022 12:24:51 +0000
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPmh-00DDX3-4w
	for barebox@lists.infradead.org; Mon, 18 Jul 2022 12:23:38 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 26ICMnX2390614
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Mon, 18 Jul 2022 14:22:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1658146969;
	bh=GXdiHXuEJ80TSQ7U/t0bAShuH2u25/yxZTauTvJN6a0=; l=1668;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=uMPqrID0U9zAUSqFnze7G1Vv7ouGnM1i9UgQjiUlAP9yKhQkcN5dixT/eQLiW+jVN
	 3MslTQwiDJr8rhUFNYpB+cGs9eIGEeLQuMCxa4RTC9kgSj/AlQ0ugdmtXFZEpr/5BV
	 KsSNB9MwGpKRBZa3jpZznkl9S5asAYgsb5hLeZZxdnddr7MtYD8gv8zD+d5IhivCVb
	 5rTI7sfgBpdT4KI0by5CTrQVrwzKfeXnZLknLM8EYF63mEJKUMKXmHgxkUu24eJErC
	 zsJEZwwKo8VRUxiARHgGqpHfn88+4shr9aRfbTNydCrYU2MqOCAISAPMTH74Jh0CZg
	 qGv5/wYncjoiQ==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 26ICMZeL487156
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Mon, 18 Jul 2022 14:22:35 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ( [192.168.12.72]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id A3D9936E48; Mon, 18 Jul 2022 14:22:33 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 26ICMXG3371862
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 18 Jul 2022 14:22:33 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oDPlg-002g3k-VZ;
	Mon, 18 Jul 2022 14:22:32 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Mon, 18 Jul 2022 14:22:25 +0200
Message-Id: <1b67079ff4323b61c0f5fbccd13123a6dd0edd5a.1658144543.git.enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <cover.1658144543.git.enrico.scholz@sigma-chemnitz.de>
References: <cover.1658144543.git.enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220718_052335_559061_B054CCA5 
X-CRM114-Status: GOOD (  11.63  )
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
Subject: [PATCH 10/13] tftp: do not use 'priv->block' for RRQ
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

attribute is not used outside tftp_recv() for RRQ.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 7f836d36b7df..f85136f03e22 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -298,6 +298,7 @@ static void tftp_recv(struct file_priv *priv,
 			uint8_t *pkt, unsigned len, uint16_t uh_sport)
 {
 	uint16_t opcode;
+	uint16_t block;
 
 	/* according to RFC1350 minimal tftp packet length is 4 bytes */
 	if (len < 4)
@@ -349,7 +350,6 @@ static void tftp_recv(struct file_priv *priv,
 		} else {
 			/* send ACK */
 			priv->state = STATE_OACK;
-			priv->block = 0;
 			priv->last_block = 0;
 			tftp_send(priv);
 		}
@@ -357,7 +357,7 @@ static void tftp_recv(struct file_priv *priv,
 		break;
 	case TFTP_DATA:
 		len -= 2;
-		priv->block = ntohs(*(uint16_t *)pkt);
+		block = ntohs(*(uint16_t *)pkt);
 
 		if (priv->state == STATE_RRQ || priv->state == STATE_OACK) {
 			/* first block received */
@@ -365,21 +365,21 @@ static void tftp_recv(struct file_priv *priv,
 			priv->tftp_con->udp->uh_dport = uh_sport;
 			priv->last_block = 0;
 
-			if (priv->block != 1) {	/* Assertion */
+			if (block != 1) {	/* Assertion */
 				pr_err("error: First block is not block 1 (%d)\n",
-					priv->block);
+					block);
 				priv->err = -EINVAL;
 				priv->state = STATE_DONE;
 				break;
 			}
 		}
 
-		if (priv->block != (uint16_t)(priv->last_block + 1)) {
+		if (block != (uint16_t)(priv->last_block + 1)) {
 			break;
 		}
 
 		tftp_timer_reset(priv);
-		tftp_put_data(priv, priv->block, pkt + 2, len);
+		tftp_put_data(priv, block, pkt + 2, len);
 
 		break;
 
-- 
2.36.1



