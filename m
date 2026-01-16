Delivery-date: Fri, 16 Jan 2026 18:16:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgnQr-0022It-0T
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 18:16:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgnQp-0008Q5-OK
	for lore@pengutronix.de; Fri, 16 Jan 2026 18:16:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ApxzVbH0M+N1IsvPItQKFdwJli/4x6ZLhtoAErNHCb0=; b=jb4R2mfH9rLe+Y
	DNqzE0GMmjBIJd7mLAGBPlKJYoNquL7wmlvT4iEVQLn/rUc7Pjw7NJ30QTKVnNIMi5kBvihai8RSk
	D+4eiQiRBwuZ2ZLxReVOKVXYZPM/T6KxKca6XyWyW9UkhzPyPW4OWPai9Qk3nhrVRtQ30+H4Jb8jI
	2vQXMM5R1EGUTp0si7IAjwLRm+FNPV6GR5WaHRAHPIe3agfUrHZ+sl1gexmNHdmtsWLw3HAIQYseG
	hNLCTlprUTYbhWAfpq13r6lwj/5UutKdHcJcIH7fXp23EzPfnOgWhrF0Knib6BwAIJtuiccoC8nss
	nyFz78y8MvXdAEVLwkmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgnQF-0000000EYj3-0Tnq;
	Fri, 16 Jan 2026 17:15:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgnQC-0000000EYiH-0Hjb
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 17:15:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vgnQ6-0008Hi-Jf; Fri, 16 Jan 2026 18:15:34 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vgnQ7-000xQq-0H;
	Fri, 16 Jan 2026 18:15:34 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vgnQ7-0000000AM7C-00vg;
	Fri, 16 Jan 2026 18:15:34 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 16 Jan 2026 18:15:14 +0100
Message-ID: <20260116171530.2467685-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260116171530.2467685-1-a.fatoum@pengutronix.de>
References: <20260116171530.2467685-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_091540_261053_1AB1DD66 
X-CRM114-Status: GOOD (  20.10  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] boards: qemu-virt: add overlay for when first flash is secure-world only
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When booting with OP-TEE, the first flash will be off-limits when
barebox starts executing and the device tree will have the flash
directly start at 0x4000000.

Detect this case and apply a different device tree overlay that
references only the non-secure flash.

To test this, one needs to prepare a flash image for QEMU with TF-A and
barebox inside a FIP image.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/boards/qemu-virt/Makefile              |   2 +
 common/boards/qemu-virt/board.c               |   9 +-
 .../qemu-virt/qemu-virt-flash-nonsecure.dtso  |   8 ++
 common/boards/qemu-virt/qemu-virt-flash.dtsi  | 105 ++++++++++++++++++
 common/boards/qemu-virt/qemu-virt-flash.dtso  | 100 +----------------
 common/boards/qemu-virt/qemu-virt-flash.h     |   4 +
 6 files changed, 128 insertions(+), 100 deletions(-)
 create mode 100644 common/boards/qemu-virt/qemu-virt-flash-nonsecure.dtso
 create mode 100644 common/boards/qemu-virt/qemu-virt-flash.dtsi

diff --git a/common/boards/qemu-virt/Makefile b/common/boards/qemu-virt/Makefile
index 457ee5cdc6c9..8d0cf2773402 100644
--- a/common/boards/qemu-virt/Makefile
+++ b/common/boards/qemu-virt/Makefile
@@ -2,11 +2,13 @@
 
 obj-y += board.o commandline.o
 obj-y += qemu-virt-flash.dtbo.o
+obj-$(CONFIG_ARM) += qemu-virt-flash-nonsecure.dtbo.o
 ifeq ($(CONFIG_RISCV),y)
 DTC_CPP_FLAGS_qemu-virt-flash.dtbo := -DCONFIG_RISCV
 endif
 ifeq ($(CONFIG_ARM),y)
 DTC_CPP_FLAGS_qemu-virt-flash.dtbo := -DCONFIG_ARM
+DTC_CPP_FLAGS_qemu-virt-flash-nonsecure.dtbo := -DCONFIG_ARM
 endif
 
 policy-y += qemu-virt-factory.sconfig
