Delivery-date: Mon, 12 Jun 2023 14:33:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8gjw-003pF6-Ex
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 14:33:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8gju-0002Ot-2S
	for lore@pengutronix.de; Mon, 12 Jun 2023 14:33:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3ViAyEdyzWVUmaJFmI6Bqn8sqHtYErrfx4+Gs0cieRQ=; b=m0zeAo53t9ch5cvfwbGRz3IEDJ
	wk8bFVziqJyBh21+S4IVm8VVjhevzN7GcTkF+brnipTQKIDOYmZ1ULrpOnTiFL28wt/01Puo2GI+B
	jBRMDV7P3+NDro+za1rSRrdiGIiWgqT1+hLHg1F3Cvhntgw3d4eiUSgVgO1hx8YDzGsra5SW8HeB0
	5JnYjcamtbHxR0kAvGTYDjvpu1iJJkAdV/Er54WL/xkLKUKFlaXEdoQRoLXs6sxxDDCU51jOliJDO
	NFRxKA6W0ROH+3xiiDFIeG1swD4+148r4kym1zRtWJl7jt3KUD1HkP//jBPVvJV93n9CMjERG07TH
	v7fqBCHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8giv-0041f1-2L;
	Mon, 12 Jun 2023 12:32:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8giq-0041bv-1r
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 12:32:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q8gip-0002CA-BD; Mon, 12 Jun 2023 14:32:35 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q8gio-006syW-Lx; Mon, 12 Jun 2023 14:32:34 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q8gin-00D1D3-5N; Mon, 12 Jun 2023 14:32:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 12 Jun 2023 14:32:32 +0200
Message-Id: <20230612123232.3071957-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612123232.3071957-1-s.hauer@pengutronix.de>
References: <20230612123232.3071957-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_053236_609540_BBC5058A 
X-CRM114-Status: GOOD (  11.53  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 5/5] dmesg: udpate help
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Now that there are two options which take a loglevel as argument
describe the available loglevels in the command description and
not in the argument description.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/dmesg.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/commands/dmesg.c b/commands/dmesg.c
index 953bdb2068..ae85d98c1a 100644
--- a/commands/dmesg.c
+++ b/commands/dmesg.c
@@ -154,12 +154,18 @@ static int do_dmesg(int argc, char *argv[])
 	return 0;
 }
 
+
 BAREBOX_CMD_HELP_START(dmesg)
+BAREBOX_CMD_HELP_TEXT("print or control the barebox message buffer")
+BAREBOX_CMD_HELP_TEXT("Loglevels can be specified as number (0=emerg, 7=vdebug)")
+BAREBOX_CMD_HELP_TEXT("Known debug loglevels are: emerg, alert, crit, err, warn, notice, info, debug,")
+BAREBOX_CMD_HELP_TEXT("vdebug")
+BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-c",		"Delete messages after printing them")
 BAREBOX_CMD_HELP_OPT ("-d",		"Show a time delta to the last message")
 BAREBOX_CMD_HELP_OPT ("-e <msg>",	"Emit a log message")
-BAREBOX_CMD_HELP_OPT ("-l <vdebug|debug|info|notice|warn|err|crit|alert|emerg>", "Restrict output to the given (comma-separated) list of levels")
+BAREBOX_CMD_HELP_OPT ("-l <loglevel>", "Restrict output to the given (comma-separated) list of levels")
 BAREBOX_CMD_HELP_OPT ("-n <loglevel>", "Set level at which printing of messages is done to the console")
 BAREBOX_CMD_HELP_OPT ("-r",		"Print timestamp and log-level prefixes.")
 BAREBOX_CMD_HELP_OPT ("-t",		"Show timestamp informations")
-- 
2.39.2



