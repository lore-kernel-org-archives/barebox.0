Delivery-date: Mon, 24 Aug 2026 13:56:56 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyTIO-006gkk-0Z
	for lore@lore.pengutronix.de;
	Mon, 24 Aug 2026 13:56:56 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 492972010D6
	for <lore@pengutronix.de>; Mon, 24 Aug 2026 13:56:56 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Tn1h2vm1;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=FGvTddQ7LERfMLFumxYY8tuqfsCcjaVlxwWkbk2ToCc=; b=Tn1h2vm1rZkKXh9VmS5924+lGU
	9/a6ZDfRI1kQSgPsDs7goPv8WOirAWHVUDI60qyR9k9HozbV75ee1A3HcCTo+/dRHx227LO9+Gexy
	Uz/HvtNHQ2pixGx5e9V4Bbq6Z2MNd5/smDcBVUCfNqwDkgGD4KdWlmAeCBoUVwO5GUcSZbTx47PCr
	UC9UV/CYAKNUuNeCvDUtJk+gMJ+6MDGTMj5VB6N10PmvXc79ne1yQk3xt4TFlnVS8HrDFPFTQNGMa
	TfB88qgHxcRkHIYaULe7K91tku6sNiOTVBiRukW8qqiOwsvAobRaZ9YZ5H02UZJn3FR2LjEXBS0JH
	hTcacZ/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyTI0-0000000GYbY-1lbM;
	Mon, 24 Aug 2026 11:56:32 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyTHu-0000000GYZJ-2yNy
	for barebox@lists.infradead.org;
	Mon, 24 Aug 2026 11:56:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 60AB4200393;
	Mon, 24 Aug 2026 13:56:24 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wyTHs-00367w-0h;
	Mon, 24 Aug 2026 13:56:24 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wyTHs-0000000DTPB-0Mz0;
	Mon, 24 Aug 2026 13:56:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH 1/4] commands: fix typos and punctuation in help texts
Date: Mon, 24 Aug 2026 13:55:31 +0200
Message-ID: <20260824115619.3148656-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_045628_057577_24AF0F53 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Fix various spelling and typos found by LLM. Assisted-by:
   Claude:fable-5 Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de> --- arch/arm/mach-mxs/bcb.c
    | 2 +- commands/Kconfig | 2 +- commands/boot.c | 2 +- commands/cd.c | 2 +-
    commands/clk.c [...] 
 
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
X-Stat-Signature: i8gibtuz93cwbqyes377mod164s1dgmy
X-Spamd-Result: default: False [-6.21 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
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
X-Rspamd-Queue-Id: 492972010D6

Fix various spelling and typos found by LLM.

Assisted-by: Claude:fable-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-mxs/bcb.c    | 2 +-
 commands/Kconfig           | 2 +-
 commands/boot.c            | 2 +-
 commands/cd.c              | 2 +-
 commands/clk.c             | 2 +-
 commands/dhcp.c            | 2 +-
 commands/dirname.c         | 2 +-
 commands/dmesg.c           | 2 +-
 commands/fiptool.c         | 2 +-
 commands/loadb.c           | 2 +-
 commands/loadxy.c          | 2 +-
 commands/memset.c          | 2 +-
 commands/mount.c           | 2 +-
 commands/nandtest.c        | 2 +-
 commands/nvmem.c           | 2 +-
 commands/of_fixup_status.c | 2 +-
 commands/setenv.c          | 2 +-
 commands/timeout.c         | 4 ++--
 commands/ubiformat.c       | 4 ++--
 commands/umount.c          | 2 +-
 commands/usbgadget.c       | 6 +++---
 common/hush.c              | 6 +++---
 net/ifup.c                 | 2 +-
 23 files changed, 29 insertions(+), 29 deletions(-)

diff --git a/arch/arm/mach-mxs/bcb.c b/arch/arm/mach-mxs/bcb.c
index 152a7c3bca5a..c2533c4e497e 100644
--- a/arch/arm/mach-mxs/bcb.c
+++ b/arch/arm/mach-mxs/bcb.c
@@ -389,7 +389,7 @@ BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(bcb)
 	.cmd = update_bcb,
-	BAREBOX_CMD_DESC("writes a i.MX23/28 BCB data structure to flash")
+	BAREBOX_CMD_DESC("writes an i.MX23/28 BCB data structure to flash")
 	BAREBOX_CMD_OPTS("BOOTSTREAM [BOOTSTREAM]")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_bcb_help)
