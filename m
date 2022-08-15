Delivery-date: Mon, 15 Aug 2022 10:50:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNVns-006EcW-UC
	for lore@lore.pengutronix.de; Mon, 15 Aug 2022 10:50:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNVnr-0001cp-AK
	for lore@pengutronix.de; Mon, 15 Aug 2022 10:50:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8hA3gO1XlxZa4YGgEjc9QgirdFYLH/N8QRv+C+ZYGXE=; b=p+uFeaybe4yVZ32DPRJKRz3tc6
	90F7+KxrzGlYG1C9Dh32UVctgl4kiOn6MvZjIP07d0x3pUcUY0BbwVOudP0LFw7bMYhaRglw/pJR3
	20Af9VZgWwW0kGHNgDJUlJuVtDJWUi2uGvOlHwTiS6sIA6fstRrY+dBvuqIC4oqZWj2HjjgN6kQut
	NHuQhexbyUS6oREQU9J4PNO6WJQrJhtQeNy+BrgAZbSqDSog+gprDT0OqjSEI6nwQrhDa5QqDdyZR
	rdB1N0tEM8jr1NJyAoaDLRHCSoYfCRwdagz/Iw/xf5w9TmObL1m6P4qJ8QIJrTzGd2/YIp4NIYYs1
	PBUxBVNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNVlj-00DMwL-Lg; Mon, 15 Aug 2022 08:48:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNVhF-00DKDv-G7
	for barebox@bombadil.infradead.org; Mon, 15 Aug 2022 08:43:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description;
	bh=8hA3gO1XlxZa4YGgEjc9QgirdFYLH/N8QRv+C+ZYGXE=; b=cHho1LeVWJ5/7nXW93kXtyX2SU
	qGDF1tsw88UdnJWVxeu5UL0tubSHYAeCZ7fEMQarVOokj2acHQ5ay2lrT8ENgtnd88qFScAA+ta2m
	6g7FqIxBeR27k4kldGMdqnTZzmeHUt5BAB0ulSs79XxZuhoTUCOa7YNia6hPr9CYLzNK6ssP1gqhE
	UvmSjzBeguDjwSrlNX/M/f3o/bHfYPewivN0pj14VqDip6jRGD9R8qp4N/EqiHhRFLK1wN6Q/tS2E
	DBaJGCp7QpLQROXs7w3aSi1dPIEfz5+5StyX7EnMf2+agA1rpHjoBBsR2GB5ymFLF3mR56uBBuUSz
	nDV3s8vw==;
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNVh3-002cwH-Ng
	for barebox@lists.infradead.org; Mon, 15 Aug 2022 08:43:33 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27F8glg5848759
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Mon, 15 Aug 2022 10:42:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1660552968;
	bh=8hA3gO1XlxZa4YGgEjc9QgirdFYLH/N8QRv+C+ZYGXE=; l=1215;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=OLbOYBD5POq+O2b8FE9V3HckGY7f11oYncg6GvaOJgRS/WzkOO2wfoppM6cI0PjH0
	 CZ6vG8qYtcmv1UunR8ODmdWca1rNuU6AKoPE0vqs82tsGQD37PyEWwV/1ra1iiUgHx
	 tx7V+UXcUW0Nwtcd0P47kwfYgQJOEEwK4uVMdr5ys0AqoGyntpLpu9Kv4QGusfH+P4
	 XroFhhLgBFbUcqVGuHGMfIrghEoUf6pVVz9h9gbt5id5+4mHrGr+YTuF+KchJj6y8M
	 Zjvw4QC/2N6zK37fhW1oSlMBfg1WnecS6Krx1nVamxJ4kiLowuSXeFQeyVb2Ors/jK
	 rtD1IwUev0Liw==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27F8gW7F2540852
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Mon, 15 Aug 2022 10:42:33 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ( [192.168.12.73]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 0FB81F8DC3; Mon, 15 Aug 2022 10:42:27 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 27F8gPYW811074
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 15 Aug 2022 10:42:27 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oNVg1-000EIn-PW;
	Mon, 15 Aug 2022 10:42:25 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Mon, 15 Aug 2022 10:42:08 +0200
Message-Id: <b7f4acedb18921b2bb6044eca3a5b4361c1c3498.1660552646.git.enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <cover.1660552646.git.enrico.scholz@sigma-chemnitz.de>
References: <cover.1660552646.git.enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_094330_352608_DA809092 
X-CRM114-Status: UNSURE (   9.77  )
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
Subject: [PATCH v3 04/18] tftp: allow to change tftp port
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
2.37.1



