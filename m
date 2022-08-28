Delivery-date: Sun, 28 Aug 2022 16:05:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSIux-00D8H5-JQ
	for lore@lore.pengutronix.de; Sun, 28 Aug 2022 16:05:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSIur-0002QB-6Z
	for lore@pengutronix.de; Sun, 28 Aug 2022 16:05:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XuOg88hgpwgu3Q3+Xysqiize0bmgLPEXA9Xg+8qgWVs=; b=evi0iKNA25faDbt0v8ARFcbyBZ
	DhQ+8RRatc9NMPgvssm3gXLf8EQ+OpCevc68xVfK7w1HrKGv9bRVNY3vZ1jGuox+8jlPtW836MYBy
	edOdsJdZYYM7x7V8AlMfymVNEozw4ek9TK81ASXeodbcmm0JerZ1xW7VndlHTIXIfa0DTaxwnUAxX
	uDFTWsPbtBTBcNnikpW2ALcNWS5A+PlM90nMJE+eCVhZ7T42spj+0HUNQzL/6RrY5Tx4rB5wFkDNg
	fv6QRNbLB97brS448wPzicRip8brBZXGJmO7cccMPoIK7Bj8+O5BPke6ocbAZU51QCnXJJqWIYVva
	xb2xiwOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSItK-00HKJd-MP; Sun, 28 Aug 2022 14:03:59 +0000
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSIsw-00HJnb-Qh
	for barebox@lists.infradead.org; Sun, 28 Aug 2022 14:03:39 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27SE2opd789823
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Sun, 28 Aug 2022 16:02:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1661695370;
	bh=XuOg88hgpwgu3Q3+Xysqiize0bmgLPEXA9Xg+8qgWVs=; l=1962;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=mbM2n4LZaHwCSai3j+fRaMFwQQyTV5YEiQ4zjwxeqa7qAqb0jQDmw526aB6ir9Vm4
	 YtO7inyHlB/uZmVRWZGJoqWPIVYBT/EEEjIRN6MXNL29+RLJrPklKu1jjCNLFewEPC
	 t4Qr6w0wet81ejVBGdWcbC8RVNOYF00QraFznsJ2HThBgj5UwYed9YlXeSDDANvrzM
	 Yt+cxcP/lN1dsNz1YHKRhRcWMWIyYvThhs6j9o/pePH4SireHI0rggtwWfPE1ITUE1
	 xQYjgXmuG8gCKR3SYMgOE8cZMGc95w+KPCIkq8YDEEyB6oLxCUD9gqkMvWed9lFmF/
	 982txXm4HonEw==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27SE2egO2843345
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Sun, 28 Aug 2022 16:02:40 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ( [192.168.12.72]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 8C61FEAB5CC; Sun, 28 Aug 2022 16:02:38 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27SE2b67756479
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Sun, 28 Aug 2022 16:02:38 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oSIs1-003u7a-B3;
	Sun, 28 Aug 2022 16:02:37 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Sun, 28 Aug 2022 16:02:26 +0200
Message-Id: <20220828140231.930643-4-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220828140231.930643-1-enrico.scholz@sigma-chemnitz.de>
References: <20220828140231.930643-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220828_070336_059723_6A4ED9D7 
X-CRM114-Status: GOOD (  10.97  )
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
Subject: [PATCH 3/8] tftp: split out allocation and cache initialization
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Refactors existing code in a new function.

It also updates 'priv->state' now in error state.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 46 +++++++++++++++++++++++++++++++---------------
 1 file changed, 31 insertions(+), 15 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index aaeb19590e93..610483d23c40 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -619,6 +619,31 @@ static void tftp_handle_data(struct file_priv *priv, uint16_t block,
 	}
 }
 
+static int tftp_allocate_transfer(struct file_priv *priv)
+{
+	debug_assert(!priv->fifo);
+
+	/* multiplication is safe; both operands were checked in tftp_parse_oack()
+	   and are small integers */
+	priv->fifo = kfifo_alloc(priv->blocksize * priv->windowsize);
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
+	} else {
+		tftp_window_cache_init(&priv->cache,
+				       priv->blocksize, priv->windowsize);
+	}
+
+	return 0;
+}
+
 static void tftp_recv(struct file_priv *priv,
 			uint8_t *pkt, unsigned len, uint16_t uh_sport)
 {
@@ -723,22 +748,13 @@ static void tftp_handler(void *ctx, char *packet, unsigned len)
 
 static int tftp_start_transfer(struct file_priv *priv)
 {
-	/* multiplication is safe; both operands where checked in tftp_parse_oack()
-	   and are small integers */
-	priv->fifo = kfifo_alloc(priv->blocksize * priv->windowsize);
-	if (!priv->fifo)
-		return -ENOMEM;
+	int rc;
 
-	if (priv->push) {
-		priv->buf = xmalloc(priv->blocksize);
-		if (!priv->buf) {
-			kfifo_free(priv->fifo);
-			priv->fifo = NULL;
-			return -ENOMEM;
-		}
-	} else {
-		tftp_window_cache_init(&priv->cache,
-				       priv->blocksize, priv->windowsize);
+	rc = tftp_allocate_transfer(priv);
+	if (rc < 0) {
+		priv->err = rc;
+		priv->state = STATE_DONE;
+		return rc;
 	}
 
 	if (priv->push) {
-- 
2.37.2



