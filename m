Delivery-date: Wed, 20 Aug 2025 16:32:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uojrX-002eFV-1c
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 16:32:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uojrU-0006OS-8K
	for lore@pengutronix.de; Wed, 20 Aug 2025 16:32:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tPkUq8QzJlv9vbDdHzve3YZzzLJkrOWF6/21Eta8Wwg=; b=pObIF0ae6bbCI1SRpn76D5A7R0
	cOH2Yn2JwKanMGTU/gektMeAPByQcLtWideCu+7pUlLRZBTJ4HoDdPnKJMMbcTGOaIsyfpzoKr0nH
	YYeJgCUFRoyuzESbeAyqhCQUz9NmI14bKhpIIQYGAwZ8ivlztAwef6j0zYtLxc9tLIIYW79GwhnmE
	sHKUxkpq8OE3PIojUC2nEd7yaETTXKk6xi88iLgWP/G6PV3Ry/AuFm7u5RCOcchtU9Q5d3m/Fj8UM
	bSeIzbqtBziCiojWuU5qyB5xhYVtfEnK3+KQQfCZLr/oaTYYZfC3oVyHcxcLi3pRdkdVP9WDgIDw7
	SdEjegfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uojqy-0000000E4S0-1G5I;
	Wed, 20 Aug 2025 14:31:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoixJ-0000000DoZw-2Alp
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 13:34:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoixI-0003GE-9R; Wed, 20 Aug 2025 15:34:20 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoixI-001FsC-0D;
	Wed, 20 Aug 2025 15:34:20 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoihK-004jSI-1g;
	Wed, 20 Aug 2025 15:17:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 20 Aug 2025 15:17:55 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-security-policies-v1-11-76fde70fdbd8@pengutronix.de>
References: <20250820-security-policies-v1-0-76fde70fdbd8@pengutronix.de>
In-Reply-To: <20250820-security-policies-v1-0-76fde70fdbd8@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755695870; l=3183;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=lkpgKA6bE+zcGofcc5kyOkrx3/D3Imiybc/62OkKzQI=;
 b=Ryslb6tyhKMstfs/gkf8q5TYlEPYUvqgIImRoZ/XRxxG3IyNk9RujhqlywxplHvGpRLLSF+MX
 pSk/BaC9IitCzGQkUbJHgCrWyPblKJ15CVda5wbJJRgb9s4dKKboAER
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_063421_573452_034F2E52 
X-CRM114-Status: GOOD (  18.04  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 11/24] console: ratp: add security config option
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
index 93f5760ad96fdde7141c47e2680dc5f4bc142ca7..899a1fb5783fb79def32e5af160b39208fea2edc 100644
--- a/Sconfig
+++ b/Sconfig
@@ -5,4 +5,5 @@ mainmenu "Barebox/$(ARCH) Security Configuration"
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
index dc552e4c5dacafd6649ee4ddea86084d0b7278ad..65e4f1f852243fa15d19e68d724cf340b950df06 100644
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
2.39.5



