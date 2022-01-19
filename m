Delivery-date: Wed, 19 Jan 2022 15:10:24 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nABfM-006hlg-TA
	for lore@lore.pengutronix.de; Wed, 19 Jan 2022 15:10:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nABfI-0002Md-JC
	for lore@pengutronix.de; Wed, 19 Jan 2022 15:10:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=e4SDcSbwwyjNOBm05hYMemgbh0IslZz+xhs7hktppWQ=; b=AxHSKOWZrG64XC
	y8TROJxQvW+6Crzs/J1LTYrSvyULGXC9cjoL7msEWP2yLCY2CvdXSTLTieWIPtYPRQTJXe4bQ3YMm
	T76p26m7M6P57nZJW9MsGwTHd20gkTBg6cMLNcBBkzCzgnQyrVJ0nuXW8GcVX+Zy6t7Lq4TLaqKtm
	zjitKBitwrRyG2z4EiuSgS4DWmP9FJMVAiCYvD8XbVxphMIYmKAtmTUtIQusIoGa+c99fRWzhEoxN
	kiKNWJHCJX0N78TVXyyp+59CQ7Om4Wlqw5bkJE2sVHDhggMPry4f1OyAVPhPFhA1ao+scEQP+cPlw
	Fd5iwRzAEX1qLJ6fa42Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nABdT-005pWV-K8; Wed, 19 Jan 2022 14:08:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nABdM-005pUg-O0
 for barebox@lists.infradead.org; Wed, 19 Jan 2022 14:08:25 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nABdL-00026m-Hw; Wed, 19 Jan 2022 15:08:19 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nABdK-002YuV-OX; Wed, 19 Jan 2022 15:08:18 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Michael Olbrich <mol@pengutronix.de>, Yann Sionneau <ysionneau@kalray.eu>,
 Jules Maselbas <jmaselbas@kalray.eu>
Date: Wed, 19 Jan 2022 15:08:16 +0100
Message-Id: <20220119140816.610764-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220119_060820_808883_2DC438F9 
X-CRM114-Status: GOOD (  11.22  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] commands: wd: add new -x option to inhibit all watchdogs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When booting after nv.autoboot=abort, barebox will drop to shell and
try to inhibit all watchdogs: If they can be disabled, they will be and
otherwise if autopoll support is compiled in, they will be periodically
fed. This is useful for development. For this to work though, barebox
needs an environment. Make watchdog_inhibit_all more accessible by
making it directly invocable with wd -x.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Cc: Michael Olbrich <mol@pengutronix.de>
Cc: Yann Sionneau <ysionneau@kalray.eu>
Cc: Jules Maselbas <jmaselbas@kalray.eu>
---
 commands/wd.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/commands/wd.c b/commands/wd.c
index c186244b2b3a..11f888133aac 100644
--- a/commands/wd.c
+++ b/commands/wd.c
@@ -18,11 +18,13 @@ static int do_wd(int argc, char *argv[])
 	int opt;
 	int rc;
 
-	while ((opt = getopt(argc, argv, "d:")) > 0) {
+	while ((opt = getopt(argc, argv, "d:x")) > 0) {
 		switch (opt) {
 		case 'd':
 			wd = watchdog_get_by_name(optarg);
 			break;
+		case 'x':
+			return watchdog_inhibit_all();
 		default:
 			return COMMAND_ERROR_USAGE;
 		}
@@ -66,12 +68,13 @@ BAREBOX_CMD_HELP_TEXT("When TIME is 0, the watchdog gets disabled,")
 BAREBOX_CMD_HELP_TEXT("Without a parameter the watchdog will be re-triggered.")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT("-d DEVICE\t", "watchdog name (default is highest priority watchdog)")
+BAREBOX_CMD_HELP_OPT("-x\t", "inhibit all watchdogs (i.e. disable or autopoll if possible)")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(wd)
 	.cmd = do_wd,
 	BAREBOX_CMD_DESC("enable/disable/trigger the watchdog")
-	BAREBOX_CMD_OPTS("[-d DEVICE] [TIME]")
+	BAREBOX_CMD_OPTS("[-d DEVICE] [-x] [TIME]")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_wd_help)
 	BAREBOX_CMD_COMPLETE(device_complete)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

