Delivery-date: Tue, 30 Aug 2022 09:41:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvsi-001UK6-Dp
	for lore@lore.pengutronix.de; Tue, 30 Aug 2022 09:41:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvsg-0003Xb-8S
	for lore@pengutronix.de; Tue, 30 Aug 2022 09:41:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5ZSjYv30OtgHmJezQn6gCB7E8CIF87qeGaAKH4mOaS4=; b=HohT8UFJ+6JxmHM8pPrkOD+VBv
	j662QJVW7OpR0MHPADYOAQVL6FHunCa3ueBL0qqQmB4/yZ+0TXymhfUm0P60e04Vp2Gms2Q4dWEW2
	UxMPQsmCgjCNLII0c5V5eP7N67jbcFrCGA3NJ6xhXk8exbNb7weDCHNQJye3Ss7LaBZ2SlrokU1Kr
	kYRmoIGNMN24Hs7gRnv6DUX7HupyX4x5I+dGnKsjDfLjAHx32/jpBU1m7Jb1SG0yHoMGxtNopiPzr
	ZhuXsRVdiDjMSA+nIYE3Nwl7mIPSGy0ZQfOg9aOAl5+GfHKEqTCG7taU3USeuNVmO3oqvHP2Dqvhh
	sbc0uDAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvrF-00EpwJ-V3; Tue, 30 Aug 2022 07:40:26 +0000
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvq9-00Ep6V-4S
	for barebox@lists.infradead.org; Tue, 30 Aug 2022 07:39:18 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27U7ccdx806694
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Tue, 30 Aug 2022 09:38:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1661845118;
	bh=5ZSjYv30OtgHmJezQn6gCB7E8CIF87qeGaAKH4mOaS4=; l=1042;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=2SQ6LdQo/bujYVEzzKR2/snjUKLQAuVSGixdqmcD+rHbRwejKDEfsYC3CRJUWujTs
	 erAwdF7/mHzHjyZ9KdIoYMqC2DgWd79u+lSztY7pyo88nfwPJQX/zwK2eVIRuK1ihO
	 2lqbyZ6lxlOIS7tuY80Z5X8JvuK1CUDniarKHUljB3moTQhq0BrVrTPuJbNOHcLpBg
	 CGmj3tCA+tJa/fmxEnxAd2li4GYFotxqFpIlVGlk/K3jcpfFi1rsdZPvDz9d8gtK+6
	 sHC4aLfVqInz3UUDxNnt7xn6FnBZ5bPAuwBbpbxHrbj6KtzSzz2uDSs0Hx+qIIuQd9
	 YAolxP+v4cY2A==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27U7cPdu2895739
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Tue, 30 Aug 2022 09:38:28 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ( [192.168.12.72]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id CC44DABFED; Tue, 30 Aug 2022 09:38:22 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27U7cKwM772623
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Tue, 30 Aug 2022 09:38:20 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oSvpE-00BJ3o-FO;
	Tue, 30 Aug 2022 09:38:20 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Tue, 30 Aug 2022 09:38:15 +0200
Message-Id: <20220830073816.2694734-21-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
References: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_003917_414102_F759396C 
X-CRM114-Status: UNSURE (   8.90  )
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
Subject: [PATCH v4 20/21] tftp: accept OACK + DATA datagrams only in certain states
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

These packets are valid in certain points of the transfer only and
accepting them too early or too late can corrupt internal states.

Reject them when they are unexpected.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/fs/tftp.c b/fs/tftp.c
index a9cc0ff3b118..2bffae2bf36e 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -713,6 +713,12 @@ static void tftp_recv(struct file_priv *priv,
 		break;
 
 	case TFTP_OACK:
+		if (priv->state != STATE_RRQ && priv->state != STATE_WRQ) {
+			pr_warn("OACK packet in %s state\n",
+				tftp_states[priv->state]);
+			break;
+		}
+
 		priv->tftp_con->udp->uh_dport = uh_sport;
 
 		if (tftp_parse_oack(priv, pkt, len) < 0) {
@@ -741,6 +747,12 @@ static void tftp_recv(struct file_priv *priv,
 				break;
 		}
 
+		if (priv->state != STATE_RDATA) {
+			pr_warn("DATA packet in %s state\n",
+				tftp_states[priv->state]);
+			break;
+		}
+
 		tftp_handle_data(priv, block, pkt + 2, len);
 		break;
 
-- 
2.37.2



