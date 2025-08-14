Delivery-date: Thu, 14 Aug 2025 16:12:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umYhG-000X89-0z
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 16:12:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umYhE-00013S-Vn
	for lore@pengutronix.de; Thu, 14 Aug 2025 16:12:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SSYJgFZK7tHZIp74GDq4lTe7RZpMiaLgzGHQ4fSxIsU=; b=rXAXbKcx6S7S+o0tijudgWCasW
	ykTmcUg7UsjwAHZGW2zRQThnGW5uT8fKLKznRuwmnxNvaNFxn0hz9n2zzxqX4aoFXeJ1PE4fFXF7p
	Fr7sQodTRln+Cou5udFEfEoX+JJLS8/TZumu2prKN4x5pSoFwrm0zaCyVwe7rao9iKVXK+BB+5Tqi
	FFBN/pBJOyAIsev2LE+Bxln2DbYU1razcsafAHk5oYqfQIER0dLAj6uQrEDcou9QG/BDQ7x4EdgKm
	abHH86DAfIBPBfkb8RmdmWyFuHNDnf1Cg5otwcrQKFPJYRxncn8p+2QhPpIDBy0jHgJo1qFJryN+N
	PXTDEKzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umYgp-0000000HBep-026K;
	Thu, 14 Aug 2025 14:12:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umY7r-0000000H4Pm-40wI
	for barebox@bombadil.infradead.org;
	Thu, 14 Aug 2025 13:36:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=SSYJgFZK7tHZIp74GDq4lTe7RZpMiaLgzGHQ4fSxIsU=; b=hb4Ero3ThUhLwyIgm41aOTj/F/
	5WyI4qkR1X/mwhJdpaJfNH+yJ1bVXoBRqrIpiFwn5JRSbPgoIZJmxrdfXNDPOAcq4YUbiVGdWAhNE
	XlcsekNmtBeBXGslby61P1/ZKR4LGOdqPvy2tIHXZ/1gJzF3d92AbRaG8TgR9Esgvt2nLNmEdSCnu
	RvFFCeqzRTI8SrC0JGwafUHmFVGhchLXwZfGkVjTHkf6FSEt7i7kULLjxxOGEuKt4moNJzvatYGEF
	HsqQu+1jucoyoZEA58HIXdvHZA9W0xwR78q23CqD+P8jsurdjw30QEjPwwCKqoRhbUN0DUM19SNn8
	3/jmIwBQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umY7m-0000000GPTq-0vwE
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 13:36:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umY7k-0002jQ-62; Thu, 14 Aug 2025 15:36:08 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umY7j-000GOK-38;
	Thu, 14 Aug 2025 15:36:07 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umXfb-00Gwpv-2O;
	Thu, 14 Aug 2025 15:07:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 14 Aug 2025 15:07:01 +0200
Message-Id: <20250814130702.4039241-17-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250814130702.4039241-1-a.fatoum@pengutronix.de>
References: <20250814130702.4039241-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_143610_403824_7632722E 
X-CRM114-Status: GOOD (  18.25  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH RFC 16/17] boards: qemu-virt: allow setting policy from command line
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Security policies will normally be selected after consulting efuses,
secure boot status from the EEPROM or unlock tokens.

For easier experimentation in QEMU, allow setting the security policy
via the command line arguments, e.g.:

  pytest --bootarg barebox.security.policy=lockdown

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/boards/qemu-virt/Makefile      |  2 +-
 common/boards/qemu-virt/board.c       |  3 ++
 common/boards/qemu-virt/commandline.c | 74 +++++++++++++++++++++++++++
 common/boards/qemu-virt/commandline.h |  9 ++++
 test/arm/virt32_secure_defconfig.yaml |  1 +
 5 files changed, 88 insertions(+), 1 deletion(-)
 create mode 100644 common/boards/qemu-virt/commandline.c
 create mode 100644 common/boards/qemu-virt/commandline.h

diff --git a/common/boards/qemu-virt/Makefile b/common/boards/qemu-virt/Makefile
index 2caa6a20c522..7e1440aecff0 100644
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
index 6f88f24b0690..6ad354218927 100644
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
index 000000000000..16e4750e123d
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
index 000000000000..8759784e07c5
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
index 618cb6a0fb05..a1537c634811 100644
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
2.39.5



