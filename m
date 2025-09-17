Delivery-date: Wed, 17 Sep 2025 16:19:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyt03-0046RA-07
	for lore@lore.pengutronix.de;
	Wed, 17 Sep 2025 16:19:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyt00-0003ox-Ke
	for lore@pengutronix.de; Wed, 17 Sep 2025 16:19:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wEzqYFGNXgR96zwAplhultkSaFZ8BRixPli7f/vhJh4=; b=Ang134SG3eWKjReRyjZFER4Y42
	9ylLJVyTCn0T4serGPa5RhA+r9HPHm8XI3m1MEb/9Mp5wP7CE9ttUKsmT3xwXo64jd8llBsbtc5nD
	LLIK0A9yt3ZKLHjNTLKtVu70WK2RCwm/wi6LVqf4we49YPTwKEDLsC2QEXEL0vY7Zq/W9Jr0ERwi0
	l46febxcZONJEEAe/dXfZaCfGai4Pm2rILhJMpT2qC95u43505Gr2GbfG7ZrZlCbitM+eHjYvQRFu
	RSdkJi3vpIdQITL99KSK8hKKvv0bbI6hrS+xtcnHNbD9BFDh/ZEd67aSzgi/fGOaImS5Yixcl/zCE
	r1rofIlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyszQ-0000000C8MZ-05Ql;
	Wed, 17 Sep 2025 14:18:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyszH-0000000C87e-1yEj
	for barebox@lists.infradead.org;
	Wed, 17 Sep 2025 14:18:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyszF-00032U-VR; Wed, 17 Sep 2025 16:18:21 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyszF-001mGn-2V;
	Wed, 17 Sep 2025 16:18:21 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uysbA-0000000CZtI-34US;
	Wed, 17 Sep 2025 15:53:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Sep 2025 15:53:35 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250917-security-policies-v2-15-f30769a3ff51@pengutronix.de>
