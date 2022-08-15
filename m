Delivery-date: Mon, 15 Aug 2022 10:47:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNVkc-006EUk-G0
	for lore@lore.pengutronix.de; Mon, 15 Aug 2022 10:47:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNVkZ-0000pH-V9
	for lore@pengutronix.de; Mon, 15 Aug 2022 10:47:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t4CiTsGkQSInioCx1IolTVGJFD0ZBHq9bNA6dQ/Kmao=; b=ofEyLJdd6MCmbU0l1n5bwEz6jW
	ujMB7hN4gi5eLHam+K/WybLYwR5ai6oOnRd09EVgKgkPLYxj+Z+TGYhcHSggw+Md7Jo0FPx/D9w5k
	ed1inr4fi2GVPnQzVHazwPs0dDO9XuT3up/YTFAC966BB6dGu7TSm8oI0FSUiAEKoQ+nXn7UP6CqF
	7M7WsyiRzLJb2jH61erIQNkRp2kLndmHriVimEYoc5WfcZP/z8TeJlb13++K/6WBGrh+YQoGAW9o7
	fI4q7F98ffTLbQ37XaVMpfNYfZkz6ZZI/DP4Tt72/VuNAqIOtphQ1jdqHPVIW74WqT0DNqxI3Mgb2
	/ajorvTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNViu-00DLFL-DR; Mon, 15 Aug 2022 08:45:25 +0000
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNVgx-00DJgN-8Z
	for barebox@lists.infradead.org; Mon, 15 Aug 2022 08:43:28 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27F8gbOO848749
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Mon, 15 Aug 2022 10:42:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1660552958;
	bh=t4CiTsGkQSInioCx1IolTVGJFD0ZBHq9bNA6dQ/Kmao=; l=855;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=gyJAq0ONO8iA/Syg3Gz3P+lTY8rveRyK/lVDe11aWGnDP8KBRBKovDIb2Pe1Sj9fM
	 pHsnxuusqzwBT/njs4N7R7d728JtcGuc2hN9H78lNy8ROExCvojj6Wu1+SUPR7fViX
	 p7U32UhFUrdV4op7wUP0fmzJMF7SQUjZuFgqs6z7YokvIwh5GaL3/696gXH+EZLAH9
	 kBziXj6LbCnpwk0aUoI/gbfKs5RdwblGCXBymQ5616JQhgPC+FQF0SN6H8AI3Phj1g
	 lLVqQqKABXoyK1b7thhv/m24GeqvjeMWu4Y8Ju2+fPO0TbRRQa8kBnh0Y2A+osdpgC
	 xE9Q/PeK1/+CA==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27F8gYLZ2540872
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Mon, 15 Aug 2022 10:42:34 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ( [192.168.12.72]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 79CFBA9B506; Mon, 15 Aug 2022 10:42:29 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27F8gP9t634055
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 15 Aug 2022 10:42:27 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oNVg1-000EIw-SM;
	Mon, 15 Aug 2022 10:42:25 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Mon, 15 Aug 2022 10:42:11 +0200
Message-Id: <891f4bd768daa602bf96ef3a546e63ba842249e0.1660552646.git.enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <cover.1660552646.git.enrico.scholz@sigma-chemnitz.de>
References: <cover.1660552646.git.enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_014324_404250_3DC56771 
X-CRM114-Status: UNSURE (   8.56  )
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
X-Spam-Status: No, score=-103.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 07/18] tftp: replace hardcoded blksize by global constant
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 7627f3f59669..b552a5dc2f63 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -65,6 +65,7 @@
 #define STATE_DONE	8
 
 #define TFTP_BLOCK_SIZE		512	/* default TFTP block size */
+#define TFTP_MTU_SIZE		1432	/* MTU based block size */
 #define TFTP_FIFO_SIZE		4096
 
 #define TFTP_ERR_RESEND	1
@@ -135,14 +136,15 @@ static int tftp_send(struct file_priv *priv)
 				"tsize%c"
 				"%lld%c"
 				"blksize%c"
-				"1432",
+				"%u",
 				priv->filename + 1, '\0',
 				'\0',	/* "octet" */
 				'\0',	/* "timeout" */
 				TIMEOUT, '\0',
 				'\0',	/* "tsize" */
 				priv->filesize, '\0',
-				'\0');	/* "blksize" */
+				'\0',	/* "blksize" */
+				TFTP_MTU_SIZE);
 		pkt++;
 		len = pkt - xp;
 		break;
-- 
2.37.1



