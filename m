Delivery-date: Wed, 17 Sep 2025 16:19:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyt04-0046RY-0z
	for lore@lore.pengutronix.de;
	Wed, 17 Sep 2025 16:19:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyt01-0003qD-Es
	for lore@pengutronix.de; Wed, 17 Sep 2025 16:19:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+Hzqs4rnrG5e7E19HZ/EfGxn/xztD9MQwDbskj06c3k=; b=qnQL65fsTo0GaZuK86yqUEtikt
	ZoqJ5tsyHSlAnByhOQfGwRK+vg63BjlFl0P0yUmoFA/wszVrkSPgdXrq11/oQbuNRb5S7Xa8FnIBP
	68DUsugKgs8bLQktefV+dN35JdZrI6fm1p7MoNaQVJXgytobln2ZZpKSXwdRDOmkmcFKjEBJ6vLE7
	wjBZQw219vgXkYlZCgUJ4jvtJWCPqDQCJb+luLqjFW/TrAoJsFjs8Pg920IWiu4ewdBE3EtOK/Wg0
	U4mLfE0daHDgfIeEizV0UOwLc8q+cIX4MmRjYZprcl1CCThp7wauu0diyht05RknxGOXnm1AIgPeT
	fo/5TNxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyszT-0000000C8Ur-2PMq;
	Wed, 17 Sep 2025 14:18:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyszM-0000000C8FN-4006
	for barebox@bombadil.infradead.org;
	Wed, 17 Sep 2025 14:18:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=+Hzqs4rnrG5e7E19HZ/EfGxn/xztD9MQwDbskj06c3k=; b=Gi85oZSnfOx/dTHZoV7aq+QVEC
	nzq0eZYELRrYW43KeS3bxxy4fHh1glfaUv7jyuzalM9HHjJ4x8VXaA/MhZWzA+82JwmWsmQHEMD2x
	cfXygmYJC/elDZrc6EPvQfDAUA/S+otc9GOwkjwGKu/92OQ1Zt6sczjHKQU/vAUi5hbEgbx1QcEVH
	/F8gmWIsL2V93wmWE0X0Zuw6q2OpcBbec4gI3fXQ9UFY8DT4VHiMTjaW5EhRRI1XrZK+8GvnIndyx
	Af5pteXgEEH3b6Z9CD1bhztDbXKHG5DXW2kKyFhe97gq65HA3TNEWVKTVYxgKPZbmwiUVgK4ncGoT
	pIg1QGHQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyszI-00000007PGI-24gM
	for barebox@lists.infradead.org;
	Wed, 17 Sep 2025 14:18:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyszG-00034J-Gw; Wed, 17 Sep 2025 16:18:22 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyszG-001mHA-0z;
	Wed, 17 Sep 2025 16:18:22 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uysbA-0000000CZtI-34zD;
	Wed, 17 Sep 2025 15:53:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Sep 2025 15:53:36 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250917-security-policies-v2-16-f30769a3ff51@pengutronix.de>
References: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
In-Reply-To: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758117208; l=4707;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=kUc0MuTOxwD+VpYRSdQcJbDtBJP87AywmMMGOWRuTog=;
 b=QXzmaYXT3dofh/gOBZMD5ZZSegiNBOhrHCbRTr3+bOhNg0244X0dO/9oTicljhQ1CtkY9lR++
 qGwiuMVuxL3Awd7dbL4vTrRf8XHQYXlXwJtgCiZ5T/DpFoWBz3Cd5g1
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_151824_814144_9B2EA98D 
X-CRM114-Status: GOOD (  18.65  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 16/24] boards: qemu-virt: allow setting policy from
 command line
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

Security policies will normally be selected after consulting efuses,
secure boot status from the EEPROM or unlock tokens.

For easier experimentation in QEMU, allow setting the security policy
via the command line arguments, e.g.:

  pytest --bootarg barebox.security.policy=lockdown

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/boards/qemu-virt/Makefile      |  2 +-
 common/boards/qemu-virt/board.c       |  3 ++
 common/boards/qemu-virt/commandline.c | 74 +++++++++++++++++++++++++++++++++++
 common/boards/qemu-virt/commandline.h |  9 +++++
 test/arm/virt32_secure_defconfig.yaml |  1 +
 5 files changed, 88 insertions(+), 1 deletion(-)

diff --git a/common/boards/qemu-virt/Makefile b/common/boards/qemu-virt/Makefile
index 2caa6a20c522ac68fd629f38e51fdf1423db4b09..7e1440aecff08942269d60f5d221fc4e69e95ea6 100644
--- a/common/boards/qemu-virt/Makefile
+++ b/common/boards/qemu-virt/Makefile
@@ -1,6 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
-obj-y += board.o
+obj-y += board.o commandline.o
 obj-y += qemu-virt-flash.dtbo.o fitimage-pubkey.dtb.o
 ifeq ($(CONFIG_RISCV),y)
 DTC_CPP_FLAGS_qemu-virt-flash.dtbo := -DCONFIG_RISCV
