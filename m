Delivery-date: Tue, 22 Aug 2023 09:49:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qYM8Z-004TsS-Sv
	for lore@lore.pengutronix.de; Tue, 22 Aug 2023 09:49:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qYM8X-0002Bt-Ps
	for lore@pengutronix.de; Tue, 22 Aug 2023 09:49:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wqq43lwWCYGR4hRFyL4pLoPwvAdiuGEwWZptZ8YSsvU=; b=S7JeVV1+8/6gtRWeTPrTXaiZnz
	hA+wgy7TSny0iUcReD9PK252pkYK33tuRC/OVLXYJZrkJrS7ZFPl0IxWnhtfrwBSV0YTETLJeAu4Z
	Jpg7AKbhRyf+UZMnsl45o5usxndQ3mADHwvbEJXJw+qYpeoNBvpjP0nZ+sIEEpzlaGq5yvfcE6lPL
	J2ViXCQ/3aGICs9UfOb+FKi52KJvWOuZJhV/Xqhw1j1QyOT0aZWctbW39YBWCo+USS9+9oo8D1gZ9
	LNLNsjvvsoMOqmdNVPeunMc2NwIFl08XHsZCHzrcJ0rPFiQ5wRRJ8SAUsKnEV4CLBY9cX3CIwYDWF
	FVmtLWrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYM7C-00FO7q-2T;
	Tue, 22 Aug 2023 07:47:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYM78-00FO61-0b
	for barebox@lists.infradead.org;
	Tue, 22 Aug 2023 07:47:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qYM73-0001yb-4w; Tue, 22 Aug 2023 09:47:41 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qYM72-000lPS-HL; Tue, 22 Aug 2023 09:47:40 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qYM72-00GNwr-0J;
	Tue, 22 Aug 2023 09:47:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 22 Aug 2023 09:47:38 +0200
Message-Id: <20230822074738.3905283-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230822074738.3905283-1-a.fatoum@pengutronix.de>
References: <20230822074738.3905283-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230822_004746_225399_459DEBDD 
X-CRM114-Status: GOOD (  16.17  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 3/3] boards: qemu-virt: apply state/env overlay only if flash exists
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

/flash@0 on ARM64 may not always exist:

  - Older Qemu versions place the flash at /soc/flash@0

  - With secure=on, /flash@0 is renamed to /secflash@0 and is
    off-limits to barebox running in the normal world

Solve both issues by only applying the overlay if the node being
partitioned actually exists and is not disabled in the DT.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/boards/qemu-virt/Makefile             |  4 ++--
 common/boards/qemu-virt/board.c              | 14 ++++++++++---
 common/boards/qemu-virt/qemu-virt-flash.dtso | 12 +++--------
 common/boards/qemu-virt/qemu-virt-flash.h    | 22 ++++++++++++++++++++
 4 files changed, 38 insertions(+), 14 deletions(-)
 create mode 100644 common/boards/qemu-virt/qemu-virt-flash.h

diff --git a/common/boards/qemu-virt/Makefile b/common/boards/qemu-virt/Makefile
index b6883ff7672e..30bf4f1955ee 100644
--- a/common/boards/qemu-virt/Makefile
+++ b/common/boards/qemu-virt/Makefile
@@ -3,10 +3,10 @@
 obj-y += board.o
 obj-y += qemu-virt-flash.dtbo.o fitimage-pubkey.dtb.o
 ifeq ($(CONFIG_RISCV),y)
-DTC_CPP_FLAGS_qemu-virt-flash.dtbo := -DRISCV_VIRT=1
+DTC_CPP_FLAGS_qemu-virt-flash.dtbo := -DCONFIG_RISCV
 endif
 ifeq ($(CONFIG_ARM),y)
-DTC_CPP_FLAGS_qemu-virt-flash.dtbo := -DARM_VIRT=1
+DTC_CPP_FLAGS_qemu-virt-flash.dtbo := -DCONFIG_ARM
 endif
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
diff --git a/common/boards/qemu-virt/board.c b/common/boards/qemu-virt/board.c
index 4c6df5e30252..b9df129834d9 100644
--- a/common/boards/qemu-virt/board.c
+++ b/common/boards/qemu-virt/board.c
@@ -7,6 +7,7 @@
 #include <init.h>
 #include <of.h>
 #include <deep-probe.h>
