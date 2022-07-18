Delivery-date: Mon, 18 Jul 2022 14:25:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oDPoH-00D7AI-5Z
	for lore@lore.pengutronix.de; Mon, 18 Jul 2022 14:25:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oDPoD-00083L-Mh
	for lore@pengutronix.de; Mon, 18 Jul 2022 14:25:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uMND0r5AyD2sOmchzYXNoprTQg0aEpfsdX9A+XGrqnU=; b=x2NS3vO0spamjXB7ryVfG5MAtU
	QK5HPN5u0KaMSblv8D0x+bYoQxAMzFJlCtWEmRJyNjW4591THLarWUOeT0W7w53DWNsB1/0IHCORn
	cuM+2Y/X3gzZ81bviMbuF66ZbJOWnTpi1tyNX6/s3aFChp/FSHTynHRtVXZzyO6TrNy7LBQlxGnw6
	n8d4ANe2filURs1WQ/1cMgEyz1wihtFVt6Nuvtf9PZF6SRbDfG1anH5rl6oBEyJfYWpizzYAl4yIe
	HT/fFC/1Ol6zjDLuN4KQCH7/YbQOw/mDX901tiwM99w2AoMivCqVBuqzLii0Iv61N1rFk3qIbn/4X
	Swl+ct0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPmi-00DDtb-In; Mon, 18 Jul 2022 12:23:36 +0000
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPmY-00DDXi-Nb
	for barebox@lists.infradead.org; Mon, 18 Jul 2022 12:23:28 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 26ICMpVg575053
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Mon, 18 Jul 2022 14:22:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1658146971;
	bh=uMND0r5AyD2sOmchzYXNoprTQg0aEpfsdX9A+XGrqnU=; l=1778;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=K2OrwquzlilW99DW8Aea2hKnzKV/7qqI1C4uXS2ckFLv5VCpWj0pHfBlLeHD4Gnij
	 DTr5DgjR96lZnrqDPPErgz5RKc4DEyFigObb8dDlt9kg3PXJ0k2Oxi/JWaAaxIn6kh
	 /1uleEWrBnruWwCQS3iST8T9ayAz39TAdDq94GnyL8ZM0ijmrksdYA42J8jpRp+WyA
	 ga9xiWqpvJ9cPDoMNK4I9KRoK5TYIw36323i+MKsKPo+C1SrI7td2B1u0jMvC7fUoG
	 7BfubVpSKGbkmIaGcL/jj6FFH7WiXUINQqUoyU7mbRdOW7PrUT5BWy2X41hh535e8/
	 25m0H08MXAk4A==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 26ICMaBv1699975
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Mon, 18 Jul 2022 14:22:38 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ( [192.168.12.72]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 2186CDA8CC8; Mon, 18 Jul 2022 14:22:33 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 26ICMX3N371872
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 18 Jul 2022 14:22:33 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oDPlh-002g3u-2D;
	Mon, 18 Jul 2022 14:22:33 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Mon, 18 Jul 2022 14:22:28 +0200
Message-Id: <e6880d7e8421f02f41802ae6d91533a5c8d7019b.1658144543.git.enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <cover.1658144543.git.enrico.scholz@sigma-chemnitz.de>
References: <cover.1658144543.git.enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220718_052327_092062_4B2BA25E 
X-CRM114-Status: GOOD (  11.74  )
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
Subject: [PATCH 13/13] tftp: add sanity check for OACK response
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Catch bad 'blocksize' or 'windowsize' responses from the server.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 400209c26023..c6491b537481 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -290,7 +290,7 @@ static int tftp_poll(struct file_priv *priv)
 	return 0;
 }
 
-static void tftp_parse_oack(struct file_priv *priv, unsigned char *pkt, int len)
+static int tftp_parse_oack(struct file_priv *priv, unsigned char *pkt, int len)
 {
 	unsigned char *opt, *val, *s;
 
@@ -307,7 +307,7 @@ static void tftp_parse_oack(struct file_priv *priv, unsigned char *pkt, int len)
 		opt = s;
 		val = s + strlen(s) + 1;
 		if (val > s + len)
-			return;
+			break;
 		if (!strcmp(opt, "tsize"))
 			priv->filesize = simple_strtoull(val, NULL, 10);
 		if (!strcmp(opt, "blksize"))
@@ -317,6 +317,15 @@ static void tftp_parse_oack(struct file_priv *priv, unsigned char *pkt, int len)
 		pr_debug("OACK opt: %s val: %s\n", opt, val);
 		s = val + strlen(val) + 1;
 	}
+
+	if (priv->blocksize > TFTP_MTU_SIZE ||
+	    priv->windowsize > TFTP_MAX_WINDOW_SIZE ||
+	    priv->windowsize == 0) {
+		pr_warn("tftp: invalid oack response");
+		return -EINVAL;
+	}
+
+	return 0;
 }
 
 static void tftp_timer_reset(struct file_priv *priv)
@@ -498,10 +507,12 @@ static void tftp_recv(struct file_priv *priv,
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
2.36.1



