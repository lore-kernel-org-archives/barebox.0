Delivery-date: Tue, 30 Aug 2022 09:46:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvwt-001UWR-Oj
	for lore@lore.pengutronix.de; Tue, 30 Aug 2022 09:46:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvwr-000562-F2
	for lore@pengutronix.de; Tue, 30 Aug 2022 09:46:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2Oyi2MUgzF4OiJkzOOynUQH6HAP37ooRv/UuMNMLvi0=; b=lWZ9/xhB+s+RjOPmqKf6BscnAb
	D3PDqeRbxzyLMJLt8Zxogq6Cu1hx//UtkxbItu9vuz9vq8aZ5F4qaLLbNFPQJuJNO5Nfqr5bzAoKY
	8TtavWi+lyKQog+61d4qIY9/aag2kIK/r8HJMGU0qdiZMZKDNyAiI1OZ/HLkZEQW77J+LJLHM2KAg
	sQk8gitXowLCXLI1Jb+oHMrlla0I9hfLCbE4G5oWBl3bl1rUq1dZMIMGMx/L95J0TkhSzIJyBaSVF
	srydfCHf+/UN9y5suUkf3RJk+zrE48d2Xaw9WF+6SpoTBOFrAPXNGU/yRc51Az8b5qD/AT6tT5TN2
	H6e2538w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvv7-00ErpF-Ph; Tue, 30 Aug 2022 07:44:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvqN-00EpXJ-3I
	for barebox@bombadil.infradead.org; Tue, 30 Aug 2022 07:39:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description;
	bh=2Oyi2MUgzF4OiJkzOOynUQH6HAP37ooRv/UuMNMLvi0=; b=Ny2OpJPZKv33BWcoRZSZ4P9sbg
	dAnNICYUT1IDSTFoneEaDmd6iHyZcgrr8w363T8xkrqgygLypxwZzTa0tt7kNK9hcAg3m5s7ShCc+
	Ir0Jx2KnSaFgOCD7x5s2dJRFeOTofj/L/Tx+0U6vnLkHpSSaKAGxikRrrtKt0iexnHCbpdnZZ0W4p
	RHdRh1q+TnqX5o0r8mxDPmphCRW/bFw5T4E8lz5N1K1+sOVF8+bI3MzwZkcdTsUi7BDJ2CUm9QRTk
	ve4qtb9S/IexigapS7a0Kug35wYSZCdXW0FMjtMwx/6QHDxXPfRlCpopt8Z4dpxsQaptquEt5UWnE
	0zC60jXA==;
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvqD-007m60-6F
	for barebox@lists.infradead.org; Tue, 30 Aug 2022 07:39:29 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27U7cflu806701
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Tue, 30 Aug 2022 09:38:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1661845121;
	bh=2Oyi2MUgzF4OiJkzOOynUQH6HAP37ooRv/UuMNMLvi0=; l=1215;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=tPBazzQQcjpc5wc/zWNfK1zJ8/UY7BIATDBrQv0fQIXQefojBs3HhxIrAgr/xxN+a
	 xUa8F7uh3RCpkkxFSi5R9qL2MYXVeZ8z1ZQUHEyFSta/eAEKBygTjUtZAnItxGcidh
	 PW+ewMRRnuDymgihc8l6CnggWramxRyVOtWzoYTYTbvYsWPoMXy1evypF1H6V/BqFh
	 znGvHB2t1Jnb3IsnJSzcWV/GK7sPT2TQ7ej3VFitDHLyFJZGtnaTTHV6zeUoqd9UZ+
	 qQ3jbQjvZ6LIrC9QpYfkYwMcoqhdEAfaphBer0bLuItx1CfgTLbLwe1XLwaPIN09Fa
	 Ddu8idK9LjmmA==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27U7cO1D1001066
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Tue, 30 Aug 2022 09:38:25 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ( [192.168.12.72]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 8996B7D3CC8; Tue, 30 Aug 2022 09:38:21 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27U7cJr5772601
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Tue, 30 Aug 2022 09:38:20 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oSvpD-00BJ2i-RJ;
	Tue, 30 Aug 2022 09:38:19 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Tue, 30 Aug 2022 09:37:57 +0200
Message-Id: <20220830073816.2694734-3-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
References: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_083922_158699_CFF13921 
X-CRM114-Status: UNSURE (   9.70  )
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
Subject: [PATCH v4 02/21] tftp: allow to change tftp port
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This adds a 'port=<port>' mount option for tftp filesystems.

Useful e.g. when working with a local, non-privileged tftp server

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index c26204ae76e6..913ca1df6e42 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -30,6 +30,7 @@
 #include <linux/stat.h>
 #include <linux/err.h>
 #include <kfifo.h>
+#include <parseopt.h>
 #include <linux/sizes.h>
 
 #define TFTP_PORT	69	/* Well known TFTP port number */
@@ -376,6 +377,7 @@ static struct file_priv *tftp_do_open(struct device_d *dev,
 	struct file_priv *priv;
 	struct tftp_priv *tpriv = dev->priv;
 	int ret;
+	unsigned short port = TFTP_PORT;
 
 	priv = xzalloc(sizeof(*priv));
 
@@ -405,8 +407,9 @@ static struct file_priv *tftp_do_open(struct device_d *dev,
 		goto out;
 	}
 
-	priv->tftp_con = net_udp_new(tpriv->server, TFTP_PORT, tftp_handler,
-			priv);
+	parseopt_hu(fsdev->options, "port", &port);
+
+	priv->tftp_con = net_udp_new(tpriv->server, port, tftp_handler, priv);
 	if (IS_ERR(priv->tftp_con)) {
 		ret = PTR_ERR(priv->tftp_con);
 		goto out1;
-- 
2.37.2



