Delivery-date: Tue, 30 Aug 2022 09:41:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvsT-001UJ6-OU
	for lore@lore.pengutronix.de; Tue, 30 Aug 2022 09:41:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvsR-0003Sm-B1
	for lore@pengutronix.de; Tue, 30 Aug 2022 09:41:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wBit4VP+G48aMy/uKyE/QsIG/1dRa18yFutL5buUVQM=; b=U9TOj7BTAAHOwIIpUcEr99ub6n
	kJrTCHRYQJNmWjWkAcRt6FXKFFoEELP3aBKFjt5dF2gAn0V6geuoC2wtL0TCJ+nG4P/KUAA4Pgjo5
	iw4Qf7yubFGgQYeDtmkPKrjdxEdRaY8wSLCoEbzq+NEeEqDsk5/87ZGS1Yi/ytxv2i7Ld6LM+jSny
	PihFcxPu0e8DjNZNMuUD2wJ2jgoZ4TBjCANVx6Uitdjflaaaa/CeO/O2nkCwOnXsxCmG333XP7q9N
	/jb0scJdBjxSYsdgEMsjpW/9vtfLwy6in63BhYoh/5O6fcTBkCOM2B1M+E1ZHxOwqnHbaAh0SMSEs
	vTU0gOKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvqq-00Eph4-FZ; Tue, 30 Aug 2022 07:40:01 +0000
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvq3-00Ep57-AO
	for barebox@lists.infradead.org; Tue, 30 Aug 2022 07:39:13 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27U7calQ806691
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Tue, 30 Aug 2022 09:38:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1661845116;
	bh=wBit4VP+G48aMy/uKyE/QsIG/1dRa18yFutL5buUVQM=; l=923;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=1ST7CX/X3ijWslGwHoqsoMlwFO1Db8qi8o56cFsciivBUEBjh0Q27HlRXbKX31X3s
	 LF6A4TheSf8mTmuXwoxesi5UU2b4NDPSYfHdZAkJhGjDU2HnCEF+uLtTEF3GCPlTcB
	 ZjP7QD1f6aCt/XvprP1HUNd5IRA174GopXPvazgxf08RAWuVUvRi1lcG0Puzd+4efH
	 fljwEfW7c3WuLQwRA7v315MbDGzisSlmIvxmGehYAhDuykO1/GM7+zZmcYAE1aiZk4
	 OG9zhO1hBnBoG6fUDzMs6T9954WfBmk6umN5/e/QCGvWFbOAKcNLQe6bKtQy7ZNHj9
	 UfDksRbCyzpOw==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27U7cQuR1001085
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Tue, 30 Aug 2022 09:38:27 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ( [192.168.12.72]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 4A2187D934B; Tue, 30 Aug 2022 09:38:22 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27U7cKdx772620
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Tue, 30 Aug 2022 09:38:20 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oSvpE-00BJ3Z-CO;
	Tue, 30 Aug 2022 09:38:20 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Tue, 30 Aug 2022 09:38:12 +0200
Message-Id: <20220830073816.2694734-18-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
References: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_003911_550301_12B18B02 
X-CRM114-Status: GOOD (  10.03  )
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
X-Spam-Status: No, score=-102.6 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v4 17/21] tftp: do not use 'priv->block' for RRQ
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

attribute is not used outside tftp_recv() for RRQ.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 88767223b052..c6c7a2e3c887 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -425,7 +425,7 @@ static void tftp_recv(struct file_priv *priv,
 
 	case TFTP_DATA:
 		len -= 2;
-		priv->block = ntohs(*(uint16_t *)pkt);
+		block = ntohs(*(uint16_t *)pkt);
 
 		if (priv->state == STATE_RRQ) {
 			/* first block received; entered only with non rfc
@@ -440,11 +440,11 @@ static void tftp_recv(struct file_priv *priv,
 				break;
 		}
 
-		if (priv->block != (uint16_t)(priv->last_block + 1))
+		if (block != (uint16_t)(priv->last_block + 1))
 			break;
 
 		tftp_timer_reset(priv);
-		tftp_put_data(priv, priv->block, pkt + 2, len);
+		tftp_put_data(priv, block, pkt + 2, len);
 
 		break;
 
-- 
2.37.2



