Delivery-date: Mon, 15 Aug 2022 10:52:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNVq6-006EhD-DO
	for lore@lore.pengutronix.de; Mon, 15 Aug 2022 10:52:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNVq6-0002EF-Pe
	for lore@pengutronix.de; Mon, 15 Aug 2022 10:52:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0uD07MaZetwAGOB7G7z2zoHXSNeyHiHaBB307oAq+Yc=; b=4MENwieX5RleHqYSYNTRilR/V2
	YTDRaOZYoYgn4rm//9HzU6miUev28MMYZCdD4yHtvhxQ8QF3is+E+Dn1gp125WVaW+SRLBJ83B1bX
	jRvnG2dPeZz0sbugp7eNgHEqDHh0NZ73dWA8Iyt5WCFsq3Hf4PTwiXbZpGicgQD8NS+UHcYmAtrhh
	bePctUoQR3wvynVjMn8yacbaUCclzDmIsTgCoTJlnqUIE1SZ5j15c9HOveE+QxNCYfMlTc20mdIO0
	vam5OIOqJ+KYqOGeiFO6JIbwpUViDX7yifPXy2vHCBpVps08uA6jR6ggi5Ux0onSEUg9FSgzNwqpW
	9CJI+rmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNVoB-00DOP7-F0; Mon, 15 Aug 2022 08:50:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNVhF-00DKDx-G0
	for barebox@bombadil.infradead.org; Mon, 15 Aug 2022 08:43:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description;
	bh=0uD07MaZetwAGOB7G7z2zoHXSNeyHiHaBB307oAq+Yc=; b=fIAO/5Sb3aDEyvn2POi5l2K9fk
	iYTeRc8oYSD82WvYpZ6Eu3U1ApNXfpjEasowTtbEXfo2puFaFbyCRHddPOzXJL4E3lYyMmKJCFZGc
	kgFUgn4B4v14DiJ2jXWBJVqSPDkrnC8cf/tifT6PKVGIv1Bm4I90I9RByJCmyFbJY+MVjRAbwhTPB
	27u+i5aKVZ5taGuuLvoRrntUzy3S31oQ8jZu/zaYev9JGnJvKduJ1ZQZoQxeLiBq5IsXTt2XXu0JQ
	ozkBn3eY16r99iWC3Ykx7yvwfv8Gc3fFHLK8qRLTVrBV37mFWGIfzK/ioWYDMnRdoem7mJVD5/Rcw
	MNi1HcXw==;
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNVh3-002cwI-ES
	for barebox@lists.infradead.org; Mon, 15 Aug 2022 08:43:32 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27F8gmq1848761
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Mon, 15 Aug 2022 10:42:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1660552968;
	bh=0uD07MaZetwAGOB7G7z2zoHXSNeyHiHaBB307oAq+Yc=; l=811;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=Jj9ZiiXkoUeYqqBcG2t1E714BliVaW2QXWjwTKal/D+XeH/CgrZlCld2AGuKMdqWi
	 tJYJinQdjrLyTnbvvXr3M6xVZsLGkxeusKTc28LnQ8UZfdssKnPS7KlfCxnoYzLkdc
	 x+pVlavGkg7xlKFL/9sOUPIO10ea1UlYEUmPZtZU498LO9fSViPfWTKlWXG9Mcscxn
	 2Ie9dvrv4CA4fHaMD8dDSCmG56G8H51/VHk9y+nEePx73/GYqvSjXCuOtN/Bi+Pe3H
	 LsEja5cUo163J7muP/YdtH4FmGJ0xWJyCoktNzLvXFcUGPr/rPTW8+Amz13WzzPMnn
	 TfhBroTLWRYLw==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27F8gX6d2540863
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Mon, 15 Aug 2022 10:42:34 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ( [192.168.12.72]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 68F124272C7; Mon, 15 Aug 2022 10:42:27 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27F8gPdK634054
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 15 Aug 2022 10:42:27 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oNVg1-000EIt-RU;
	Mon, 15 Aug 2022 10:42:25 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Mon, 15 Aug 2022 10:42:10 +0200
Message-Id: <8928931de68c3c8dd25991f78c4f6cd812f6fa10.1660552646.git.enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <cover.1660552646.git.enrico.scholz@sigma-chemnitz.de>
References: <cover.1660552646.git.enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_094330_349094_1A481157 
X-CRM114-Status: UNSURE (   8.03  )
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
Subject: [PATCH v3 06/18] tftp: minor refactoring of RRQ/WRQ packet generation code
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
index 913ca1df6e42..7627f3f59669 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -136,13 +136,13 @@ static int tftp_send(struct file_priv *priv)
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
+				'\0',	/* "tsize" */
+				priv->filesize, '\0',
+				'\0');	/* "blksize" */
 		pkt++;
 		len = pkt - xp;
 		break;
-- 
2.37.1



