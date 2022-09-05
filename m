Delivery-date: Mon, 05 Sep 2022 12:26:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oV9Ix-007NU7-LK
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 12:26:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oV9Ix-00046i-KW
	for lore@pengutronix.de; Mon, 05 Sep 2022 12:26:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hZ/+1XFWUzxJvjIam2vbxGCdrvLqVG38wtG4AAaouBM=; b=R9iikC5Fk5jK7xvTOfWfKw3404
	Q2A+xkLzfLONythVf63a4zFnRl6vD/Fxu3h482Wq8nV0JPoCGZ0gVy5fJTWHRRQzr5VaJF/MXmfRc
	VZQxtQvq9BIJ8V8K5wU2Bvd5BD9Nz3/AbsBOG7D4cAVIN1aCpgp8gsNw0F7pSiIVN6TgHbaDwQ12n
	7UG3cKNV9oviNjDdbF1XdJrntCX2CvJMi5ZBPhxe0z4wiAu0IssKtofTAoecBFHlJD2KB7N7xoGkF
	e7JURS/4IS50rsylU09IrdnBcuZvu8DfSXMM04GXephRmpTnINdpgmnFF65fwAmfROlOPAPbEJbUw
	StOqNPCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV9Gy-000ADb-U8; Mon, 05 Sep 2022 10:24:09 +0000
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV7vV-00FEBH-E4
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 08:57:58 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 2858v7jG1052067
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Mon, 5 Sep 2022 10:57:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1662368228;
	bh=hZ/+1XFWUzxJvjIam2vbxGCdrvLqVG38wtG4AAaouBM=; l=639;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=i2q0HmayxcIY6Y5iUAIY4SRNLOIIRjbUSBNlLbXdkTxuCjYnTBkNKb/4v+t56qla0
	 P+B/+fL4zGMf05P7JTJbPJ/K21JztyzIaLUa+gL1P1RhFdl5CQQJBcgAMqxaRrkpZf
	 yH8hangbB6YfJcbJIkFBoSy9jtJobU250a8svNe6S1niXz+jIJF7stQdEBbCjrpneT
	 dY8Z5KvRT9EoJHqYi1yfaLgwVUjLAR8tSjBXlaubmKNBeiG6+UAXJCI595V5n835O2
	 BSpYBO9+kUq6/tdfi/mx5bS2/TtTyaQcJ4XbbGfNCEeChM3qBgfqK7NZxANqqwL32I
	 o4BUK+pxe7ApA==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 2858v4dw1074142
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Mon, 5 Sep 2022 10:57:05 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ( [192.168.12.73]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 89C7955BC88; Mon, 5 Sep 2022 10:57:02 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 2858uxeM1005583
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 5 Sep 2022 10:57:01 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oV7ud-00GAqu-IF;
	Mon, 05 Sep 2022 10:56:59 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Mon,  5 Sep 2022 10:56:57 +0200
Message-Id: <20220905085658.3854939-3-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220905085658.3854939-1-enrico.scholz@sigma-chemnitz.de>
References: <20220905085658.3854939-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_015755_505390_4264E595 
X-CRM114-Status: UNSURE (   9.36  )
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
X-Spam-Status: No, score=-103.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] fixup! tftp: detect out-of-memory situations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

minor typo fix

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index a3fe7dfd590e..9a3753e50e37 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -591,7 +591,7 @@ static void tftp_put_data(struct file_priv *priv, uint16_t block,
 	sz = kfifo_put(priv->fifo, pkt, len);
 
 	if (sz != len) {
-		pr_err("tftp: not enough room in kfifo (only %u out of %zu written\n",
+		pr_err("tftp: not enough room in kfifo (only %u out of %zu written)\n",
 		       sz, len);
 		priv->err = -ENOMEM;
 		priv->state = STATE_DONE;
-- 
2.37.2



