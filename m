Delivery-date: Thu, 25 Nov 2021 17:13:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mqHN7-0001le-6J
	for lore@lore.pengutronix.de; Thu, 25 Nov 2021 17:13:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mqHN5-0001lJ-AJ
	for lore@pengutronix.de; Thu, 25 Nov 2021 17:13:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1SIOZO4Ecwe5zznUWgX+P+ubzUzbvjK94qYbqghrYYI=; b=GpUOtK+oAj5+/1
	Ww+Ewhtx8fN82wDpm9LahCl9qdVsP8PbiOj3zl4uCblGPsG1mZWZKX3QOKwxvfkkg4NkNOKtkVWyi
	kD46Sjj3BMsQSSj6KCgpG3XQhWQioRVDI7UZdYe5MOORLZ6qcgtpTv0/xPEaT9gmpC7jSQ87YkQLi
	lphFNPFp4amTLz8h0hU6zj2B8YTb/JX3pCScM66smUgJ5syAeyxQvHkD/EyKgdasYFR6uEc0cQHW9
	Zst9WEvt8Alkd3a0plyNR75hpCG1NGa/Ou6Nt92acYqjkILWohKz5TgsbkIqYiGRp93Tv7lLqX+m2
	CrMveUW8GPZIDDdIKXHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqHLB-008Dfm-3p; Thu, 25 Nov 2021 16:11:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqHKo-008DUD-IK
 for barebox@lists.infradead.org; Thu, 25 Nov 2021 16:10:56 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mqHKf-0000bo-1P; Thu, 25 Nov 2021 17:10:45 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mqHKe-00G4XE-21; Thu, 25 Nov 2021 17:10:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 25 Nov 2021 17:10:42 +0100
Message-Id: <20211125161042.3829996-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211125161042.3829996-1-a.fatoum@pengutronix.de>
References: <20211125161042.3829996-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211125_081054_686182_6B1FD61D 
X-CRM114-Status: GOOD (  12.90  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 7/7] RISC-V: qemu-virt: add overlay for environment and state
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Like we do on ARM, let's add state and environment to RISC-V QEMU Virt
as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/Kconfig.socs                      | 10 ++++++++++
 arch/riscv/configs/virt32_defconfig          |  4 ++++
 arch/riscv/configs/virt64_defconfig          |  4 ++++
 common/boards/qemu-virt/Makefile             |  3 +++
 common/boards/qemu-virt/board.c              |  1 +
 common/boards/qemu-virt/overlay-of-flash.dts |  5 +++++
 6 files changed, 27 insertions(+)

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index b12c795041b0..9f2a4f825ebb 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -23,6 +23,16 @@ config SOC_VIRT
 	  Generates an image tht can be be booted by QEMU. The image is called
 	  barebox-dt-2nd.img
 
+config BOARD_RISCV_VIRT
+	depends on SOC_VIRT
+	bool "QEMU Virt Machine"
+	select OF_OVERLAY
+	select BOARD_QEMU_VIRT
+	default y
+	help
+	  Enables environment and state on top of QEMU RISC-V Virt machine
+	  cfi-flash.
+
 config BOARD_RISCVEMU
 	depends on SOC_VIRT
 	bool "TinyEMU Virt Machine (riscvemu)"
diff --git a/arch/riscv/configs/virt32_defconfig b/arch/riscv/configs/virt32_defconfig
index 6a8443d6d565..1d7b70fc0fbc 100644
--- a/arch/riscv/configs/virt32_defconfig
+++ b/arch/riscv/configs/virt32_defconfig
@@ -69,11 +69,14 @@ CONFIG_CMD_OF_FIXUP_STATUS=y
 CONFIG_CMD_OF_OVERLAY=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
+CONFIG_CMD_STATE=y
 CONFIG_CMD_DHRYSTONE=y
 CONFIG_NET=y
 CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_FASTBOOT=y
+CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_OF_BAREBOX_ENV_IN_FS=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_VIRTIO_CONSOLE=y
 CONFIG_DRIVER_NET_VIRTIO=y
