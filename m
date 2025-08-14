Delivery-date: Thu, 14 Aug 2025 16:12:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umYhJ-000X8r-05
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 16:12:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umYhH-00014G-In
	for lore@pengutronix.de; Thu, 14 Aug 2025 16:12:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1bvAFUNjlAzozyO1VIs0GQ8jgMGMu/Z1x5NEjIqFUrA=; b=kyAsViQw0HojTo6hZElXAmLGTy
	9JJOoNvJpRF4qZ75f2RBRERlANKW5Sy297H3PaWdIoqVmcezgK8WautKUMvJ2ZjB6qSfHD6FwggMP
	SMCg+JSNJjdQocD4hGYdx0bV+/638xlvjklcPNUa2EA7sJLScf0BMXni6voXhECWD1cbFdzVajAdK
	BvktQocYOwTPAf2bzsAOiU/liiqVIvW2i/gsVxGRjR45YV/gB1QFxoq5FQRzr6SN6vQ1mhnbcJXxi
	molDB8iEx+KZ5uRlfgzTHW1GVZVIEN3YSCS+clMwaJ/Lr3+Agshnut0VviH0j8H0JjR7p7Ta/xytU
	2mAn/jIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umYgp-0000000HBfA-2iSK;
	Thu, 14 Aug 2025 14:12:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umY7u-0000000H4QO-0Ve3
	for barebox@bombadil.infradead.org;
	Thu, 14 Aug 2025 13:36:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=1bvAFUNjlAzozyO1VIs0GQ8jgMGMu/Z1x5NEjIqFUrA=; b=OFqT7E5S7a3h8ZKb3u9wx6iAdY
	oG1D4jPAwfNUGnvJCvI7R4YjkdeVP3H/KMHlu523hq2Vo8TmACN/lqWf8cvtYMj+nLEafD7kplFj2
	dMR8Okg3GsO1tbN+9eE3U+GfPA0jLtj30U6x0kFhzg70/EUsYKnhkyvcl7NDQULWUZx+XwtN4PfPM
	tv9Dy35hgxIkLar9BGzdP5BA/9c5Hcu2WGdqes9T66TPVkqJcTz8QbsLBBZXXLxrD3q09G28UlMbQ
	MR75Xi2i6rPEGTEfih7Htzod2kRCZtZmpYQI8K5cKyB0YkQDhz369jNj9cfMWZVvOg+cHnOR86Oa4
	RhRcVcmQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umY7m-0000000GPTs-1M2i
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 13:36:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umY7k-0002jt-Al; Thu, 14 Aug 2025 15:36:08 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umY7k-000GOT-0R;
	Thu, 14 Aug 2025 15:36:08 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umXfb-00Gwpv-2F;
	Thu, 14 Aug 2025 15:07:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 14 Aug 2025 15:07:00 +0200
Message-Id: <20250814130702.4039241-16-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250814130702.4039241-1-a.fatoum@pengutronix.de>
References: <20250814130702.4039241-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_143610_487615_ADB50B8D 
X-CRM114-Status: GOOD (  15.94  )
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
Subject: [PATCH RFC 15/17] boards: qemu-virt: add security policies
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

To make it easier to experiment with security policies, add four example
configurations, two via the build system and two "externally".

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/configs/virt32_secure_defconfig      |  1 +
 common/boards/qemu-virt/Makefile              |  3 +++
 common/boards/qemu-virt/board.c               |  8 +++++++
 .../qemu-virt/qemu-virt-factory.sconfig       | 24 +++++++++++++++++++
 .../qemu-virt/qemu-virt-lockdown.sconfig      | 24 +++++++++++++++++++
 security/qemu-virt-devel.sconfig              | 24 +++++++++++++++++++
 security/qemu-virt-tamper.sconfig             | 24 +++++++++++++++++++
 7 files changed, 108 insertions(+)
 create mode 100644 common/boards/qemu-virt/qemu-virt-factory.sconfig
 create mode 100644 common/boards/qemu-virt/qemu-virt-lockdown.sconfig
 create mode 100644 security/qemu-virt-devel.sconfig
 create mode 100644 security/qemu-virt-tamper.sconfig

