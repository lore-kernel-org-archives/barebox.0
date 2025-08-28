Delivery-date: Thu, 28 Aug 2025 19:29:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1urgRb-005WUk-10
	for lore@lore.pengutronix.de;
	Thu, 28 Aug 2025 19:29:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1urgRZ-0005ya-S3
	for lore@pengutronix.de; Thu, 28 Aug 2025 19:29:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g/ChcOkgTmjDA2WEceh9vtpTddt0z2gg37S7eEHHEDI=; b=4lLEEq8Bxx3pfCBVvcCYJwQQEN
	8kxkbNMKlpO9yyHdyWPBnSxeIfRNFpOQAC/tDqrjjCory3a45pmGoEgS0pRBbgmOx5C82mIWCWQl+
	Gj4UkHCV0zDlz21cANIQesPm97XukUJulywlinxlxyk5AJnFESLAc1s/v110jspuLSalgADDc5dkn
	V4kbAv7Op4yddWdCP2k/Cq4Hg62amFo5HObrdvv3QvFRL9UC8lGQ+FE0HbcSxmtpKMxHIk4tht1fG
	F20vu+iLJx8WkDje9SHkShBuzDehA78tKAn8MWD73mOpqDxrgoN9f+fNVDagHu8n4EBW2E1XsoCe2
	VfGz8Ffw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urgR1-00000002Wiy-27wg;
	Thu, 28 Aug 2025 17:29:15 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ureDN-000000022iM-28K0
	for barebox@lists.infradead.org;
	Thu, 28 Aug 2025 15:07:02 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-61c26f3cf6fso1962137a12.1
        for <barebox@lists.infradead.org>; Thu, 28 Aug 2025 08:07:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1756393620; x=1756998420; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g/ChcOkgTmjDA2WEceh9vtpTddt0z2gg37S7eEHHEDI=;
        b=spUaKSagT8KEy2geSVqV+w3cCxdhIMCLxACxLhsqkNWHATgyiMms23SezUM/ANxAw1
         hxe2IxMnf0Hra8RDx5FM7W9OjW8OBygf62AOCnRnKqkzHl5BZATA0o4KFwkXy0ho32Vh
         oSoErcH07ny0fd0SyZjca0efzQUHBOEcbGezFIrJPwjB54EfmD1uUCsjqxrqUT7RdgCY
         nGIjIZyXVQINrhdNuIAhXe+dMywdgaI5pGSveDSzjTjTP8PiQH5UUnYbe390/CjCa6e7
         hfaoUwOdBGx1VAOcXx5c7Rfgas9zp5hs/C8ZXRmzKVG6EqDHhUIm9jVppV4xaINMK8ji
         BpmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756393620; x=1756998420;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=g/ChcOkgTmjDA2WEceh9vtpTddt0z2gg37S7eEHHEDI=;
        b=Cpif2qbgH2DLo5//T+TRgQnvIJrTZm6yoNLFWGyk7gYCNW+QBcwAZ9RTQzktQZxYLo
         DQHvoGprG/XWxZv1Kigf+2cg8DTE4ECKuhdaMUwlrLwesha9K/ROZ6QyJ6nvn7LL82Pf
         3ePoC01HUEmXEER1fV3TTzqEimz5+OATkEgMLB8FXNo6bevp0jERVMa7nj3hIchNvQBc
         HO6lxa824b896O2VFPlUPRBnTXh5EERVP8qlJfEWQT44lTEjGVW964UNxFNeq3Fu28sB
         LIVmjx44/wuU1/N/CFgu0+h0KQEadh1SKtvUCKUcemsW/r6nnkz9SGmLCR/oMM122eEh
         gi2w==
X-Gm-Message-State: AOJu0YyIul5p4z4Nw9CBbXwQuewLAlcw/G07lXvr66Ky7sfBHE098Dqc
	x3mpYO7RniYXRgJy/2kemtw5ENVkTqy57Yc5e0bf/GJkUoshRp9eqCXyg4tR411GATZq5AseNzc
	5Ez5j
