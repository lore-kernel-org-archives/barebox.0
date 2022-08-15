Delivery-date: Mon, 15 Aug 2022 10:47:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNVlI-006EWI-5V
	for lore@lore.pengutronix.de; Mon, 15 Aug 2022 10:47:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNVlH-00010Q-H7
	for lore@pengutronix.de; Mon, 15 Aug 2022 10:47:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y6kWIrkC/FyOEVo/op5mWgG1RQtswYKfrPeQJEvxsYc=; b=2oFa9RX05AYR2smb3lQZFXmCKQ
	SSEnCVlcdpmn9hukNHHkWHrRcTEz5jedPtzwOfZWF/jIM2QRv+Trj/eIziuW74cSuV2/oIXDqMixB
	++p5wVAwlIqaTUKyWnmjZW7Py1MKd9p6tQtn+EXP77Y8XO0yxU2/l1kfsEPrpuTyu23/ZuAz4/aeq
	loDgWeS9zes3NwsUS+NRdTqS+/Zh03Vrky3NlL9CQN87BJMmXOwGvFOvroQWzpaZ7NE8RYksZ56nD
	Pf3jxKu6XgY+anh+jb2sFyUTLWz8io9YHrWb+OV1Oa2JizMH0yW8k1z56M9tb9haYN/nSj31IqRtE
	fnjV6iNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNVjJ-00DLUX-TI; Mon, 15 Aug 2022 08:45:51 +0000
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNVgw-00DJfo-5T
	for barebox@lists.infradead.org; Mon, 15 Aug 2022 08:43:30 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27F8gatZ661990
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Mon, 15 Aug 2022 10:42:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1660552956;
	bh=y6kWIrkC/FyOEVo/op5mWgG1RQtswYKfrPeQJEvxsYc=; l=1642;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=FYUnAXftCLqulEvKttiJ5dthGkw4MX+HhEIZNbdYP+lcAnqBsLyMFERgrTG7lj9Tn
	 E+Ih4o2t6cxtO+uCuHoBkq48i02E2eOxUcOiF0zSCriw1eUEcl1w9ANQwwsRUYmGpZ
	 2Ha+OIa0Cl3zgfkHQ0hvigxxyVaWjSj2R/MFeSc1usIS9zvbGqIZ6LELqwjwX9ytdI
	 Ku38IlPIkKCjJFbz9p3LZ6L3WNkff8oxnoacqvSyNJj72XSknMg194vcd9+nrK9Y/T
	 lnvMZeAG5f+zKVx2viVBh9XeKQMd2OvPk72endKDvguUEBaqBvSYQjrPz2l8l3w2RS
	 Tjw4DTelwGVZg==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27F8gWjU2540853
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Mon, 15 Aug 2022 10:42:33 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ( [192.168.12.73]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 4645FCBE3A5; Mon, 15 Aug 2022 10:42:27 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 27F8gPSN811077
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 15 Aug 2022 10:42:27 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oNVg1-000EJ2-UI;
	Mon, 15 Aug 2022 10:42:25 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Mon, 15 Aug 2022 10:42:13 +0200
Message-Id: <903547f07c729bf1d942b0eb8781cb10643e4773.1660552646.git.enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <cover.1660552646.git.enrico.scholz@sigma-chemnitz.de>
References: <cover.1660552646.git.enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_014324_394308_62357D06 
X-CRM114-Status: GOOD (  10.42  )
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
X-Spam-Status: No, score=-103.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 09/18] tftp: add sanity check for OACK response
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Catch bad 'blocksize' or 'windowsize' responses from the server.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 0b6d57c4603f..38a9e955ee92 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -218,7 +218,7 @@ static int tftp_poll(struct file_priv *priv)
 	return 0;
 }
 
-static void tftp_parse_oack(struct file_priv *priv, unsigned char *pkt, int len)
+static int tftp_parse_oack(struct file_priv *priv, unsigned char *pkt, int len)
 {
 	unsigned char *opt, *val, *s;
 
@@ -235,7 +235,7 @@ static void tftp_parse_oack(struct file_priv *priv, unsigned char *pkt, int len)
 		opt = s;
 		val = s + strlen(s) + 1;
 		if (val > s + len)
-			return;
+			break;
 		if (!strcmp(opt, "tsize"))
 			priv->filesize = simple_strtoull(val, NULL, 10);
 		if (!strcmp(opt, "blksize"))
@@ -243,6 +243,13 @@ static void tftp_parse_oack(struct file_priv *priv, unsigned char *pkt, int len)
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
@@ -295,8 +302,14 @@ static void tftp_recv(struct file_priv *priv,
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
2.37.1



