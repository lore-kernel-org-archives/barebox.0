Delivery-date: Mon, 14 Aug 2023 16:13:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qVYJc-003qBM-ON
	for lore@lore.pengutronix.de; Mon, 14 Aug 2023 16:13:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qVYJb-0006bT-30
	for lore@pengutronix.de; Mon, 14 Aug 2023 16:13:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=R5GowhnHOrn0KE0P+EWCSKlixg4I4pWCmrpgWENSQAk=; b=rV80k+8DX9GZtkuh4EWaCsQVeF
	Lj2Us3WLGP/hHhv2Zi7jGKAQWCndcPDSBMggqOorYDRqVTStrE9blaGPg9YCChbvkYJhok0fKoFPn
	3V53yN/Gn3Qk/2WqaYZsJd/mbyL+4nBOg2S6+JIh71pqixU13XfnirpB6uOE+qTYC6sz2cszSL0b9
	+FXcW22CAFE5UCyc9UfjDmiQQ/9MiSawpHewSG4o9XLvHPqjEOvo7+KHHG29LkId8ct7nE1CM8/U7
	WQrYghqbp3lOaFm/Bi90KWO7hlTLTZ1QxQrHWiD9IE3XV3ZqdXZ5jCk2XHe/fKz6ZhOWPnE+JZle6
	7ovGP7Nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVYIF-00HFMr-1d;
	Mon, 14 Aug 2023 14:11:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVYIC-00HFLU-35
	for barebox@lists.infradead.org;
	Mon, 14 Aug 2023 14:11:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1qVYI6-0006II-7v; Mon, 14 Aug 2023 16:11:30 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1qVYI5-000bMO-JZ; Mon, 14 Aug 2023 16:11:29 +0200
Received: from rhi by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <rhi@pengutronix.de>)
	id 1qVYI5-002NWf-1A;
	Mon, 14 Aug 2023 16:11:29 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>
Date: Mon, 14 Aug 2023 16:11:13 +0200
Message-Id: <20230814141112.567070-1-rhi@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230814_071136_992207_30D05A14 
X-CRM114-Status: UNSURE (   8.31  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] commands: global: document usage without parameters
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 commands/global.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/commands/global.c b/commands/global.c
index cf8e9a5b4894..a8ff5ea18fb0 100644
--- a/commands/global.c
+++ b/commands/global.c
@@ -50,6 +50,7 @@ static int do_global(int argc, char *argv[])
 
 BAREBOX_CMD_HELP_START(global)
 BAREBOX_CMD_HELP_TEXT("Add a new global variable named VAR, optionally set to VALUE.")
+BAREBOX_CMD_HELP_TEXT("Without options, print all global and env (prefixed with *) variables.")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT("-r", "Remove globalvars")
@@ -58,7 +59,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(global)
 	.cmd		= do_global,
 	BAREBOX_CMD_DESC("create or set global variables")
-	BAREBOX_CMD_OPTS("[-r] VAR[=VALUE] ...")
+	BAREBOX_CMD_OPTS("[-r] [VAR[=VALUE] ...]")
 	BAREBOX_CMD_GROUP(CMD_GRP_ENV)
 	BAREBOX_CMD_HELP(cmd_global_help)
 	BAREBOX_CMD_COMPLETE(global_complete)
-- 
2.39.2



