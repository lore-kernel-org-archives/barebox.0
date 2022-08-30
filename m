Delivery-date: Tue, 30 Aug 2022 09:43:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvuM-001UPP-W9
	for lore@lore.pengutronix.de; Tue, 30 Aug 2022 09:43:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvuK-0004Dq-J8
	for lore@pengutronix.de; Tue, 30 Aug 2022 09:43:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W21GzSxaLnTabqw6fxtJd2Axa04If1zDImpgiofNLdQ=; b=xQfjDu//E9DNmNnMuC2GtSJSVC
	6EOuw87oYDgY/36EEYwVcDAJAiQnNNtzR2Bhp5Vayo4Ysb1dyGOZ4OsClHlcz/6vWP4PtezncSleq
	SSthDk/HMeU9idi9eDCwkPEyembCEy3RSpGkCk0Fk7cG1med246Laz9YsBQBGSwCA4/FF07aQftAD
	UqP0DHpBEkLSDEo+sKV6a12QIGi9iGzMXm9yXYpxurhQoOC2YhZW+5of5ylt6qP5bJrbJQsYnchWS
	I6zAuQ6VgrCb60chRnlC3mgGHTu7AfRlwQ0rO7NPYqpyW8+ZHPk8U8mwlEn7muJZuMaHyQfP0BbRk
	4nWdG19Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvsg-00EqYz-0O; Tue, 30 Aug 2022 07:41:54 +0000
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvqK-00Ep0i-05
	for barebox@lists.infradead.org; Tue, 30 Aug 2022 07:39:31 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27U7cSit806682
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Tue, 30 Aug 2022 09:38:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1661845109;
	bh=W21GzSxaLnTabqw6fxtJd2Axa04If1zDImpgiofNLdQ=; l=1642;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=e8u8dVUwseY1X5HdSJ2wgOwklON9ZBToYR6Qi9h0JYjKQhXmgEpUvFNP6ipvfjQFI
	 D7yZ2pnYKXjxijrRtDAN8OlX7rnHIDPNBCxwNfFDrXtQYLVNok+r08WPh788BvcExu
	 W55h6g5Y6cM6loAkEUL+WlDOA0d6nzElTELny/iBtVbjJYG6tsN5WKDXgbskdYL87w
	 kECTS+QkpfGz62sD9F5FklsyazWuJadGCgfmHOj5xPWwg4woWK/ucaewmae/+7nDQv
	 G4j23755BiUGX50lq5dA/UfchPKu0Nmq/CUz5Dwdg9vO4OS/L0Pgtok4cuy4lPyJcJ
	 UWOTzLc24fKCA==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27U7cOBr2895727
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Tue, 30 Aug 2022 09:38:24 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ( [192.168.12.73]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 6067D847121; Tue, 30 Aug 2022 09:38:21 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 27U7cKsL949564
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Tue, 30 Aug 2022 09:38:20 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oSvpE-00BJ3F-52;
	Tue, 30 Aug 2022 09:38:20 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Tue, 30 Aug 2022 09:38:06 +0200
Message-Id: <20220830073816.2694734-12-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
References: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_003928_399261_67DDD564 
X-CRM114-Status: GOOD (  10.75  )
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
Subject: [PATCH v4 11/21] tftp: add sanity check for OACK response
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Catch bad 'blocksize' or 'windowsize' responses from the server.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 64a94797cda3..4e31adcd60ed 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -229,7 +229,7 @@ static int tftp_poll(struct file_priv *priv)
 	return 0;
 }
 
-static void tftp_parse_oack(struct file_priv *priv, unsigned char *pkt, int len)
+static int tftp_parse_oack(struct file_priv *priv, unsigned char *pkt, int len)
 {
 	unsigned char *opt, *val, *s;
 
@@ -246,7 +246,7 @@ static void tftp_parse_oack(struct file_priv *priv, unsigned char *pkt, int len)
 		opt = s;
 		val = s + strlen(s) + 1;
 		if (val > s + len)
-			return;
+			break;
 		if (!strcmp(opt, "tsize"))
 			priv->filesize = simple_strtoull(val, NULL, 10);
 		if (!strcmp(opt, "blksize"))
@@ -254,6 +254,13 @@ static void tftp_parse_oack(struct file_priv *priv, unsigned char *pkt, int len)
 		pr_debug("OACK opt: %s val: %s\n", opt, val);
 		s = val + strlen(val) + 1;
 	}
+
+	if (priv->blocksize > TFTP_MTU_SIZE) {
+		pr_warn("tftp: invalid oack response\n");
+		return -EINVAL;
+	}
+
+	return 0;
 }
 
 static void tftp_timer_reset(struct file_priv *priv)
@@ -349,8 +356,14 @@ static void tftp_recv(struct file_priv *priv,
 		break;
 
 	case TFTP_OACK:
-		tftp_parse_oack(priv, pkt, len);
 		priv->tftp_con->udp->uh_dport = uh_sport;
+
+		if (tftp_parse_oack(priv, pkt, len) < 0) {
+			priv->err = -EINVAL;
+			priv->state = STATE_DONE;
+			break;
+		}
+
 		priv->state = STATE_START;
 		break;
 
-- 
2.37.2