diff --git a/arch/arm/configs/virt32_secure_defconfig b/arch/arm/configs/virt32_secure_defconfig
index 34cc49405495..ddfeea5a5066 100644
--- a/arch/arm/configs/virt32_secure_defconfig
+++ b/arch/arm/configs/virt32_secure_defconfig
@@ -292,6 +292,7 @@ CONFIG_FS_UBOOTVARFS=y
 CONFIG_SECURITY_POLICY=y
 CONFIG_SECURITY_POLICY_INIT="lockdown"
 CONFIG_SECURITY_POLICY_DEFAULT_PANIC=y
+CONFIG_SECURITY_POLICY_PATH="qemu-virt-devel.sconfig qemu-virt-tamper.sconfig"
 CONFIG_BUG_ON_DATA_CORRUPTION=y
 CONFIG_DIGEST_SHA1_ARM=y
 CONFIG_DIGEST_SHA256_ARM=y
diff --git a/common/boards/qemu-virt/Makefile b/common/boards/qemu-virt/Makefile
index 30bf4f1955ee..2caa6a20c522 100644
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
index 9882b0c31a3c..6f88f24b0690 100644
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
index 000000000000..b19d02b37f7c
--- /dev/null
+++ b/common/boards/qemu-virt/qemu-virt-factory.sconfig
@@ -0,0 +1,24 @@
+#
+# Automatically generated file; DO NOT EDIT.
+# Barebox/arm Security Configuration
+#
+SCONFIG_POLICY_NAME="factory"
+SCONFIG_SECURITY_POLICY_SELECT=y
+
+#
+# General Settings
+#
+SCONFIG_RATP=y
+# end of General Settings
+
+#
+# Boot Policy
+#
+# SCONFIG_BOOT_UNSIGNED_IMAGES is not set
+# end of Boot Policy
+
+#
+# Command Policy
+#
+# SCONFIG_CMD_GO is not set
+# end of Command Policy
diff --git a/common/boards/qemu-virt/qemu-virt-lockdown.sconfig b/common/boards/qemu-virt/qemu-virt-lockdown.sconfig
new file mode 100644
index 000000000000..e11e5e069c61
--- /dev/null
+++ b/common/boards/qemu-virt/qemu-virt-lockdown.sconfig
@@ -0,0 +1,24 @@
+#
+# Automatically generated file; DO NOT EDIT.
+# Barebox/arm Security Configuration
+#
+SCONFIG_POLICY_NAME="lockdown"
+SCONFIG_SECURITY_POLICY_SELECT=y
+
+#
+# General Settings
+#
+# SCONFIG_RATP is not set
+# end of General Settings
+
+#
+# Boot Policy
+#
+# SCONFIG_BOOT_UNSIGNED_IMAGES is not set
+# end of Boot Policy
+
+#
+# Command Policy
+#
+# SCONFIG_CMD_GO is not set
+# end of Command Policy
diff --git a/security/qemu-virt-devel.sconfig b/security/qemu-virt-devel.sconfig
new file mode 100644
index 000000000000..4513917a95cc
--- /dev/null
+++ b/security/qemu-virt-devel.sconfig
@@ -0,0 +1,24 @@
+#
+# Automatically generated file; DO NOT EDIT.
+# Barebox/arm Security Configuration
+#
+SCONFIG_POLICY_NAME="devel"
+SCONFIG_SECURITY_POLICY_SELECT=y
+
+#
+# General Settings
+#
+SCONFIG_RATP=y
+# end of General Settings
+
+#
+# Boot Policy
+#
+SCONFIG_BOOT_UNSIGNED_IMAGES=y
+# end of Boot Policy
+
+#
+# Command Policy
+#
+SCONFIG_CMD_GO=y
+# end of Command Policy
diff --git a/security/qemu-virt-tamper.sconfig b/security/qemu-virt-tamper.sconfig
new file mode 100644
index 000000000000..f2453a9936c1
--- /dev/null
+++ b/security/qemu-virt-tamper.sconfig
@@ -0,0 +1,24 @@
+#
+# Automatically generated file; DO NOT EDIT.
+# Barebox/arm Security Configuration
+#
+SCONFIG_POLICY_NAME="tamper"
+# SCONFIG_SECURITY_POLICY_SELECT is not set
+
+#
+# General Settings
+#
+# SCONFIG_RATP is not set
+# end of General Settings
+
+#
+# Boot Policy
+#
+# SCONFIG_BOOT_UNSIGNED_IMAGES is not set
+# end of Boot Policy
+
+#
+# Command Policy
+#
+# SCONFIG_CMD_GO is not set
+# end of Command Policy
-- 
2.39.5



