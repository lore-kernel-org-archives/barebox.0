Delivery-date: Fri, 30 May 2025 13:44:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKyA0-001vpu-2O
	for lore@lore.pengutronix.de;
	Fri, 30 May 2025 13:44:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKy9z-0002ID-JU
	for lore@pengutronix.de; Fri, 30 May 2025 13:44:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pg79M86/HuT7lPeCrvmXw5FhQ86IjShsPPaoMbYKVQM=; b=snKMmXwrcV9Tsy/skorb1Vf4dr
	cyW5qxypUqSZl0V1MFSwp3KN26afI1qnDEe7+xnJX+8TsPU0DVOfJFciupTeH00d/Mm2VUiG86bIG
	SGMgDeHsr6OPJJeL5RvLHBSylAqZQPTuwd1fFMCUaz9pLepIleUGocBkI91JL+NbTFi7wPMlyQJSq
	PSb0IBhBfx9SRAozif+eST2JqeatMg7oFHiQh/33xZVF6BCTxmiudyXNYfFas6qsFG4LeUzTBzVWi
	ytv5frtBXlpv8ETA2mPURhgQW5HxOG2cNkSJ/iYbBW2Wqz7EalwCU6qaCOxMDGSnMV1yR98RUwGwH
	1GnCRM2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKy9M-00000000Rr4-1Dmy;
	Fri, 30 May 2025 11:43:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKy6n-00000000RbW-3Q1w
	for barebox@lists.infradead.org;
	Fri, 30 May 2025 11:41:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1uKy6l-0008Ti-Sf; Fri, 30 May 2025 13:41:07 +0200
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1uKy6l-000y4m-21;
	Fri, 30 May 2025 13:41:07 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1uKy6l-004EcL-1r;
	Fri, 30 May 2025 13:41:07 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 30 May 2025 13:41:02 +0200
Message-Id: <20250530114106.1009454-4-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250530114106.1009454-1-o.rempel@pengutronix.de>
References: <20250530114106.1009454-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250530_044109_917078_32CB693F 
X-CRM114-Status: GOOD (  21.45  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 3/7] commands: nvmem: Add support for creating dynamic rmem devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The 'nvmem' command is extended to allow the creation of dynamic
RAM-backed NVMEM devices (rmem). This functionality is useful for
testing NVMEM operations, for scripts that require temporary, writable
NVMEM areas, or when a persistent NVMEM device is not available or
necessary.

This patch introduces the following new options to the 'nvmem' command:

-c : Creates a new rmem NVMEM device of the specified . The size can be
given with common suffixes (e.g., K, M). The command enforces that the
size is non-zero and does not exceed a defined maximum (NVMEM_MAX_SIZE,
defaulting to 1MB). This option requires CONFIG_NVMEM_RMEM to be
enabled.

-v : When used in conjunction with the -c option, this stores the name
of the newly created rmem device (e.g., "rmem0") into the environment
variable specified by . This allows subsequent commands or scripts to
easily reference the dynamic NVMEM device.

If invoked without any options, the 'nvmem' command retains its original
behavior of listing all currently available NVMEM devices.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 commands/nvmem.c | 124 ++++++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 118 insertions(+), 6 deletions(-)

diff --git a/commands/nvmem.c b/commands/nvmem.c
index a0e3d092e3cf..5f60e70e62c3 100644
--- a/commands/nvmem.c
+++ b/commands/nvmem.c
@@ -1,24 +1,136 @@
 // SPDX-License-Identifier: GPL-2.0
 // SPDX-FileCopyrightText: © 2021 Ahmad Fatoum, Pengutronix
 
-#include <common.h>
 #include <command.h>
+#include <common.h>
+#include <environment.h>
+#include <getopt.h>
 #include <linux/nvmem-consumer.h>
+#include <linux/sizes.h>
 
