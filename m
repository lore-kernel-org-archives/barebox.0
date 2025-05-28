Delivery-date: Wed, 28 May 2025 16:35:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKHss-001Dcl-2t
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 16:35:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKHss-0001v0-5m
	for lore@pengutronix.de; Wed, 28 May 2025 16:35:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5cn3W0mCOW4Ac7g+QL9VGz+xlrDBv/vgWVmxwuLargI=; b=EnYibAckAnddfz7w1x4DjZk6Bw
	wc8U7hifc9fewPvPgbJYKStxv8APu+p6wbPpiaXqeEoStYrkKfti5LJ3IzwK87qAOzBtMwD8RrKFC
	deqHrp78c8PnTKXWQmE1HHllfNUNUixRkLQ4T2gWj235mpFLUMs66M3zCVvYcUPmoFUuU5PJfQTAS
	0QHE0BdJ0wwu9sXXCorP5tTgUGQL5ELeAgS4+TIZyYXCNnLSPaOY+Rk8Mxj5SmeKYw44Hv5AJRiGV
	zJVg2m1Hyvs56JZrRUarxfsaC0HL+LQOWssKmpvuehd5wLgfTBXsq7Tm3W4LQKfmwMaOQr5iHpVIz
	mMHfF9CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKHsM-0000000DQD0-1DlQ;
	Wed, 28 May 2025 14:35:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKHns-0000000DPDx-14e4
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 14:30:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKHnp-0006FA-Hk; Wed, 28 May 2025 16:30:45 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKHnp-000bXp-15;
	Wed, 28 May 2025 16:30:45 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKHnp-001qOC-0n;
	Wed, 28 May 2025 16:30:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 28 May 2025 16:30:38 +0200
Message-Id: <20250528143043.434446-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250528143043.434446-1-a.fatoum@pengutronix.de>
References: <20250528143043.434446-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_073048_301560_2A763A69 
X-CRM114-Status: GOOD (  14.66  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 05/10] commands: add TLV debugging command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The TLV command does the equivalent of having a "barebox,tlv"
compatible node point at the file. It's meant as a debugging aid.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Kconfig  | 12 +++++++++++
 commands/Makefile |  1 +
 commands/tlv.c    | 55 +++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 68 insertions(+)
 create mode 100644 commands/tlv.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 0f3155d123ab..8890440ef6cf 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -2572,6 +2572,18 @@ config CMD_STATE
 	depends on STATE
 	prompt "state"
 
+config CMD_TLV
+	tristate
+	depends on TLV
+	prompt "tlv"
+	help
+	  tlv - handle barebox TLV
+
+	  Usage: tlv [-f] FILE
+
+	  The TLV command does the equivalent of having a "barebox,tlv"
+	  compatible node point at the file. It's meant as a debugging aid.
+
 config CMD_DHRYSTONE
 	bool
 	prompt "dhrystone"
diff --git a/commands/Makefile b/commands/Makefile
index 8c2749b5ebdd..53337dfb5c2d 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -143,6 +143,7 @@ obj-$(CONFIG_CMD_CMP)		+= cmp.o
 obj-$(CONFIG_CMD_NV)		+= nv.o
 obj-$(CONFIG_CMD_DEFAULTENV)	+= defaultenv.o
 obj-$(CONFIG_CMD_STATE)		+= state.o
+obj-$(CONFIG_CMD_TLV)		+= tlv.o
 obj-$(CONFIG_CMD_DHCP)		+= dhcp.o
 obj-$(CONFIG_CMD_BOOTCHOOSER)	+= bootchooser.o
 obj-$(CONFIG_CMD_DHRYSTONE)	+= dhrystone.o
diff --git a/commands/tlv.c b/commands/tlv.c
new file mode 100644
index 000000000000..53fbc2a29186
--- /dev/null
+++ b/commands/tlv.c
@@ -0,0 +1,55 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: © 2022 Ahmad Fatoum, Pengutronix
+
+#include <common.h>
+#include <of.h>
+#include <command.h>
+#include <getopt.h>
+#include <tlv/tlv.h>
+
+static int do_tlv(int argc, char *argv[])
+{
+	const char *filename;
+	bool fixup = false;
+	struct tlv_device *tlvdev;
+	int opt;
+
+	while ((opt = getopt(argc, argv, "f")) > 0) {
+		switch (opt) {
+		case 'f':
+			fixup = true;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	filename = argv[optind];
+	if (!filename)
+		return COMMAND_ERROR_USAGE;
+
+	tlvdev = tlv_register_device_by_path(argv[optind], NULL);
+	if (IS_ERR(tlvdev))
+		return PTR_ERR(tlvdev);
+
+	if (fixup)
+		return tlv_of_register_fixup(tlvdev);
+
+	of_print_nodes(tlv_of_node(tlvdev), 0, ~0);
+
+	tlv_free_device(tlvdev);
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(tlv)
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-f",  "Register device tree fixup for TLV")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(tlv)
+	.cmd		= do_tlv,
+	BAREBOX_CMD_DESC("handle barebox TLV")
+	BAREBOX_CMD_OPTS("[-f] FILE")
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
+	BAREBOX_CMD_HELP(cmd_tlv_help)
+BAREBOX_CMD_END
-- 
2.39.5



