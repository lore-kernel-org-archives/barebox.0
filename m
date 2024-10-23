Delivery-date: Wed, 23 Oct 2024 10:34:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3Wp7-007oAz-0Q
	for lore@lore.pengutronix.de;
	Wed, 23 Oct 2024 10:34:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3Wp6-0007jR-C2
	for lore@pengutronix.de; Wed, 23 Oct 2024 10:34:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=P13im8RzIl6U/Qq+FFJ09QNlNFLIAjIgEG72GCsXUSc=; b=sTxTBE9wmaqXWkk1PJodohl5s0
	zAW9EJO5j06Wh7VcF/MyeS6unDGSb1u+ZsrBmq15KKG4RWV2juDnJJQO0VqJ50Mn0j7J9CbhjaVu5
	uZK5JHWUs9C1yfD5rOHpH8+PH+BEg30lIv+W51yFD0T7b8s6rsG/aMPJnWAaJkMaXcD8358JGO7a+
	Isx+O63jIHLUV9NGc78o5ioCAzYLMZO1ZkE8A2JCnJi7oud+kXbvDaq7SmvoyWGEIkotcFo+aHxRt
	uY4EK+u9ckLNtkx88j8TF9tNde+b4/vjozJC87j15X+AcccyYMu0UMHGVz4v7OyJmxHmcxch/2JIM
	pZj5Nutw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3WoN-0000000DaKC-0sOH;
	Wed, 23 Oct 2024 08:33:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Wiz-0000000DZ0Y-0Tbv
	for barebox@lists.infradead.org;
	Wed, 23 Oct 2024 08:28:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t3Wiw-0006fU-EQ; Wed, 23 Oct 2024 10:28:10 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t3Wiw-0010K3-0m;
	Wed, 23 Oct 2024 10:28:10 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t3Wiw-00GyiN-0b;
	Wed, 23 Oct 2024 10:28:10 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Wed, 23 Oct 2024 10:28:03 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241023-feature-emmc-background-ops-v1-1-535161eeefec@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAJKzGGcC/x3MQQ6CMBAF0KuQWTsJrWijVzEuyvDBiaElUzEkh
 LvbuHybt1OBKQrdm50MXy2aU4U7NSSvmCawDtXkW9+51p95RPysBsY8C/dR3pPlNQ2cl8Khu7g
 YINebBKrDYhh1+++P53H8AHtsESBtAAAA
To: Christoph Fritz <chf.fritz@googlemail.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241023_012813_194223_C7D83F38 
X-CRM114-Status: GOOD (  20.88  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] commands: mmc_extcsd: split background operations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The current implementation of the  `mmc_extcsd -b` subcommand enables
manual background operations and automatic background operations if
available, which is unexpected and can be problematic:

With the eMMC JEDEC Standard 4.41 eMMCs gained support for decoupling
internal maintenance operations from foreground operations like read and
write commands. This is feature is called background operations. This
allows the host to manually trigger these maintenance operations e.g.
during idle times.

The advantages are reduced latencies during regular reads and writes. If
the host doesn't schedule these maintenance operations the standard
suggest[1] that they will be executed during foreground operations once
the maintenance level `critical` is reached. Thus enabling manual
background operations is a safe opt-in which resorts to maintenance
during foreground operations, even if the host isn't aware of the
enablement and doesn't start them at all.

With JEDEC standard 5.1 eMMCs gained support for schedueling these
background operations autonomously at their own will. This *not* a safe
opt-in as it needs support from the host:

> When AUTO_EN bit is set, the host should keep the device power active.

As there is no register to query the current status of a background
operation, the safe way seems to issue a power off notification and wait
for completion. This might not be implemented by the host.

This commit refactors the `mmc_extcsd -b` subcommand to only set the
`MANUAL_EN` bit, which is a safe default.

To still allow the enablement of  automatic background operations the
new `mmc_extcsd -B` subcommand is introduced which sets `MANUAL_EN` and
`AUTO_EN` bits.

[1]: See JEDEC Standard No. 84-B51, Page 93, 6.6.25 Background
Operations

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 commands/Kconfig      |  9 ++++++---
 commands/mmc_extcsd.c | 20 +++++++++++++++-----
 2 files changed, 21 insertions(+), 8 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 4a04868611..c186568fae 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -325,14 +325,17 @@ config CMD_MMC_EXTCSD
 	help
 	  Read or write the extended CSD register of a MMC device.
 
