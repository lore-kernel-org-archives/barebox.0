Delivery-date: Tue, 30 Aug 2022 09:45:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvvy-001UUD-Lk
	for lore@lore.pengutronix.de; Tue, 30 Aug 2022 09:45:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvvv-0004iG-6P
	for lore@pengutronix.de; Tue, 30 Aug 2022 09:45:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FMxpnMD+dml/oZJmksG+KvqeoAndVbi7zW1gFdSoCS0=; b=RrwteQ7SgbPyyFyLKR8vbOjuEw
	ZR+Alt32E0o4bZy6ZMT1XxJixTpjZEWLdeq9b7x3ecWhQMyJtRmXcF9oLuD8EbpfQCh3LZ908OGLG
	lo5gxpHWSsBLjHzbWcBz0eEzCapfCMkcCRaP2K4M72JNITHQeGuIOjkNqIw8q//i7y2T+3ZIo2yyL
	+VsK10K5ODzd3huPK4Be5s67vWjVxMD3k1vl2z+fCMqDcp+wGmU0sK7hGguuIq2b5ho7o5qiZFHRX
	DWyFDPDbsJ4kOP1z3rfVt/oB3MiXsZ2MGsBhn2hETknO3HqsfpsseCCO2fT5Wjwtio6KnTC31O5BC
	mUOsKrTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvuI-00ErPG-6M; Tue, 30 Aug 2022 07:43:36 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvqN-00EpXH-28
	for barebox@bombadil.infradead.org; Tue, 30 Aug 2022 07:39:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description;
	bh=FMxpnMD+dml/oZJmksG+KvqeoAndVbi7zW1gFdSoCS0=; b=GSbgZ3joe5AVvQNUNIrTZ3qI+j
	9wLtLflRGTo/R3GgkHbG1acS3DjHnOBmRwxV1YQDSDORYqFazVGpCHAEkcWAkE3A57movvJBbA8Et
	IIHuVjTyrONkIDL+IdV6iCn3/fPconnIoZoVE+90D2Ev738XSNCwktXP9zKWHUNGGH5BY1aj+P2HM
	r/cvU+KR+wJBVC55gl7oxrkdh3QkmsOUcSX3gTl53TXipSOehGPLM2/vWlQQcSSnQJS/J9pxeqHoc
	kDOf1MyCl/bcNob/KheDF01NnTQ7YaW/kodtHDzfiBf2brnrXmGut9/5khXs4ndSaWN32BO1hIuuO
	42HlOjvQ==;
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvqC-007m5y-2P
	for barebox@lists.infradead.org; Tue, 30 Aug 2022 07:39:29 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27U7cfI8993569
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Tue, 30 Aug 2022 09:38:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1661845121;
	bh=FMxpnMD+dml/oZJmksG+KvqeoAndVbi7zW1gFdSoCS0=; l=723;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=IlcT2fJHD3bfaaQ3f3YxKiY+y3FDGCoHPAw/mRLaAhxQWpo/zz9WD3awa5iiNQzMK
	 i1lGo3kdslug3reeC3OuyCoyYwyXaxfDeYpBw0kg93v8lDrwoS37YtUZMnJwct989V
	 UEhXzezKaqqzrQu07H6n2mhd7iUDYb+/+wbCPxwR2HvofR+GkVl7dwzyIIzT+6khSQ
	 xy86RCUMefVbWl5Jmyov8TMtikxo4iHkAOjRbA/qkcbAAFnKgaxN+KU7y7+Dk4bWol
	 Rr3PpxYfxhUb7GOVh4G0TWpN6t9C0SRPz5+6vjJlF9MifVp33K6EIEm1OdD+eeCuv4
	 2edANFOFEVH5A==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27U7cOkf2895728
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Tue, 30 Aug 2022 09:38:25 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ( [192.168.12.73]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 7B1D7DA7A6C; Tue, 30 Aug 2022 09:38:21 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 27U7cJke949559
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Tue, 30 Aug 2022 09:38:21 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oSvpD-00BJ2u-Uy;
	Tue, 30 Aug 2022 09:38:19 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Tue, 30 Aug 2022 09:38:01 +0200
Message-Id: <20220830073816.2694734-7-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
References: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_083921_640097_0A82FE0E 
X-CRM114-Status: GOOD (  10.18  )
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
Subject: [PATCH v4 06/21] tftp: minor refactoring of RRQ/WRQ packet generation code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Having 11 printf arguments with lot of them being 0, makes it
difficulty to read and extend.

Add some comments and use '\0' for %c.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index c1a193711793..0b2a420b6639 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -134,11 +134,11 @@ static int tftp_send(struct file_priv *priv)
 				"%d%c"
 				"blksize%c"
 				"1432",
-				priv->filename + 1, 0,
-				0,
-				0,
-				TIMEOUT, 0,
-				0);
+				priv->filename + 1, '\0',
+				'\0',	/* "octet" */
+				'\0',	/* "timeout" */
+				TIMEOUT, '\0',
+				'\0');	/* "blksize" */
 		pkt++;
 
 		if (!priv->push)
-- 
2.37.2



