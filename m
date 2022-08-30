Delivery-date: Tue, 30 Aug 2022 09:43:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvto-001UNr-Ig
	for lore@lore.pengutronix.de; Tue, 30 Aug 2022 09:43:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvtn-0003vr-6i
	for lore@pengutronix.de; Tue, 30 Aug 2022 09:43:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cMSfBVpcbPT5CnWoS/wl/UQVMWgOshbkHyTaV5gt150=; b=nNizGjCxKKv2vz/OsTxbLh7Jaw
	ouKSrDmPfW3dzIX4pkBIA1rtOOhqsRN1XqFar1qJkEpXlrzXPZdm9iLshH+FGW+WqiujBgDZmv9T9
	IpDhTSQlXwEfBswI6qtXkNmxQbZ2Y/Jkuyw81b9JdwiT9FzNSgTpZ4jUTudPkN4T7dyCTOlifBgNz
	Mxemn69T5CJz/1uO2hwLYZBZ8FckZ2hevLGs91SOiYcH9fXWEop9FNdNF+n2qaNSM6cwhMMabBEmB
	FLihZ7jqipvuOJKOMukVwwApTgWq2189InRoIVY9cE2UOTNwhU/KHuwNAwxlzJuHlneeBBMwZs7p3
	FulT9XoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvsD-00EqSJ-Ga; Tue, 30 Aug 2022 07:41:26 +0000
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvqK-00Eozk-2y
	for barebox@lists.infradead.org; Tue, 30 Aug 2022 07:39:29 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27U7cRo9993523
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Tue, 30 Aug 2022 09:38:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1661845107;
	bh=cMSfBVpcbPT5CnWoS/wl/UQVMWgOshbkHyTaV5gt150=; l=803;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=N99UeTXZswLfSPvK6IotrGCnPIBMQK2N5bzoeoUtaHQT6G5gggICOqLiZj3K5C6jJ
	 SntFYZO4VEy1zjqQRkn2ESuVQ4lbljabya5qeP+LoWDSYjuXhbyUlMr0u6GBTpiwAb
	 62tar+LP7ADBSwxt5gx84LManOeqF70c2ByjwY5v9olPBw9Mw9KDS7Q34L/2yoiKmk
	 rXLdODUtNLv0Gld2KYOnXCbzwV7nGP38+7sq0/tF61pIF64N24VW5ZX4oT4beB4CRX
	 oG8l0rQy7X4uSd2pYQB9o378lYEHRQ0dhYePS1w6GJj6SP4rJ1xFcEWyG1UBmXPajr
	 BJbfUM91MxVLA==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27U7cOHt1001064
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Tue, 30 Aug 2022 09:38:24 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ( [192.168.12.73]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 4F3FD8D23C9; Tue, 30 Aug 2022 09:38:21 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 27U7cK6q949560
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Tue, 30 Aug 2022 09:38:20 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oSvpD-00BJ2x-Vx;
	Tue, 30 Aug 2022 09:38:20 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Tue, 30 Aug 2022 09:38:02 +0200
Message-Id: <20220830073816.2694734-8-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
References: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_003928_338183_54F15579 
X-CRM114-Status: UNSURE (   9.21  )
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
Subject: [PATCH v4 07/21] tftp: replace hardcoded blksize by global constant
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 0b2a420b6639..264841f24407 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -65,6 +65,7 @@
 #define STATE_DONE	8
 
 #define TFTP_BLOCK_SIZE		512	/* default TFTP block size */
+#define TFTP_MTU_SIZE		1432	/* MTU based block size */
 #define TFTP_FIFO_SIZE		4096
 
 #define TFTP_ERR_RESEND	1
@@ -133,12 +134,13 @@ static int tftp_send(struct file_priv *priv)
 				"timeout%c"
 				"%d%c"
 				"blksize%c"
-				"1432",
+				"%u",
 				priv->filename + 1, '\0',
 				'\0',	/* "octet" */
 				'\0',	/* "timeout" */
 				TIMEOUT, '\0',
-				'\0');	/* "blksize" */
+				'\0',	/* "blksize" */
+				TFTP_MTU_SIZE);
 		pkt++;
 
 		if (!priv->push)
-- 
2.37.2