diff --git a/common/boards/qemu-virt/board.c b/common/boards/qemu-virt/board.c
index 1e3b647f11e5..f2f7beec35db 100644
--- a/common/boards/qemu-virt/board.c
+++ b/common/boards/qemu-virt/board.c
@@ -38,6 +38,7 @@ static inline void arm_virt_init(void) {}
 #endif
 
 extern char __dtbo_qemu_virt_flash_start[];
+extern char __dtbo_qemu_virt_flash_nonsecure_start[];
 
 static const struct of_device_id virt_of_match[] = {
 	{ .compatible = "linux,dummy-virt", .data = arm_virt_init },
@@ -73,8 +74,14 @@ static int virt_board_driver_init(void)
 	 * configurations, where the first flash bank is secure-world only
 	 */
 	flash = of_find_node_by_path(PARTS_TARGET_PATH_STR);
-	if (flash && of_device_is_available(flash))
+	if (flash && of_device_is_available(flash)) {
 		of_overlay_apply_dtbo(root, __dtbo_qemu_virt_flash_start);
+	} else if (IS_ENABLED(CONFIG_ARM)) {
+		flash = of_find_node_by_path("/flash@4000000");
+		if (flash && of_device_is_available(flash))
+			of_overlay_apply_dtbo(root, __dtbo_qemu_virt_flash_nonsecure_start);
+	}
+
 
 	/* fragment may have added aliases to the DT */
 	of_alias_scan();
diff --git a/common/boards/qemu-virt/qemu-virt-flash-nonsecure.dtso b/common/boards/qemu-virt/qemu-virt-flash-nonsecure.dtso
new file mode 100644
index 000000000000..9a0c9442145b
--- /dev/null
+++ b/common/boards/qemu-virt/qemu-virt-flash-nonsecure.dtso
@@ -0,0 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+/dts-v1/;
+/plugin/;
+
+#define USE_NONSECURE_SECOND_FLASH
+
+#include "qemu-virt-flash.dtsi"
diff --git a/common/boards/qemu-virt/qemu-virt-flash.dtsi b/common/boards/qemu-virt/qemu-virt-flash.dtsi
new file mode 100644
index 000000000000..582c213c948e
--- /dev/null
+++ b/common/boards/qemu-virt/qemu-virt-flash.dtsi
@@ -0,0 +1,105 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+/dts-v1/;
+/plugin/;
+
+#include "qemu-virt-flash.h"
+
+&{PARTS_TARGET_PATH} {
+#ifdef VIRTUAL_REG
+	virtual-reg = <VIRTUAL_REG>;
+#endif
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "initramfs";
+			reg = <0x0 0x3c00000>;
+		};
+
+		environment_flash: partition@3c00000 {
+			label = "barebox-environment";
+			reg = <0x3c00000 0x200000>;
+		};
+
+		backend_state_flash: partition@3e00000 {
+			label = "barebox-state";
+			reg = <0x3e00000 0x200000>;
+		};
+	};
+};
+
+&{/chosen} {
+	environment {
+		compatible = "barebox,environment";
+		device-path = ENV_DEVICE_PATH_STR;
+	};
+};
+
+&{/} {
+	aliases {
+		state = "/state";
+	};
+
+	state {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "barebox,state";
+		magic = <0x290cf8c6>;
+		backend-type = "raw";
+		backend = < &backend_state_flash >;
+		backend-stridesize = <0x200>;
+
+		bootstate {
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			system0 {
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				remaining_attempts@0 {
+					reg = <0x0 0x4>;
+					type = "uint32";
+					default = <3>;
+				};
+
+				priority@4 {
+					reg = <0x4 0x4>;
+					type = "uint32";
+					default = <20>;
+				};
+			};
+
+			system1 {
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				remaining_attempts@8 {
+					reg = <0x8 0x4>;
+					type = "uint32";
+					default = <0>;
+				};
+
+				priority@c {
+					reg = <0xc 0x4>;
+					type = "uint32";
+					default = <0>;
+				};
+			};
+
+			last_chosen@10 {
+				reg = <0x10 0x4>;
+				type = "uint32";
+			};
+
+			attempts_locked@14 {
+				reg = <0x14 0x4>;
+				type = "uint32";
+			};
+		};
+	};
+};
+
diff --git a/common/boards/qemu-virt/qemu-virt-flash.dtso b/common/boards/qemu-virt/qemu-virt-flash.dtso
index 0020ecfcea98..ac9fd34787a6 100644
--- a/common/boards/qemu-virt/qemu-virt-flash.dtso
+++ b/common/boards/qemu-virt/qemu-virt-flash.dtso
@@ -3,102 +3,4 @@
 /dts-v1/;
 /plugin/;
 
