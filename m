Delivery-date: Mon, 09 Oct 2023 13:54:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qpoqK-001qdC-6r
	for lore@lore.pengutronix.de; Mon, 09 Oct 2023 13:54:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qpoqJ-0002c0-2j
	for lore@pengutronix.de; Mon, 09 Oct 2023 13:54:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=yL+mdVytcGXx7dmpw7lj8UQr6DEDQSFiXTbivcoQWMU=; b=zvGrmgIhkOXp0qkZdYgrJMQ0wI
	51Jpleg6BGPo2nD6/f3XthrUtO6SBZza/1NKPM7l78a6I78lXSYTtM6MfoZEUWaxtRZkfN0VKmfwD
	Ju90pg5wsu/aAC2BbamswmenGfy75jC2ykCo/HAN9svpiB9hQ5pGtm5fMTiJ8p3771TC0TqLLPbW1
	KyUjIP5lCxUfiDMBd254B76DTVnWEqWfeq6Y6frlFCkTJ4Twr5W0ui0R3oELJEpZOTkIMVT4SmzzD
	CwZFeQ9000nfBFBc4fZFHaV2rRhiChXBzHQFdcbCol35Lfqfm/GO44PmL5Pk6BgeeEJLsnYfAi4XF
	PVcy1roQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpop9-00AWXl-1S;
	Mon, 09 Oct 2023 11:53:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpop4-00AWTX-37
	for barebox@lists.infradead.org;
	Mon, 09 Oct 2023 11:53:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qpop3-0001w2-Bh; Mon, 09 Oct 2023 13:53:17 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qpop2-000P4A-Vc; Mon, 09 Oct 2023 13:53:16 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qpop2-00AAU9-2z;
	Mon, 09 Oct 2023 13:53:16 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Oct 2023 13:53:16 +0200
Message-Id: <20231009115316.2418494-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_045319_000189_ACF8A2ED 
X-CRM114-Status: GOOD (  10.64  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] commands: keystore: work around missing initialization false positive
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

clang is unhappy about this. While I can't see how s_len could be used
uninitialized, there's value in silencing these warnings, so the real
issues are not as easy to overlook.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/keystore.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/keystore.c b/commands/keystore.c
index 4922cf1bebe9..40bcb7105d75 100644
--- a/commands/keystore.c
+++ b/commands/keystore.c
@@ -17,7 +17,7 @@ static int do_keystore(int argc, char *argv[])
 	const char *file = NULL;
 	char *secret_str = NULL;
 	void *secret;
-	size_t s_len;
+	size_t s_len = 0;
 
 	while ((opt = getopt(argc, argv, "rs:f:")) > 0) {
 		switch (opt) {
-- 
2.39.2



