Delivery-date: Sun, 28 Aug 2022 16:05:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSIuu-00D8Fu-R7
	for lore@lore.pengutronix.de; Sun, 28 Aug 2022 16:05:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSIul-0002NV-WD
	for lore@pengutronix.de; Sun, 28 Aug 2022 16:05:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6Sy5N7mx3cQG6m0M2fV6tfvmn3J6WUvdLyQHWARrwVE=; b=439e+o+NJvucfLChZIkqO63D65
	DlbzeqIhPwQFdi+j+5T+qkerW1c2msSkaEhs6Rscv+u0HEZ0UduMD7lCHwnsGr+vKzy3z0ixh99YJ
	aJm0i+RAftZWfAlm7YTUBKd/N3G3ltQQVmOHdpRCKgn5+1hC8+WN3aUoynvjmd5A4au7v70Dje6Lh
	EuCeVRxAACIGZov5YS5NV87V+JzsfPKuiUREtkp/9f3wErkpADNNsdowVUeZ1gCjJt4cG26TWEtWd
	RINbARbqkD2NHqxa9b7j5YAv0IJOzCJfb5HrID3KhCjGpH+F42F7vB7H64tTXcEjO/R+0sp3lypnf
	RmOkRMjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSItD-00HKG5-T2; Sun, 28 Aug 2022 14:03:52 +0000
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSIsw-00HJnh-Vh
	for barebox@lists.infradead.org; Sun, 28 Aug 2022 14:03:37 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27SE2pBG976786
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Sun, 28 Aug 2022 16:02:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1661695371;
	bh=6Sy5N7mx3cQG6m0M2fV6tfvmn3J6WUvdLyQHWARrwVE=; l=1202;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=aNtgrCkiyHi/ooWz4m3wInTW5c/q6IY+H8Wjjv0pk3fmsxfTbbBxfQbk3VrWYYBIF
	 z1JZyB3W3d6x2vEz5yYV5vgecCiQQNYDyIfQrR09ob3CXPyycZWvdskInJOoI4w1PG
	 49OoyrpPAHHSz6iltbujuFRqf9nyZuffKkxTArSAPcpyWhvxJenYlvDzms9Nu7IQah
	 bS2Rsd+vg84gzBbEmgQiM/2T6YKP7e1kI/V893chV5kwDu9ROChp/t9mFSO74aRTIv
	 sEUijYBPq57xEzVOYEObivzUX+gffVlL9qJMYOiey7jM0a52qL0Pvtn4ysACSOP4On
	 cIQdTQ2k8QQTw==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27SE2fBg980530
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Sun, 28 Aug 2022 16:02:43 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ( [192.168.12.72]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 7F4D27E3B6B; Sun, 28 Aug 2022 16:02:38 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27SE2bhd756481
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Sun, 28 Aug 2022 16:02:38 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oSIs1-003u7j-EB;
	Sun, 28 Aug 2022 16:02:37 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Sun, 28 Aug 2022 16:02:29 +0200
Message-Id: <20220828140231.930643-7-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220828140231.930643-1-enrico.scholz@sigma-chemnitz.de>
References: <20220828140231.930643-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220828_070336_057783_D6BA3A01 
X-CRM114-Status: UNSURE (   8.40  )
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
Subject: [PATCH 6/8] tftp: do not set 'tsize' in wrq requests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The filesize is not known for push requests and barebox always sent
'0'.  Server might reject data because it will always exceed this
length.

Send this option only for rrq requests.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 7edea904aabe..c00857ecfa28 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -403,22 +403,26 @@ static int tftp_send(struct file_priv *priv)
 				"octet%c"
 				"timeout%c"
 				"%d%c"
-				"tsize%c"
-				"%lld%c"
 				"blksize%c"
 				"%u",
 				priv->filename + 1, '\0',
 				'\0',	/* "octet" */
 				'\0',	/* "timeout" */
 				TIMEOUT, '\0',
-				'\0',	/* "tsize" */
-				priv->filesize, '\0',
 				'\0',	/* "blksize" */
 				/* use only a minimal blksize for getattr
 				   operations, */
 				priv->is_getattr ? TFTP_BLOCK_SIZE : TFTP_MTU_SIZE);
 		pkt++;
 
+		if (!priv->push)
+			/* we do not know the filesize in WRQ requests and
+			   'priv->filesize' will always be zero */
+			pkt += sprintf((unsigned char *)pkt,
+				       "tsize%c%lld%c",
+				       '\0', priv->filesize,
+				       '\0');
+
 		if (window_size > 1)
 			pkt += sprintf((unsigned char *)pkt,
 				       "windowsize%c%u%c",
-- 
2.37.2



