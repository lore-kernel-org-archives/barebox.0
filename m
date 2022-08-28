Delivery-date: Sun, 28 Aug 2022 16:05:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSIv1-00D8II-W7
	for lore@lore.pengutronix.de; Sun, 28 Aug 2022 16:05:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSIuv-0002RS-OB
	for lore@pengutronix.de; Sun, 28 Aug 2022 16:05:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jGPnK86NYR0/Tx3bPJ2/XVE4zqSa5mdFfDB4Ho/IE7Y=; b=dwXdg1UBx8tK7XO45sSvVDbsEk
	0s3gi9gcS6+EYgJ4w/nXGmkAq4D0qUihAUW6IB6UTn6OQMsAJRnAnwtHz/MYAv5JHz+gLIKkCGwhP
	FhlatqFY0qeFoaIh4BDAQOLf7DeeUzZFKb4bCih6ApNIgYWAq/JlkeIbGQZv3mbur2Ny7+ceKS2su
	DdiL+af6asdHMHjBIlwq3pL18HWgN9CsODSHTjf+3SFoYF0aZeLYOUI5ghBb2osKl4b9YYjhj+Vsm
	fjBqT/opImrcP3ur2b+nOAnXTitjKlUSBHb1CwIcnvx4UNEghbhwDUkdxUqAiA2c18AcwcVO2BCKR
	h67MCNsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSItY-00HKR5-L2; Sun, 28 Aug 2022 14:04:12 +0000
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSIsz-00HJnj-3n
	for barebox@lists.infradead.org; Sun, 28 Aug 2022 14:03:39 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27SE2p8g789827
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Sun, 28 Aug 2022 16:02:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1661695371;
	bh=jGPnK86NYR0/Tx3bPJ2/XVE4zqSa5mdFfDB4Ho/IE7Y=; l=1382;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=jlkCqFmkGja75R3eZUeXANMU4lk31Au1iLrzSBXuBOJF1nIGg9uNSzXJWZlS7Y7u+
	 1Stkx5w37uA0wYnDgFdCwj54M2qquhHSJ4Kp7WGMxQSN+6KscSnqAhjXjqPkIj23IQ
	 /QSbKD1FBzzsZ9Giqil9dpxz+oCxcb/vTtDxwOf+2qWLHsg438aOw0dMCHSDBMOlNZ
	 9llLBqb5K1KEWkUPFMn4kM4eemK4o2TKmxMQ44o8hxdBbWPoiHLde29EOlb5/xs+e9
	 Sr9JzTXFYQCxKOKMeWZCbfMjYlxrqLmLdBqym/tMcqsBWSNQ9YUtC0vGXCb2J8z3Rs
	 H8ws1kXSHhvSg==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27SE2f4l2843354
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Sun, 28 Aug 2022 16:02:43 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ( [192.168.12.73]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 5B9287B735A; Sun, 28 Aug 2022 16:02:39 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 27SE2bXL933380
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Sun, 28 Aug 2022 16:02:38 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oSIs1-003u7m-FB;
	Sun, 28 Aug 2022 16:02:37 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Sun, 28 Aug 2022 16:02:30 +0200
Message-Id: <20220828140231.930643-8-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220828140231.930643-1-enrico.scholz@sigma-chemnitz.de>
References: <20220828140231.930643-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220828_070337_821689_CEC6D897 
X-CRM114-Status: UNSURE (   9.05  )
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
	T_SCC_BODY_TEXT_LINE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 7/8] tftp: fix WRQ support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

"tftp: allocate buffers and fifo dynamically" broke WRQ support.
Reenable it.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 30 ++++++++++++++++++++++--------
 1 file changed, 22 insertions(+), 8 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index c00857ecfa28..174365d6ed0a 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -673,22 +673,36 @@ static void tftp_recv(struct file_priv *priv,
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
+		switch (priv->state) {
+		case STATE_WRQ:
+			priv->tftp_con->udp->uh_dport = uh_sport;
+			priv->state = STATE_START;
+			break;
 
-		tftp_timer_reset(priv);
+		case STATE_WAITACK:
+			priv->state = STATE_WDATA;
+			break;
 
-		if (priv->state == STATE_LAST) {
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
-- 
2.37.2



