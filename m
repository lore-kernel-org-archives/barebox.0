Delivery-date: Mon, 18 Jul 2022 14:25:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oDPoI-00D7Ag-FQ
	for lore@lore.pengutronix.de; Mon, 18 Jul 2022 14:25:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oDPoE-00083i-BR
	for lore@pengutronix.de; Mon, 18 Jul 2022 14:25:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mK7wyCvSvQmvd3GcGd6d7yrbRZSPbZaI48kP7CYHXKk=; b=EMd/r6yTsUta5Ai1rwEfP0dgd4
	NY8IOGUb7ZwuHyNwtO/YUzAc30uMHLM47TDgj6iYSbeZP4/hYCSGMveEc3M0AxT1DcdZRNJ0Uaz4A
	xJMt07Mo/wNEf0HeZkqPc7iTkvoUS6GDwiN/QcIV/d61bloT1rho633wUrArTOLw+7qHPBYicnyqU
	4+jzOd2dax/IsXcgxlabPoyO7Pj43z6zMBghsI+5XwC+grh+2pybr4TvVGY2jtzRk4Opb2jTsFOX3
	yHIZFi2CCqYpnXtkMFafluhDahXGLuPk3MZ278bEWEF/I6FOyHx/cPFufe7HoC8DUaQSkypsBWsL7
	uU9olVfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPma-00DDoQ-01; Mon, 18 Jul 2022 12:23:28 +0000
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPmS-00DDTC-Ku
	for barebox@lists.infradead.org; Mon, 18 Jul 2022 12:23:23 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 26ICMgox390605
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Mon, 18 Jul 2022 14:22:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1658146963;
	bh=mK7wyCvSvQmvd3GcGd6d7yrbRZSPbZaI48kP7CYHXKk=; l=855;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=iWsuBvPgtiFvy80V1Yqhta6jxUL4fsyOUhbBrBM7iaXK/crAkMRkMFEqAmDe38pUG
	 sq/D9Qv4p3nd7lKNtMUFYkMYyHmwBG5DgBqZxxF9LXkOk6zcWkdOJb0WthS+OrltlN
	 EHlxrCHJiNB56yxYbyJI7IEbE5qWiAfGwIxho0Z1OviChpC1k0csnKNJGMku8UTrBj
	 7+On90z32WXI1wa+DD1eTCRwDMpzO8wCALa2A9nanBIUMGoJPnzIj1jr3LfXPZEb+2
	 sD7VlwJesIUxjiNDjPgfDDGZUKjUj1krGcbRd3FmXwSqc9OtHYkmzGCk+eTyjFPh/D
	 vJP/0oHouukrg==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 26ICMaIl487163
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Mon, 18 Jul 2022 14:22:39 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ( [192.168.12.73]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 29140E91ED1; Mon, 18 Jul 2022 14:22:33 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 26ICMWvc549152
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 18 Jul 2022 14:22:32 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oDPlg-002g3G-PJ;
	Mon, 18 Jul 2022 14:22:32 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Mon, 18 Jul 2022 14:22:19 +0200
Message-Id: <db87985a5ebdb89dd709b6cc5760c79268618574.1658144543.git.enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <cover.1658144543.git.enrico.scholz@sigma-chemnitz.de>
References: <cover.1658144543.git.enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220718_052321_468587_D6EBDE9D 
X-CRM114-Status: UNSURE (   9.03  )
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
Subject: [PATCH 04/13] tftp: replace hardcoded blksize by global constant
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 13334baaf892..7ad03ae5cdc6 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -64,6 +64,7 @@
 #define STATE_DONE	8
 
 #define TFTP_BLOCK_SIZE		512	/* default TFTP block size */
+#define TFTP_MTU_SIZE		1432	/* MTU based block size */
 #define TFTP_FIFO_SIZE		4096
 
 #define TFTP_ERR_RESEND	1
@@ -134,14 +135,15 @@ static int tftp_send(struct file_priv *priv)
 				"tsize%c"
 				"%lld%c"
 				"blksize%c"
-				"1432",
+				"%u",
 				priv->filename + 1, '\0',
 				'\0',	/* "octet" */
 				'\0',	/* "timeout" */
 				TIMEOUT, '\0',
 			        '\0',	/* "tsize" */
 				priv->filesize, '\0',
-			       '\0');	/* "blksize" */
+			       '\0',	/* "blksize" */
+			       TFTP_MTU_SIZE);
 		pkt++;
 		len = pkt - xp;
 		break;
-- 
2.36.1



