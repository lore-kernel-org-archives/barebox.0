Delivery-date: Fri, 11 Apr 2025 09:44:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u393j-00BA2x-0r
	for lore@lore.pengutronix.de;
	Fri, 11 Apr 2025 09:44:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u393i-00063k-Iz
	for lore@pengutronix.de; Fri, 11 Apr 2025 09:44:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d19g+J0VsxvJCorn1CCX+rj2GaJ88KXKi0lZtBkAhp8=; b=3uuhd/zY4fXnIP1x5liAg5mM0g
	r6SjfX6oFdpPlaN3TN/C1MLOZim1cJVO2iXSgulvElf1kXNXRo9yhXOs6nkeuAx8AkZzrzir8hyPD
	GHDqw9GvKG4W7EPcG3joohmSpgffpQgAUbXDGygR19T+aIXvNs2uEHEaB0cd8eqFwyoCW4WPu2yW0
	cW4s6ra7bmWs8xwo03jXi4jFiyghDVm0XvgDA/3gKyi1JB2Aeet/EjRTA/qP+mUNuZc0FyY53Jxr/
	O4AOyOSlj/cZo5+ZW4jUx9dXDI/3Z7RFsNU/qkcstRzx37LaSDqCN0rovGVrLoNQz2SoWwVIxtgtD
	UB3V+K1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u393C-0000000Cv2x-2dsJ;
	Fri, 11 Apr 2025 07:43:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u390R-0000000CuKt-23R4
	for barebox@bombadil.infradead.org;
	Fri, 11 Apr 2025 07:40:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=d19g+J0VsxvJCorn1CCX+rj2GaJ88KXKi0lZtBkAhp8=; b=OBhxSDgBlDD5yDg7iR4rpGHqw6
	Y3zukh9wRru4jFvGiIpP0ArK1M3O6+BdQN2xzPTKpRX+PTvUV4dWKcmr/N7jkhnMD+3aDm/ZrznFE
	Fz1NH+rlACbowst8TEQSoR3JDWPF5WMxtefG1mEPuFjooFvmBjiN0LuXd/7lOH69eGPRpuTWAFo0N
	PTvm56dApNzeVcIoIZdjF4fXjMQikcxj9+bj411lbv7uLTsZyoAXD85dPNDaeEqzqpfc9Uw7Es7FQ
	bgElyBnrLiNYsoVWMUzBd8A1wSrijWnCo91JkTn3zN9zoHEkXiKc3FmA8aysoCVCfGT2pR7awtK+2
	+jtErPmQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u390N-00000008y0x-0hLX
	for barebox@lists.infradead.org;
	Fri, 11 Apr 2025 07:40:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u390J-0004uY-0Q; Fri, 11 Apr 2025 09:40:47 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u390I-004OjO-2M;
	Fri, 11 Apr 2025 09:40:46 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u390I-008WBo-24;
	Fri, 11 Apr 2025 09:40:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 11 Apr 2025 09:40:40 +0200
Message-Id: <20250411074045.2019372-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250411074045.2019372-1-a.fatoum@pengutronix.de>
References: <20250411074045.2019372-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_084051_546781_76B6945B 
X-CRM114-Status: GOOD (  14.41  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 05/10] commands: add TLV debugging command
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
index ca3f13d7e0cc..229d0a634a8c 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -2573,6 +2573,18 @@ config CMD_STATE
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