diff --git a/common/boards/qemu-virt/board.c b/common/boards/qemu-virt/board.c
index 6f88f24b0690c2562b3b3718a56c9f5c46a4455a..6ad35421892703eea32a36a913bc92dbb44acc14 100644
--- a/common/boards/qemu-virt/board.c
+++ b/common/boards/qemu-virt/board.c
@@ -9,6 +9,7 @@
 #include <deep-probe.h>
 #include <security/policy.h>
 #include "qemu-virt-flash.h"
+#include "commandline.h"
 
 #ifdef CONFIG_64BIT
 #define MACHINE "virt64"
@@ -91,6 +92,8 @@ static int virt_board_driver_init(void)
 	 * so the test suite can exercise CONFIG_SECURITY_POLICY_PATH.
 	 */
 
+	qemu_virt_parse_commandline(root);
+
 	return 0;
 }
 postcore_initcall(virt_board_driver_init);
diff --git a/common/boards/qemu-virt/commandline.c b/common/boards/qemu-virt/commandline.c
new file mode 100644
index 0000000000000000000000000000000000000000..16e4750e123dee69c612de52c855889372f2cbc3
--- /dev/null
+++ b/common/boards/qemu-virt/commandline.c
@@ -0,0 +1,74 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+#define pr_fmt(fmt) "qemu-virt-commandline: " fmt
+
+#include <linux/parser.h>
+#include <of.h>
+#include <string.h>
+#include <security/policy.h>
+#include <xfuncs.h>
+#include <stdio.h>
+#include "commandline.h"
+
+enum {
+	/* String options */
+	Opt_policy,
+	/* Error token */
+	Opt_err
+};
+
+static const match_table_t tokens = {
+	{Opt_policy, "barebox.security.policy=%s"},
+	{Opt_err, NULL}
+};
+
+int qemu_virt_parse_commandline(struct device_node *np)
+{
+	const char *bootargs;
+	char *p, *options, *tmp_options, *policy = NULL;
+	substring_t args[MAX_OPT_ARGS];
+	int ret;
+
+	np = of_get_child_by_name(np, "chosen");
+	if (!np)
+		return -ENOENT;
+
+	ret = of_property_read_string(np, "bootargs", &bootargs);
+	if (ret < 0)
+		return 0;
+
+	options = tmp_options = xstrdup(bootargs);
+
+	while ((p = strsep(&options, " ")) != NULL) {
+		int token;
+
+		if (!*p)
+			continue;
+
+		token = match_token(p, tokens, args);
+		switch (token) {
+		case Opt_policy:
+			if (!IS_ENABLED(CONFIG_SECURITY_POLICY)) {
+				pr_err("CONFIG_SECURITY_POLICY support is missing\n");
+				continue;
+			}
+
+			policy = match_strdup(&args[0]);
+			if (!policy) {
+				ret = -ENOMEM;
+				goto out;
+			}
+			ret = security_policy_select(policy);
+			if (ret)
+				goto out;
+		default:
+			continue;
+		}
+	}
+
+	ret = 0;
+out:
+	free(policy);
+	free(tmp_options);
+	return ret;
+}
diff --git a/common/boards/qemu-virt/commandline.h b/common/boards/qemu-virt/commandline.h
new file mode 100644
index 0000000000000000000000000000000000000000..8759784e07c57e3492dbabaa8ab9b4d50cc6f73a
--- /dev/null
+++ b/common/boards/qemu-virt/commandline.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+#ifndef QEMU_VIRT_COMMANDLINE_H_
+#define QEMU_VIRT_COMMANDLINE_H_
+
+struct device_node;
+
+int qemu_virt_parse_commandline(struct device_node *root);
+
+#endif
diff --git a/test/arm/virt32_secure_defconfig.yaml b/test/arm/virt32_secure_defconfig.yaml
index 618cb6a0fb05a4703c1fe25e159a257ed775d7c8..a1537c634811d10957b7fd0cc49d6b66c1b80e06 100644
--- a/test/arm/virt32_secure_defconfig.yaml
+++ b/test/arm/virt32_secure_defconfig.yaml
@@ -7,6 +7,7 @@ targets:
         cpu: cortex-a7
         memory: 1024M
         kernel: barebox-dt-2nd.img
+        boot_args: barebox.security.policy=devel
         display: qemu-default
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '

-- 
2.47.3



