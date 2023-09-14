Delivery-date: Thu, 14 Sep 2023 11:15:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgiRw-00EpwB-IB
	for lore@lore.pengutronix.de; Thu, 14 Sep 2023 11:15:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgiRu-000807-Ej
	for lore@pengutronix.de; Thu, 14 Sep 2023 11:15:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qvjDFqzFgeioN+/Tz/4uaaHY5/qsRb+WCEEqhrlPFXc=; b=29v+sH6UV87rWzKc43YLPA9ivs
	OASqQSN+nNxb/SR0VIYVdfsWaPyitnkWhn3AuBr19eRNWRwAucFtGVypyx3svf78s/0wrgQJyIjtT
	izm9XSsjx0qgWZrCFkBm7D0J05/hIZ4M3ziKe38qGsn5zj3rr1ps85SYZKn34h4uhJWz9lDR1JFQ5
	Nfxicaobd5CuiMR08J38IHkiDdbQtcKK3Ti++42I4FWpMuUfHEeEe9PSCMpqzC7NFVJReuPWCx+iY
	8qPTdFsKiScN+92gS+EnyzGWV59mpevH3cwgjzIIjnSXou9a2fJgLUjrFXey0xMa3LkzstFKDEWU6
	gFHsJvkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgiQu-007ol3-1u;
	Thu, 14 Sep 2023 09:14:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgiQr-007okH-30
	for barebox@lists.infradead.org;
	Thu, 14 Sep 2023 09:14:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qgiQq-0007Ih-P6; Thu, 14 Sep 2023 11:14:40 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qgiQq-006GkB-9V; Thu, 14 Sep 2023 11:14:40 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qgiQq-000XGH-0n;
	Thu, 14 Sep 2023 11:14:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Thorsten Scherer <T.Scherer@eckelmann.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 14 Sep 2023 11:14:38 +0200
Message-Id: <20230914091438.125965-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230911150900.3584523-1-a.fatoum@pengutronix.de>
References: <20230911150900.3584523-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230914_021441_964189_19F4C849 
X-CRM114-Status: UNSURE (   8.57  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! commands: add stacksmash command for causing stack overflows
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

commands: stacksmash: fix whitespace in command description

Command description mixed spaces and tabs. Fix it to have tabs only.

Cc: Thorsten Scherer <T.Scherer@eckelmann.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Thanks, Thorsten!
---
 commands/stacksmash.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/commands/stacksmash.c b/commands/stacksmash.c
index 1e9be0d40e15..b812d945e215 100644
--- a/commands/stacksmash.c
+++ b/commands/stacksmash.c
@@ -50,9 +50,9 @@ static int do_stacksmash(int argc, char *argv[])
 	panic("Stack smashing of %s not caught\n", argv[1]);
 }
 BAREBOX_CMD_START(stacksmash)
-        .cmd            = do_stacksmash,
-        BAREBOX_CMD_DESC("Run stack smashing tests")
+	.cmd            = do_stacksmash,
+	BAREBOX_CMD_DESC("Run stack smashing tests")
 	BAREBOX_CMD_OPTS("[frame | region]")
-        BAREBOX_CMD_GROUP(CMD_GRP_MISC)
-        BAREBOX_CMD_COMPLETE(empty_complete)
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
+	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
-- 
2.39.2