diff --git a/commands/Kconfig b/commands/Kconfig
index 08fe544ee1a3..792dd3b0b975 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -2637,7 +2637,7 @@ config CMD_OF_FIXUP_STATUS
 		  path		Node path or alias
 
 	  Register a fixup to enable or disable a device tree node.
-	  Nodes are enabled on default. Disabled with -d.
+	  Nodes are enabled by default. Disabled with -d.
 
 config CMD_OF_OVERLAY
 	tristate
diff --git a/commands/boot.c b/commands/boot.c
index 04bb9eb9186f..17730cd35281 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -231,7 +231,7 @@ BAREBOX_CMD_HELP_TEXT("one succeeds.")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-v","Increase verbosity")
-BAREBOX_CMD_HELP_OPT ("-d","Dryrun. See what happens but do no actually boot (pass twice to run scripts)")
+BAREBOX_CMD_HELP_OPT ("-d","Dryrun. See what happens but do not actually boot (pass twice to run scripts)")
 BAREBOX_CMD_HELP_OPT ("-l","List available boot sources")
 BAREBOX_CMD_HELP_OPT ("-m","Show a menu with boot options")
 BAREBOX_CMD_HELP_OPT ("-M DEFAULT","Show a menu with boot options with entry DEFAULT preselected")
diff --git a/commands/cd.c b/commands/cd.c
index e42beb79b282..a96bbce7c28d 100644
--- a/commands/cd.c
+++ b/commands/cd.c
@@ -53,7 +53,7 @@ static int do_cd(int argc, char *argv[])
 BAREBOX_CMD_HELP_START(cd)
 BAREBOX_CMD_HELP_TEXT("If called without an argument, change to the root directory '/'.")
 BAREBOX_CMD_HELP_TEXT("Use 'cd -' to change to the previous directory.")
-BAREBOX_CMD_HELP_TEXT("Sets OLDPWD environment variables.")
+BAREBOX_CMD_HELP_TEXT("Sets OLDPWD environment variable.")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(cd)
diff --git a/commands/clk.c b/commands/clk.c
index 210b61306a2e..2f0b45ba6543 100644
--- a/commands/clk.c
+++ b/commands/clk.c
@@ -72,7 +72,7 @@ BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(clk_set_rate)
 	.cmd		= do_clk_set_rate,
-	BAREBOX_CMD_DESC("set a clocks rate")
+	BAREBOX_CMD_DESC("set a clock's rate")
 	BAREBOX_CMD_OPTS("CLK HZ")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_clk_set_rate_help)
