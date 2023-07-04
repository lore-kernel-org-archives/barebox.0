Delivery-date: Tue, 04 Jul 2023 13:30:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGeF2-00EjQk-AA
	for lore@lore.pengutronix.de; Tue, 04 Jul 2023 13:30:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGeEz-0000uh-S1
	for lore@pengutronix.de; Tue, 04 Jul 2023 13:30:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5mNfYpSH33cuJuUcByWxodtsVcwJCfRGp/RDGNqU57Q=; b=sWuJheowF1H2HS9go91mVMI+6q
	5agVDApE+YlnJ3b+rGFLg2xetxZST1QsnNJXHoJBGBhvYpQOaYUs6Zcz7sEPnAGwoNZV1dOr/lKvP
	eHj3XB/VP5IDk5Nwp8CLgIlmX02GgFN1oUqKu3d78+bwpMpf+jEl9KOsZuMcrBlo0VpOyoetnLCNG
	cOb6V/EdqVOZIitwqSfzyT5fWaQ1p6giJ4pJf0FxVZTRwcMnGOSyyPV3aeT0p/MXy1nSIFAcWaa2K
	N3ZKGQ66wUFV6CUMXfo/7mtbDlZzA9BBOwkYl8kAX0g+XiETbR6qPgYUd8dMrPlXyGHgAKVbjcAXk
	XHuWqCHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGeDq-00D8Gk-07;
	Tue, 04 Jul 2023 11:29:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGeDn-00D8FE-14
	for barebox@lists.infradead.org;
	Tue, 04 Jul 2023 11:29:28 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qGeDj-0000UP-Pv
	for barebox@lists.infradead.org; Tue, 04 Jul 2023 13:29:23 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue,  4 Jul 2023 13:29:20 +0200
Message-Id: <20230704112921.741776-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230704112921.741776-1-m.felsch@pengutronix.de>
References: <20230704112921.741776-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230704_042927_370708_DF34D326 
X-CRM114-Status: GOOD (  10.76  )
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
Subject: [PATCH v2 2/3] commands: test: replace printf with pr_err
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Replace the printf() with pr_err() to support:
 - color formated prints
 - logbuffer storing (dmesg)
 - loglevels

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
v2:
 - new patch

 commands/test.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/commands/test.c b/commands/test.c
index c1b84c42ef..5478011185 100644
--- a/commands/test.c
+++ b/commands/test.c
@@ -77,7 +77,7 @@ static int do_test(int argc, char *argv[])
 	if (*argv[0] == '[') {
 		argc--;
 		if (*argv[argc] != ']') {
-			printf("[: missing `]'\n");
+			pr_err("[: missing `]'\n");
 			return 1;
 		}
 	}
@@ -213,7 +213,7 @@ static int do_test(int argc, char *argv[])
 		}
 
 		if (left < adv) {
-			printf("test: failed to parse arguments\n");
+			pr_err("test: failed to parse arguments\n");
 			return 1;
 		}
 
-- 
2.39.2



