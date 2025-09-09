Delivery-date: Tue, 09 Sep 2025 18:03:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uw0oD-0017qE-06
	for lore@lore.pengutronix.de;
	Tue, 09 Sep 2025 18:03:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uw0oB-0007tH-8z
	for lore@pengutronix.de; Tue, 09 Sep 2025 18:03:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SKJqbFSRzPeQivBsBMcV36wpeKb5yQ/wagHdwQ664jQ=; b=K9e1I7C9fCM4VENUC3DoBJqvpM
	Dee5Acq/es5pa2zI6MKTuEzeYVza5DRTfUPDX3XjMjavVRXJ73+7+8KTfnL23Z38qmFI5nJbC77+a
	E2r6S1ucLQKwQTyUDsmmh5dbX/aCW1XpVRo3sMGvuK7c7qt7OSSz8W9J/Yn/J04NprKqC/Lr3Mjil
	aN1GmZxD1T1udSaKnj3qIeY9OH3ShhvokZ2M2oOmN0JQKwBYwXK9IlWMF3aN0BqmRZlIozkk6UbiO
	J4NSsEWFMZzkpVAhFEwqq6uPHl3Kj3vTkV2ZsoT9qlLjlxPnOcPNX3GGvTpPCeoEMij74hCfSydyZ
	rRJIX4jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw0nh-00000008NrY-0UPJ;
	Tue, 09 Sep 2025 16:02:33 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvyFf-00000007KLh-427A
	for barebox@lists.infradead.org;
	Tue, 09 Sep 2025 13:19:17 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-b042eb09948so1088498566b.3
        for <barebox@lists.infradead.org>; Tue, 09 Sep 2025 06:19:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1757423954; x=1758028754; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SKJqbFSRzPeQivBsBMcV36wpeKb5yQ/wagHdwQ664jQ=;
        b=EfmYrcqOIREpeRzBdl5zUp31/J/A2cUI3ghl7IabM6STGDZrs2M6ZY6hXGUHy++KpW
         ygpvhUQTr+8Z0hM3Cjim+Vacb5Mp59FyeJuyhQHvtlQvhg7+aRaR72oIhdrp0Jub4+Il
         +njqotg58lGAVNxo+pTHR5cN+VZN1NszNbdIi/6pw1l8S20AIyYzSp6vSFROmdupX8Ex
         Kmk/qEsfSoOoe63HPiDwbmoA595P7e7Th7eSQuT71kgAM/an0984M+6lg9hln9Pf+BkA
         dU/Rr2WDcyFyGoiLzqRsxh8UyPVSYmmAou5DPJWNLiMBtSUHa0pPn1aL5s2pfb52TgNs
         lVnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757423954; x=1758028754;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SKJqbFSRzPeQivBsBMcV36wpeKb5yQ/wagHdwQ664jQ=;
        b=VufaCT+EkrkB8WYxqMalV0/BdqVPG6lGxDgv56LygkWJKGX8imbUlI5ITgAAo0T2cJ
         XYXYlXcHfR9S+PvOjZPHPNA0jYvDV51B9Rb2GDe7D63yz+wNAKivBe+F31ukE2JQtop8
         15iU0yyp9uTOMYfS2RNckhDV4OS5+x0o4tclldsCQLc6rqYTFN77it8U2/98SL62wQXV
         s9Q10p5aqhNMe+/7MJjwmj6MxZRFo1UMPSDCeL60KvkQ6KPSN+SPcgGJQxT0MIvmsq0G
         5czwMcW7kpvtru4p536gmFs/LwZxInD3cH/xXKGcCEVXxBWVcxjz+/3d/uH/uOATLZXA
         5wpA==
X-Gm-Message-State: AOJu0Yz8JhzlAd0cC17pJR60jVSqgRswHtQweg8mf+DgLGzXT6anjLyt
	mXMI7DkitsE1GCUpq0GTvKzoA9ot2trVf6q1gsRwHkl1Iyuo6pmJNsCX/YL7c21XKK/BeffmuzR
	goU0F
