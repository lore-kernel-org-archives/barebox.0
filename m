Delivery-date: Mon, 18 Jul 2022 14:25:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oDPoC-00D79b-9Y
	for lore@lore.pengutronix.de; Mon, 18 Jul 2022 14:25:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oDPo9-0007yx-FS
	for lore@pengutronix.de; Mon, 18 Jul 2022 14:25:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WuGA2aZ9N6UcZrobAtgTzPrgk/5V0P99kaNW6KmJZrk=; b=YvhyIf7gK33rRH3LfLO+n6+fGk
	Xu/7qI+aVdvw+VJVNz8R1JDm4asp6G3sXuQ69LJcmb5iSppRY41Qw2cmabJnguh4YPD988EqU6RGw
	qFyughCFoF5q/1yvVA1Fn2tuGmTx9eGY7/4n11gtk08j3X25hGmd9sUlmMuwWBh6sbp1hXv6WtZOd
	AWcqAFATtZ2wxSmPsvQ660gHc0Gvz5CU48YBL/8C5rjoQenCn2kFDvj7j97cqwlIiVjFhWBsSWyDO
	VkRpvZ9ujTqRcYudsd5elUmiFR5cC/pdrHWwS3kGkBsHkSHmGRGiLJJRTxdrSeYnfU9k9U3TqoXQB
	l7NXhDlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPme-00DDqS-GI; Mon, 18 Jul 2022 12:23:32 +0000
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPmS-00DDRa-KF
	for barebox@lists.infradead.org; Mon, 18 Jul 2022 12:23:23 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 26ICMeVR575040
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Mon, 18 Jul 2022 14:22:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1658146960;
	bh=WuGA2aZ9N6UcZrobAtgTzPrgk/5V0P99kaNW6KmJZrk=; l=666;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=qSlN6oLjXIF+j5gYjyVOklOjM2fHOA+xX8gZpFg//wPVA4KjJmmrL5QcAk6wHu57x
	 KmbZiqgEGY2LvgNfk37zVt9Z14C/FxGxUB9IDtyDjjv+QResQvZ9lElHeUNhuOeaZU
	 oz0pbHxfRQO5HHk7bMxCcD55t86vxuPvsmzDJZisRPq4jV22+sAsyoNzXYT24ZQToQ
	 qRTcpOoPmxdM40oQgN/9oPksWbUIz9bMT9P3sGP8S4nuqEULnd4W4hFfi4wXjtBE75
	 sLlnBR2TQ1fxJul2RIok/1+wydY/ULUKEh8LblIuRc3xS6AsUbCxQ5mdoXOMb1x6Oj
	 mj9YZHGK+a2gg==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 26ICMaIt487165
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Mon, 18 Jul 2022 14:22:37 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ( [192.168.12.72]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 2CAE1A9278; Mon, 18 Jul 2022 14:22:33 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 26ICMWIX371856
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 18 Jul 2022 14:22:32 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oDPlg-002g3M-RK;
	Mon, 18 Jul 2022 14:22:32 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Mon, 18 Jul 2022 14:22:21 +0200
Message-Id: <18eb3e4a0a6d5298c10b6be89370a601c1cbf940.1658144543.git.enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <cover.1658144543.git.enrico.scholz@sigma-chemnitz.de>
References: <cover.1658144543.git.enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220718_052321_468593_D80AC2E0 
X-CRM114-Status: UNSURE (   9.11  )
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
X-Spam-Status: No, score=-104.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 06/13] tftp: reduce block size on lookup requests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Save some bytes on network traffic by reducing the server response for
lookup requests.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index ab1af0e9084c..01d3beff14bf 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -144,7 +144,9 @@ static int tftp_send(struct file_priv *priv)
 			        '\0',	/* "tsize" */
 				priv->filesize, '\0',
 			       '\0',	/* "blksize" */
-			       TFTP_MTU_SIZE);
+			        /* use only a minimal blksize for getattr
+				   operations, */
+			       priv->is_getattr ? TFTP_BLOCK_SIZE : TFTP_MTU_SIZE);
 		pkt++;
 		len = pkt - xp;
 		break;
-- 
2.36.1