X-Gm-Gg: ASbGncuTe06fL7JSGNm+4HiFocySCyw1cUvhNsfxGE38UdWT0cVRFI5rv3i0KeEN8/Q
	TXVyxAOlndk3SV9R7wrLl5HoSxyfmk6/jlPipyDu2oLE3otATu5tiamlrVxcaawY8w0cX2sh0l0
	Ltg2GCr3/ImAnH1zRGxnv704eKZThSI4nEc88Fi5BvLcyri43x1VOr0NgPABsBpxF66UZ28DoBj
	QSutOpuUgdH96uVpWmLToGzGxO0Mq3F3o9K1oDxMw1PkN/lc0A/asxVhIqeE9lv1ck2jSQ4Ezsf
	P2RAOWbo1X2Utwv2paqJOctGiJUL/CLiFgDBF6OtNkA+a/aGbSs/9v6Nkbl4GhTsGaHcp1VN9Ri
	iQRhp/kLXL+22bvvRL6Gkgalc1b8de6v/X+C5rw1Ii0U2ZEPwq9VfCD6rytwiGOUGfZ2vv8PAB/
	PX
X-Google-Smtp-Source: AGHT+IETXYYrP/cz9uLxtj1MbgtLUuTx6QDXfX07+jpJ+9jKRU/ALLkasHGbjHVTCDlQhWx2BJTwSg==
X-Received: by 2002:a05:6402:40c4:b0:61c:9cd7:e5b3 with SMTP id 4fb4d7f45d1cf-61c9cd7e885mr6363827a12.28.1756393619265;
        Thu, 28 Aug 2025 08:06:59 -0700 (PDT)
