Delivery-date: Thu, 14 Aug 2025 16:12:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umYhG-000X8S-25
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 16:12:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umYhF-00013U-Di
	for lore@pengutronix.de; Thu, 14 Aug 2025 16:12:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2vwNXmx73Ia3oTIMxQIRiLm1uF7PXunazDhRtTDFcc0=; b=2n6mR5yJo1+Xaid2rAUkpOyUly
	5AT6ZpiN1iGxzsuXQOCOopYjn5tAUse9PG/WRAkfUZrhGmGZMeS1Z3r8xC2PFPZbihU+4cSfBhkaK
	ZpH6anKFkKhWLVvZkHzZ8LyHNRyy27oo3T6QhJagqpi6U/VndAo4s7Ggb6qcF69LzWQ6Kjo8+xB7P
	DVqLhpk29T/z4WU9nFeAphJo9ai+W3mGn8SeBaJpl/hSxH+4CiukLmFaEf+DHqMBb7dAIIk5Nj33x
	5u3wPf6Fupb11MV0fT4QhECgn5BYhGmEPsMhIoKaY2ePuXHLbcVQzDcaAdGvtjGJClDN9dfjq5S3N
	HDo8G6Bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umYgo-0000000HBeG-02F0;
	Thu, 14 Aug 2025 14:12:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umY7r-0000000H4Pl-3x9z
	for barebox@bombadil.infradead.org;
	Thu, 14 Aug 2025 13:36:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=2vwNXmx73Ia3oTIMxQIRiLm1uF7PXunazDhRtTDFcc0=; b=CoXCkyevCJfeGMiTR7wMeK7pK7
	MPRWY/91SHLjCfQPYEtXOb3FcuNlox1gs61MPdvb6h9+IIME084XA2S01p70yyWv6jO1bx4HY+pM3
	aLJwS0LmNMm0DFdCzRH6vBTIMinOHAjX4DHivQCZDBqgMuceR1WwHdsG2dNIjDUqSYb3jOjatzs9A
	SfTqEJnA7M8qv2C/I+rKYo7N3du86zWCuoW2dNWlNK+UZaljmW0NphPvuCl5raAigTCWXlyvjRnvZ
	bV7P+uO0EgBMkaIGPgPXFI71p1DxlNaLI8dr8rE5bOxUFKTBoY20hAvreKO+0QF9fZX0eb8xhhhfc
	nEGuJWkw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umY7m-0000000GPTl-1DKx
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 13:36:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umY7j-0002iq-Qz; Thu, 14 Aug 2025 15:36:07 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umY7j-000GO6-25;
	Thu, 14 Aug 2025 15:36:07 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umXfb-00Gwpv-1f;
	Thu, 14 Aug 2025 15:07:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 14 Aug 2025 15:06:56 +0200
Message-Id: <20250814130702.4039241-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250814130702.4039241-1-a.fatoum@pengutronix.de>
References: <20250814130702.4039241-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_143610_437410_BA23DEC7 
X-CRM114-Status: GOOD (  17.68  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH RFC 11/17] console: ratp: add security config option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For secure systems that disable the regular console, RATP should be
disabled as well, so add an option to do so.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Sconfig            |  1 +
 common/Sconfig     |  9 +++++++++
 common/console.c   |  4 +++-
 common/ratp/ratp.c | 17 +++++++++++++++++
 4 files changed, 30 insertions(+), 1 deletion(-)
 create mode 100644 common/Sconfig

diff --git a/Sconfig b/Sconfig
index 93f5760ad96f..899a1fb5783f 100644
--- a/Sconfig
+++ b/Sconfig
@@ -5,4 +5,5 @@ mainmenu "Barebox/$(ARCH) Security Configuration"
 source "scripts/Sconfig.include"
 
 source "security/Sconfig"
+source "common/Sconfig"
 source "commands/Sconfig"
diff --git a/common/Sconfig b/common/Sconfig
new file mode 100644
index 000000000000..479ac5cdf2e5
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
index dc552e4c5dac..65e4f1f85224 100644
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
index 2906f5a09098..f2735fa88531 100644
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



