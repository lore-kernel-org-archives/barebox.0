Delivery-date: Mon, 05 Sep 2022 12:26:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oV9J1-007NUc-HG
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 12:26:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oV9J2-00049P-1b
	for lore@pengutronix.de; Mon, 05 Sep 2022 12:26:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VmmOM8iRwjMGJOgZ1kg0aTaMDDHQiCAzBCAkbvj4nDY=; b=icN71QSkO3sTvM34nZl7an36LG
	TKxT3suqPXegidCOxzjCqWqd0L7/Ia1yXL9TWg3VI9eb4YsF46pD8H/nir2cP41YggpBRGWzlCpAj
	B9WPyewL8ksPJtgTMEGLM6tNuCZ4hp5ahd4HN7d3YtJ4kLjUqa6CejTIjboxFNuqGtrU4/RxMzjHZ
	z45KBVrwDzDI+cvwO5zw9xYPpdJHgBj/H4dE0vCMG1AfUeTYh7nlJIiwR7y8ks7XDfcIxWckeSVSn
	ta2jP4voWstBzNs1KDctTIZN+75EZW4MKYOeKCf6i7WslRtG5gl/HROsRz5FyJQdMO1XlzhGz66Md
	2b0w/OqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV9HD-000AOd-MU; Mon, 05 Sep 2022 10:24:24 +0000
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV7vV-00FEBv-DJ
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 08:57:58 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 2858v7PZ865691
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Mon, 5 Sep 2022 10:57:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1662368227;
	bh=VmmOM8iRwjMGJOgZ1kg0aTaMDDHQiCAzBCAkbvj4nDY=; l=1395;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=go9Cd6KIggKBnSVdrvWIPvcXBIB+3/EDcOQsWlzYnS/jQFdPFSlrVXLfmC4pikLDb
	 76QCrs8Uv4NWOwJQhx1M0gi7wGd7JJQn/LySwndWsAuq3tPOvGzIAk1P9Hsl7ER3Cn
	 3eS2GJjXPiK/tGsxhqDb9mKHC3w4IWnSBY+67a0inDUiM9bM2CyAIhyCNZLaSgj95K
	 w9qaggoi78ZmATPRiTd+kDp44B1/ssRsYSXP9ApDC2krO5KX1P8dTA/tsUz4sbr+nJ
	 rXIollFpzPHjtwloj4j3wNbkxQY5fU5tZ2gHiRio/SC5Zk4NZj4fUMHxIgmhGgfnqz
	 sxSy7fQDTjOdg==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 2858v4sH1074141
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Mon, 5 Sep 2022 10:57:05 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ( [192.168.12.72]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 7A11894A6E3; Mon, 5 Sep 2022 10:57:02 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 2858uxRV828591
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 5 Sep 2022 10:57:01 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oV7ud-00GAqx-JQ;
	Mon, 05 Sep 2022 10:56:59 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Mon,  5 Sep 2022 10:56:58 +0200
Message-Id: <20220905085658.3854939-4-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220905085658.3854939-1-enrico.scholz@sigma-chemnitz.de>
References: <20220905085658.3854939-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_015755_430785_654C1BAC 
X-CRM114-Status: GOOD (  11.99  )
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
X-Spam-Status: No, score=-103.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] tftp: make read() fail in error case
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

when tftp transfer goes in error state e.g. due to error packets sent
from the server or (unexpected) internal problems, let the read() fail
instead of ignoring these errors silently and corrupting the output.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 9a3753e50e37..2592da94dd34 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -1017,7 +1017,7 @@ static int tftp_read(struct device_d *dev, FILE *f, void *buf, size_t insize)
 {
 	struct file_priv *priv = f->priv;
 	size_t outsize = 0, now;
-	int ret;
+	int ret = 0;
 
 	pr_vdebug("%s %zu\n", __func__, insize);
 
@@ -1026,8 +1026,11 @@ static int tftp_read(struct device_d *dev, FILE *f, void *buf, size_t insize)
 		outsize += now;
 		buf += now;
 		insize -= now;
-		if (priv->state == STATE_DONE)
-			return outsize;
+
+		if (priv->state == STATE_DONE) {
+			ret = priv->err;
+			break;
+		}
 
 		/* send the ACK only when fifo has been nearly depleted; else,
 		   when tftp_read() is called with small 'insize' values, it
@@ -1041,9 +1044,12 @@ static int tftp_read(struct device_d *dev, FILE *f, void *buf, size_t insize)
 		if (ret == TFTP_ERR_RESEND)
 			tftp_send(priv);
 		if (ret < 0)
-			return ret;
+			break;
 	}
 
+	if (ret < 0)
+		return ret;
+
 	return outsize;
 }
 
-- 
2.37.2