X-Gm-Gg: ASbGncusicRS42aPt1sox10qISWu9BJwIi5nGKec3cgYmOmolRhgizFFHF2Ug5frP8W
	5CszbMwdzI3km5Q6Fno+nQmVqFXlg/d9OE+bhl+hX6TK6QvanlrHQx3ezw6w1hooLcqpgqyNhWD
	tWomHisLamcssA4PWecIwgjMxCy0/QoFfCRdFTA8+TPWoSWhlqh2WdldlWV89NgvZ6KcY+YZMTa
	OuSw7NWtEjCx92RAwhL3qM9dJlAyczGyMMTZRANa0Tdp/bpSX0eH6kDKdZO62grMLOn1ZL/kXcs
	FAlq/xQ/3WcX5jxIF3gP/YphrxfcmUSRcUhY5VNuDfmsgkiBLUwGg5KcFCvLfuhR9MQrrvUD7G2
	3OpaWeFoECnrmMgI7laMeuQqG7+td6mp44JQOwWmC04G/aKWQ90RLcCp+xXbKYNZ/1ZJ/y3x7GK
	9f
X-Google-Smtp-Source: AGHT+IEJkyWEv2wa8/GbA7i8pQKM4IM3jFSQo4HCymo10rzqPoiDglKE79/0dFyHtuFoeMtDjvJBEA==
X-Received: by 2002:a17:907:6e92:b0:b04:54dc:3048 with SMTP id a640c23a62f3a-b04b148f4damr1162490166b.21.1757423953418;
        Tue, 09 Sep 2025 06:19:13 -0700 (PDT)
Received: from wkz-x13.addiva.ad (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b04279a59ffsm2131074366b.60.2025.09.09.06.19.12
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 06:19:13 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: barebox@lists.infradead.org
Date: Tue,  9 Sep 2025 15:18:40 +0200
Message-ID: <20250909131843.2260573-8-tobias@waldekranz.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250909131843.2260573-1-tobias@waldekranz.com>
References: <20250909131843.2260573-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Wires
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_061916_002725_DBA776F0 
X-CRM114-Status: GOOD (  18.55  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 7/7] commands: dmsetup: Basic command set for dm device management
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Modeled on dmsetup(8) from LVM2.

This lets the user create/remove arbitrary dm devices using the same
table file format used in Linux, and dump information about currently
configured devices.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---

Notes:
    v1 -> v2:
    - Use plain stdio over logged output
    - Make proper use of printk() format specifiers

 commands/Kconfig   |  14 +++++
 commands/Makefile  |   1 +
 commands/dmsetup.c | 144 +++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 159 insertions(+)
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
index 0000000000..8900d5b85c
--- /dev/null
+++ b/commands/dmsetup.c
@@ -0,0 +1,144 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: © 2025 Tobias Waldekranz <tobias@waldekranz.com>, Wires
+
+#include <command.h>
+#include <device-mapper.h>
+#include <libfile.h>
+#include <stdio.h>
+
+static struct dm_device *dmsetup_find(const char *name)
+{
+	struct dm_device *dm;
+
+	dm = dm_find_by_name(name);
+	if (IS_ERR_OR_NULL(dm)) {
+		printf("Found no device named \"%s\"\n", name);
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
+	printf("Removed %s\n", argv[0]);
+	return COMMAND_SUCCESS;
+}
+
+static int dmsetup_info_one(struct dm_device *dm, void *_n)
+{
+	int *n = _n;
+	char *str;
+
+	if (*n)
+		putchar('\n');
+
+	str = dm_asprint(dm);
+	puts(str);
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
+			printf("No devices found\n");
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
+		printf("Failed to read table from %s: %m\n", argv[1]);
+		return COMMAND_ERROR;
+	}
+
+	dm = dm_create(argv[0], table);
+	free(table);
+	if (IS_ERR_OR_NULL(dm)) {
+		printf("Failed to create %s: %pe\n", argv[0], dm);
+		return COMMAND_ERROR;
+	}
+
+	printf("Created %s\n", argv[0]);
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



