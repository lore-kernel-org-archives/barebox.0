Delivery-date: Tue, 30 Aug 2022 09:42:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvsu-001UKx-7D
	for lore@lore.pengutronix.de; Tue, 30 Aug 2022 09:42:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvsr-0003dZ-AW
	for lore@pengutronix.de; Tue, 30 Aug 2022 09:42:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=83QZ4XeJVu9wQWjLZwYRLVWq//ZPcIcdMeiF0MOKHlM=; b=L/WWSNOfDzrzVTuOqXp1AOWddq
	GWgeUc0gV0lyLQixvFoF4fGJdPdX+BT34HZ+T1i+IulHsMyhVlo6CXqilh/XoOYiDo+1aCXNCoixO
	96vRAaqXQyx9u/u9RL24fgSWVml7t4qZz2jxKS/zt2dTfM8b0eQJXzF2JeyKWmuA1TX0ykv4P+gha
	+tyzshxXEpwIC/nHFjRJa7VqmBJ0XjaLtQzOuEwdt/aZDjOE73lI2Bs+qjCEeQzEuA5MX40uWkE0m
	/992QKJ7nwTwx/f5TD6d+vJeW5RHo88UZoSZnuEr39+swHyx5s4QLdOGMOBNA0Wz0yA0MCMCP34X9
	NNW2wk5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvrO-00Eq0b-TD; Tue, 30 Aug 2022 07:40:35 +0000
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvq9-00Ep76-6O
	for barebox@lists.infradead.org; Tue, 30 Aug 2022 07:39:18 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27U7cdqa993557
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Tue, 30 Aug 2022 09:38:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1661845119;
	bh=83QZ4XeJVu9wQWjLZwYRLVWq//ZPcIcdMeiF0MOKHlM=; l=1452;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=PjjQ5nhhPBeR+tgkHf8w3D3+LNqsbyxU+ya3lzDTsKVjWtnEGd/EJanfmm4a+N+Gu
	 f0A/MZbVA7kEBxxWM3pBKJWgzwYk5QP86cng6uw4VaU6NmuZ8NHlIVPciZmNAT3CA6
	 sviQrIPx7Jc6xtjo9ChgIcdmw0egXYCD7A7Onvd4i6PamxIPfC84ALx38QQP3GLMHQ
	 j3ntrG/XsS5Cc7Ooqi8lSw/uFbS42Im8tsWOfoUYshrSCnYbXc4tPu33yYampd9/Vr
	 Fbqq2U/ChTRYkq0dY1QLwl2d+HtncCCTff9PGxjAZEOsSzxiXvPt76PejMUBMB0yL6
	 /FU4HNs5kM09A==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27U7cQvs1001082
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Tue, 30 Aug 2022 09:38:29 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ( [192.168.12.72]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 4B6F0B3B65E; Tue, 30 Aug 2022 09:38:22 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27U7cKlB772618
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Tue, 30 Aug 2022 09:38:20 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oSvpE-00BJ3O-9I;
	Tue, 30 Aug 2022 09:38:20 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Tue, 30 Aug 2022 09:38:09 +0200
Message-Id: <20220830073816.2694734-15-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
References: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_003917_706641_98301677 
X-CRM114-Status: UNSURE (   8.82  )
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
Subject: [PATCH v4 14/21] tftp: refactor data processing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

move block handling into dedicated function

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 37 +++++++++++++++++++++----------------
 1 file changed, 21 insertions(+), 16 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 16e57daaef37..5b0dcb2b75d6 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -298,6 +298,26 @@ err:
 	return priv->err;
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
@@ -390,23 +410,8 @@ static void tftp_recv(struct file_priv *priv,
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
2.37.2



