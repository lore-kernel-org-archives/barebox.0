Delivery-date: Mon, 15 Aug 2022 10:46:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNVkJ-006ETc-Vt
	for lore@lore.pengutronix.de; Mon, 15 Aug 2022 10:46:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNVkJ-0000lK-Rr
	for lore@pengutronix.de; Mon, 15 Aug 2022 10:46:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=omTvnrfCLhacWK69HPDMcNGG8Dkr+eNeFSzoblfSNfg=; b=qxXKcYutoKdJ6otEm/CoIgyTah
	ZmfVAkqZb4ngKevUZDbmf3Bd5MZG4pTQD2ZT4jS7ou3yi5AAd3RR2sVV1T/+LnKZ5CBWwZF9imu3o
	mDThWYW93A2SqNHDD5t+/HY02n0Lp64OvPA74644L+/o+8ibKFbQqCIBdWRHT1NzlBwlcfgA4MVn8
	QGfCJoCDdSZZHS8EyPxQ7co9wmCyzjt/315kC67j4yeypBhlAwKdOd4XHio6W2MXtMTIrhdZc+huo
	4PIC4boAsH81m6OUtvrQLKwvhfW1mXYcpci5LHIGwirZOs2El6F1YwxDy96ieDJ1FkWN+gJ9Fl4B+
	EuMJYAkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNViN-00DKxx-1j; Mon, 15 Aug 2022 08:44:51 +0000
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNVgw-00DJgB-9a
	for barebox@lists.infradead.org; Mon, 15 Aug 2022 08:43:26 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27F8gbit848746
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Mon, 15 Aug 2022 10:42:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1660552957;
	bh=omTvnrfCLhacWK69HPDMcNGG8Dkr+eNeFSzoblfSNfg=; l=666;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=TDonPCD322U8PRgGABn/5snmkPHJOk/4w/Jv2J7+gPhHaGtbNG2IbkTHwrDk7Ocyb
	 FG3LvU9iFQlgARXlCtqTu0Rx3oDodUAd3EepW1N1YLV8+NIFLExUMUgijk1L+HByFA
	 ve2Rsf+nOvu7fH/G2WM4t21t0cq8QE73RALiTjgzBjLNlO5Y/3c/oaq5v6OcywO/o+
	 HxkwXDWtsMwh+thr2pmkXVP/oehCAUuS4qTbFMryLQI6cnN1Zciq8cTgR4TcVj6ggx
	 E/DS92TVAdAKXGmAFTfluijco7HfHxG5GZVJaZiQxKqUjGFxtQlo7fkhjhoavlCLyO
	 SSzxP5mFz8/qw==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27F8gXok2540861
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Mon, 15 Aug 2022 10:42:33 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ( [192.168.12.73]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 4C8F24FFE34; Mon, 15 Aug 2022 10:42:27 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 27F8gQJa811079
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 15 Aug 2022 10:42:27 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oNVg1-000EJ9-W6;
	Mon, 15 Aug 2022 10:42:26 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Mon, 15 Aug 2022 10:42:15 +0200
Message-Id: <905928e19313adf61990b67bca5087853868ae08.1660552646.git.enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <cover.1660552646.git.enrico.scholz@sigma-chemnitz.de>
References: <cover.1660552646.git.enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_014324_367620_8235C709 
X-CRM114-Status: UNSURE (   9.56  )
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
Subject: [PATCH v3 11/18] tftp: reduce block size on lookup requests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Save some bytes on network traffic by reducing the server response for
lookup requests.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 9f881249ce07..2ed62b77901b 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -148,7 +148,9 @@ static int tftp_send(struct file_priv *priv)
 				'\0',	/* "tsize" */
 				priv->filesize, '\0',
 				'\0',	/* "blksize" */
-				TFTP_MTU_SIZE);
+				/* use only a minimal blksize for getattr
+				   operations, */
+				priv->is_getattr ? TFTP_BLOCK_SIZE : TFTP_MTU_SIZE);
 		pkt++;
 		len = pkt - xp;
 		break;
-- 
2.37.1



