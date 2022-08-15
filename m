Delivery-date: Mon, 15 Aug 2022 10:53:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNVqi-006EiZ-Kt
	for lore@lore.pengutronix.de; Mon, 15 Aug 2022 10:53:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNVqi-0002JQ-0Y
	for lore@pengutronix.de; Mon, 15 Aug 2022 10:53:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=68DGSHVwro7RgyQ5yJspb0RyMqZ7ZWmz79LYhojdf5w=; b=D/ljvsTgu9ZGvDrBVH/TpFBDdG
	G5RA+EmeggE58A1IxYkmRDVqR5WIPQ7CUlgQzbTa7Q2Rh5cHv0wSGPSW31sWt+h1klYEINjCViFX0
	4v+eO/XxyOoRE9gwZV9iqMZ1fV20j419L6t6KM6YOd2Gt/y/wlh/RT7HimR/zryQnKEdjIuBydtna
	gjJhGeg4XCCXihrqqqbCrdfmxYvCmrPoLxystqccB/B+MVLqGnhtyhR5VF/PeKp2xPt0pgbzy88nt
	9UwWKFU8l/HxArNqyG4EaYD1kMEcZFRCQEtBWrcAcFxpM2WGviIaIQm2jGh46EeDFr5pn1H+kI7b6
	0TLOWcog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNVoh-00DOqR-DO; Mon, 15 Aug 2022 08:51:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNVhF-00DKDu-En
	for barebox@bombadil.infradead.org; Mon, 15 Aug 2022 08:43:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description;
	bh=68DGSHVwro7RgyQ5yJspb0RyMqZ7ZWmz79LYhojdf5w=; b=TskGFR8wOvgqbIHL/vk59sZ4cD
	y7ilsxDuUv0Jbr3WYBPwN7/UKjwI8vsoSMPRUvV1FpzNvQeT806jzThrRKe7WXPi6CxTGWo2x6sEv
	wD8RyUAR+cOGKtUqVpFqgWYyCeq8JJKlFYAwGeKmFAFW/dfhK6TPIbDbKxBE78BIxrNChHVsEESO/
	RvR52sLoNTt+Akn9pe28/9MxCK1kuGng+LYVOQNr2uIVSsrlxGL/ElQXCaa9WpVCodTPNF/aUaCRq
	HQ6U+ooUa9RO+X7gJCtc6JhnKxDVXuadbQ4g8bEvRi6inFA/W9VWjHWfufhGbw8wBilHCwnKTDUYb
	y94VF/Tg==;
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNVh3-002cwJ-JH
	for barebox@lists.infradead.org; Mon, 15 Aug 2022 08:43:34 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27F8gmIC848760
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Mon, 15 Aug 2022 10:42:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1660552968;
	bh=68DGSHVwro7RgyQ5yJspb0RyMqZ7ZWmz79LYhojdf5w=; l=1545;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=aBy/UiuL210OqxxYYE8B9tGmoR4Q34m75VHv6oy1Bl89CArbsBtHs+7TeW+JGy8V8
	 HzF2avNWV0QOe7zHxh+M7TOB31hlJZZ6aiCZtCxhtAGbjBGgAViY0k1q9g/6x+lpDu
	 fP3rFC+fBSH/WKfR00sqXCJpRlMMXx3nOI/oIc+6uPrFBDjereXbL3bgrR/OXy7KnW
	 kYXvis8pJrR0xGR8TREh+unpS/W3wnRNlPG5gDnHzxb6TNFdIZr5S7RrXl5Fal8f4y
	 EqNdrhlzYokW+DUOyPEX3KQgAth7kOipWcoNdQXBnh5Ypb8tpJaIsCEV1G6U2XwY6Y
	 fFtN+HhUbpFjg==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27F8gWr72540854
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Mon, 15 Aug 2022 10:42:33 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ( [192.168.12.73]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 50C31578518; Mon, 15 Aug 2022 10:42:27 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 27F8gQoP811080
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 15 Aug 2022 10:42:26 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oNVg2-000EJC-0v;
	Mon, 15 Aug 2022 10:42:26 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Mon, 15 Aug 2022 10:42:16 +0200
Message-Id: <d7ad187b1323de324213db605890a31d3b826464.1660552646.git.enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <cover.1660552646.git.enrico.scholz@sigma-chemnitz.de>
References: <cover.1660552646.git.enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_094330_366032_A717EE5C 
X-CRM114-Status: UNSURE (   8.72  )
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
Subject: [PATCH v3 12/18] tftp: refactor data processing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

move block handling into dedicated function

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 37 +++++++++++++++++++++----------------
 1 file changed, 21 insertions(+), 16 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 2ed62b77901b..2bb9361d8929 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -260,6 +260,26 @@ static void tftp_timer_reset(struct file_priv *priv)
 	priv->progress_timeout = priv->resend_timeout = get_time_ns();
 }
 
+static void tftp_put_data(struct file_priv *priv, uint16_t block,
+			  void const *pkt, size_t len)
+{
+	if (len > priv->blocksize) {
+		pr_warn("tftp: oversized packet (%zu > %d) received\n",
+			len, priv->blocksize);
+		return;
+	}
+
+	priv->last_block = block;
+
+	kfifo_put(priv->fifo, pkt, len);
+
+	if (len < priv->blocksize) {
+		tftp_send(priv);
+		priv->err = 0;
+		priv->state = STATE_DONE;
+	}
+}
+
 static void tftp_recv(struct file_priv *priv,
 			uint8_t *pkt, unsigned len, uint16_t uh_sport)
 {
@@ -339,23 +359,8 @@ static void tftp_recv(struct file_priv *priv,
 			/* Same block again; ignore it. */
 			break;
 
-		if (len > priv->blocksize) {
-			pr_warn("tftp: oversized packet (%u > %d) received\n",
-				len, priv->blocksize);
-			break;
-		}
-
-		priv->last_block = priv->block;
-
 		tftp_timer_reset(priv);
-
-		kfifo_put(priv->fifo, pkt + 2, len);
-
-		if (len < priv->blocksize) {
-			tftp_send(priv);
-			priv->err = 0;
-			priv->state = STATE_DONE;
-		}
+		tftp_put_data(priv, priv->block, pkt + 2, len);
 
 		break;
 
-- 
2.37.1



