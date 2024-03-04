Delivery-date: Mon, 04 Mar 2024 20:01:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDZS-008ctL-30
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:01:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDZR-0005VK-OV
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:01:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LKekPn0HufGiBFbRxL9JWW34LlVhdbVJRZw2mHiSP+s=; b=EvhIzcLpJLdbWJapCqL2ZpsWhK
	CQqyPkQH3uBuqJMRKESMZwkk+uQkcMies48DGZKJ7rE/vmH8Tz9quhMxhbiI8FIWqBe6WgkqBdkGn
	z75WcBF/PFIt4gR8p1NyRtK/bTmNFi5YOSh8Fh2ICMC14TR1tn/9Fo/C3KpKEy/p8AY7dUC52h2jZ
	G0ym99c0LNa989j7NwwIBrQHP4WtUdoEPYLlOvYOt654gAMolmTKh+V0mn8htuhPMRlMNN5sZpbeQ
	Q6zqSp/Q2B5TuHIs3i7kLmD1Xx6qYoaD3Bvm1dRmVB0E4MhuxQS8p8cZglSJ+qbbymWErD8qrrJk4
	Gqp00KMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDYw-0000000AHgp-1TLk;
	Mon, 04 Mar 2024 19:01:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDYL-0000000AHPs-3JBC
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:00:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYK-0004Vk-G7; Mon, 04 Mar 2024 20:00:44 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYK-004PFo-1O; Mon, 04 Mar 2024 20:00:44 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYJ-00Ed9V-1P;
	Mon, 04 Mar 2024 20:00:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:58:53 +0100
Message-Id: <20240304190038.3486881-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_110046_451577_5BBCCA14 
X-CRM114-Status: GOOD (  13.09  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 008/113] efi: payload: rename CONFIG_EFI_BOOTUP to CONFIG_EFI_PAYLOAD
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The symbol is internal, so we don't break anything by renaming it.
CONFIG_EFI_PAYLOAD is clearer in intent, as BOOTUP doesn't clearly
indificate whether barebox would act as EFI payload or as EFI loader.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/x86/Kconfig            | 2 +-
 drivers/Makefile            | 2 +-
 drivers/block/Kconfig       | 2 +-
 drivers/bus/Kconfig         | 2 +-
 drivers/clocksource/Kconfig | 4 ++--
 drivers/net/Kconfig         | 2 +-
 drivers/of/Kconfig          | 2 +-
 drivers/pci/Kconfig         | 2 +-
 drivers/serial/Kconfig      | 4 ++--
 drivers/video/Kconfig       | 2 +-
 drivers/watchdog/Kconfig    | 2 +-
 efi/Kconfig                 | 2 +-
 efi/Makefile                | 2 +-
 fs/Kconfig                  | 4 ++--
 include/efi.h               | 2 +-
 15 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index b982ea32cb3a..85f7e067d09a 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -46,5 +46,5 @@ config MACH_EFI_GENERIC
 
 config X86_EFI
 	def_bool y
-	select EFI_BOOTUP
+	select EFI_PAYLOAD
 	select CLOCKSOURCE_EFI_X86
diff --git a/drivers/Makefile b/drivers/Makefile
index fd85ac91b266..7b94a76c5687 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -2,7 +2,7 @@
 obj-y	+= base/
 obj-y	+= block/
 obj-$(CONFIG_ARM_AMBA) += amba/
-obj-$(CONFIG_EFI_BOOTUP) += efi/
+obj-$(CONFIG_EFI_PAYLOAD) += efi/
 obj-y	+= net/
 obj-y	+= serial/
 obj-y	+= mtd/
diff --git a/drivers/block/Kconfig b/drivers/block/Kconfig
index 625e81a4ec97..bf8dfdbd5c12 100644
--- a/drivers/block/Kconfig
+++ b/drivers/block/Kconfig
@@ -9,7 +9,7 @@ config VIRTIO_BLK
 config EFI_BLK
 	bool "EFI block I/O driver"
 	default y
-	depends on EFI_BOOTUP
+	depends on EFI_PAYLOAD
 
 config EFI_BLK_SEPARATE_USBDISK
 	bool "rename USB devices to /dev/usbdiskX"
diff --git a/drivers/bus/Kconfig b/drivers/bus/Kconfig
index e622ed239c7c..b480cf8bff0f 100644
--- a/drivers/bus/Kconfig
+++ b/drivers/bus/Kconfig
@@ -29,7 +29,7 @@ config MVEBU_MBUS
 config ACPI
 	bool "Advanced Configuration and Power Interface (ACPI)"
 	default y
-	depends on EFI_BOOTUP
+	depends on EFI_PAYLOAD
 	help
 	  Driver needed for supporting drivers probed from ACPI tables.
 	  The root SDT is found via UEFI.
diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index e1bff23320de..5ee83d2b383c 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -42,11 +42,11 @@ config CLOCKSOURCE_DUMMY_RATE
 
 config CLOCKSOURCE_EFI
 	bool "Generic EFI Driver"
-	depends on EFI_BOOTUP
+	depends on EFI_PAYLOAD
 
 config CLOCKSOURCE_EFI_X86
 	bool "EFI X86 HW driver"
-	depends on EFI_BOOTUP && X86
+	depends on EFI_PAYLOAD && X86
 
 config CLOCKSOURCE_KVX
 	bool "KVX core timer clocksource"
diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 430cc6a4e7ab..13e9ff6924bb 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -285,7 +285,7 @@ config DRIVER_NET_TAP
 
 config DRIVER_NET_EFI_SNP
 	bool "EFI SNP ethernet driver"
-	depends on EFI_BOOTUP
+	depends on EFI_PAYLOAD
 
 config DRIVER_NET_VIRTIO
 	bool "virtio net driver"
diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
index 71f6103f0e69..2791100a2d9c 100644
--- a/drivers/of/Kconfig
+++ b/drivers/of/Kconfig
@@ -5,7 +5,7 @@ config OFTREE
 
 config OFTREE_MEM_GENERIC
 	depends on OFTREE
-	depends on PPC || ARM || EFI_BOOTUP || OPENRISC || SANDBOX || RISCV || KVX
+	depends on PPC || ARM || EFI_PAYLOAD || OPENRISC || SANDBOX || RISCV || KVX
 	def_bool y
 
 config DTC
diff --git a/drivers/pci/Kconfig b/drivers/pci/Kconfig
index 39df54f215cf..8f37805d71ca 100644
--- a/drivers/pci/Kconfig
+++ b/drivers/pci/Kconfig
@@ -64,7 +64,7 @@ config PCI_ROCKCHIP
 
 config PCI_EFI
 	bool "EFI PCI protocol"
-	depends on EFI_BOOTUP
+	depends on EFI_PAYLOAD
 	select PCI
 
 config PCI_ECAM_GENERIC
diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index 803f6b6aee9e..60b0e5f1dc1f 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -31,7 +31,7 @@ config DRIVER_SERIAL_AR933X
 
 config DRIVER_SERIAL_EFI
 	bool "EFI serial"
-	depends on EFI_BOOTUP
+	depends on EFI_PAYLOAD
 
 config DRIVER_SERIAL_IMX
 	depends on ARCH_IMX
@@ -58,7 +58,7 @@ config DRIVER_SERIAL_LINUX_CONSOLE
 	bool "linux console driver"
 
 config DRIVER_SERIAL_EFI_STDIO
-	depends on EFI_BOOTUP
+	depends on EFI_PAYLOAD
 	bool "EFI stdio driver"
 
 config DRIVER_SERIAL_MPC5XXX
diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index b4e37a92586e..571ce49ef616 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -31,7 +31,7 @@ config DRIVER_VIDEO_ATMEL_HLCD
 
 config DRIVER_VIDEO_EFI_GOP
 	bool "EFI Graphics Output Protocol (GOP)"
-	depends on EFI_BOOTUP
+	depends on EFI_PAYLOAD
 
 config DRIVER_VIDEO_IMX
 	bool "i.MX framebuffer driver"
diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index 159b495acbd9..762e37c9c2dd 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -31,7 +31,7 @@ config WATCHDOG_AT91SAM9
 
 config WATCHDOG_EFI
 	bool "Generic EFI Watchdog Driver"
-	depends on EFI_BOOTUP
+	depends on EFI_PAYLOAD
 	help
 	  Add support for the EFI watchdog.
 
diff --git a/efi/Kconfig b/efi/Kconfig
index 15246ccbf0e0..971d58a7a9c0 100644
--- a/efi/Kconfig
+++ b/efi/Kconfig
@@ -2,7 +2,7 @@
 
 menu "EFI (Extensible Firmware Interface) Support"
 
-config EFI_BOOTUP
+config EFI_PAYLOAD
 	bool
 	select EFI
 	select EFI_GUID
diff --git a/efi/Makefile b/efi/Makefile
index a7cebde4f1b3..2b188bafa0a4 100644
--- a/efi/Makefile
+++ b/efi/Makefile
@@ -1,6 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
-obj-$(CONFIG_EFI_BOOTUP)	+= payload/
+obj-$(CONFIG_EFI_PAYLOAD)	+= payload/
 obj-$(CONFIG_EFI_GUID)		+= guid.o
 obj-$(CONFIG_EFI_DEVICEPATH)	+= devicepath.o
 obj-y				+= errno.o efivar-filename.o
diff --git a/fs/Kconfig b/fs/Kconfig
index 0c4934285942..a3ba84b6aefd 100644
--- a/fs/Kconfig
+++ b/fs/Kconfig
@@ -69,7 +69,7 @@ config FS_NFS
 	prompt "nfs support"
 
 config FS_EFI
-	depends on EFI_BOOTUP
+	depends on EFI_PAYLOAD
 	select FS_LEGACY
 	bool
 	prompt "EFI filesystem support"
@@ -78,7 +78,7 @@ config FS_EFI
 	  by the EFI Firmware via the EFI Simple File System Protocol.
 
 config FS_EFIVARFS
-	depends on EFI_BOOTUP
+	depends on EFI_PAYLOAD
 	select FS_LEGACY
 	bool
 	prompt "EFI variable filesystem support (efivarfs)"
diff --git a/include/efi.h b/include/efi.h
index 1904caf3a4b6..f1567f7791b8 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -16,7 +16,7 @@
 #include <linux/types.h>
 #include <linux/uuid.h>
 
-#ifdef CONFIG_EFI_BOOTUP
+#ifdef CONFIG_EFI_PAYLOAD
 #define EFIAPI __attribute__((ms_abi))
 #else
 #define EFIAPI
-- 
2.39.2



