Delivery-date: Mon, 18 Jul 2022 14:26:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oDPpE-00D7LL-J0
	for lore@lore.pengutronix.de; Mon, 18 Jul 2022 14:26:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oDPpB-00007Y-0M
	for lore@pengutronix.de; Mon, 18 Jul 2022 14:26:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KoOo6dmSdREfBfGi9z6WMgc3Q4nf2s92gUJdz7t6+SI=; b=N9eb7IKaxlLzXOCN6jHAWPphYT
	RU/lvlxEU/OJgqc7dmw+nPNkX17wFaCMVSxKADtO59IrB6CQ1ZYTX6Dy23jLU8rqizQxGCj3xIT8K
	tE47xXRiu23/jE22/6hvU7JCO16Hv0UTZOvoHBdd43qEzQWeQ7Se6h5gS+vd57Brkr75eRJUF4Bdq
	7T3WrMtkoP0h4g3xupp5RTuPZUmhqhn1lRxOFaHyt2SQzmOsEWhv3hhSb0dO5TcHDYUnAPf9cRcKG
	5hxcyIBkjq7csfp3+B6AN/xY6F/YjLbQKwXxSamM8zzuDE1R6hannq9j0pBlkjcnBXAwBZGOMhosM
	DCRZr2Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPnd-00DEfA-Tn; Mon, 18 Jul 2022 12:24:34 +0000
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPmh-00DDXT-4v
	for barebox@lists.infradead.org; Mon, 18 Jul 2022 12:23:38 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 26ICMoPk390617
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Mon, 18 Jul 2022 14:22:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1658146971;
	bh=KoOo6dmSdREfBfGi9z6WMgc3Q4nf2s92gUJdz7t6+SI=; l=1119;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=h3UkHYUCYCYGl3eeg/SCK6Tijqo3rshykPqk8dSnS3ZnthHXUxhlnk84osAZQzXt5
	 kHknUmlAsyVSE0wY8rJH4g1ZjVma/0n5uqwitf3i59A15zVs630EB8REeowEOwTeyY
	 AvMoTAssC7QR6HmM0+GMHa83JMW5HS3hxw2Fn5xpM5o9NoSfwOaDXKhj6fCDiV7Dy5
	 OFFEaoWJTiElc57uk8h7Iu+JIx2jNY0tsYwaVedGod3F1T8P1KsrOpdoT5PPpbZoQM
	 DpJI4NZl7QwNzCQIxZvV9RibWt2tbhRlmOpRI1oVykHyucQRoKC8vPz0QkbOLR+CJp
	 0fw8MODeLA6Jg==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 26ICMZea1699960
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Mon, 18 Jul 2022 14:22:35 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ( [192.168.12.72]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 227DCFFBDB3; Mon, 18 Jul 2022 14:22:33 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 26ICMXAd371869
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 18 Jul 2022 14:22:33 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oDPlh-002g3r-1J;
	Mon, 18 Jul 2022 14:22:33 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Mon, 18 Jul 2022 14:22:27 +0200
Message-Id: <8990811d3a980010a7cb72f47677206491bcee49.1658144543.git.enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <cover.1658144543.git.enrico.scholz@sigma-chemnitz.de>
References: <cover.1658144543.git.enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220718_052335_399122_BA15ACBD 
X-CRM114-Status: UNSURE (   9.80  )
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
Subject: [PATCH 12/13] tftp: allow to change tftp port
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

useful e.g. when working with a local, non-privileged tftp server

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 2c2ff081be51..400209c26023 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -78,6 +78,7 @@
 #define TFTP_ERR_RESEND	1
 
 static int g_tftp_window_size = TFTP_MAX_WINDOW_SIZE / 1;
+static int g_tftp_port = TFTP_PORT;
 
 struct tftp_block {
 	uint16_t id;
@@ -600,7 +601,7 @@ static struct file_priv *tftp_do_open(struct device_d *dev,
 		goto out;
 	}
 
-	priv->tftp_con = net_udp_new(tpriv->server, TFTP_PORT, tftp_handler,
+	priv->tftp_con = net_udp_new(tpriv->server, g_tftp_port, tftp_handler,
 			priv);
 	if (IS_ERR(priv->tftp_con)) {
 		ret = PTR_ERR(priv->tftp_con);
@@ -944,6 +945,7 @@ static struct fs_driver_d tftp_driver = {
 static int tftp_init(void)
 {
 	globalvar_add_simple_int("tftp.windowsize", &g_tftp_window_size, "%u");
+	globalvar_add_simple_int("tftp.port", &g_tftp_port, "%u");
 
 	return register_fs_driver(&tftp_driver);
 }
-- 
2.36.1



