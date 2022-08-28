Delivery-date: Sun, 28 Aug 2022 16:05:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSIux-00D8H6-P6
	for lore@lore.pengutronix.de; Sun, 28 Aug 2022 16:05:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSIur-0002QG-HJ
	for lore@pengutronix.de; Sun, 28 Aug 2022 16:05:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=05OwCyLWT7NIBVxDy30FNAumcaCwu909yILx6HTw/AE=; b=ObZDJf31sPzj/ThddUB4xc7S+h
	wdXtXaT6IdSw5cpXnuOsbw/XZHuoBxe3FiQVSAZc+/AT6V3vla2WycqCCcIkaIJPg6+JUvg18KOn3
	DyE+4u/GMvypaBYPcfjvwIJhOy2zjWnAQwHjdQeWalBKr1KjHGK0LZvEHTBafWE/vib0BJs1WZPC5
	khw5l3nTXu2wunpQuANOhGwcM3ldfnnav2FfyhURDgTYdF0MBB7j0/191BcHB0v42RPaIfETcS2Tv
	3XqyzVprEL72a2jwFmBmChcGXqc1O7E1XpuTreiovG8qPy+ebWmtLCGjNdmrpOXq59tgiLowPtNBu
	nBrX4l8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSIt5-00HKDE-Ac; Sun, 28 Aug 2022 14:03:43 +0000
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSIsr-00HJng-Hy
	for barebox@lists.infradead.org; Sun, 28 Aug 2022 14:03:31 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27SE2piA976785
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Sun, 28 Aug 2022 16:02:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1661695371;
	bh=05OwCyLWT7NIBVxDy30FNAumcaCwu909yILx6HTw/AE=; l=1074;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=ezsfhS8ZuDjPGjPDD+z3sc/M67gM2dyuP0Pr+CzwkZ7JuR4YW9GJKHOMvdTCS7hOB
	 gCm1wu5GFr8R+7LIz8YF65kdwl03eGMTv3Z9El0UiH4/MSjonzUZcjTDEYy+TtdG7s
	 GwgSLbrDr5ZP2TNE0smEctKua55iNQb+ZBd5heoX7+336r5kwWM6XuMal3OpWMH8MI
	 byOf1hkqcDvAEtEPsOoi45uK8F/HR4Ize3womPhvcISByZAFoz+LPu6vYPKxbS3ngs
	 nfvY4uL1SHNtpv4J4CvnGjoJu+gG2QLynMMn/peHXMnD+ShvWNjeU1JlVlO/Vb1iNw
	 CZ+IrIqMp8oNw==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27SE2fUa2843356
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Sun, 28 Aug 2022 16:02:43 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ( [192.168.12.73]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 448DBB9758D; Sun, 28 Aug 2022 16:02:38 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 27SE2bWN933379
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Sun, 28 Aug 2022 16:02:38 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oSIs1-003u7d-CB;
	Sun, 28 Aug 2022 16:02:37 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Sun, 28 Aug 2022 16:02:27 +0200
Message-Id: <20220828140231.930643-5-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220828140231.930643-1-enrico.scholz@sigma-chemnitz.de>
References: <20220828140231.930643-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220828_070329_794512_3577CAAA 
X-CRM114-Status: UNSURE (   7.80  )
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
Subject: [PATCH 4/8] tftp: accept OACK + DATA datagrams only in certain states
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
index 610483d23c40..fb6c368b3a64 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -690,6 +690,12 @@ static void tftp_recv(struct file_priv *priv,
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
@@ -713,6 +719,12 @@ static void tftp_recv(struct file_priv *priv,
 			tftp_window_cache_reset(&priv->cache);
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



