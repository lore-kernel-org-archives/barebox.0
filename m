Delivery-date: Fri, 19 Dec 2025 11:37:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXry-00DAaT-0O
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:37:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXrl-0005ie-Hi
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:37:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6QtHNaNdRn2hXusGuV6BrXTElvHjr1/uxO1CJRyaeuQ=; b=1xmUX4/A0pMchSOGwYtFe1SJRq
	NzxL/qQwKI3rhupKQpOWJ68F1AXZCQZ+eE9+ZXQCw6GEIXzpdnJ1Q/t4G7WEBgD3jzg0t3sPnGZ3I
	l7KH3tll9j1qGZg64ONmbp4h44PxHXxsLzip1G6Q1rkehnceJHtHbPc7LXmkI68GJ7+P040KGiFHQ
	QEdsJvLipIWIL24q7AAyawY/Guvh4MUftHYOAlLEh9t96kBXXuzyWC3QsHNLs3fpBiH2FezWSK6E4
	iNYWjUItThjUWjr7K8WYzj4ecE37fQ8IG3L3w69uTWcEw4j05onYzjt3txaJmYL8mXvDO26xekgyg
	qnxQs4xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXr0-0000000A67S-09lZ;
	Fri, 19 Dec 2025 10:36:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXqs-0000000A5up-14J7
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 10:36:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqq-0004bQ-Ny; Fri, 19 Dec 2025 11:36:48 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqq-006RUg-1j;
	Fri, 19 Dec 2025 11:36:48 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVh-0000000320L-2hd6;
	Fri, 19 Dec 2025 11:14:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	=?UTF-8?q?Jan=20L=C3=BCbbe?= <j.luebbe@pengutronix.de>
Date: Fri, 19 Dec 2025 10:21:01 +0100
Message-ID: <20251219101453.2806980-26-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
References: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_023650_289498_05E2E4EE 
X-CRM114-Status: GOOD (  14.17  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 25/49] boards: qemu-virt: drop fitimage-pubkey.dts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

CONFIG_BOOTM_FITIMAGE_PUBKEY was removed in v2025.09.0 and the device
tree snippet that we merged at runtime into the DT we receive from QEMU
is now empty and no longer serves a purpose.

Remove it as it's actually detrimental: of_merge_nodes is a low-level
operation that doesn't handle duplicate nodes and when
CONFIG_EXTERNAL_DTS_FRAGMENTS adds a state node of its own, the barebox
barebox live device tree ends up with the state twice.

Reported-by: Jan Lübbe <j.luebbe@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20251126140914.4081895-1-a.fatoum@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
(cherry picked from commit f018a6e4606ef31c6975af6b960aa7824f79df73)
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/boards/qemu-virt/Makefile            | 3 +--
 common/boards/qemu-virt/board.c             | 5 +----
 common/boards/qemu-virt/fitimage-pubkey.dts | 3 ---
 3 files changed, 2 insertions(+), 9 deletions(-)
 delete mode 100644 common/boards/qemu-virt/fitimage-pubkey.dts

diff --git a/common/boards/qemu-virt/Makefile b/common/boards/qemu-virt/Makefile
index 30bf4f1955ee..7f47c9b08544 100644
--- a/common/boards/qemu-virt/Makefile
+++ b/common/boards/qemu-virt/Makefile
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
 obj-y += board.o
-obj-y += qemu-virt-flash.dtbo.o fitimage-pubkey.dtb.o
+obj-y += qemu-virt-flash.dtbo.o
 ifeq ($(CONFIG_RISCV),y)
 DTC_CPP_FLAGS_qemu-virt-flash.dtbo := -DCONFIG_RISCV
 endif
@@ -9,5 +9,4 @@ ifeq ($(CONFIG_ARM),y)
 DTC_CPP_FLAGS_qemu-virt-flash.dtbo := -DCONFIG_ARM
 endif
 
-clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
 clean-files += *.dtbo *.dtbo.S .*.dtso
diff --git a/common/boards/qemu-virt/board.c b/common/boards/qemu-virt/board.c
index 9882b0c31a3c..a8884f26f9c1 100644
--- a/common/boards/qemu-virt/board.c
+++ b/common/boards/qemu-virt/board.c
@@ -54,7 +54,7 @@ BAREBOX_DEEP_PROBE_ENABLE(virt_of_match);
 static int virt_board_driver_init(void)
 {
 	struct device_node *root = of_get_root_node();
-	struct device_node *flash, *pubkey;
+	struct device_node *flash;
 	const struct of_device_id *id;
 	void (*init)(void);
 
@@ -75,9 +75,6 @@ static int virt_board_driver_init(void)
 	if (flash && of_device_is_available(flash))
 		of_overlay_apply_dtbo(root, __dtbo_qemu_virt_flash_start);
 
-	pubkey = of_unflatten_dtb(__dtb_fitimage_pubkey_start, INT_MAX);
-	of_merge_nodes(root, pubkey);
-
 	/* fragment may have added aliases to the DT */
 	of_alias_scan();
 
diff --git a/common/boards/qemu-virt/fitimage-pubkey.dts b/common/boards/qemu-virt/fitimage-pubkey.dts
deleted file mode 100644
index 1419fa0da5d5..000000000000
--- a/common/boards/qemu-virt/fitimage-pubkey.dts
+++ /dev/null
@@ -1,3 +0,0 @@
-/dts-v1/;
-
-/{ };
-- 
2.47.3