-static int do_nvmem(int argc, char *argv[])
+/* Maximum size for dynamically created NVMEM devices.
+ * This is a reasonable limit for RAM-backed devices, but can be adjusted
+ * based on system capabilities and requirements.
+ */
+#define NVMEM_MAX_SIZE		SZ_1M
+
+/* Static counter to ensure unique device IDs for dynamically created rmem
+ * devices
+ */
+static int dynamic_rmem_idx;
+
+/**
+ * nvmem_create_dynamic_rmem - Creates a dynamic RAM-backed NVMEM device.
+ * @create_size: Size of the NVMEM device to create.
+ * @var_name: Optional environment variable name to store the created device's
+ *            name.
+ *
+ * Return: 0 on success, negative error code on failure.
+ */
+static int nvmem_create_dynamic_rmem(unsigned long create_size,
+				     const char *var_name)
+{
+	struct device *dev;
+	void *buffer;
+	int ret = 0;
+
+	buffer = xzalloc(create_size);
+	if (!buffer)
+		return -ENOMEM;
+
+	dev = add_generic_device("rmem", dynamic_rmem_idx, NULL,
+				 (resource_size_t)(uintptr_t)buffer,
+				 (resource_size_t)create_size,
+				 IORESOURCE_MEM, NULL);
+
+	if (var_name)
+		ret = setenv(var_name, dev_name(dev));
+
+	dynamic_rmem_idx++;
+
+	return ret;
+}
+
+static int nvmem_parse_and_validate_create_size(const char *size_arg,
+						unsigned long *out_size)
 {
-	nvmem_devices_print();
+
+	if (!IS_ENABLED(CONFIG_NVMEM_RMEM)) {
+		printf("Error: rmem NVMEM driver (CONFIG_NVMEM_RMEM) is not enabled in this build.\n");
+		return -EINVAL;
+	}
+
+	*out_size = strtoul_suffix(optarg, NULL, 0);
+	if (!*out_size) {
+		printf("Error: Invalid size '%s' for -c option. Must be non-zero.\n",
+		       optarg);
+		return COMMAND_ERROR_USAGE;
+	}
+
+	if (*out_size > NVMEM_MAX_SIZE) {
+		printf("Error: Size '%lu' exceeds maximum allowed size of %d bytes.\n",
+		       *out_size, NVMEM_MAX_SIZE);
+		return COMMAND_ERROR_USAGE;
+	}
 
 	return 0;
 }
 
+static int do_nvmem(int argc, char *argv[])
+{
+	unsigned long create_size = 0;
+	char *optarg_v = NULL;
+	int ret = 0;
+	int opt;
+
+	while ((opt = getopt(argc, argv, "c:v:h")) != -1) {
+		switch (opt) {
+		case 'c':
+			ret = nvmem_parse_and_validate_create_size(optarg,
+								&create_size);
+			if (ret < 0)
+				return ret;
+			break;
+		case 'v':
+			optarg_v = optarg;
+			break;
+		case 'h': /* fallthrough */
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	if (optarg_v && !create_size) {
+		printf("Error: -v <VARNAME> option requires -c <SIZE> to create a device.\n");
+		return COMMAND_ERROR_USAGE;
+	}
+
+	if (create_size > 0)
+		ret = nvmem_create_dynamic_rmem(create_size, optarg_v);
+	else
+		nvmem_devices_print();
+
+	return ret;
+}
+
 BAREBOX_CMD_HELP_START(nvmem)
-BAREBOX_CMD_HELP_TEXT("Usage: nvmem")
-BAREBOX_CMD_HELP_END
+BAREBOX_CMD_HELP_TEXT("List NVMEM devices or create dynamic RAM-backed NVMEM")
+BAREBOX_CMD_HELP_TEXT("devices. If no arguments are provided, it lists all")
+BAREBOX_CMD_HELP_TEXT("available NVMEM devices.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-c <size>", "Create a new RAM-backed NVMEM device of")
+BAREBOX_CMD_HELP_OPT("         ", "<size> bytes. (Requires CONFIG_NVMEM_RMEM")
+BAREBOX_CMD_HELP_OPT("         ", "to be enabled). <size> must be a non-zero.")
+BAREBOX_CMD_HELP_OPT("-v <variable>", "When using -c, set environment variable")
+BAREBOX_CMD_HELP_OPT("             ", "<variable> to the name of the created")
+BAREBOX_CMD_HELP_OPT("             ", "NVMEM device (e.g., rmem0).")
+BAREBOX_CMD_HELP_END;
 
 BAREBOX_CMD_START(nvmem)
 	.cmd		= do_nvmem,
-	BAREBOX_CMD_DESC("list nvmem devices")
+	BAREBOX_CMD_DESC("list or create NVMEM devices")
+	BAREBOX_CMD_OPTS("[-c <size> [-v <varname>]]")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_nvmem_help)
 BAREBOX_CMD_END
-- 
2.39.5



