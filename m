Delivery-date: Sun, 31 Jul 2022 13:39:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oI7IS-006Ivx-Ud
	for lore@lore.pengutronix.de; Sun, 31 Jul 2022 13:39:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oI7IQ-0004W5-MO
	for lore@pengutronix.de; Sun, 31 Jul 2022 13:39:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yoXCmEqA+vptnFLE4b5IzEvCdGtMbm1qxTsFSqRxGDo=; b=IFF1flGN2rV/wMYpQY1BnIyYC2
	XGDPOlCJ/ZljtzyeHH8Kb374R6BMgCoVp9Kvk3QknokH1/5VeQ0zJd4y5CMXre5h50M03BRuFEkhS
	yt0EHjDfsN+5K7ohjCIVUaArwIS3DXpTFYO8xUjCmjVZlZQk9MOl9q67PIPg7pFgPnYul8HWvwf0G
	04UbpFC2yfJZT9Cg/i4qFQ/W13dQv24AKONPikt/w1mfBuiG3BFCzJlt9y8PPREJrs8RWVmIlVge5
	V58j/AEYSE23LLgsicp/ZbhDyYimzuCQpUGooFSm4GFAaxjS+le7YgGfghnBwZV3S27IsMZ1GkK7m
	c9TYfGpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oI7GR-00Bl4J-Bg; Sun, 31 Jul 2022 11:37:43 +0000
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oI7GK-00Bkbh-0h
	for barebox@lists.infradead.org; Sun, 31 Jul 2022 11:37:39 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 26VBas6O516352
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Sun, 31 Jul 2022 13:36:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1659267415;
	bh=yoXCmEqA+vptnFLE4b5IzEvCdGtMbm1qxTsFSqRxGDo=; l=1774;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=Q/f+CZCQ2JfJpIkP50tb2YO/RY4gUcG0MpQunr6rLBy8uIdf+6/Xqo2zhtNFIuR9N
	 bD2csvpAhibPXAt8COQAaXM2GS8m/qibgghK5XuoDOGHcmmvsoEvqcWJf3+vR//IYC
	 /pv2Vyu/Wv6UtDw+vmbNozw3F+Z/ljAOUKH4M0Itns3KnhOmqcHBrGSt5DbaxRxJuF
	 C9D4Hq9z/S39ac5LG4ZvtUSrbK0MakRXF5mJlu1EoTRxh0AuIT+hBMGHxYvrcqKWNb
	 E26OA41Lvq7uDZMLIZiQtfju1BOfzICkNuBZ1zvdplpq8IMdobomA2F1JPyjLV/BE2
	 OwPXWF8ZA8p5w==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 26VBaoF12121293
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Sun, 31 Jul 2022 13:36:51 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ( [192.168.12.72]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 171E73D025E; Sun, 31 Jul 2022 13:36:48 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 26VBalPY494827
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Sun, 31 Jul 2022 13:36:48 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oI7FX-00HAaS-Kt;
	Sun, 31 Jul 2022 13:36:47 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Sun, 31 Jul 2022 13:36:45 +0200
Message-Id: <20220731113645.4092241-2-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <e6880d7e8421f02f41802ae6d91533a5c8d7019b.1658144543.git.enrico.scholz@sigma-chemnitz.de>
References: <e6880d7e8421f02f41802ae6d91533a5c8d7019b.1658144543.git.enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220731_043737_432601_4CCB11A9 
X-CRM114-Status: GOOD (  11.97  )
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
X-Spam-Status: No, score=-104.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 13/13] tftp: add sanity check for OACK response
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Catch bad 'blocksize' or 'windowsize' responses from the server.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index cfeb94b21..93b0606d3 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -292,7 +292,7 @@ static int tftp_poll(struct file_priv *priv)
 	return 0;
 }
 
-static void tftp_parse_oack(struct file_priv *priv, unsigned char *pkt, int len)
+static int tftp_parse_oack(struct file_priv *priv, unsigned char *pkt, int len)
 {
 	unsigned char *opt, *val, *s;
 
@@ -309,7 +309,7 @@ static void tftp_parse_oack(struct file_priv *priv, unsigned char *pkt, int len)
 		opt = s;
 		val = s + strlen(s) + 1;
 		if (val > s + len)
-			return;
+			break;
 		if (!strcmp(opt, "tsize"))
 			priv->filesize = simple_strtoull(val, NULL, 10);
 		if (!strcmp(opt, "blksize"))
@@ -319,6 +319,15 @@ static void tftp_parse_oack(struct file_priv *priv, unsigned char *pkt, int len)
 		pr_debug("OACK opt: %s val: %s\n", opt, val);
 		s = val + strlen(val) + 1;
 	}
+
+	if (priv->blocksize > TFTP_MTU_SIZE ||
+	    priv->windowsize > TFTP_MAX_WINDOW_SIZE ||
+	    priv->windowsize == 0) {
+		pr_warn("tftp: invalid oack response\n");
+		return -EINVAL;
+	}
+
+	return 0;
 }
 
 static void tftp_timer_reset(struct file_priv *priv)
@@ -500,10 +509,12 @@ static void tftp_recv(struct file_priv *priv,
 		break;
 
 	case TFTP_OACK:
-		tftp_parse_oack(priv, pkt, len);
 		priv->tftp_con->udp->uh_dport = uh_sport;
 
-		if (priv->push) {
+		if (tftp_parse_oack(priv, pkt, len) < 0) {
+			priv->err = -EINVAL;
+			priv->state = STATE_DONE;
+		} else if (priv->push) {
 			/* send first block */
 			priv->state = STATE_WDATA;
 			priv->block = 1;
-- 
2.37.1



