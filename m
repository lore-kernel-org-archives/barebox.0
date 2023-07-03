Delivery-date: Tue, 04 Jul 2023 00:59:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGSWS-00E5wG-M3
	for lore@lore.pengutronix.de; Tue, 04 Jul 2023 00:59:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGSWQ-0000Ga-9B
	for lore@pengutronix.de; Tue, 04 Jul 2023 00:59:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JrUS95k/wHDPuP79Ftdl/6EJPtAiUVdOwl3lR31eTEI=; b=RgZNNoecdiwxXKVe5KSNuNlL0g
	3hS/wzNDSaOagviRMs+OatOiNL2WViyYM9ky7cwwHujZQRepTxFQGe/iNgTC46C1L3jvMpVFQgLBU
	5C1B1DMEY2Q2GwwlBgRwPc3jkv59KR1ztOSJtMd8Ez87oJ801+O8HJTf9225wCVfk7/hiF7qdzjGz
	IZ7GUXMeuN9NVjorIyOgI2PTwtvydfS49aNafotpH6PJPBY0u7rfJvDZHXRQ/U0XbnAj/7Gm2r9iK
	LvakY+UJ6xRRcc7ig/VKe64g8x6DZLCx1Lppu+6Fq6SPEjULa3+HJsJ2bk4ck+S6VwNLjaTZxtgt1
	LheIzZEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGSV1-00BbAR-34;
	Mon, 03 Jul 2023 22:58:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGSUy-00Bb9W-0i
	for barebox@lists.infradead.org;
	Mon, 03 Jul 2023 22:58:25 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qGSUs-0000B5-HF
	for barebox@lists.infradead.org; Tue, 04 Jul 2023 00:58:18 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue,  4 Jul 2023 00:58:12 +0200
Message-Id: <20230703225813.2828815-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230703_155824_276151_6DF7BC8D 
X-CRM114-Status: GOOD (  10.55  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] commands: test: simplify argv handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Decrement argc first before check the closing ']' to avoid the
*argv[argc - 1]. No functional change.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 commands/test.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/commands/test.c b/commands/test.c
index c845cec017..c1b84c42ef 100644
--- a/commands/test.c
+++ b/commands/test.c
@@ -75,11 +75,11 @@ static int do_test(int argc, char *argv[])
 	struct stat statbuf;
 
 	if (*argv[0] == '[') {
-		if (*argv[argc - 1] != ']') {
+		argc--;
+		if (*argv[argc] != ']') {
 			printf("[: missing `]'\n");
 			return 1;
 		}
-		argc--;
 	}
 
 	/* args? */
-- 
2.39.2



