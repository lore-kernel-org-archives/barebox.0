Delivery-date: Mon, 15 Aug 2022 10:47:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNVkt-006EVV-PV
	for lore@lore.pengutronix.de; Mon, 15 Aug 2022 10:47:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNVks-0000ut-IC
	for lore@pengutronix.de; Mon, 15 Aug 2022 10:47:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v91/WK9C70uOTpdIOkDr/qV4MuOwbwg08ErRhJXDU+8=; b=WFO3D9yjs9KH8xnAnAc1QHABKt
	8CBt196GTGA5ED0zpIEv0ah+aMKeUu9W8rFE2NSlPt1VNR9svntuB7TQ2rnlb6HLAxu/RIFyfi3Un
	+rWGFOeK/G+ZRvKMLyEz/W7J0wc/xfYHf4/IFGBXoXmK0QEIOtOOptjDjK27EGQ4AC3ChE/OjdIrW
	bzmKWVVlCUtkClmHXy0p7BYb3zskyizFl+rSJ0nIZ51jAHxAk12+M5rtO6JoI/xanCKAYVIZXbRmq
	Zyqgb/XSvr88H4V7VtjOxxSeXGiWpTOXCZgKMpH2AQvZQbfCO0oIZ+18HS1U5GIiVcJbox3eFnrn2
	EKR2oJrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNVj5-00DLMR-CI; Mon, 15 Aug 2022 08:45:36 +0000
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNVgx-00DJhY-1S
	for barebox@lists.infradead.org; Mon, 15 Aug 2022 08:43:28 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27F8gdOl662001
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Mon, 15 Aug 2022 10:42:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1660552959;
	bh=v91/WK9C70uOTpdIOkDr/qV4MuOwbwg08ErRhJXDU+8=; l=1462;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=s+g7OL2xoCnIyAc8kvO8zhaQLyTdz91zzReWqUXsL9ECyat+vAUQm9Xas+UGbYr+Q
	 g0IsCQ3zagiz82n7014Z7KGl5u4d6sYnBDifEHJfnN3CeVZXW4+6Q991ZurlKQ+jzj
	 8IBWvh1DYiJxeus6puzJXRdQxxW+8bVk7cnU+iJo//593WE0TIMdyDJKQjrsz3CSe3
	 aLrShSqRwCqsu1prXLXskFS7k6yVnHY0mnwveuI01dqWyfdBvnTi/W/WNKIuvDz6kp
	 41kRE76z593MqND7cOeSjWN7yzWQQtTyu0m22BipIEJzIVJIM11Vg5gdTYKqjlQqVt
	 OE2zb5Po4sOow==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27F8gYKo822387
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Mon, 15 Aug 2022 10:42:35 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ( [192.168.12.73]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 86EF14EC261; Mon, 15 Aug 2022 10:42:29 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 27F8gQ2i811083
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 15 Aug 2022 10:42:26 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oNVg2-000EJT-3r;
	Mon, 15 Aug 2022 10:42:26 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Mon, 15 Aug 2022 10:42:19 +0200
Message-Id: <810f675e08d1ca51c952029867cf03223840e8f2.1660552646.git.enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <cover.1660552646.git.enrico.scholz@sigma-chemnitz.de>
References: <cover.1660552646.git.enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_014324_294683_BB18255C 
X-CRM114-Status: GOOD (  10.60  )
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
Subject: [PATCH v3 15/18] tftp: do not use 'priv->block' for RRQ
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

attribute is not used outside tftp_recv() for RRQ.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 4c3980404dc1..c96c8917633a 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -316,6 +316,7 @@ static void tftp_recv(struct file_priv *priv,
 			uint8_t *pkt, unsigned len, uint16_t uh_sport)
 {
 	uint16_t opcode;
+	uint16_t block;
 
 	/* according to RFC1350 minimal tftp packet length is 4 bytes */
 	if (len < 4)
@@ -370,7 +371,7 @@ static void tftp_recv(struct file_priv *priv,
 
 	case TFTP_DATA:
 		len -= 2;
-		priv->block = ntohs(*(uint16_t *)pkt);
+		block = ntohs(*(uint16_t *)pkt);
 
 		if (priv->state == STATE_RRQ || priv->state == STATE_OACK) {
 			/* first block received */
@@ -378,20 +379,20 @@ static void tftp_recv(struct file_priv *priv,
 			priv->tftp_con->udp->uh_dport = uh_sport;
 			priv->last_block = 0;
 
-			if (priv->block != 1) {	/* Assertion */
+			if (block != 1) {	/* Assertion */
 				pr_err("error: First block is not block 1 (%d)\n",
-					priv->block);
+					block);
 				priv->err = -EINVAL;
 				priv->state = STATE_DONE;
 				break;
 			}
 		}
 
-		if (priv->block != (uint16_t)(priv->last_block + 1))
+		if (block != (uint16_t)(priv->last_block + 1))
 			break;
 
 		tftp_timer_reset(priv);
-		tftp_put_data(priv, priv->block, pkt + 2, len);
+		tftp_put_data(priv, block, pkt + 2, len);
 
 		break;
 
-- 
2.37.1



