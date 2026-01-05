Delivery-date: Mon, 05 Jan 2026 15:33:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcldv-001YCj-0o
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 15:33:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcldu-0004fC-Gf
	for lore@pengutronix.de; Mon, 05 Jan 2026 15:33:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e8D57SUAWSGQJmqRFFLYZdUBs0ELVLq8iN0XQyXYkdY=; b=IABQPjqemeP8OUgRgBsZ+i6bL7
	z37qSgYuB17ZsOBFbWVs004qpGXPYob3o5UwZL9PsMcqwcInVq8DRlZ4XUgRqJuCgWrOErIjehi0Q
	+iUVgQ09Ej0eNpsPS8vlvLKE4tZ+cmP066gXJXmfD8eLNTsLf5azNgcuHGhtdeaxmCJ/xB1T7TdLQ
	IbR2aBiX3JK6h9mXV0KZok8YpcDcCJAsprDU0cFp0Wlv0UDjzOu4+XCvK7qgOnJIHEGQqeLrdjJ5c
	a/NrsmiACeKznWqSRdNn5gx9XKK/FrO3O8t0cXIXdpFXLyJlVSBVJA2i74t/RdI84FZ4tfwS/Axb/
	KA2sORWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcldO-0000000BXet-0BzS;
	Mon, 05 Jan 2026 14:32:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcldL-0000000BXd9-2i4U
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 14:32:36 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1vcldI-0004R0-8Y; Mon, 05 Jan 2026 15:32:32 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Mon, 05 Jan 2026 15:32:33 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260105-rockchip-secure-boot-v1-3-eaf5053a7d7e@pengutronix.de>
References: <20260105-rockchip-secure-boot-v1-0-eaf5053a7d7e@pengutronix.de>
In-Reply-To: <20260105-rockchip-secure-boot-v1-0-eaf5053a7d7e@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_063235_686982_A97FF343 
X-CRM114-Status: GOOD (  17.56  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH RFC 3/3] commands: implement rksecure command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The rksecure command allows the user to read the current status of
secure boot of a Rockchip board. Furthermore, it allows to burn a
Public Root Key hash and enable secure boot on rk3588 via the Rockchip
Secure Boot PTA.

The command and its options are inspired by the hab command for i.MX
SoCs.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 commands/Kconfig    |   9 +++
 commands/Makefile   |   1 +
 commands/rksecure.c | 155 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 165 insertions(+)

diff --git a/commands/Kconfig b/commands/Kconfig
index 76e56835f625..f94c7278e72e 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -2328,6 +2328,15 @@ config CMD_K3_KEYWRITER
 	help
 	  The K3 keywriter command provides support for fusing TI AM62Lx SoCs
 
+config CMD_RKSECURE
+	bool
+	depends on OPTEE_RKSECURE
+	select PRINTF_HEXSTR
+	prompt "Rockchip Secure Boot"
+	help
+	  The rksecure command allows to retrieve information about and enable
+	  secure boot for Rockchip rk3588 SoCs.
+
 # end Hardware manipulation commands
 endmenu
 
diff --git a/commands/Makefile b/commands/Makefile
index d92adc7138a3..2563efb12f4e 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -172,4 +172,5 @@ obj-$(CONFIG_CMD_HOST)		+= host.o
 obj-$(CONFIG_CMD_DMSETUP)	+= dmsetup.o
 obj-$(CONFIG_CMD_VERITYSETUP)	+= veritysetup.o
 obj-$(CONFIG_CMD_SCONFIG)	+= sconfig.o
+obj-$(CONFIG_CMD_RKSECURE)	+= rksecure.o
 UBSAN_SANITIZE_ubsan.o := y
