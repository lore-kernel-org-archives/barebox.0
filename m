Delivery-date: Wed, 17 Sep 2025 16:19:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyszw-0046O7-1A
	for lore@lore.pengutronix.de;
	Wed, 17 Sep 2025 16:19:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyszs-0003gL-Rj
	for lore@pengutronix.de; Wed, 17 Sep 2025 16:19:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JbRHDCqhOm5hDkxDIBfDiflOVae+GfFX6Nwl6ndkNJM=; b=UzUDr+KS3OeQTVDF9Rr7Q5vg5F
	24aoFxH5vyO1zPs3TUzLvBRYULy7/lTKyeVaqyt6w/EA5epYpUYy9fF5gZoGTmFINpm8UJrMwjJrf
	cP2H7V+2RThPMjwsR0GtyCcxO4hiJSrwxidFEReDbDTKBZyIrZBGiXKTB9k44aVmuqTz8Jjwhhm4k
	DxIxKHfsTeKERG9UzHqhAtlxyvP6R2gVOswFeZ0W9qy0vXZ02kjUyIyox4G2Owk116aw5475S218j
	vPMj7Y58D2chy2RXyQquBUacEYVJ0q9PaknW9WAhS2mwt1yfUmABs8fmRSMjgJy46MAdd6Bm2qfX6
	qtu/2LwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyszL-0000000C8Dz-37sf;
	Wed, 17 Sep 2025 14:18:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyszH-0000000C87M-0Btx
	for barebox@lists.infradead.org;
	Wed, 17 Sep 2025 14:18:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyszF-000311-Az; Wed, 17 Sep 2025 16:18:21 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyszF-001mGN-0T;
	Wed, 17 Sep 2025 16:18:21 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uysbA-0000000CZtI-32Q8;
	Wed, 17 Sep 2025 15:53:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Sep 2025 15:53:31 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250917-security-policies-v2-11-f30769a3ff51@pengutronix.de>
References: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
In-Reply-To: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758117208; l=3175;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=rB83aOjg3crSVQXxIVsjikWSWqjZA1H5Y4d9w79+JD4=;
 b=06N4BMksXs3kIXCCMl19vaPRnmst3WYTXcoPg+jvFycGAHQO3G1/7w8c6b4gdsXklQVy4FfPu
 uUpyiAmCugAC/lTcab/6VAmjZDoH0zmFRQxkAROt1HuopbBovUFWscM
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_071823_105047_660C3AC4 
X-CRM114-Status: GOOD (  18.15  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 11/24] console: ratp: add security config option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

For secure systems that disable the regular console, RATP should be
disabled as well, so add an option to do so.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Sconfig            |  1 +
 common/Sconfig     |  9 +++++++++
 common/console.c   |  4 +++-
 common/ratp/ratp.c | 17 +++++++++++++++++
 4 files changed, 30 insertions(+), 1 deletion(-)

diff --git a/Sconfig b/Sconfig
index 1c5b9d70d09f8df47edc48f6ac295501f66df97e..f1ae5c7a1482058d170f99c75b706f66a954a9cb 100644
--- a/Sconfig
+++ b/Sconfig
@@ -5,4 +5,5 @@ mainmenu "Barebox Security Configuration"
 source "scripts/Sconfig.include"
 
 source "security/Sconfig"
+source "common/Sconfig"
 source "commands/Sconfig"
diff --git a/common/Sconfig b/common/Sconfig
new file mode 100644
index 0000000000000000000000000000000000000000..479ac5cdf2e560a638d39abbc9f91afe2edd7403
--- /dev/null
+++ b/common/Sconfig
@@ -0,0 +1,9 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+menu "General Settings"
+
+config RATP
+	bool "Allow remote control via RATP"
+	depends on $(kconfig-enabled,CONSOLE_RATP)
+
+endmenu
diff --git a/common/console.c b/common/console.c
index a31433a659e2b5d7376c7a6da287478441e5d618..ceecb8730e55422b78eea7204dc9b9a70cf97212 100644
--- a/common/console.c
+++ b/common/console.c
@@ -5,6 +5,7 @@
  */
 
 #include <config.h>
+#include <security/config.h>
 #include <common.h>
 #include <stdarg.h>
 #include <malloc.h>
@@ -492,7 +493,8 @@ static int getc_raw(void)
 			if (cdev->tstc(cdev)) {
 				int ch = cdev->getc(cdev);
 
-				if (IS_ENABLED(CONFIG_RATP) && ch == 0x01) {
+				if (IS_ENABLED(CONFIG_RATP) && ch == 0x01 &&
+				    IS_ALLOWED(SCONFIG_RATP)) {
 					barebox_ratp(cdev);
 					return -1;
 				}
diff --git a/common/ratp/ratp.c b/common/ratp/ratp.c
index 2906f5a09098bd1aa61e7450a035a0e7b2327195..f2735fa885315f95b7a754d12de04c15b36fa822 100644
--- a/common/ratp/ratp.c
+++ b/common/ratp/ratp.c
@@ -14,6 +14,7 @@
 #define pr_fmt(fmt) "barebox-ratp: " fmt
 
 #include <common.h>
+#include <security/config.h>
 #include <command.h>
 #include <malloc.h>
 #include <init.h>
@@ -46,6 +47,7 @@ struct ratp_ctx {
 
 	struct ratp_bb_pkt *fs_rx;
 
+	struct sconfig_notifier_block sconfig_notifier;
 	struct poller_struct poller;
 	struct work_queue wq;
 
@@ -456,11 +458,22 @@ static void ratp_work_cancel(struct work_struct *w)
 	free(rw);
 }
 
+static void barebox_ratp_sconfig_update(struct sconfig_notifier_block *nb,
+				       enum security_config_option opt,
+				       bool allowed)
+{
+	if (!allowed && ratp_ctx)
+		ratp_unregister(ratp_ctx);
+}
+
 int barebox_ratp(struct console_device *cdev)
 {
 	int ret;
 	struct ratp_ctx *ctx;
 
+	if (!IS_ALLOWED(SCONFIG_RATP))
+		return -EPERM;
+
 	if (!cdev->getc || !cdev->putc)
 		return -EINVAL;
 
@@ -515,6 +528,10 @@ int barebox_ratp(struct console_device *cdev)
 	console_set_active(&ctx->ratp_console, CONSOLE_STDOUT | CONSOLE_STDERR |
 			CONSOLE_STDIN);
 
+	sconfig_register_handler_filtered(&ctx->sconfig_notifier,
+					  barebox_ratp_sconfig_update,
+					  SCONFIG_RATP);
+
 	return 0;
 
 out:

-- 
2.47.3



