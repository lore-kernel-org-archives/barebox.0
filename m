Delivery-date: Mon, 18 Jul 2022 14:26:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oDPpI-00D7MA-7e
	for lore@lore.pengutronix.de; Mon, 18 Jul 2022 14:26:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oDPpF-0000Ay-O3
	for lore@pengutronix.de; Mon, 18 Jul 2022 14:26:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ROFo+CqKTg4S4CNiURYX4shcuyAHdgj0OXfnn5qqBLY=; b=FEHg9ecRSigw3xiCvVCVnfJv7J
	knHTeSIWrc2G1rLoL7+xHLz+C598KiJe2+V5MSXbiuy1Z0CZkDv4tI9K9cVAKRexxZfs12191po6w
	6Spoa4WgKBQVCd7o9qVN9F4FAxb4D/viK5tANZEby/eH4CYC5AmdYAHtCK1His+8tnkAsGZRtCEZi
	Nqh0UNz1XQbYFwS6KvD/JGD/z/WPe2swx6cxVVnr+M2M9D0QdvGTQNxbpeTPLAkjY+OREZH4evbfp
	Mgdc6e8kdZXvH+UJABcEx4yKy6n4EPTdyjOnxjFChEzz1VhpmuUGySSnS29cN56ARl/yWayyqx/Dy
	pYTmVT7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPnl-00DEio-Dg; Mon, 18 Jul 2022 12:24:41 +0000
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPmh-00DDXa-5t
	for barebox@lists.infradead.org; Mon, 18 Jul 2022 12:23:38 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 26ICMpp5575045
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Mon, 18 Jul 2022 14:22:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1658146971;
	bh=ROFo+CqKTg4S4CNiURYX4shcuyAHdgj0OXfnn5qqBLY=; l=1263;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=wx1mhYmk55AkzWPPzT3mUkVKJSMuaLtCdtyzzYInjk94Qd0LjCozxECV2T0y9WlE7
	 cI4TvbgI1xfTblkHkmhHVn2XvHAp/tq1CgLbbZ1mhZYRjtiT7OaB63zur6AY2YNqPw
	 GIQbHkR5wLuJ8lOvUmXaHNbY0LeEfxrxx+WpiP/ngOfnM3F4AbIvXbyvlFA9FXFJT6
	 wdqc9Q4Q9igbQ6ctIkwEdL3tF/fAtFK2vQUhlVB8oVsXPO5ZOqk7qg0OgD35FVC8Mw
	 ZPO5pXagd/XSDYs0pwTlCML13tT2ZdRBhufMw4jwXJq7GnAsVp8G95PiWRJzLHYLfg
	 XsfU8mQ6uUz1A==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 26ICMZnc1699959
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Mon, 18 Jul 2022 14:22:35 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ( [192.168.12.72]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 192B79822FB; Mon, 18 Jul 2022 14:22:33 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 26ICMWZO371857
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 18 Jul 2022 14:22:33 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oDPlg-002g3R-SZ;
	Mon, 18 Jul 2022 14:22:32 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Mon, 18 Jul 2022 14:22:22 +0200
Message-Id: <d4d3d92307f8d2ada111911303ecc119ec48ba73.1658144543.git.enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <cover.1658144543.git.enrico.scholz@sigma-chemnitz.de>
References: <cover.1658144543.git.enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220718_052335_588400_ECC28041 
X-CRM114-Status: UNSURE (   7.82  )
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
Subject: [PATCH 07/13] tftp: refactor data processing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

move block handling into dedicated function

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 25 +++++++++++++++----------
 1 file changed, 15 insertions(+), 10 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 01d3beff14bf..81141626ab91 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -249,6 +249,20 @@ static void tftp_timer_reset(struct file_priv *priv)
 	priv->progress_timeout = priv->resend_timeout = get_time_ns();
 }
 
+static void tftp_put_data(struct file_priv *priv, uint16_t block,
+			  void const *pkt, size_t len)
+{
+	priv->last_block = block;
+
+	kfifo_put(priv->fifo, pkt, len);
+
+	if (len < priv->blocksize) {
+		tftp_send(priv);
+		priv->err = 0;
+		priv->state = STATE_DONE;
+	}
+}
+
 static void tftp_recv(struct file_priv *priv,
 			uint8_t *pkt, unsigned len, uint16_t uh_sport)
 {
@@ -332,17 +346,8 @@ static void tftp_recv(struct file_priv *priv,
 			/* Same block again; ignore it. */
 			break;
 
-		priv->last_block = priv->block;
-
 		tftp_timer_reset(priv);
-
-		kfifo_put(priv->fifo, pkt + 2, len);
-
-		if (len < priv->blocksize) {
-			tftp_send(priv);
-			priv->err = 0;
-			priv->state = STATE_DONE;
-		}
+		tftp_put_data(priv, priv->block, pkt + 2, len);
 
 		break;
 
-- 
2.36.1



