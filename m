Delivery-date: Mon, 18 Jul 2022 14:25:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oDPos-00D7ID-L3
	for lore@lore.pengutronix.de; Mon, 18 Jul 2022 14:25:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oDPoq-0008Nt-6i
	for lore@pengutronix.de; Mon, 18 Jul 2022 14:25:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BLLEwZrtKXSw1XTyFO7BxaKhwoBgcv2wZ+CKfMUegfg=; b=388CfJd4dpMDvH40Gj50+1toL1
	j7CVpJUdJsTy2HWfILPEuhNB7hm5Xd95XCP96fAYiPzCGAwKdefCvs1RRz5YxEWYRninZTPYUn/RK
	nqJ2syG3LpRsS6LfbiiG21o5/4kulvPIfPrgpPXCQSdyHpuZZzplr/EoJGZ28dmVSeAMVana72MA0
	0tJJwVjjxQYOBXsrkQ4e9CHVyoFTeWGt4Pv95Wy3uCZDJM2siXPJG83CLyGngCIwPCUfQ2sYJaV/6
	iINTb3hHREyHCyoRW74Avlyp6QdnGjAv7F7cDhQAjSeJkTqW6hPQX9DB5ciAUq5Y/ZeDt3iA1Bgvb
	IjEbdT2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPnQ-00DERe-BO; Mon, 18 Jul 2022 12:24:20 +0000
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPmh-00DDXW-3t
	for barebox@lists.infradead.org; Mon, 18 Jul 2022 12:23:36 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 26ICMoLv575044
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Mon, 18 Jul 2022 14:22:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1658146971;
	bh=BLLEwZrtKXSw1XTyFO7BxaKhwoBgcv2wZ+CKfMUegfg=; l=811;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=rtQn7E4QcG2SbeEUUyKgS6t0pyELzhYjC84ZeZdhXWGiPrGsk65K+leF3ZCA9snNi
	 ML35tVOHbjmyPYZ0bscTpkFAb52efHgpVK/zLUPQhhHTOejxBTzUSpSYDtEV2hn47F
	 gRuAGVTRd7IetjnrysopyP2xtrxpgQOBP9ortO9nfC+lMFXgh5aPB10kPtZlUY2ABT
	 oFiX4wwur//FdD4pw3TbVQxMewXgO2VIdp3g4VFPb+FDorqiwbq69rg4lG/aycN8oV
	 kFuRqKg63ySCOqwKLuqFdmMU8E6i3gq7UGo7p6VT0D18eOvmdI9tSX81qFx0KD1gzU
	 4bqv3ah7704qA==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 26ICMZrM1699962
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Mon, 18 Jul 2022 14:22:35 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ( [192.168.12.72]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 1B2C4321B21; Mon, 18 Jul 2022 14:22:32 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 26ICMWsG371849
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 18 Jul 2022 14:22:32 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oDPlg-002g3D-OR;
	Mon, 18 Jul 2022 14:22:32 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Mon, 18 Jul 2022 14:22:18 +0200
Message-Id: <8d1e2bb015ee0e7e078ba2ae8256984ec7587817.1658144543.git.enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <cover.1658144543.git.enrico.scholz@sigma-chemnitz.de>
References: <cover.1658144543.git.enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220718_052335_357689_161257AF 
X-CRM114-Status: UNSURE (   8.02  )
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
Subject: [PATCH 03/13] tftp: minor refactoring of RRQ/WRQ packet generation code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Having 11 printf arguments with lot of them being 0, makes it
difficulty to read and extend.

Add some comments and use '\0' for %c.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index d186e7983a6d..13334baaf892 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -135,13 +135,13 @@ static int tftp_send(struct file_priv *priv)
 				"%lld%c"
 				"blksize%c"
 				"1432",
-				priv->filename + 1, 0,
-				0,
-				0,
-				TIMEOUT, 0,
-				0,
-				priv->filesize, 0,
-				0);
+				priv->filename + 1, '\0',
+				'\0',	/* "octet" */
+				'\0',	/* "timeout" */
+				TIMEOUT, '\0',
+			        '\0',	/* "tsize" */
+				priv->filesize, '\0',
+			       '\0');	/* "blksize" */
 		pkt++;
 		len = pkt - xp;
 		break;
-- 
2.36.1