-	  Usage: mmc_extcsd dev [-r | -i index [-r | -v value -y]]
-
+	  Usage: mmc_extcsd dev [-r | -b | -B | -i index [-r | -v value [-y]]]
+	  
 	  Options:
 		  -i      field index of the register
 		  -r      print the register as raw data
 		  -v      value which will be written
 		  -y      don't request when writing to one time programmable fields
-		  __CAUTION__: this could damage the device!
+			  __CAUTION__: this could damage the device!
+		  -b      set bkops-enable (EXT_CSD_BKOPS_EN[163])
+		  -B      set bkops-enable and auto-enable (EXT_CSD_BKOPS_EN[163])
+			  __WARNING__: this is a write-once setting!
 
 config CMD_POLLER
 	tristate
diff --git a/commands/mmc_extcsd.c b/commands/mmc_extcsd.c
index 993a6dd12b..7fa6235a4d 100644
--- a/commands/mmc_extcsd.c
+++ b/commands/mmc_extcsd.c
@@ -2379,7 +2379,7 @@ static int do_mmc_extcsd(int argc, char *argv[])
 	if (argc < 2)
 		return COMMAND_ERROR_USAGE;
 
-	while ((opt = getopt(argc, argv, "i:v:yrb")) > 0)
+	while ((opt = getopt(argc, argv, "i:v:yrbB")) > 0)
 		switch (opt) {
 		case 'i':
 			index = simple_strtoul(optarg, NULL, 0);
@@ -2401,6 +2401,13 @@ static int do_mmc_extcsd(int argc, char *argv[])
 			write_operation = 1;
 			always_write = 1;
 			break;
+		case 'B':
+			set_bkops_en = 1;
+			index = EXT_CSD_BKOPS_EN;
+			value = BIT(0) | BIT(1);
+			write_operation = 1;
+			always_write = 1;
+			break;
 		}
 
 	if (optind == argc)
@@ -2431,13 +2438,15 @@ static int do_mmc_extcsd(int argc, char *argv[])
 	}
 
 	if (set_bkops_en) {
-		if (dst[index]) {
+		if (dst[index] == value) {
 			printf("Abort: EXT_CSD [%u] already set to %#02x!\n",
 			       index, dst[index]);
 			goto error_with_mem;
 		}
-		if (dst[EXT_CSD_REV] >= 7)
-			value |= BIT(1);	/* set AUTO_EN bit too */
+
+		if (value & BIT(1)) {
+			pr_notice("Enabling automatic background operations, this needs support from the OS.\n");
+		}
 	}
 
 	if (write_operation)
@@ -2486,13 +2495,14 @@ BAREBOX_CMD_HELP_OPT("-v", "value which will be written")
 BAREBOX_CMD_HELP_OPT("-y", "don't request when writing to one time programmable fields")
 BAREBOX_CMD_HELP_OPT("",   "__CAUTION__: this could damage the device!")
 BAREBOX_CMD_HELP_OPT("-b", "set bkops-enable (EXT_CSD_BKOPS_EN[163])")
+BAREBOX_CMD_HELP_OPT("-B", "set bkops-enable and auto-enable (EXT_CSD_BKOPS_EN[163])")
 BAREBOX_CMD_HELP_OPT("",   "__WARNING__: this is a write-once setting!")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(mmc_extcsd)
 	.cmd		= do_mmc_extcsd,
 	BAREBOX_CMD_DESC("Read/write the extended CSD register.")
-	BAREBOX_CMD_OPTS("dev [-r | -b | -i index [-r | -v value [-y]]]")
+	BAREBOX_CMD_OPTS("dev [-r | -b | -B | -i index [-r | -v value [-y]]]")
 	BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
 	BAREBOX_CMD_HELP(cmd_mmc_extcsd_help)
 BAREBOX_CMD_END

---
base-commit: a7e9f7f096b030962513eeea0e91e96f6e13ea40
change-id: 20241023-feature-emmc-background-ops-7451a7ec69c7

Best regards,
-- 
Stefan Kerkmann <s.kerkmann@pengutronix.de>