References: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
In-Reply-To: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758117208; l=6533;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=ZEx/lE5hCnaViOKoUukBb47Ro+oB7KRv/AIaesyBT/E=;
 b=NnoyxAmMyNiOR6ducbRuOpIr4LxVEpWc4KooEmUVQwwTcorG2zjbQTahD5KnQwGm7mn6eEIAP
 /cjSmxeiLWqApOLF2zrHI5W9R2a27hC8ZbhCNgU2HcA2ZfWJJrYSWN1
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_071823_670791_0AB78162 
X-CRM114-Status: GOOD (  15.34  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Ahmad Fatoum <a.fatoum@barebox.org>
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
Subject: [PATCH v2 15/24] boards: qemu-virt: add security policies
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

To make it easier to experiment with security policies, add four example
configurations, two via the build system and two "externally".

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/configs/virt32_secure_defconfig           |  1 +
 common/boards/qemu-virt/Makefile                   |  3 ++
 common/boards/qemu-virt/board.c                    |  8 +++++
 common/boards/qemu-virt/qemu-virt-factory.sconfig  | 36 ++++++++++++++++++++++
 common/boards/qemu-virt/qemu-virt-lockdown.sconfig | 35 +++++++++++++++++++++
 security/qemu-virt-devel.sconfig                   | 36 ++++++++++++++++++++++
 security/qemu-virt-tamper.sconfig                  | 35 +++++++++++++++++++++
 7 files changed, 154 insertions(+)

diff --git a/arch/arm/configs/virt32_secure_defconfig b/arch/arm/configs/virt32_secure_defconfig
index 34cc49405495b33b4f78e078dfbcd951c433fcd8..09c98e5e4dc88aa22b3aa10db38efd7b7cac2310 100644
--- a/arch/arm/configs/virt32_secure_defconfig
+++ b/arch/arm/configs/virt32_secure_defconfig
@@ -292,6 +292,7 @@ CONFIG_FS_UBOOTVARFS=y
 CONFIG_SECURITY_POLICY=y
 CONFIG_SECURITY_POLICY_INIT="lockdown"
 CONFIG_SECURITY_POLICY_DEFAULT_PANIC=y
+CONFIG_SECURITY_POLICY_PATH="security/qemu-virt-devel.sconfig security/qemu-virt-tamper.sconfig"
 CONFIG_BUG_ON_DATA_CORRUPTION=y
 CONFIG_DIGEST_SHA1_ARM=y
 CONFIG_DIGEST_SHA256_ARM=y
diff --git a/common/boards/qemu-virt/Makefile b/common/boards/qemu-virt/Makefile
index 30bf4f1955ee9d306b46523863e247e4cf94ab75..2caa6a20c522ac68fd629f38e51fdf1423db4b09 100644
--- a/common/boards/qemu-virt/Makefile
+++ b/common/boards/qemu-virt/Makefile
@@ -9,5 +9,8 @@ ifeq ($(CONFIG_ARM),y)
 DTC_CPP_FLAGS_qemu-virt-flash.dtbo := -DCONFIG_ARM
 endif
 
+policy-y += qemu-virt-factory.sconfig
+policy-y += qemu-virt-lockdown.sconfig
+
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
 clean-files += *.dtbo *.dtbo.S .*.dtso
diff --git a/common/boards/qemu-virt/board.c b/common/boards/qemu-virt/board.c
index 9882b0c31a3cf9a97ef0e963653c85a3ead961bb..6f88f24b0690c2562b3b3718a56c9f5c46a4455a 100644
--- a/common/boards/qemu-virt/board.c
+++ b/common/boards/qemu-virt/board.c
@@ -7,6 +7,7 @@
 #include <init.h>
 #include <of.h>
 #include <deep-probe.h>
+#include <security/policy.h>
 #include "qemu-virt-flash.h"
 
 #ifdef CONFIG_64BIT
@@ -83,6 +84,13 @@ static int virt_board_driver_init(void)
 
 	/* of_probe() will happen later at of_populate_initcall */
 
+	security_policy_add(qemu_virt_factory);
+	security_policy_add(qemu_virt_lockdown);
+	/*
+	 * qemu_virt_devel & qemu_virt_tamper intentionally not added here,
+	 * so the test suite can exercise CONFIG_SECURITY_POLICY_PATH.
+	 */
+
 	return 0;
 }
 postcore_initcall(virt_board_driver_init);
