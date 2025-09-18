Delivery-date: Thu, 18 Sep 2025 09:45:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uz9L1-004Nyc-1n
	for lore@lore.pengutronix.de;
	Thu, 18 Sep 2025 09:45:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uz9Kz-0001mX-AM
	for lore@pengutronix.de; Thu, 18 Sep 2025 09:45:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ADAwQlYA1HICmeQZSK35I5Wnd5qkwJd+GdpwsybIf1Y=; b=qmtr6cMC9wM0WDB9BN5JfmMItF
	Q+EhCazDEuUF1NjBdVjGwvJ5VPPAtmcP0bYfMjBjG53FTVxSxoMl5fG7RXtNlpurCPkox7t6T6oux
	yakaqWDub4xecww+rcJDK2EmiEonkvzF9uxXQI8jNQ5u3TAM8+UCOruU/RT3KV0asuegwfGB/m6qX
	N+SSNDWxzm1T+mXyOOHBeuDAv0WECzhb7JMZsaqyppNnW5mXMV3LrrkkMHYAWUTnEaGPScrSqyvOR
	6MyIpomOo5UgBWG9v7TPYV/v0vjtDV8zfHvCJDHv0EOAZ2b+FbVP5+weufHbfh7A2xw8KPykbKSwZ
	76xS1tpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz9KQ-0000000GaSU-1Ltx;
	Thu, 18 Sep 2025 07:45:18 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz9KL-0000000GaMd-0y1T
	for barebox@lists.infradead.org;
	Thu, 18 Sep 2025 07:45:14 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-b04b55d5a2cso108507366b.2
        for <barebox@lists.infradead.org>; Thu, 18 Sep 2025 00:45:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1758181511; x=1758786311; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ADAwQlYA1HICmeQZSK35I5Wnd5qkwJd+GdpwsybIf1Y=;
        b=AfQs87jRROMylYcNC8SBhW2ZytaDQbVLlIovFUVD/MOWbQD9ky9C7dklxY0L0N+GhR
         Mq9IHQcuoajCHv8qrhgheUmgoXUzRuo2mzug42iE2YCgKt0L3Mh+FYKfhOaMej0oi0KA
         ahXqFTpGT/SkkAtKBfyi7gLayTGUo1+we0FP6apCtUzsfXi9IfGTASyYs2F+nHS2FcLM
         T80ryFJTZK7jIUFGPZe78k8RVluSgy/hRxIkZI6eAEXH53U22NareavPD34LFkvuIfsH
         StXFdWsoEmzC73EwxLF4fv+qm4fUuzqD0+7nfobcwtd2fAXUx6Wi0LE1zZVRQnJJckq1
         QNNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758181511; x=1758786311;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ADAwQlYA1HICmeQZSK35I5Wnd5qkwJd+GdpwsybIf1Y=;
        b=UKCdV8/2jsKSzV4BYH0yKkBdXNdG5wSVoxjXeLdKsQhP5mZ0E2TNTZoAfdg+kJ/hu2
         YVWx9wNT9ERb95nRNTFpLY9egiLeawKUTMXwUuhlHfF4LDG0zEG8gZs+pXp2PD7130SF
         +6we8rAB+XwWS5Ac8eaHEuAmF1KrXY8QFy4ieWBMgsVAIkAw2ROUVv15mVZJktv1YcUZ
         j0GZualwMiCDGHr8s8tD2a/evWLSOBLwVBQOVeGKZCeEbu3EpBepFU7hi6WAaPWYgwU/
         kL8l+7buF5p2RlkjUsmRaxXfdGmHtCi+DI3GvyiObWjKYKottGenvPKaanGf+hocu5iM
         N8wg==
X-Gm-Message-State: AOJu0Yx3IehsExvfW29GDm0igrFEMXLDdbf1CkRV9Zea9XnpkGu0SSwS
	PiyRK5tDy+Stzxug/7s+STk8ZgOeNARNFhGgmIhQPBTa8In8dTyKWvAL1yQYc8rB4FICJ7yuz6H
	GXN2b
X-Gm-Gg: ASbGncvvCnZEY+sCUgPoOqjF9T3F3W2bT1mL+HlL1F71vAYp85VG5EJfdP8MdubqKmL
	6HG2JLHg+amxuWvwxpOnBXHbNAi1DAzIqx2wU6uktW61GxmJO+PdbpwVoeijz/W8AUrHJ05K73c
	MINquJmwYVVa0ygTIEGWhKxUsQxFEXb0x+dIJVyAuhyTL4k2QHwz0ZelmErPaOvAOi0Wk2zj7hP
	5XPIelFUf8aSxWmSxXwLGkPCDNbbZrhDjpLy0Alqm615h6qmUlKtZxTLitnvwpoqyOkb91UzXPf
	lnlyzU4PMlSPATbsP9h5JW2+LwbdDPjky84/DuqU4JktR/wNkEXjJTfaRVhgCWkktoO55IskRnZ
	sWld97bDWF35SJDaA1sLy/M48tIeI1d5Wc/cWUUHrfiXJd0m46vs5Tf0jVTrv+OhsGW0iqdw04Z
	5TrlIG/7mT
X-Google-Smtp-Source: AGHT+IG1i0D4DCZyQ2bwaVI1IQKrjqm7Jpaq04MgKcryWbiYv+ZV2XUQxEEIrf9A0LECKoTMrn64xQ==
X-Received: by 2002:a17:907:b5a3:b0:b1e:29b8:ff2f with SMTP id a640c23a62f3a-b1e29c8817emr326777566b.12.1758181510832;
        Thu, 18 Sep 2025 00:45:10 -0700 (PDT)