diff --git a/commands/dhcp.c b/commands/dhcp.c
index 79ab546fc7a9..ecd1499892a4 100644
--- a/commands/dhcp.c
+++ b/commands/dhcp.c
@@ -80,7 +80,7 @@ BAREBOX_CMD_HELP_OPT("-c ID\t", "DHCP Client ID (code 61) submitted in DHCP requ
 BAREBOX_CMD_HELP_OPT("-u UUID\t", "DHCP Client UUID (code 97) submitted in DHCP requests")
 BAREBOX_CMD_HELP_OPT("-U CLASS", "DHCP User class (code 77) submitted in DHCP requests")
 BAREBOX_CMD_HELP_OPT("-r RETRY", "retry limit (default 20)")
-BAREBOX_CMD_HELP_OPT("-o PRIVATE DATA", "private data (code 224) submitted in DHCP requests");
+BAREBOX_CMD_HELP_OPT("-o PRIVATE DATA", "private data (code 224) submitted in DHCP requests")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(dhcp)
diff --git a/commands/dirname.c b/commands/dirname.c
index f809e7648c41..2108075dacf4 100644
--- a/commands/dirname.c
+++ b/commands/dirname.c
@@ -36,7 +36,7 @@ static int do_dirname(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(dirname)
-BAREBOX_CMD_HELP_TEXT("Strip last componext of NAME and store into $DIRNAME")
+BAREBOX_CMD_HELP_TEXT("Strip last component of NAME and store into $DIRNAME")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT("-V", "return the path relative to the mountpoint.")
diff --git a/commands/dmesg.c b/commands/dmesg.c
index 06796287aaec..a2493acfacbc 100644
--- a/commands/dmesg.c
+++ b/commands/dmesg.c
@@ -183,7 +183,7 @@ BAREBOX_CMD_HELP_OPT ("-l <loglevel>",	"Restrict output to the given (comma-sepa
 BAREBOX_CMD_HELP_OPT ("-p <loglevel>",	"Restrict output to specified log level at most")
 BAREBOX_CMD_HELP_OPT ("-n <loglevel>",	"Set level at which printing of messages is done to the console")
 BAREBOX_CMD_HELP_OPT ("-r",		"Print timestamp and log-level prefixes")
-BAREBOX_CMD_HELP_OPT ("-t",		"Show timestamp informations")
+BAREBOX_CMD_HELP_OPT ("-t",		"Show timestamp information")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(dmesg)
diff --git a/commands/fiptool.c b/commands/fiptool.c
index ccf99491bf66..0452b7a0bdcd 100644
--- a/commands/fiptool.c
+++ b/commands/fiptool.c
@@ -627,7 +627,7 @@ BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("fiptool remove [OPTS] FIP_FILENAME")
 BAREBOX_CMD_HELP_OPT("-a VALUE", "Each image is aligned to VALUE (default: 1)")
 BAREBOX_CMD_HELP_OPT("-b uuid=UUID", "Remove an image with the given UUID")
-BAREBOX_CMD_HELP_OPT("-f", "force overwrit of the output FIP file if it already exists")
+BAREBOX_CMD_HELP_OPT("-f", "force overwrite of the output FIP file if it already exists")
 BAREBOX_CMD_HELP_OPT("-o", "Set an alternative output FIP file")
 BAREBOX_CMD_HELP_OPT("-e TYPE", "remove TYPE entry")
 #endif
diff --git a/commands/loadb.c b/commands/loadb.c
index 15e844ea6981..e5c99cc7a16d 100644
--- a/commands/loadb.c
+++ b/commands/loadb.c
@@ -682,7 +682,7 @@ BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT("-f FILE", "download to FILE (default image.bin)")
 BAREBOX_CMD_HELP_OPT("-o OFFS", "destination file OFFSet (default 0)")
 BAREBOX_CMD_HELP_OPT("-b BAUD", "baudrate for download (default: console baudrate)")
-BAREBOX_CMD_HELP_OPT("-c CONSOLE", "Specify console (default: first active console")
+BAREBOX_CMD_HELP_OPT("-c CONSOLE", "Specify console (default: first active console)")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(loadb)
diff --git a/commands/loadxy.c b/commands/loadxy.c
index eae9ef86b4cc..370cf49c4997 100644
--- a/commands/loadxy.c
+++ b/commands/loadxy.c
@@ -196,7 +196,7 @@ static int do_loadx(int argc, char *argv[])
 
 BAREBOX_CMD_HELP_START(loadx)
 BAREBOX_CMD_HELP_TEXT("Options:")
-BAREBOX_CMD_HELP_OPT("-f FILE", "download to FILE (default image.bin")
+BAREBOX_CMD_HELP_OPT("-f FILE", "download to FILE (default image.bin)")
 BAREBOX_CMD_HELP_OPT("-o OFFS", "destination file OFFSet (default 0)")
 BAREBOX_CMD_HELP_OPT("-b BAUD", "baudrate for download (default: console baudrate)")
 BAREBOX_CMD_HELP_OPT("-t NAME", "console name to use (default: current)")
diff --git a/commands/memset.c b/commands/memset.c
index 1139691f2fc7..f26d0e9fe18c 100644
--- a/commands/memset.c
+++ b/commands/memset.c
@@ -73,7 +73,7 @@ static int do_memset(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(memset)
-BAREBOX_CMD_HELP_TEXT("Fills the first COUNT bytes at offset ADDR with byte DATA,")
+BAREBOX_CMD_HELP_TEXT("Fills the first COUNT bytes at offset ADDR with byte DATA.")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-b",  "byte access")
diff --git a/commands/mount.c b/commands/mount.c
index 002a38e1959f..d44eb15e27bc 100644
--- a/commands/mount.c
+++ b/commands/mount.c
@@ -123,7 +123,7 @@ BAREBOX_CMD_HELP_TEXT("If no FSTYPE is specified, try to detect it automatically
 BAREBOX_CMD_HELP_TEXT("With -a the mount command mounts all block devices whose filesystem")
 BAREBOX_CMD_HELP_TEXT("can be detected automatically to /mnt/PARTNAME")
 BAREBOX_CMD_HELP_TEXT("If mountpoint is not given, a standard mountpoint of /mnt/DEVICE")
-BAREBOX_CMD_HELP_TEXT("is used. This directoy is created automatically if necessary.")
+BAREBOX_CMD_HELP_TEXT("is used. This directory is created automatically if necessary.")
 BAREBOX_CMD_HELP_TEXT("With -o loop the mount command mounts a file instead of a device.")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
diff --git a/commands/nandtest.c b/commands/nandtest.c
index fa64d9ccea0b..61deb7bad5c4 100644
--- a/commands/nandtest.c
+++ b/commands/nandtest.c
@@ -399,7 +399,7 @@ BAREBOX_CMD_HELP_OPT ("-t",  "Really do a nandtest on device")
 BAREBOX_CMD_HELP_OPT ("-r",  "Readonly nandtest on device")
 BAREBOX_CMD_HELP_OPT ("-m",  "Mark blocks bad if they appear so")
 BAREBOX_CMD_HELP_OPT ("-s SEED",   "supply random seed")
-BAREBOX_CMD_HELP_OPT ("-i ITERATIONS",  "nNumber of iterations")
+BAREBOX_CMD_HELP_OPT ("-i ITERATIONS",  "Number of iterations")
 BAREBOX_CMD_HELP_OPT ("-o OFFS",  "start offset on flash")
 BAREBOX_CMD_HELP_OPT ("-l LEN",   "length of flash to test")
 BAREBOX_CMD_HELP_END
diff --git a/commands/nvmem.c b/commands/nvmem.c
index f61cd783ab01..c6bb4bd85f34 100644
--- a/commands/nvmem.c
+++ b/commands/nvmem.c
@@ -118,7 +118,7 @@ BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT("-c <size>", "Create a new RAM-backed NVMEM device of")
 BAREBOX_CMD_HELP_OPT("         ", "<size> bytes. (Requires CONFIG_NVMEM_RMEM")
-BAREBOX_CMD_HELP_OPT("         ", "to be enabled). <size> must be a non-zero.")
+BAREBOX_CMD_HELP_OPT("         ", "to be enabled). <size> must be non-zero.")
 BAREBOX_CMD_HELP_OPT("-v <variable>", "When using -c, set environment variable")
 BAREBOX_CMD_HELP_OPT("             ", "<variable> to the name of the created")
 BAREBOX_CMD_HELP_OPT("             ", "NVMEM device (e.g., rmem0).")
diff --git a/commands/of_fixup_status.c b/commands/of_fixup_status.c
index 50c1bbb146d0..6c59dc7beb49 100644
--- a/commands/of_fixup_status.c
+++ b/commands/of_fixup_status.c
@@ -49,7 +49,7 @@ BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT("-d",  "disable node")
 BAREBOX_CMD_HELP_OPT("path",  "Node path")
 BAREBOX_CMD_HELP_TEXT("Register a fixup to enable or disable a device tree node.")
-BAREBOX_CMD_HELP_TEXT("Nodes are enabled on default. Disabled with -d.")
+BAREBOX_CMD_HELP_TEXT("Nodes are enabled by default. Disabled with -d.")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(of_fixup_status)
diff --git a/commands/setenv.c b/commands/setenv.c
index 99604c35c37c..8fb42b896e39 100644
--- a/commands/setenv.c
+++ b/commands/setenv.c
@@ -29,7 +29,7 @@ static int do_setenv(int argc, char *argv[])
 
 BAREBOX_CMD_HELP_START(setenv)
 BAREBOX_CMD_HELP_TEXT("Set environment variable NAME to VALUE.")
-BAREBOX_CMD_HELP_TEXT("If VALUE is ommitted, then the variable is deleted.")
+BAREBOX_CMD_HELP_TEXT("If VALUE is omitted, then the variable is deleted.")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(setenv)
diff --git a/commands/timeout.c b/commands/timeout.c
index ba55846c5582..733fe57d2445 100644
--- a/commands/timeout.c
+++ b/commands/timeout.c
@@ -56,13 +56,13 @@ static int do_timeout(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(timeout)
-BAREBOX_CMD_HELP_TEXT("Wait SECONDS for a timeout. Return 1 if the user intervented.")
+BAREBOX_CMD_HELP_TEXT("Wait SECONDS for a timeout. Return 1 if the user intervened.")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT("-a", "interrupt on any key")
 BAREBOX_CMD_HELP_OPT("-c", "interrupt on Ctrl-C")
 BAREBOX_CMD_HELP_OPT("-r", "interrupt on RETURN")
-BAREBOX_CMD_HELP_OPT("-e", "interrupt on external commands (i.e. fastboot")
+BAREBOX_CMD_HELP_OPT("-e", "interrupt on external commands (i.e. fastboot)")
 BAREBOX_CMD_HELP_OPT("-s", "silent mode")
 BAREBOX_CMD_HELP_OPT("-v <VARIABLE>", "export pressed key to environment")
 BAREBOX_CMD_HELP_END
diff --git a/commands/ubiformat.c b/commands/ubiformat.c
index 75cf234e2e55..cb52cd9f6aac 100644
--- a/commands/ubiformat.c
+++ b/commands/ubiformat.c
@@ -171,10 +171,10 @@ BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT("-s BYTES", "minimum input/output unit used for UBI headers")
 BAREBOX_CMD_HELP_OPT("\t", "e.g. sub-page size in case of NAND flash")
-BAREBOX_CMD_HELP_OPT("-O OFFS\t", "offset if the VID header from start of the")
+BAREBOX_CMD_HELP_OPT("-O OFFS\t", "offset of the VID header from start of the")
 BAREBOX_CMD_HELP_OPT("\t", "physical eraseblock (default is the next minimum I/O unit or")
 BAREBOX_CMD_HELP_OPT("\t", "sub-page after the EC header)")
-BAREBOX_CMD_HELP_OPT("-n\t", "only erase all eraseblock and preserve erase")
+BAREBOX_CMD_HELP_OPT("-n\t", "only erase all eraseblocks and preserve erase")
 BAREBOX_CMD_HELP_OPT("\t", "counters, do not write empty volume table")
 BAREBOX_CMD_HELP_OPT("-f FILE\t", "flash image file")
 BAREBOX_CMD_HELP_OPT("-e VALUE", "use VALUE as erase counter value for all eraseblocks")
diff --git a/commands/umount.c b/commands/umount.c
index b26c7c3942ab..ead24c32ae71 100644
--- a/commands/umount.c
+++ b/commands/umount.c
@@ -18,7 +18,7 @@ static int do_umount(int argc, char *argv[])
 
 
 BAREBOX_CMD_HELP_START(umount)
-BAREBOX_CMD_HELP_TEXT("Unmount a filesystem mounted on a specific MOINTPOINT")
+BAREBOX_CMD_HELP_TEXT("Unmount a filesystem mounted on a specific MOUNTPOINT")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(umount)
diff --git a/commands/usbgadget.c b/commands/usbgadget.c
index 2edccca1f36c..61d848c083cd 100644
--- a/commands/usbgadget.c
+++ b/commands/usbgadget.c
@@ -60,12 +60,12 @@ BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-a\t", "Create CDC ACM function")
 BAREBOX_CMD_HELP_OPT ("-A <desc>", "Create Android Fastboot function. If 'desc' is not provided, "
 				   "try to use 'global.fastboot.partitions' variable.")
-BAREBOX_CMD_HELP_OPT ("-b\t", "include registered barebox update handlers (fastboot specific,"
+BAREBOX_CMD_HELP_OPT ("-b\t", "include registered barebox update handlers (fastboot specific, "
 			      "exported as 'bbu-<update_handler_name>' partitions)")
 BAREBOX_CMD_HELP_OPT ("-D <desc>", "Create DFU function. If 'desc' is not provided, "
 				   "try to use 'global.usbgadget.dfu_function' variable.")
-BAREBOX_CMD_HELP_OPT ("-S <desc>", "Create USB Mass Storage function. If 'desc' is not provided,"
-				   "fallback directly to 'global.system.partitions' variable.")
+BAREBOX_CMD_HELP_OPT ("-S <desc>", "Create USB Mass Storage function. If 'desc' is not provided, "
+				   "fall back directly to 'global.system.partitions' variable.")
 BAREBOX_CMD_HELP_OPT ("-d\t", "Disable the currently running gadget")
 BAREBOX_CMD_HELP_END
 
diff --git a/common/hush.c b/common/hush.c
index 152eebdca919..f5208470362a 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -2089,8 +2089,8 @@ static int do_dummy_command(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(exit)
-BAREBOX_CMD_HELP_TEXT("Exit script with status ERRLVL n. If ERRLVL is omitted, the exit status is")
-BAREBOX_CMD_HELP_TEXT("of the last command executed")
+BAREBOX_CMD_HELP_TEXT("Exit script with status ERRLVL. If ERRLVL is omitted, the exit status is")
+BAREBOX_CMD_HELP_TEXT("that of the last command executed")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(exit)
@@ -2103,7 +2103,7 @@ BAREBOX_CMD_END
 
 #ifdef CONFIG_CMD_GETOPT
 BAREBOX_CMD_HELP_START(getopt)
-BAREBOX_CMD_HELP_TEXT("OPTSTRING contains the option letters. Add a colon to an options if this")
+BAREBOX_CMD_HELP_TEXT("OPTSTRING contains the option letters. Add a colon to an option if this")
 BAREBOX_CMD_HELP_TEXT("option has a required argument or two colons for an optional argument. The")
 BAREBOX_CMD_HELP_TEXT("current option is saved in VAR, arguments are saved in $OPTARG. Any")
 BAREBOX_CMD_HELP_TEXT("non-option arguments can be accessed starting from $1.")
diff --git a/net/ifup.c b/net/ifup.c
index 9e87cfc58f7e..cffdfe7c9bfb 100644
--- a/net/ifup.c
+++ b/net/ifup.c
@@ -429,7 +429,7 @@ static int do_ifup(int argc, char *argv[])
 
 
 BAREBOX_CMD_HELP_START(ifup)
-BAREBOX_CMD_HELP_TEXT("Network interfaces are configured with a NV variables or a")
+BAREBOX_CMD_HELP_TEXT("Network interfaces are configured with NV variables or a")
 BAREBOX_CMD_HELP_TEXT("/env/network/<intf> file. See Documentation/user/networking.rst")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
-- 
2.47.3