@@ -94,6 +97,7 @@ CONFIG_FRAMEBUFFER_CONSOLE=y
 CONFIG_DRIVER_VIDEO_BOCHS_PCI=y
 CONFIG_DRIVER_VIDEO_SIMPLEFB_CLIENT=y
 CONFIG_CLOCKSOURCE_DUMMY_RATE=60000
+CONFIG_STATE_DRV=y
 CONFIG_EEPROM_AT24=y
 CONFIG_HWRNG=y
 CONFIG_HW_RANDOM_VIRTIO=y
diff --git a/arch/riscv/configs/virt64_defconfig b/arch/riscv/configs/virt64_defconfig
index 604292d4f4fd..8c66e3e574ff 100644
--- a/arch/riscv/configs/virt64_defconfig
+++ b/arch/riscv/configs/virt64_defconfig
@@ -70,11 +70,14 @@ CONFIG_CMD_OF_FIXUP_STATUS=y
 CONFIG_CMD_OF_OVERLAY=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
+CONFIG_CMD_STATE=y
 CONFIG_CMD_DHRYSTONE=y
 CONFIG_NET=y
 CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_FASTBOOT=y
+CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_OF_BAREBOX_ENV_IN_FS=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_VIRTIO_CONSOLE=y
 CONFIG_DRIVER_NET_VIRTIO=y
@@ -95,6 +98,7 @@ CONFIG_FRAMEBUFFER_CONSOLE=y
 CONFIG_DRIVER_VIDEO_BOCHS_PCI=y
 CONFIG_DRIVER_VIDEO_SIMPLEFB_CLIENT=y
 CONFIG_CLOCKSOURCE_DUMMY_RATE=60000
+CONFIG_STATE_DRV=y
 CONFIG_EEPROM_AT24=y
 CONFIG_HWRNG=y
 CONFIG_HW_RANDOM_VIRTIO=y
diff --git a/common/boards/qemu-virt/Makefile b/common/boards/qemu-virt/Makefile
index f10d39138578..88184e9a7969 100644
--- a/common/boards/qemu-virt/Makefile
+++ b/common/boards/qemu-virt/Makefile
@@ -2,3 +2,6 @@
 
 obj-y += board.o
 obj-y += overlay-of-flash.dtb.o
+ifeq ($(CONFIG_RISCV),y)
+DTC_CPP_FLAGS_overlay-of-flash.dtb := -DRISCV_VIRT=1
+endif
diff --git a/common/boards/qemu-virt/board.c b/common/boards/qemu-virt/board.c
index f10608e30343..4064409c80d3 100644
--- a/common/boards/qemu-virt/board.c
+++ b/common/boards/qemu-virt/board.c
@@ -54,6 +54,7 @@ static int virt_probe(struct device_d *dev)
 
 static const struct of_device_id virt_of_match[] = {
 	{ .compatible = "linux,dummy-virt", .data = arm_virt_init },
+	{ .compatible = "riscv-virtio" },
 	{ /* Sentinel */},
 };
 BAREBOX_DEEP_PROBE_ENABLE(virt_of_match);
diff --git a/common/boards/qemu-virt/overlay-of-flash.dts b/common/boards/qemu-virt/overlay-of-flash.dts
index ed6ad0072b55..a271a455105f 100644
--- a/common/boards/qemu-virt/overlay-of-flash.dts
+++ b/common/boards/qemu-virt/overlay-of-flash.dts
@@ -1,8 +1,13 @@
 /dts-v1/;
 /plugin/;
 
+#ifdef RISCV_VIRT
+#define PARTS_TARGET_PATH	"/soc/flash@20000000"
+#define ENV_DEVICE_PATH		"/soc/flash@20000000/partitions/partition@3c00000"
+#else
 #define PARTS_TARGET_PATH	"/flash@0"
 #define ENV_DEVICE_PATH		"/flash@0/partitions/partition@3c00000"
+#endif
 
 / {
 	fragment@0 {
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

