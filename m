Delivery-date: Tue, 30 Aug 2022 09:44:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvvZ-001USp-QT
	for lore@lore.pengutronix.de; Tue, 30 Aug 2022 09:44:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvvW-0004bx-PV
	for lore@pengutronix.de; Tue, 30 Aug 2022 09:44:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OgpBNwZlD0JRAUgs+9KMzUp9Kz7IjGPW8DrnD+pXPxM=; b=3QcXx/GqEbOdkeGMcpHePzcUcR
	bGef1MtuhydEL6o90CuSYaDqwFfV3/18y+n6ZQ3WKc3giwvZX01hQVX6fLry4cQsiN1euqTHln5Ou
	ujF4GfqRZJXHToIMaKxqn5fK/SaxaTPmsVJMJv2upNx36dIluQ8+t7WUqZ+/oXZtK1lvDHWmT40IM
	Oli3WBP9mqHEqrJyZkSa6nfEDySM+Sq10W/QFRWRpOPWxHm0WHonT2hs/ABcKpoamPLfjQwWH8uOZ
	cNBAjFZnfWx7tjBYb741ADsJlh60xfUKsmJC1WS+TcdOCICcCizHO3sUdDixQmpbaIS+E9WCs/1GH
	zLieZPHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvu1-00ErHY-2S; Tue, 30 Aug 2022 07:43:18 +0000
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvqK-00Eoze-30
	for barebox@lists.infradead.org; Tue, 30 Aug 2022 07:39:29 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27U7cRb6993522
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Tue, 30 Aug 2022 09:38:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1661845107;
	bh=OgpBNwZlD0JRAUgs+9KMzUp9Kz7IjGPW8DrnD+pXPxM=; l=1065;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=QgqJjef3s1dK8pQ0ebTFkrDGkeMCI15kC+q+AcS3o5+SbEUoeJVSgWrZdxnkhruVb
	 yxxV6/7nXG4ClZ/WXIQSSiRinA5c9ILI7LJ5RuN5Vqgd62qehEtKsLJb743+BOlOk7
	 0NRaNzm/8qbG9fKdEO5wAnnAJQrL/B33nCfvdqA8wxAcwyHGTYgyPtv0AYiTOBvYOG
	 tS3kcYZuMiaSZ62AS0VZQssOt8+BDfnl7cQpOJSbkXvbZP/FBawtJxCnGBOSG2ih+u
	 hmav0pivFR+WEv6JLsBdkVHG7bDS/OJcXNVLK7movuTPnPaQykdlcqX4RMtutsAsRF
	 DOSusz5DeaS2g==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27U7cOw11001061
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Tue, 30 Aug 2022 09:38:24 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ( [192.168.12.72]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 33A7780F7F4; Tue, 30 Aug 2022 09:38:21 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27U7cJ9N772602
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Tue, 30 Aug 2022 09:38:20 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oSvpD-00BJ2r-U5;
	Tue, 30 Aug 2022 09:38:19 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Tue, 30 Aug 2022 09:38:00 +0200
Message-Id: <20220830073816.2694734-6-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
References: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_003928_354883_F1D47E8A 
X-CRM114-Status: UNSURE (   9.93  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-103.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v4 05/21] tftp: assign 'priv->block' later in WRQ
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Some refactoring; makes next patches cleaner.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 361661d2180e..c1a193711793 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -254,6 +254,7 @@ static void tftp_recv(struct file_priv *priv,
 			uint8_t *pkt, unsigned len, uint16_t uh_sport)
 {
 	uint16_t opcode;
+	uint16_t block;
 
 	/* according to RFC1350 minimal tftp packet length is 4 bytes */
 	if (len < 4)
@@ -276,14 +277,13 @@ static void tftp_recv(struct file_priv *priv,
 		if (!priv->push)
 			break;
 
-		priv->block = ntohs(*(uint16_t *)pkt);
-		if (priv->block != priv->last_block) {
-			pr_vdebug("ack %d != %d\n", priv->block, priv->last_block);
+		block = ntohs(*(uint16_t *)pkt);
+		if (block != priv->last_block) {
+			pr_vdebug("ack %d != %d\n", block, priv->last_block);
 			break;
 		}
 
-		priv->block++;
-
+		priv->block = block + 1;
 		tftp_timer_reset(priv);
 
 		if (priv->state == STATE_LAST) {
-- 
2.37.2



