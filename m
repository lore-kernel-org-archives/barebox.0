Delivery-date: Wed, 20 Aug 2025 16:32:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uojrU-002eEK-19
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 16:32:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uojrS-0006MD-1a
	for lore@pengutronix.de; Wed, 20 Aug 2025 16:32:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K3hg7nxPjzOE9sCb44dUFQjcnh+QYstp6quQO55T3KA=; b=rzolpp4ozniwAr1xg++Y8avbuI
	SeqzILgpl+tHK7ySw+aZPKbyM+4AaYMHTyvkJexDmQL49YP1pqsSyr+3ZvfTMjv8bv3uFEGMci+sl
	zaoAey11aDC1R+fEqRcXUCYK8JaW7fjzATGiwdH2Y6bmaoZpW8hoDLYK6BHriugv3C3IhzuvMxEuM
	/eNhHhPh3Lm+ZjJyrdEbWm5wwMCfgYUjE+X8EpxsPcQ4YFYvTDjnX3hhTBSHVkMdULQKdlG9I0QpH
	SqKFO3J7uUYvsOoEuE0dTNi28NL0pcRjUK+98l0ZNPcnahlKhvS8OyIDCmM9l51yGOB/ipFd5d9Ec
	PEfVIYGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uojqr-0000000E4K5-3XfR;
	Wed, 20 Aug 2025 14:31:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoixI-0000000DoZM-2s0f
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 13:34:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoixH-0003ED-D8; Wed, 20 Aug 2025 15:34:19 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoixH-001FrC-0h;
	Wed, 20 Aug 2025 15:34:19 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoihK-004jSI-1w;
	Wed, 20 Aug 2025 15:17:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 20 Aug 2025 15:18:08 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-security-policies-v1-24-76fde70fdbd8@pengutronix.de>
References: <20250820-security-policies-v1-0-76fde70fdbd8@pengutronix.de>
In-Reply-To: <20250820-security-policies-v1-0-76fde70fdbd8@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755695870; l=2806;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Zw8X9e5V5y/CBDGsuD7h9EiedOvtvrGu4DWnqwcIDik=;
 b=UmC6afz7npHy0/VG2tkRQ9P5IqD8giDgnRoOwUxJdpSmhQxXDCPrtGEazsrs2gm8cDFkL5vxO
 jLwz/9yLpq9B4l6W8NfE10VgE16r340QsEWRjWqzv8yifbC5vsF6FC9
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_063420_731355_98795734 
X-CRM114-Status: GOOD (  15.81  )
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
Subject: [PATCH 24/24] security: console: add security policy for console
 input
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Disabling the input path of the console is the safest bet to make
barebox fully non interactive. Add a security policy for this case.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Sconfig          | 11 ++++++++++-
 common/console.c        |  6 ++++++
 common/console_simple.c |  6 ++++++
 3 files changed, 22 insertions(+), 1 deletion(-)

diff --git a/common/Sconfig b/common/Sconfig
index ec68bc2737af02cff3ce38c7bc1b9d59af2336c5..b5c585b11b20a9f106f62813263f739d74f3667f 100644
--- a/common/Sconfig
+++ b/common/Sconfig
@@ -2,6 +2,15 @@
 
 menu "General Settings"
 
+config CONSOLE_INPUT
+	bool "Allow console input"
+	depends on $(kconfig-enabled,CONSOLE_SIMPLE) || $(kconfig-enabled,CONSOLE_FULL)
+	help
+	  Say y here if you want to allow input on consoles. Disabling this is the safest
+	  thing to make sure that a barebox build is fully non interactive. When you
+	  still need to react to input for example to trigger a recovery boot then consider
+	  disabling this option and disable SHELL_INTERACTIVE instead.
+
 config SHELL
 	bool "Allow executing shell scripts"
 	depends on $(kconfig-enabled,SHELL_HUSH) || $(kconfig-enabled,SHELL_SIMPLE)
@@ -13,7 +22,7 @@ config SHELL
 
 config SHELL_INTERACTIVE
 	bool "Allow executing interactive shell"
-	depends on SHELL
+	depends on SHELL && CONSOLE_INPUT
 	help
 	  An interactive shell cannot be safely executed in trusted environments. Disable
 	  this option in lockdown security configs.
diff --git a/common/console.c b/common/console.c
index ee498fadf3700376b6325be10911b2081ff1ebb3..24fbee6904d446ecb55f22f1e3e9beeddb3ceeb0 100644
--- a/common/console.c
+++ b/common/console.c
@@ -513,6 +513,9 @@ static int tstc_raw(void)
 {
 	struct console_device *cdev;
 
+	if (!IS_ALLOWED(SCONFIG_CONSOLE_INPUT))
+		return 0;
+
 	for_each_console(cdev) {
 		if (!(cdev->f_active & CONSOLE_STDIN))
 			continue;
@@ -528,6 +531,9 @@ int getchar(void)
 	unsigned char ch;
 	uint64_t start;
 
+	if (!IS_ALLOWED(SCONFIG_CONSOLE_INPUT))
+		return -1;
+
 	/*
 	 * For 100us we read the characters from the serial driver
 	 * into a kfifo. This helps us not to lose characters
diff --git a/common/console_simple.c b/common/console_simple.c
index f00fd567ed5d1ec7b0a8f00179953c08dda49de3..0e8a4bff2a692067765cb3d6feb93dd5b070ff82 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -45,6 +45,9 @@ EXPORT_SYMBOL(console_putc);
 
 int tstc(void)
 {
+	if (!IS_ALLOWED(SCONFIG_CONSOLE_INPUT))
+		return 0;
+
 	if (!console)
 		return 0;
 
@@ -54,6 +57,9 @@ EXPORT_SYMBOL(tstc);
 
 int getchar(void)
 {
+	if (!IS_ALLOWED(SCONFIG_CONSOLE_INPUT))
+		return -1;
+
 	if (!console)
 		return -EINVAL;
 	return console->getc(console);

-- 
2.39.5