-#include "qemu-virt-flash.h"
-
-&{PARTS_TARGET_PATH} {
-#ifdef CONFIG_ARM
-	virtual-reg = <0x1000>;
-#endif
-	partitions {
-		compatible = "fixed-partitions";
-		#address-cells = <1>;
-		#size-cells = <1>;
-
-		partition@0 {
-			label = "initramfs";
-			reg = <0x0 0x3c00000>;
-		};
-
-		environment_flash: partition@3c00000 {
-			label = "barebox-environment";
-			reg = <0x3c00000 0x200000>;
-		};
-
-		backend_state_flash: partition@3e00000 {
-			label = "barebox-state";
-			reg = <0x3e00000 0x200000>;
-		};
-	};
-};
-
-&{/chosen} {
-	environment {
-		compatible = "barebox,environment";
-		device-path = ENV_DEVICE_PATH_STR;
-	};
-};
-
-&{/} {
-	aliases {
-		state = "/state";
-	};
-
-	state {
-		#address-cells = <1>;
-		#size-cells = <1>;
-		compatible = "barebox,state";
-		magic = <0x290cf8c6>;
-		backend-type = "raw";
-		backend = < &backend_state_flash >;
-		backend-stridesize = <0x200>;
-
-		bootstate {
-			#address-cells = <1>;
-			#size-cells = <1>;
-
-			system0 {
-				#address-cells = <1>;
-				#size-cells = <1>;
-
-				remaining_attempts@0 {
-					reg = <0x0 0x4>;
-					type = "uint32";
-					default = <3>;
-				};
-
-				priority@4 {
-					reg = <0x4 0x4>;
-					type = "uint32";
-					default = <20>;
-				};
-			};
-
-			system1 {
-				#address-cells = <1>;
-				#size-cells = <1>;
-
-				remaining_attempts@8 {
-					reg = <0x8 0x4>;
-					type = "uint32";
-					default = <0>;
-				};
-
-				priority@c {
-					reg = <0xc 0x4>;
-					type = "uint32";
-					default = <0>;
-				};
-			};
-
-			last_chosen@10 {
-				reg = <0x10 0x4>;
-				type = "uint32";
-			};
-
-			attempts_locked@14 {
-				reg = <0x14 0x4>;
-				type = "uint32";
-			};
-		};
-	};
-};
+#include "qemu-virt-flash.dtsi"
diff --git a/common/boards/qemu-virt/qemu-virt-flash.h b/common/boards/qemu-virt/qemu-virt-flash.h
index 85f67ff03057..e7c67b8e383a 100644
--- a/common/boards/qemu-virt/qemu-virt-flash.h
+++ b/common/boards/qemu-virt/qemu-virt-flash.h
@@ -8,9 +8,13 @@
 #ifdef CONFIG_RISCV
 #define PARTS_TARGET_PATH	/flash@20000000
 #define ENV_DEVICE_PATH		/flash@20000000/partitions/partition@3c00000
+#elif defined(CONFIG_ARM) && defined(USE_NONSECURE_SECOND_FLASH)
+#define PARTS_TARGET_PATH	/flash@4000000
+#define ENV_DEVICE_PATH		/flash@4000000/partitions/partition@0
 #elif defined CONFIG_ARM
 #define PARTS_TARGET_PATH	/flash@0
 #define ENV_DEVICE_PATH		/flash@0/partitions/partition@3c00000
+#define VIRTUAL_REG		0x1000
 #else
 #define PARTS_TARGET_PATH
 #define ENV_DEVICE_PATH
-- 
2.47.3