Received: from wkz-x13.addiva.ad (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61c78e49c90sm7371038a12.45.2025.08.28.08.06.58
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 08:06:58 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: barebox@lists.infradead.org
Date: Thu, 28 Aug 2025 17:05:30 +0200
Message-ID: <20250828150637.2222474-6-tobias@waldekranz.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250828150637.2222474-1-tobias@waldekranz.com>
References: <20250828150637.2222474-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Wires
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250828_080701_557010_F6D88771 
X-CRM114-Status: GOOD (  18.00  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 5/5] commands: dmsetup: Basic command set for dm device management
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Modeled on dmsetup(8) from LVM2.

This lets the user create/remove arbitrary dm devices using the same
table file format used in Linux, and dump information about currently
configured devices.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 commands/Kconfig   |  14 +++++
 commands/Makefile  |   1 +
 commands/dmsetup.c | 145 +++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 160 insertions(+)
 create mode 100644 commands/dmsetup.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 1626912c30..219f626c3e 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -732,6 +732,20 @@ config CMD_PARTED
 	         unit <unit>     change display/input units
 	         refresh         refresh a partition table
 
+config CMD_DMSETUP
+	tristate
+	depends on DM_BLK
+	prompt "dmsetup"
+	help
+	  dmsetup - low level interface to the device mapper
+
+	  Compose virtual block devices from a table of mappings from
+	  logical block addresses to various data sources, such as
+	  linear ranges from other existing devices.
+
+	  commands:
+	        create <name> <table-file>
+
 config CMD_UBI
 	tristate
 	default y if MTD_UBI
diff --git a/commands/Makefile b/commands/Makefile
index d9403b18d5..6b010fe30c 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -166,4 +166,5 @@ obj-$(CONFIG_CMD_STACKSMASH)	+= stacksmash.o
 obj-$(CONFIG_CMD_PARTED)	+= parted.o
 obj-$(CONFIG_CMD_EFI_HANDLE_DUMP)	+= efi_handle_dump.o
 obj-$(CONFIG_CMD_HOST)		+= host.o
+obj-$(CONFIG_CMD_DMSETUP)	+= dmsetup.o
 UBSAN_SANITIZE_ubsan.o := y
diff --git a/commands/dmsetup.c b/commands/dmsetup.c
new file mode 100644
index 0000000000..722aa6cbf0
--- /dev/null
+++ b/commands/dmsetup.c
@@ -0,0 +1,145 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: © 2025 Tobias Waldekranz <tobias@waldekranz.com>, Wires
+
+#include <command.h>
+#include <common.h>
+#include <dm.h>
+#include <libfile.h>
+
+static struct dm_device *dmsetup_find(const char *name)
+{
+	struct dm_device *dm;
+
+	dm = dm_find_by_name(name);
+	if (IS_ERR_OR_NULL(dm)) {
+		pr_err("Found no device named \"%s\"\n", name);
+		return NULL;
+	}
+
+	return dm;
+}
+
+static int dmsetup_remove(int argc, char *argv[])
+{
+	struct dm_device *dm;
+
+	if (argc != 1)
+		return COMMAND_ERROR_USAGE;
+
+	dm = dmsetup_find(argv[0]);
+	if (!dm)
+		return COMMAND_ERROR;
+
+	dm_destroy(dm);
+
+	pr_info("Removed %s\n", argv[0]);
+	return COMMAND_SUCCESS;
+}
+
+static int dmsetup_info_one(struct dm_device *dm, void *_n)
+{
+	int *n = _n;
+	char *str;
+
+	if (*n)
+		pr_info("\n");
+
+	str = dm_asprint(dm);
+	pr_info("%s", str);
+	free(str);
+	(*n)++;
+	return 0;
+}
+
+static int dmsetup_info(int argc, char *argv[])
+{
+	struct dm_device *dm;
+	int n = 0;
+
+	if (argc == 0) {
+		dm_foreach(dmsetup_info_one, &n);
+		if (n == 0)
+			pr_info("No devices found\n");
+		return COMMAND_SUCCESS;
+	}
+
+	if (argc != 1)
+		return COMMAND_ERROR_USAGE;
+
+	dm = dmsetup_find(argv[0]);
+	if (!dm)
+		return COMMAND_ERROR;
+
+	dmsetup_info_one(dm, &n);
+	return COMMAND_SUCCESS;
+}
+
+
+static int dmsetup_create(int argc, char *argv[])
+{
+	struct dm_device *dm;
+	char *table;
+
+	if (argc != 2)
+		return COMMAND_ERROR_USAGE;
+
+	table = read_file(argv[1], NULL);
+	if (!table) {
+		pr_err("Failed to read table from %s: %m\n", argv[1]);
+		return COMMAND_ERROR;
+	}
+
+	dm = dm_create(argv[0], table);
+	free(table);
+	if (IS_ERR_OR_NULL(dm)) {
+		pr_err("Failed to create %s: %s\n",
+		       argv[0], strerror(-PTR_ERR(dm)));
+		return COMMAND_ERROR;
+	}
+
+	pr_info("Created %s\n", argv[0]);
+	return COMMAND_SUCCESS;
+}
+
+static int do_dmsetup(int argc, char *argv[])
+{
+	const char *cmd;
+
+	if (argc < 2)
+		return COMMAND_ERROR_USAGE;
+
+	cmd = argv[1];
+	argc -= 2;
+	argv += 2;
+
+	if (!strcmp(cmd, "create"))
+		return dmsetup_create(argc, argv);
+	else if (!strcmp(cmd, "info"))
+		return dmsetup_info(argc, argv);
+	else if (!strcmp(cmd, "remove"))
+		return dmsetup_remove(argc, argv);
+
+	printf("Unknown command: %s\n", cmd);
+	return -EINVAL;
+}
+
+BAREBOX_CMD_HELP_START(dmsetup)
+BAREBOX_CMD_HELP_TEXT("dmsetup - low level interface to the device mapper")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Compose virtual block devices from a table of mappings from")
+BAREBOX_CMD_HELP_TEXT("logical block addresses to various data sources, such as")
+BAREBOX_CMD_HELP_TEXT("linear ranges from other existing devices.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("commands:")
+BAREBOX_CMD_HELP_OPT("create <name> <table-file>", "Create new device")
+BAREBOX_CMD_HELP_OPT("info [<name>]", "Show device information")
+BAREBOX_CMD_HELP_OPT("remove <name>", "Remove device")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(dmsetup)
+	.cmd = do_dmsetup,
+	BAREBOX_CMD_DESC("low level interface to the device mapper")
+	BAREBOX_CMD_OPTS("<command> [args...]")
+	BAREBOX_CMD_GROUP(CMD_GRP_PART)
+	BAREBOX_CMD_HELP(cmd_dmsetup_help)
+BAREBOX_CMD_END
-- 
2.43.0