Received: from wkz-x13.addiva.ad (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b1fcfe888bcsm140703166b.71.2025.09.18.00.45.10
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Sep 2025 00:45:10 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: barebox@lists.infradead.org
Date: Thu, 18 Sep 2025 09:43:15 +0200
Message-ID: <20250918074455.891780-6-tobias@waldekranz.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250918074455.891780-1-tobias@waldekranz.com>
References: <20250918074455.891780-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Wires
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_004513_304977_955E561C 
X-CRM114-Status: GOOD (  15.22  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 05/11] commands: veritysetup: Create dm-verity devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For hash devices that contain a superblock, parse it and setup a
dm-verity device based on that information.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 commands/Kconfig       |  10 ++++
 commands/Makefile      |   1 +
 commands/veritysetup.c | 123 +++++++++++++++++++++++++++++++++++++++++
 3 files changed, 134 insertions(+)
 create mode 100644 commands/veritysetup.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 219f626c3e..1924016756 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -789,6 +789,16 @@ config CMD_UMOUNT
 
 	  Unmount a filesystem mounted on a specific MOINTPOINT
 
+config CMD_VERITYSETUP
+	tristate
+	depends on DM_BLK_VERITY
+	prompt "veritysetup"
+	help
+	  veritysetup - manage dm-verity volumes
+
+	  commands:
+	        open <data-dev> <name> <hash-dev> <root-hash>
+
 # end Partition commands
 endmenu
 
diff --git a/commands/Makefile b/commands/Makefile
index 6b010fe30c..62dd8284cd 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -167,4 +167,5 @@ obj-$(CONFIG_CMD_PARTED)	+= parted.o
 obj-$(CONFIG_CMD_EFI_HANDLE_DUMP)	+= efi_handle_dump.o
 obj-$(CONFIG_CMD_HOST)		+= host.o
 obj-$(CONFIG_CMD_DMSETUP)	+= dmsetup.o
+obj-$(CONFIG_CMD_VERITYSETUP)	+= veritysetup.o
 UBSAN_SANITIZE_ubsan.o := y
diff --git a/commands/veritysetup.c b/commands/veritysetup.c
new file mode 100644
index 0000000000..99f27278f8
--- /dev/null
+++ b/commands/veritysetup.c
@@ -0,0 +1,123 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: © 2025 Tobias Waldekranz <tobias@waldekranz.com>, Wires
+
+#include <command.h>
+#include <device-mapper.h>
+#include <libfile.h>
+#include <stdio.h>
+
+static int veritysetup_dump(int argc, char *argv[])
+{
+	char *config;
+
+	if (argc != 1)
+		return COMMAND_ERROR_USAGE;
+
+	config = dm_verity_config_from_sb("<data-dev>", argv[0], "<root-hash>");
+	if (IS_ERR(config)) {
+		printf("Invalid or missing superblock: %pe\n", config);
+		return COMMAND_ERROR;
+	}
+
+	puts(config);
+	free(config);
+	return COMMAND_SUCCESS;
+}
+
+static struct dm_device *veritysetup_find(const char *name)
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
+static int veritysetup_close(int argc, char *argv[])
+{
+	struct dm_device *dm;
+
+	if (argc != 1)
+		return COMMAND_ERROR_USAGE;
+
+	dm = veritysetup_find(argv[0]);
+	if (!dm)
+		return COMMAND_ERROR;
+
+	dm_destroy(dm);
+
+	printf("Removed %s\n", argv[0]);
+	return COMMAND_SUCCESS;
+}
+
+static int veritysetup_open(int argc, char *argv[])
+{
+	struct dm_device *dm;
+	char *config;
+
+	if (argc != 4)
+		return COMMAND_ERROR_USAGE;
+
+	config = dm_verity_config_from_sb(argv[0], argv[2], argv[3]);
+	if (IS_ERR(config)) {
+		printf("Invalid or missing superblock: %pe\n", config);
+		return COMMAND_ERROR;
+	}
+
+	dm = dm_create(argv[1], config);
+	free(config);
+	if (IS_ERR_OR_NULL(dm)) {
+		printf("Failed to create %s: %pe\n", argv[1], dm);
+		return COMMAND_ERROR;
+	}
+
+	printf("Created %s\n", argv[1]);
+	return COMMAND_SUCCESS;
+}
+
+static int do_veritysetup(int argc, char *argv[])
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
+	if (!strcmp(cmd, "open"))
+		return veritysetup_open(argc, argv);
+	else if (!strcmp(cmd, "close"))
+		return veritysetup_close(argc, argv);
+	else if (!strcmp(cmd, "dump"))
+		return veritysetup_dump(argc, argv);
+
+	printf("Unknown command: %s\n", cmd);
+	return -EINVAL;
+}
+
+BAREBOX_CMD_HELP_START(veritysetup)
+BAREBOX_CMD_HELP_TEXT("veritysetup - manage dm-verity volumes")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Layers a transparent integrity layer on top of an existing")
+BAREBOX_CMD_HELP_TEXT("device, backed by a Merkle tree whose root hash must be")
+BAREBOX_CMD_HELP_TEXT("verified by an externally provided signature")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("commands:")
+BAREBOX_CMD_HELP_OPT("open <data-dev> <name> <hash-dev> <root-hash>", "Create new device")
+BAREBOX_CMD_HELP_OPT("close <name>", "Remove device")
+BAREBOX_CMD_HELP_OPT("dump <hash-dev>", "Dump superblock information")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(veritysetup)
+	.cmd = do_veritysetup,
+	BAREBOX_CMD_DESC("manage dm-verity volumes")
+	BAREBOX_CMD_OPTS("<command> [args...]")
+	BAREBOX_CMD_GROUP(CMD_GRP_PART)
+	BAREBOX_CMD_HELP(cmd_veritysetup_help)
+BAREBOX_CMD_END
-- 
2.43.0