+#include "qemu-virt-flash.h"
 
 #ifdef CONFIG_64BIT
 #define MACHINE "virt64"
@@ -53,7 +54,7 @@ BAREBOX_DEEP_PROBE_ENABLE(virt_of_match);
 static int virt_board_driver_init(void)
 {
 	struct device_node *root = of_get_root_node();
-	struct device_node *overlay, *pubkey;
+	struct device_node *flash, *overlay, *pubkey;
 	const struct of_device_id *id;
 	void (*init)(void);
 
@@ -66,8 +67,15 @@ static int virt_board_driver_init(void)
 		init();
 	}
 
-	overlay = of_unflatten_dtb(__dtbo_qemu_virt_flash_start, INT_MAX);
-	of_overlay_apply_tree(root, overlay);
+	/*
+	 * Catch both old Qemu versions that place /flash in /soc and
+	 * configurations, where the first flash bank is secure-world only
+	 */
+	flash = of_find_node_by_path(PARTS_TARGET_PATH_STR);
+	if (flash && of_device_is_available(flash)) {
+		overlay = of_unflatten_dtb(__dtbo_qemu_virt_flash_start, INT_MAX);
+		of_overlay_apply_tree(root, overlay);
+	}
 
 	pubkey = of_unflatten_dtb(__dtb_fitimage_pubkey_start, INT_MAX);
 	of_merge_nodes(root, pubkey);
diff --git a/common/boards/qemu-virt/qemu-virt-flash.dtso b/common/boards/qemu-virt/qemu-virt-flash.dtso
index 16b1c7923d58..087568a26d2a 100644
--- a/common/boards/qemu-virt/qemu-virt-flash.dtso
+++ b/common/boards/qemu-virt/qemu-virt-flash.dtso
@@ -3,16 +3,10 @@
 /dts-v1/;
 /plugin/;
 
-#ifdef RISCV_VIRT
-#define PARTS_TARGET_PATH	/flash@20000000
-#define ENV_DEVICE_PATH		"/flash@20000000/partitions/partition@3c00000"
-#elif defined ARM_VIRT
-#define PARTS_TARGET_PATH	/flash@0
-#define ENV_DEVICE_PATH		"/flash@0/partitions/partition@3c00000"
-#endif
+#include "qemu-virt-flash.h"
 
 &{PARTS_TARGET_PATH} {
-#ifdef ARM_VIRT
+#ifdef CONFIG_ARM
 	virtual-reg = <0x1000>;
 #endif
 	partitions {
@@ -40,7 +34,7 @@ backend_state_flash: partition@3e00000 {
 &{/chosen} {
 	environment {
 		compatible = "barebox,environment";
-		device-path = ENV_DEVICE_PATH;
+		device-path = ENV_DEVICE_PATH_STR;
 	};
 };
 
diff --git a/common/boards/qemu-virt/qemu-virt-flash.h b/common/boards/qemu-virt/qemu-virt-flash.h
new file mode 100644
index 000000000000..85f67ff03057
--- /dev/null
+++ b/common/boards/qemu-virt/qemu-virt-flash.h
@@ -0,0 +1,22 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
+#ifndef __QEMU_VIRT_FLASH_H__
+#define __QEMU_VIRT_FLASH_H__
+
+#include <linux/stringify.h>
+
+#ifdef CONFIG_RISCV
+#define PARTS_TARGET_PATH	/flash@20000000
+#define ENV_DEVICE_PATH		/flash@20000000/partitions/partition@3c00000
+#elif defined CONFIG_ARM
+#define PARTS_TARGET_PATH	/flash@0
+#define ENV_DEVICE_PATH		/flash@0/partitions/partition@3c00000
+#else
+#define PARTS_TARGET_PATH
+#define ENV_DEVICE_PATH
+#endif
+
+#define PARTS_TARGET_PATH_STR	__stringify(PARTS_TARGET_PATH)
+#define ENV_DEVICE_PATH_STR	__stringify(ENV_DEVICE_PATH)
+
+#endif
-- 
2.39.2



