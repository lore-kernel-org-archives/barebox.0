Delivery-date: Mon, 18 Jul 2022 14:26:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oDPp3-00D7Js-If
	for lore@lore.pengutronix.de; Mon, 18 Jul 2022 14:26:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oDPp0-0008U1-W3
	for lore@pengutronix.de; Mon, 18 Jul 2022 14:26:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bHFC8AbwXEK2g6m0+N0/ep62zE3rZF6NtGjrpCYs46g=; b=v3W4rtzxQcUTBc1KlLXk1dECer
	jhskJu+Q+rmBbjQOkXHn5QnPy33T00apAPUE/jAETebxbNXTTpCT+xKiC68+Ep2V8qOnnB1h4rpub
	2m1kG35XHkG6eW1kIT7AqGkPJt+p7lsrPfFZ/BdvWvi0F+1dxzyHQorXgXDKbQduYr+WbtOuND9su
	gOTSPtCCCmwy39PNY2UbahjzF8Ch3uh0/Q1xMg78YVxHInGTz/Z6JeURs3i0SHx2Qmc5CL2XZEYrg
	kwXAytT/fitmkYzv7EtvLI0WFVQ2oveqtnF5luzzAZ5NxG7puC3Dga0HCyiG0e+18LrkdBLbg1sgW
	F81TDNFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPnY-00DEY2-QG; Mon, 18 Jul 2022 12:24:28 +0000
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPmh-00DDXZ-5R
	for barebox@lists.infradead.org; Mon, 18 Jul 2022 12:23:36 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 26ICMpht390618
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Mon, 18 Jul 2022 14:22:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1658146971;
	bh=bHFC8AbwXEK2g6m0+N0/ep62zE3rZF6NtGjrpCYs46g=; l=980;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=1IR7jOPQKclyjwo9mxtG34jzt8R1KXZNHDJ7Sd672qdC4CKCcON/eE5l9R5jkr5ZT
	 Suxwxt57tFTROsqilZl3ztndO6Wx3Gxp7+2ucnKLLueTz7tU0icCQ/sRz0ljvPISZ7
	 eVr8WwpikcPQUiPU57gZbR2gOgTUQTsSoCf8ehz3Tg9PVNtZpWC0/DLdx2QLNwNvAJ
	 w39T6kpqe3sfQHZ7oTS3F5x6NyJV5v8yhRhc1TxBZg/glN6+3QSzGMHidO4FeOcJJm
	 alpDF0zF/0gCROWkaDQ/LkR0RhCCv0V2e8/qPnMAR7c+kOPudB6Fw9ITBj3T8QzQjY
	 uWH8Y5C5fZZ/g==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 26ICMZD21699961
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Mon, 18 Jul 2022 14:22:35 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ( [192.168.12.72]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 895E0CD1837; Mon, 18 Jul 2022 14:22:33 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 26ICMW1N371858
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 18 Jul 2022 14:22:33 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oDPlg-002g3Y-Th;
	Mon, 18 Jul 2022 14:22:32 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Mon, 18 Jul 2022 14:22:23 +0200
Message-Id: <813950f89bce544f5aa84d48f0e2f53d7a0e4d3d.1658144543.git.enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <cover.1658144543.git.enrico.scholz@sigma-chemnitz.de>
References: <cover.1658144543.git.enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220718_052335_413055_45D0E70C 
X-CRM114-Status: UNSURE (   9.60  )
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
X-Spam-Status: No, score=-104.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 08/13] tftp: detect out-of-memory situations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

it should never happen due to the program logic; but detect a failed
kfifo_put() just in case...

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 81141626ab91..ef2ce0200b38 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -252,11 +252,18 @@ static void tftp_timer_reset(struct file_priv *priv)
 static void tftp_put_data(struct file_priv *priv, uint16_t block,
 			  void const *pkt, size_t len)
 {
+	unsigned int sz;
+
 	priv->last_block = block;
 
-	kfifo_put(priv->fifo, pkt, len);
+	sz = kfifo_put(priv->fifo, pkt, len);
 
-	if (len < priv->blocksize) {
+	if (sz != len) {
+		pr_err("tftp: not enough room in kfifo (only %u out of %zu written\n",
+		       sz, len);
+		priv->err = -ENOMEM;
+		priv->state = STATE_DONE;
+	} else if (len < priv->blocksize) {
 		tftp_send(priv);
 		priv->err = 0;
 		priv->state = STATE_DONE;
-- 
2.36.1