diff --git a/common/boards/qemu-virt/qemu-virt-factory.sconfig b/common/boards/qemu-virt/qemu-virt-factory.sconfig
new file mode 100644
index 0000000000000000000000000000000000000000..7fb35e9b722d1694ed089f209c9d1af5892557ca
--- /dev/null
+++ b/common/boards/qemu-virt/qemu-virt-factory.sconfig
@@ -0,0 +1,36 @@
+#
+# Automatically generated file; DO NOT EDIT.
+# Barebox Security Configuration
+#
+SCONFIG_POLICY_NAME="factory"
+
+#
+# General Settings
+#
+SCONFIG_CONSOLE_INPUT=y
+SCONFIG_SHELL=y
+SCONFIG_SHELL_INTERACTIVE=y
+SCONFIG_ENVIRONMENT_LOAD=y
+SCONFIG_RATP=y
+# SCONFIG_FASTBOOT_CMD_OEM is not set
+# end of General Settings
+
+#
+# Boot Policy
+#
+# SCONFIG_BOOT_UNSIGNED_IMAGES is not set
+# end of Boot Policy
+
+#
+# USB Gadget Policy
+#
+SCONFIG_USB_GADGET=y
+# end of USB Gadget Policy
+
+#
+# Command Policy
+#
+# SCONFIG_CMD_GO is not set
+# end of Command Policy
+
+SCONFIG_FS_EXTERNAL=y
diff --git a/common/boards/qemu-virt/qemu-virt-lockdown.sconfig b/common/boards/qemu-virt/qemu-virt-lockdown.sconfig
new file mode 100644
index 0000000000000000000000000000000000000000..04763d2233b41dc53e187641c45c48c9c1115a7d
--- /dev/null
+++ b/common/boards/qemu-virt/qemu-virt-lockdown.sconfig
@@ -0,0 +1,35 @@
+#
+# Automatically generated file; DO NOT EDIT.
+# Barebox Security Configuration
+#
+SCONFIG_POLICY_NAME="lockdown"
+
+#
+# General Settings
+#
+# SCONFIG_CONSOLE_INPUT is not set
+SCONFIG_SHELL=y
+# SCONFIG_ENVIRONMENT_LOAD is not set
+# SCONFIG_RATP is not set
+# SCONFIG_FASTBOOT_CMD_OEM is not set
+# end of General Settings
+
+#
+# Boot Policy
+#
+# SCONFIG_BOOT_UNSIGNED_IMAGES is not set
+# end of Boot Policy
+
+#
+# USB Gadget Policy
+#
+# SCONFIG_USB_GADGET is not set
+# end of USB Gadget Policy
+
+#
+# Command Policy
+#
+# SCONFIG_CMD_GO is not set
+# end of Command Policy
+
+# SCONFIG_FS_EXTERNAL is not set
diff --git a/security/qemu-virt-devel.sconfig b/security/qemu-virt-devel.sconfig
new file mode 100644
index 0000000000000000000000000000000000000000..423374dfbdef5a22f40d30872f6eeb05590e9f3f
--- /dev/null
+++ b/security/qemu-virt-devel.sconfig
@@ -0,0 +1,36 @@
+#
+# Automatically generated file; DO NOT EDIT.
+# Barebox Security Configuration
+#
+SCONFIG_POLICY_NAME="devel"
+
+#
+# General Settings
+#
+SCONFIG_CONSOLE_INPUT=y
+SCONFIG_SHELL=y
+SCONFIG_SHELL_INTERACTIVE=y
+SCONFIG_ENVIRONMENT_LOAD=y
+SCONFIG_RATP=y
+SCONFIG_FASTBOOT_CMD_OEM=y
+# end of General Settings
+
+#
+# Boot Policy
+#
+SCONFIG_BOOT_UNSIGNED_IMAGES=y
+# end of Boot Policy
+
+#
+# USB Gadget Policy
+#
+SCONFIG_USB_GADGET=y
+# end of USB Gadget Policy
+
+#
+# Command Policy
+#
+SCONFIG_CMD_GO=y
+# end of Command Policy
+
+SCONFIG_FS_EXTERNAL=y
diff --git a/security/qemu-virt-tamper.sconfig b/security/qemu-virt-tamper.sconfig
new file mode 100644
index 0000000000000000000000000000000000000000..10058c5b61010e64356df62269260c7a5bb33120
--- /dev/null
+++ b/security/qemu-virt-tamper.sconfig
@@ -0,0 +1,35 @@
+#
+# Automatically generated file; DO NOT EDIT.
+# Barebox Security Configuration
+#
+SCONFIG_POLICY_NAME="tamper"
+
+#
+# General Settings
+#
+# SCONFIG_CONSOLE_INPUT is not set
+# SCONFIG_SHELL is not set
+# SCONFIG_ENVIRONMENT_LOAD is not set
+# SCONFIG_RATP is not set
+# SCONFIG_FASTBOOT_CMD_OEM is not set
+# end of General Settings
+
+#
+# Boot Policy
+#
+# SCONFIG_BOOT_UNSIGNED_IMAGES is not set
+# end of Boot Policy
+
+#
+# USB Gadget Policy
+#
+# SCONFIG_USB_GADGET is not set
+# end of USB Gadget Policy
+
+#
+# Command Policy
+#
+# SCONFIG_CMD_GO is not set
+# end of Command Policy
+
+# SCONFIG_FS_EXTERNAL is not set

-- 
2.47.3



