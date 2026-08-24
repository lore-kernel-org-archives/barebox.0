Delivery-date: Mon, 24 Aug 2026 13:57:50 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyTJF-006gmX-2n
	for lore@lore.pengutronix.de;
	Mon, 24 Aug 2026 13:57:50 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 25D5C201917
	for <lore@pengutronix.de>; Mon, 24 Aug 2026 13:57:50 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=KrslAHCN;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m6kwKtXlxgFq5QCaiFcqQpLQ/WpLrZsHUfMs5j9MZhU=; b=KrslAHCNr01KPerLLhLgfjhGaQ
	UtnCOXaKJMFiwezf5oaeaB4/h83FbVbPcZeMhSDQxAn5UMCAxvXixzqX56NXN2RUWbwvSCAj9v52C
	hD9CMbrja2YNZB5gVXoXeQJCimwE0wDhgU93G01AX++QrWeZBqznMhuIxbVO0E4376V6RB+308GfO
	u8UZrZRo+j/e4zYSHRdbDg9JHovxIvrJljuspEBWsJmSgglc96tJhgVkixLFhdwq7jETS1wlDltQY
	KoVygVr830IiqOjnhV0tGTdT+X8jnL3Fpi1cClq3uOmvEFMxuFadyEfZex/fzp6r4sA+Tm5kraIoe
	yenLvbCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyTI0-0000000GYbP-1N8Y;
	Mon, 24 Aug 2026 11:56:32 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyTHu-0000000GYZL-2y6l
	for barebox@lists.infradead.org;
	Mon, 24 Aug 2026 11:56:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 6DD622010D6;
	Mon, 24 Aug 2026 13:56:24 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wyTHs-00367y-18;
	Mon, 24 Aug 2026 13:56:24 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wyTHs-0000000DTPB-0oau;
	Mon, 24 Aug 2026 13:56:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH 3/4] commands: fix wrong and incomplete help texts