diff --git a/commands/rksecure.c b/commands/rksecure.c
new file mode 100644
index 000000000000..e9b7e204c1bd
--- /dev/null
+++ b/commands/rksecure.c
@@ -0,0 +1,155 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+
+#include <command.h>
+#include <crypto/sha.h>
+#include <errno.h>
+#include <getopt.h>
+#include <libfile.h>
+#include <linux/kstrtox.h>
+
+#include <rk_secure_boot.h>
+
+static int rksecure_write_hash_hex(const char *hex, u32 key_size_bits)
+{
+	int ret;
+	u8 digest[SHA256_DIGEST_SIZE];
+
+	if (strlen(hex) != SHA256_DIGEST_SIZE * 2) {
+		pr_err("%s has wrong size: Expected %d characters\n",
+		       hex, SHA256_DIGEST_SIZE * 2);
+		return -EINVAL;
+	}
+
+	ret = hex2bin(digest, hex, SHA256_DIGEST_SIZE);
+	if (ret < 0) {
+		pr_err("Failed to parse hash %s\n", hex);
+		return -EINVAL;
+	}
+
+	return rk_secure_boot_burn_hash(digest, key_size_bits);
+}
+
+static int rksecure_write_hash_file(const char *filename, u32 key_size_bits)
+{
+	int ret;
+	size_t size;
+	void *digest;
+
+	ret = read_file_2(filename, &size, &digest, SHA256_DIGEST_SIZE + 1);
+	if (ret)
+		return ret;
+	if (size != SHA256_DIGEST_SIZE) {
+		pr_err("%s has wrong size: Expected %d bytes\n",
+		       filename, SHA256_DIGEST_SIZE);
+		return -EINVAL;
+	}
+
+	ret = rk_secure_boot_burn_hash(digest, key_size_bits);
+
+	free(digest);
+
+	return ret;
+}
+
+static int rksecure_print_info(void)
+{
+	struct rk_secure_boot_info info;
+	int ret;
+
+	ret = rk_secure_boot_get_info(&info);
+	if (ret)
+		pr_err("Failed to read secure boot info\n");
+		return ret;
+
+	printf("Public Root Key hash: %*phN\n"
+	       "Secure boot: %s\n"
+	       "Simulation: %s\n",
+	       (int)sizeof(info.hash), info.hash,
+	       info.lockdown ? "enabled" : "disabled",
+	       info.simulation ? "enabled" : "disabled");
+
+	return 0;
+}
+
+static int do_rksecure(int argc, char *argv[])
+{
+	int opt;
+	int ret;
+	char *hashfile = NULL;
+	char *hash = NULL;
+	int lockdown = 0;
+	int info = 0;
+	int key_size_bits = 0;
+
+	while ((opt = getopt(argc, argv, "s:x:b:li")) > 0) {
+		switch (opt) {
+		case 's':
+			hashfile = optarg;
+			break;
+		case 'x':
+			hash = optarg;
+			break;
+		case 'b':
+			kstrtouint(optarg, 10, &key_size_bits);
+			break;
+		case 'l':
+			lockdown = 1;
+			break;
+		case 'i':
+			info = 1;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	if (!info && !lockdown && !hashfile && !hash)
+		return COMMAND_ERROR_USAGE;
+
+	if (info)
+		return rksecure_print_info();
+
+	if (hashfile && hash) {
+		printf("-s and -x options may not be given together\n");
+		return COMMAND_ERROR_USAGE;
+	}
+
+	if (hashfile) {
+		ret = rksecure_write_hash_file(hashfile, key_size_bits);
+		if (ret)
+			return ret;
+	} else if (hash) {
+		ret = rksecure_write_hash_hex(hash, key_size_bits);
+		if (ret)
+			return ret;
+	}
+
+	if (lockdown) {
+		ret = rk_secure_boot_lockdown_device();
+		if (ret)
+			return ret;
+		printf("Device successfully locked down\n");
+	}
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(rksecure)
+BAREBOX_CMD_HELP_TEXT("Manage Rockchip Secure Boot")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_OPT ("-i",		"Print info about secure boot status")
+BAREBOX_CMD_HELP_OPT ("-s <file>",	"Burn Super Root Key hash from <file>")
+BAREBOX_CMD_HELP_OPT ("-x <sha256>",	"Burn Super Root Key hash from hex string")
+BAREBOX_CMD_HELP_OPT ("-b <bits>",	"Bit length of signing key")
+BAREBOX_CMD_HELP_OPT ("-l",		"Lockdown device. Dangerous! After executing only signed images can be booted")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(rksecure)
+	.cmd = do_rksecure,
+	BAREBOX_CMD_DESC("Manage Rockchip Secure Boot")
+	BAREBOX_CMD_OPTS("isxbl")
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
+	BAREBOX_CMD_HELP(cmd_rksecure_help)
+BAREBOX_CMD_END

-- 
2.47.3