Date: Mon, 24 Aug 2026 13:55:33 +0200
Message-ID: <20260824115619.3148656-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260824115619.3148656-1-a.fatoum@pengutronix.de>
References: <20260824115619.3148656-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_045628_059156_9164CF61 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Several built-in help texts do not describe what the command
    actually does or misdocument its options: * bootrom and fiptool carried a
    description copy-pasted from ls, claiming to "list information about the
   specified files or directories" * devinfo promised "default information" where
    detailed informa [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: fcs7sh5fgr4gjmckfxunasyrxk87zumu
X-Spamd-Result: default: False [-6.21 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 25D5C201917

Several built-in help texts do not describe what the command actually
does or misdocument its options:

* bootrom and fiptool carried a description copy-pasted from ls,
  claiming to "list information about the specified files or
  directories"
* devinfo promised "default information" where detailed information is
  meant
* dmesg documented the vdebug loglevel as 7 when it is 8
* pwm did not document its -F option at all
* spi did not show that -c takes a chip select argument

Correct the descriptions so that both the shell help and the generated
command reference describe the actual behavior.

Assisted-by: Claude:fable-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/bootrom-cmd.c | 2 +-
 commands/devinfo.c              | 2 +-
 commands/dmesg.c                | 2 +-
 commands/fiptool.c              | 2 +-
 commands/pwm.c                  | 1 +
 commands/spi.c                  | 2 +-
 6 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-imx/bootrom-cmd.c b/arch/arm/mach-imx/bootrom-cmd.c
index afdf1302254b..7f569f295595 100644
--- a/arch/arm/mach-imx/bootrom-cmd.c
+++ b/arch/arm/mach-imx/bootrom-cmd.c
@@ -212,7 +212,7 @@ static int do_bootrom(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(bootrom)
-BAREBOX_CMD_HELP_TEXT("List information about the specified files or directories.")
+BAREBOX_CMD_HELP_TEXT("Decode and print the BootROM event log on i.MX8M.")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-l",  "list event log")
diff --git a/commands/devinfo.c b/commands/devinfo.c
index 20f21a95b3e7..7bce71c8c92a 100644
--- a/commands/devinfo.c
+++ b/commands/devinfo.c
@@ -144,7 +144,7 @@ BAREBOX_CMD_HELP_TEXT("If called without arguments, devinfo shows a summary of t
 BAREBOX_CMD_HELP_TEXT("devices.")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("If called with a device path being the argument, devinfo shows more")
-BAREBOX_CMD_HELP_TEXT("default information about this device and its parameters.")
+BAREBOX_CMD_HELP_TEXT("detailed information about this device and its parameters.")
 BAREBOX_CMD_HELP_END
 
 
diff --git a/commands/dmesg.c b/commands/dmesg.c
index b405cf4f1d13..0ad0d199eb93 100644
--- a/commands/dmesg.c
+++ b/commands/dmesg.c
@@ -171,7 +171,7 @@ static int do_dmesg(int argc, char *argv[])
 
 BAREBOX_CMD_HELP_START(dmesg)
 BAREBOX_CMD_HELP_TEXT("print or control the barebox message buffer")
-BAREBOX_CMD_HELP_TEXT("Loglevels can be specified as number (0=emerg, 7=vdebug)")
+BAREBOX_CMD_HELP_TEXT("Loglevels can be specified as number (0=emerg, 8=vdebug)")
 BAREBOX_CMD_HELP_TEXT("Known debug loglevels are: emerg, alert, crit, err, warn, notice, info, debug,")
 BAREBOX_CMD_HELP_TEXT("vdebug")
 BAREBOX_CMD_HELP_TEXT("")
diff --git a/commands/fiptool.c b/commands/fiptool.c
index 0452b7a0bdcd..a0e67ed43936 100644
--- a/commands/fiptool.c
+++ b/commands/fiptool.c
@@ -588,7 +588,7 @@ static int do_fiptool(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(fiptool)
-BAREBOX_CMD_HELP_TEXT("List information about the specified files or directories")
+BAREBOX_CMD_HELP_TEXT("Inspect and manipulate TF-A firmware image packages")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Global options:")
 BAREBOX_CMD_HELP_OPT ("-v",  "verbose output")
diff --git a/commands/pwm.c b/commands/pwm.c
index 6e0ba2c2e36f..f1887efd12fe 100644
--- a/commands/pwm.c
+++ b/commands/pwm.c
@@ -197,6 +197,7 @@ BAREBOX_CMD_HELP_OPT("-d <name>", "device name (eg 'pwm0')")
 BAREBOX_CMD_HELP_OPT("-D <duty_ns>", "duty cycle (ns)")
 BAREBOX_CMD_HELP_OPT("-P <period_ns>", "period (ns)")
 BAREBOX_CMD_HELP_OPT("-f <freq_hz>", "frequency (Hz)")
+BAREBOX_CMD_HELP_OPT("-F <freq_hz>", "frequency (Hz), defaulting duty cycle to 50%")
 BAREBOX_CMD_HELP_OPT("-w <duty_%>", "duty cycle (%) - the on 'width' of each cycle")
 BAREBOX_CMD_HELP_OPT("-i\t", "line inverted polarity")
 BAREBOX_CMD_HELP_OPT("-s\t", "stop (disable) the pwm device")
diff --git a/commands/spi.c b/commands/spi.c
index c6cfd4fbba78..45bd19223326 100644
--- a/commands/spi.c
+++ b/commands/spi.c
@@ -116,7 +116,7 @@ BAREBOX_CMD_HELP_START(spi)
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-b BUS\t",  "SPI bus number (default 0)")
 BAREBOX_CMD_HELP_OPT ("-r COUNT",  "bytes to read")
-BAREBOX_CMD_HELP_OPT ("-c\t",      "chip select (default 0)")
+BAREBOX_CMD_HELP_OPT ("-c CS\t",   "chip select (default 0)")
 BAREBOX_CMD_HELP_OPT ("-m MODE\t", "SPI mode (default 0)")
 BAREBOX_CMD_HELP_OPT ("-f HZ\t",   "max speed frequency, in Hz (default 1 MHz)")
 BAREBOX_CMD_HELP_OPT ("-w BIT\t",  "bits per word (default 8)")
-- 
2.47.3



