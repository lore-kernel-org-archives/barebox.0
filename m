Delivery-date: Thu, 11 Dec 2025 21:32:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnKf-00AQCg-2R
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 21:32:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnKa-00076Z-5B
	for lore@pengutronix.de; Thu, 11 Dec 2025 21:32:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EimqRCRtDg+PPC/fde663gyeyMXlGyCBnKNY3deqNVw=; b=QBU2t4SoBONwXmHmsmZlkzkack
	9h+dGgBGK2XzhXilGKrX3xaZHQBKHQ7Wn/tmvVrp8CiB4LWYmYBnnBlAsV4i/t3LpYRi5HTjS2ZsL
	kH5bcBR2OKBfEZZQoeUDFh72oaneJnQHFe7LD4pmZ3vmpuhJIbwJIEnkTYC2ojP9Mw/aY+3Kpzwpj
	wRDOv7HDCE4ToHKO84yDB1UdE0Ie5sHyUrZwYcZPFiGyJMOmJ0J/GYFxUSzfCMQQEiLHG2QivOORj
	k8Me+bPfWrIhKDr9zhQNGE3/8glF8a14RkMmGUtSpkZer+t25tJSQOHW//jKBah2zEFsokHNbPGeP
	ZZKlTT2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnJe-0000000HEB5-1RUI;
	Thu, 11 Dec 2025 20:31:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnJZ-0000000HE6s-3Wey
	for barebox@bombadil.infradead.org;
	Thu, 11 Dec 2025 20:31:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=EimqRCRtDg+PPC/fde663gyeyMXlGyCBnKNY3deqNVw=; b=CFfDAJSkWWTcP40/zCbMnz1JK+
	dY88UQJaljbfeGWqHO+B3K+kM7PJpMVVq65w3ard10fcwzZsDL+UAeoFdYzGo30G94cCR0Lg8rmPT
	KqduBh1xoxYSe/dD030dbbitHQxIRU4RaajN2xKYBiZRdCLCtm8K/yAIUW76dSEwO3+CYCWci8zAj
	yOcI2tyCgkSpYpCr3ifd/rmbZPMe207yooXIa7T8ySWMYE5L8I79120kGNDV7lO1x89g5hmCe1B/n
	dwMr/i9G0pKigLQP0xvOQvZuoBB7TYaDwMj6LNupU18Jsezoutwn0bDy227SSqxQuGOhIs1arxiDL
	fv0BRr9g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTmS0-0000000FZ9Z-1V4k
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 19:35:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnJR-0006K0-WE; Thu, 11 Dec 2025 21:30:58 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnJR-005BRH-2S;
	Thu, 11 Dec 2025 21:30:57 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnJR-00000008e20-2Vsa;
	Thu, 11 Dec 2025 21:30:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 21:29:59 +0100
Message-ID: <20251211203056.2014710-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251211203056.2014710-1-a.fatoum@pengutronix.de>
References: <20251211203056.2014710-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_SBL,URIBL_SBL_A
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 08/16] efi: tidy up header includes for reuse
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have a lot of EFI definitions, both inside efi.h and outside,
including some things that are only payload-specific.

Let's tidy that up and clearly split generic functionality and
definitions from the payload-specific pats.

While at it, we also remove the redundant efi- prefix in headers and
retire the efi.h header to avoid non-portable parts making it into
there.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/cpu.c                            |   2 +-
 arch/arm/cpu/interrupts_64.c                  |   2 +-
 arch/arm/cpu/mmu-common.c                     |   2 +-
 arch/arm/include/asm/pci.h                    |   2 +-
 arch/arm/lib64/armlinux.c                     |   2 +-
 arch/x86/mach-efi/clocksource.c               |   2 +-
 arch/x86/mach-efi/reloc_ia32.c                |   2 +-
 arch/x86/mach-efi/reloc_x86_64.c              |   2 +-
 commands/bfetch.c                             |   4 +-
 commands/efi_handle_dump.c                    |   8 +-
 common/startup.c                              |   2 +-
 drivers/block/efi-block-io.c                  |   7 +-
 drivers/bus/acpi.c                            |   5 +-
 drivers/clocksource/efi.c                     |   5 +-
 drivers/clocksource/efi_x86.c                 |   3 +-
 drivers/efi/efi-device.c                      |   8 +-
 drivers/hw_random/efi-rng.c                   |   6 +-
 drivers/i2c/busses/i2c-efi.c                  |  54 +-
 drivers/net/efi-snp.c                         | 109 +--
 drivers/pci/pci-efi.c                         |   9 +-
 drivers/serial/efi-stdio.c                    |   8 +-
 drivers/serial/serial_efi.c                   |  78 +-
 drivers/serial/serial_semihosting.c           |   2 +-
 drivers/video/efi_gop.c                       |  54 +-
 drivers/watchdog/efi_wdt.c                    |   4 +-
 drivers/watchdog/itco_wdt.c                   |   1 -
 efi/devicepath.c                              |   8 +-
 efi/efivar-filename.c                         |   3 +-
 efi/efivar.c                                  |   7 +-
 efi/errno.c                                   |   3 +-
 efi/guid.c                                    |   3 +-
 efi/handle.c                                  |   6 +-
 efi/payload/boarddata.c                       |   5 +-
 efi/payload/bootm.c                           |   7 +-
 efi/payload/early-mem.c                       |   4 +-
 efi/payload/efi-initrd.c                      |  12 +-
 efi/payload/entry-multi.c                     |   5 +-
 efi/payload/entry-single.c                    |   6 +-
 efi/payload/fdt.c                             |   6 +-
 efi/payload/handover.c                        |   6 +-
 efi/payload/image.c                           |   6 +-
 efi/payload/init.c                            |   7 +-
 efi/payload/iomem.c                           |   6 +-
 fs/efi.c                                      |   7 +-
 fs/efivarfs.c                                 |   9 +-
 fs/ubootvarfs.c                               |   1 -
 include/acpi.h                                |   2 +-
 include/efi.h                                 | 886 ------------------
 include/efi/attributes.h                      |  21 +
 include/efi/debug_ll.h                        |   9 +-
 include/efi/{device-path.h => devicepath.h}   |   9 +
 include/efi/efi-util.h                        |  20 -
 include/efi/error.h                           |  58 ++
 include/efi/guid.h                            | 303 ++++++
 include/efi/initrd.h                          |  11 +
 include/efi/{memtype.h => memory.h}           |  19 +-
 include/efi/{efi-mode.h => mode.h}            |   0
 include/efi/{efi-payload.h => payload.h}      |  18 +-
 .../efi/{efi-device.h => payload/driver.h}    |  19 +-
 include/efi/{efi-init.h => payload/init.h}    |   4 +-
 include/efi/protocol/block.h                  |  35 +
 include/efi/protocol/file.h                   | 111 +++
 include/efi/protocol/gop.h                    |  54 ++
 include/efi/protocol/i2c.h                    |  55 ++
 .../pci-efi.h => include/efi/protocol/pci.h   |  10 +-
 include/efi/protocol/rng.h                    |  17 +
 include/efi/protocol/serial.h                 |  79 ++
 include/efi/protocol/snp.h                    | 110 +++
 include/efi/{efi-stdio.h => protocol/text.h}  |  44 +-
 include/efi/services.h                        | 271 ++++++
 include/efi/types.h                           |  49 +-
 include/efi/variable.h                        |  28 +
 lib/vsprintf.c                                |   2 +-
 test/self/mmu.c                               |   2 +-
 74 files changed, 1419 insertions(+), 1327 deletions(-)
 delete mode 100644 include/efi.h
 create mode 100644 include/efi/attributes.h
 rename include/efi/{device-path.h => devicepath.h} (95%)
 delete mode 100644 include/efi/efi-util.h
 create mode 100644 include/efi/error.h
 create mode 100644 include/efi/guid.h
 create mode 100644 include/efi/initrd.h
 rename include/efi/{memtype.h => memory.h} (90%)
 rename include/efi/{efi-mode.h => mode.h} (100%)
 rename include/efi/{efi-payload.h => payload.h} (56%)
 rename include/efi/{efi-device.h => payload/driver.h} (78%)
 rename include/efi/{efi-init.h => payload/init.h} (96%)
 create mode 100644 include/efi/protocol/block.h
 create mode 100644 include/efi/protocol/file.h
 create mode 100644 include/efi/protocol/gop.h
 create mode 100644 include/efi/protocol/i2c.h
 rename drivers/pci/pci-efi.h => include/efi/protocol/pci.h (98%)
 create mode 100644 include/efi/protocol/rng.h
 create mode 100644 include/efi/protocol/serial.h
 create mode 100644 include/efi/protocol/snp.h
 rename include/efi/{efi-stdio.h => protocol/text.h} (67%)
 create mode 100644 include/efi/services.h

diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index ab41da5cab50..0293181811b6 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -17,7 +17,7 @@
 #include <asm/cputype.h>
 #include <asm/cache.h>
 #include <asm/ptrace.h>
-#include <efi/efi-mode.h>
+#include <efi/mode.h>
 
 /**
  * Enable processor's instruction cache
diff --git a/arch/arm/cpu/interrupts_64.c b/arch/arm/cpu/interrupts_64.c
index 24eb1516ed6e..0b69359d67b1 100644
--- a/arch/arm/cpu/interrupts_64.c
+++ b/arch/arm/cpu/interrupts_64.c
@@ -11,7 +11,7 @@
 #include <init.h>
 #include <asm/system.h>
 #include <asm/esr.h>
-#include <efi/efi-mode.h>
+#include <efi/mode.h>
 
 /* Avoid missing prototype warning, called from assembly */
 void do_bad_sync (struct pt_regs *pt_regs);
diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
index d193956ad359..a1431c0ff461 100644
--- a/arch/arm/cpu/mmu-common.c
+++ b/arch/arm/cpu/mmu-common.c
@@ -14,7 +14,7 @@
 #include <zero_page.h>
 #include <range.h>
 #include "mmu-common.h"
-#include <efi/efi-mode.h>
+#include <efi/mode.h>
 
 const char *map_type_tostr(maptype_t map_type)
 {
diff --git a/arch/arm/include/asm/pci.h b/arch/arm/include/asm/pci.h
index 7c834f110111..d236e300b9f3 100644
--- a/arch/arm/include/asm/pci.h
+++ b/arch/arm/include/asm/pci.h
@@ -2,7 +2,7 @@
 #ifndef __ASM_PCI_H
 #define __ASM_PCI_H
 
-#include <efi/efi-mode.h>
+#include <efi/mode.h>
 
 #define pcibios_assign_all_busses()	(!efi_is_payload())
 
diff --git a/arch/arm/lib64/armlinux.c b/arch/arm/lib64/armlinux.c
index 74922cecd9ba..7803d5671719 100644
--- a/arch/arm/lib64/armlinux.c
+++ b/arch/arm/lib64/armlinux.c
@@ -6,7 +6,7 @@
 #include <init.h>
 #include <bootm.h>
 #include <asm/boot.h>
-#include <efi/efi-mode.h>
+#include <efi/mode.h>
 
 static int do_bootm_linux(struct image_data *data)
 {
diff --git a/arch/x86/mach-efi/clocksource.c b/arch/x86/mach-efi/clocksource.c
index daf3b3965851..2646bbe4a76e 100644
--- a/arch/x86/mach-efi/clocksource.c
+++ b/arch/x86/mach-efi/clocksource.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <common.h>
-#include <efi/efi-init.h>
+#include <efi/payload/init.h>
 #include <driver.h>
 
 static int efi_x86_pure_init(void)
diff --git a/arch/x86/mach-efi/reloc_ia32.c b/arch/x86/mach-efi/reloc_ia32.c
index c235421ce180..c9c1b380e46f 100644
--- a/arch/x86/mach-efi/reloc_ia32.c
+++ b/arch/x86/mach-efi/reloc_ia32.c
@@ -34,7 +34,7 @@
 */
 
 #include <common.h>
-#include <efi.h>
+#include <efi/error.h>
 
 #include <elf.h>
 
diff --git a/arch/x86/mach-efi/reloc_x86_64.c b/arch/x86/mach-efi/reloc_x86_64.c
index f015ae047dbf..a0c7012562c8 100644
--- a/arch/x86/mach-efi/reloc_x86_64.c
+++ b/arch/x86/mach-efi/reloc_x86_64.c
@@ -37,7 +37,7 @@
 
 #include <linux/linkage.h>
 #include <common.h>
-#include <efi.h>
+#include <efi/error.h>
 
 #include <elf.h>
 
diff --git a/commands/bfetch.c b/commands/bfetch.c
index 4de4692a6278..d9c615f65aca 100644
--- a/commands/bfetch.c
+++ b/commands/bfetch.c
@@ -25,8 +25,8 @@
 #include <unistd.h>
 #include <watchdog.h>
 
-#include <efi/efi-mode.h>
-#include <efi/efi-device.h>
+#include <efi/mode.h>
+#include <efi/payload/driver.h>
 
 #include <generated/utsrelease.h>
 #include <linux/clk.h>
diff --git a/commands/efi_handle_dump.c b/commands/efi_handle_dump.c
index 30abf9000387..c82f3e32469a 100644
--- a/commands/efi_handle_dump.c
+++ b/commands/efi_handle_dump.c
@@ -7,10 +7,12 @@
 
 #include <common.h>
 #include <command.h>
-#include <efi.h>
 #include <linux/uuid.h>
-#include <efi/efi-mode.h>
-#include <efi/efi-device.h>
+#include <efi/mode.h>
+#include <efi/payload.h>
+#include <efi/error.h>
+#include <efi/devicepath.h>
+#include <efi/payload/driver.h>
 
 static void efi_devpath(struct efi_boot_services *bs,
 			efi_handle_t handle,
diff --git a/common/startup.c b/common/startup.c
index c48adb42f953..53003b88bc1b 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -40,7 +40,7 @@
 #include <watchdog.h>
 #include <glob.h>
 #include <net.h>
-#include <efi/efi-mode.h>
+#include <efi/mode.h>
 #include <bselftest.h>
 #include <pbl/handoff-data.h>
 #include <libfile.h>
diff --git a/drivers/block/efi-block-io.c b/drivers/block/efi-block-io.c
index 1c2d801a42ef..8955a8c2b585 100644
--- a/drivers/block/efi-block-io.c
+++ b/drivers/block/efi-block-io.c
@@ -10,10 +10,11 @@
 #include <linux/stat.h>
 #include <xfuncs.h>
 #include <fcntl.h>
-#include <efi.h>
 #include <block.h>
-#include <efi/efi-payload.h>
-#include <efi/efi-device.h>
+#include <efi/payload.h>
+#include <efi/payload/driver.h>
+#include <efi/error.h>
+#include <efi/protocol/block.h>
 #include <bootsource.h>
 
 #define EFI_BLOCK_IO_PROTOCOL_REVISION2 0x00020001
diff --git a/drivers/bus/acpi.c b/drivers/bus/acpi.c
index f586b605d0d4..880bc6594d30 100644
--- a/drivers/bus/acpi.c
+++ b/drivers/bus/acpi.c
@@ -6,9 +6,8 @@
 #include <common.h>
 #include <driver.h>
 #include <init.h>
-#include <efi.h>
-#include <efi/efi-payload.h>
-#include <efi/efi-device.h>
+#include <efi/payload.h>
+#include <efi/payload/driver.h>
 #include <acpi.h>
 
 static struct sig_desc {
diff --git a/drivers/clocksource/efi.c b/drivers/clocksource/efi.c
index 2f8bfdec489a..534bea5525c4 100644
--- a/drivers/clocksource/efi.c
+++ b/drivers/clocksource/efi.c
@@ -6,9 +6,8 @@
 #include <init.h>
 #include <driver.h>
 #include <clock.h>
-#include <efi.h>
-#include <efi/efi-payload.h>
-#include <efi/efi-device.h>
+#include <efi/payload.h>
+#include <efi/error.h>
 #include <linux/err.h>
 
 static uint64_t ticks = 1;
diff --git a/drivers/clocksource/efi_x86.c b/drivers/clocksource/efi_x86.c
index f5a822eef740..23ca3d1637c4 100644
--- a/drivers/clocksource/efi_x86.c
+++ b/drivers/clocksource/efi_x86.c
@@ -2,8 +2,7 @@
 #include <common.h>
 #include <init.h>
 #include <driver.h>
-#include <efi.h>
-#include <efi/efi-payload.h>
+#include <efi/payload.h>
 #include <clock.h>
 
 #ifdef __x86_64__
diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index e700e2b2e89b..f323455c90bd 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -15,11 +15,11 @@
 #include <wchar.h>
 #include <magicvar.h>
 #include <init.h>
-#include <efi.h>
-#include <efi/efi-payload.h>
-#include <efi/efi-device.h>
+#include <efi/payload.h>
+#include <efi/error.h>
+#include <efi/payload/driver.h>
+#include <efi/devicepath.h>
 #include <efi/variable.h>
-#include <efi/device-path.h>
 #include <linux/err.h>
 
 static int efi_locate_handle(enum efi_locate_search_type search_type,
diff --git a/drivers/hw_random/efi-rng.c b/drivers/hw_random/efi-rng.c
index 61cb01caf647..9256753ad806 100644
--- a/drivers/hw_random/efi-rng.c
+++ b/drivers/hw_random/efi-rng.c
@@ -3,8 +3,10 @@
 #include <driver.h>
 #include <init.h>
 #include <linux/hw_random.h>
-#include <efi.h>
-#include <efi/efi-device.h>
+#include <efi/error.h>
+#include <efi/payload/driver.h>
+#include <efi/protocol/rng.h>
+#include <efi/payload.h>
 
 struct efi_rng_priv {
 	struct efi_rng_protocol *protocol;
diff --git a/drivers/i2c/busses/i2c-efi.c b/drivers/i2c/busses/i2c-efi.c
index 4c58279e0398..dff10703fd9a 100644
--- a/drivers/i2c/busses/i2c-efi.c
+++ b/drivers/i2c/busses/i2c-efi.c
@@ -9,58 +9,12 @@
 #include <common.h>
 #include <i2c/i2c.h>
 #include <driver.h>
-#include <efi.h>
-#include <efi/efi-device.h>
-#include <efi/efi-util.h>
+#include <efi/protocol/i2c.h>
+#include <efi/payload/init.h>
+#include <efi/payload/driver.h>
+#include <efi/error.h>
 #include <linux/kernel.h>
 
-/* Define EFI I2C transfer control flags */
-#define EFI_I2C_FLAG_READ           0x00000001
-
-#define EFI_I2C_ADDRESSING_10_BIT   0x80000000
-
-/* The set_bus_frequency() EFI call doesn't work (doesn't alter SPI clock
- * frequency) if it's parameter is defined on the stack (observed with
- * American Megatrends EFI Revision 5.19) - let's define it globaly.
- */
-static unsigned int bus_clock;
-
-struct efi_i2c_capabilities {
-	u32 StructureSizeInBytes;
-	u32 MaximumReceiveBytes;
-	u32 MaximumTransmitBytes;
-	u32 MaximumTotalBytes;
-};
-
-struct efi_i2c_operation {
-	u32 Flags;
-	u32 LengthInBytes;
-	u8  *Buffer;
-};
-
-struct efi_i2c_request_packet {
-	unsigned int OperationCount;
-	struct efi_i2c_operation Operation[];
-};
-
-struct efi_i2c_master_protocol {
-	efi_status_t(EFIAPI * set_bus_frequency)(
-		struct efi_i2c_master_protocol *this,
-		unsigned int *bus_clock
-	);
-	efi_status_t(EFIAPI * reset)(
-		struct efi_i2c_master_protocol *this
-	);
-	efi_status_t(EFIAPI * start_request)(
-		struct efi_i2c_master_protocol *this,
-		unsigned int slave_address,
-		struct efi_i2c_request_packet *request_packet,
-		void *event,
-		efi_status_t *status
-	);
-	struct efi_i2c_capabilities *capabilities;
-};
-
 struct efi_i2c_priv {
 	struct efi_i2c_master_protocol *efi_protocol;
 	struct i2c_adapter adapter;
diff --git a/drivers/net/efi-snp.c b/drivers/net/efi-snp.c
index b4d2abfecf77..5dffe3793426 100644
--- a/drivers/net/efi-snp.c
+++ b/drivers/net/efi-snp.c
@@ -10,111 +10,10 @@
 #include <malloc.h>
 #include <net.h>
 #include <init.h>
-#include <efi.h>
-#include <efi/efi-payload.h>
-#include <efi/efi-device.h>
-
-struct efi_network_statistics {
-	uint64_t RxTotalFrames;
-	uint64_t RxGoodFrames;
-	uint64_t RxUndersizeFrames;
-	uint64_t RxOversizeFrames;
-	uint64_t RxDroppedFrames;
-	uint64_t RxUnicastFrames;
-	uint64_t RxBroadcastFrames;
-	uint64_t RxMulticastFrames;
-	uint64_t RxCrcErrorFrames;
-	uint64_t RxTotalBytes;
-	uint64_t TxTotalFrames;
-	uint64_t TxGoodFrames;
-	uint64_t TxUndersizeFrames;
-	uint64_t TxOversizeFrames;
-	uint64_t TxDroppedFrames;
-	uint64_t TxUnicastFrames;
-	uint64_t TxBroadcastFrames;
-	uint64_t TxMulticastFrames;
-	uint64_t TxCrcErrorFrames;
-	uint64_t TxTotalBytes;
-	uint64_t Collisions;
-	uint64_t UnsupportedProtocol;
-};
-
-enum efi_simple_network_state {
-	EfiSimpleNetworkStopped,
-	EfiSimpleNetworkStarted,
-	EfiSimpleNetworkInitialized,
-	EfiSimpleNetworkMaxState
-};
-
-#define EFI_SIMPLE_NETWORK_RECEIVE_UNICAST               0x01
-#define EFI_SIMPLE_NETWORK_RECEIVE_MULTICAST             0x02
-#define EFI_SIMPLE_NETWORK_RECEIVE_BROADCAST             0x04
-#define EFI_SIMPLE_NETWORK_RECEIVE_PROMISCUOUS           0x08
-#define EFI_SIMPLE_NETWORK_RECEIVE_PROMISCUOUS_MULTICAST 0x10
-
-#define EFI_SIMPLE_NETWORK_RECEIVE_INTERRUPT        0x01
-#define EFI_SIMPLE_NETWORK_TRANSMIT_INTERRUPT       0x02
-#define EFI_SIMPLE_NETWORK_COMMAND_INTERRUPT        0x04
-#define EFI_SIMPLE_NETWORK_SOFTWARE_INTERRUPT       0x08
-
-#define MAX_MCAST_FILTER_CNT    16
-struct efi_simple_network_mode {
-	uint32_t State;
-	uint32_t HwAddressSize;
-	uint32_t MediaHeaderSize;
-	uint32_t MaxPacketSize;
-	uint32_t NvRamSize;
-	uint32_t NvRamAccessSize;
-	uint32_t ReceiveFilterMask;
-	uint32_t ReceiveFilterSetting;
-	uint32_t MaxMCastFilterCount;
-	uint32_t MCastFilterCount;
-	struct efi_mac_address MCastFilter[MAX_MCAST_FILTER_CNT];
-	struct efi_mac_address CurrentAddress;
-	struct efi_mac_address BroadcastAddress;
-	struct efi_mac_address PermanentAddress;
-	uint8_t IfType;
-        bool MacAddressChangeable;
-	bool MultipleTxSupported;
-	bool MediaPresentSupported;
-	bool MediaPresent;
-};
-
-#define EFI_SIMPLE_NETWORK_INTERFACE_REVISION   0x00010000
-
-struct efi_simple_network {
-	uint64_t Revision;
-	efi_status_t (EFIAPI *start) (struct efi_simple_network *This);
-	efi_status_t (EFIAPI *stop) (struct efi_simple_network *This);
-	efi_status_t (EFIAPI *initialize) (struct efi_simple_network *This,
-			unsigned long ExtraRxBufferSize, unsigned long ExtraTxBufferSize);
-	efi_status_t (EFIAPI *reset) (struct efi_simple_network *This, bool ExtendedVerification);
-	efi_status_t (EFIAPI *shutdown) (struct efi_simple_network *This);
-	efi_status_t (EFIAPI *receive_filters) (struct efi_simple_network *This,
-			uint32_t Enable, uint32_t Disable, bool ResetMCastFilter,
-			unsigned long MCastFilterCnt, struct efi_mac_address *MCastFilter);
-	efi_status_t (EFIAPI *station_address) (struct efi_simple_network *This,
-			bool Reset, struct efi_mac_address *New);
-	efi_status_t (EFIAPI *statistics) (struct efi_simple_network *This,
-			bool Reset, unsigned long *StatisticsSize,
-			struct efi_network_statistics *StatisticsTable);
-	efi_status_t (EFIAPI *mcast_ip_to_mac) (struct efi_simple_network *This,
-			bool IPv6, union efi_ip_address *IP, struct efi_mac_address *MAC);
-	efi_status_t (EFIAPI *nvdata) (struct efi_simple_network *This,
-			bool ReadWrite, unsigned long Offset, unsigned long BufferSize,
-			void *Buffer);
-	efi_status_t (EFIAPI *get_status) (struct efi_simple_network *This,
-			uint32_t *InterruptStatus, void **TxBuf);
-	efi_status_t (EFIAPI *transmit) (struct efi_simple_network *This,
-			unsigned long HeaderSize, unsigned long BufferSize, void *Buffer,
-			struct efi_mac_address *SrcAddr, struct efi_mac_address *DestAddr,
-			uint16_t *Protocol);
-	efi_status_t (EFIAPI *receive) (struct efi_simple_network *This,
-			unsigned long *HeaderSize, unsigned long *BufferSize, void *Buffer,
-			struct efi_mac_address *SrcAddr, struct efi_mac_address *DestAddr, uint16_t *Protocol);
-	void *WaitForPacket;
-	struct efi_simple_network_mode *Mode;
-};
+#include <efi/error.h>
+#include <efi/payload.h>
+#include <efi/payload/driver.h>
+#include <efi/protocol/snp.h>
 
 struct efi_snp_priv {
 	struct device *dev;
diff --git a/drivers/pci/pci-efi.c b/drivers/pci/pci-efi.c
index 339a7ef673cd..7d4869db08df 100644
--- a/drivers/pci/pci-efi.c
+++ b/drivers/pci/pci-efi.c
@@ -8,13 +8,12 @@
 #include <driver.h>
 #include <init.h>
 #include <xfuncs.h>
-#include <efi.h>
-#include <efi/efi-payload.h>
-#include <efi/efi-device.h>
+#include <efi/payload.h>
+#include <efi/payload/driver.h>
+#include <efi/protocol/pci.h>
+#include <efi/error.h>
 #include <linux/pci.h>
 
-#include "pci-efi.h"
-
 struct efi_pci_priv {
 	struct efi_pci_root_bridge_io_protocol *protocol;
 	struct device *dev;
diff --git a/drivers/serial/efi-stdio.c b/drivers/serial/efi-stdio.c
index 92133f837838..3390600be389 100644
--- a/drivers/serial/efi-stdio.c
+++ b/drivers/serial/efi-stdio.c
@@ -10,13 +10,13 @@
 #include <malloc.h>
 #include <console.h>
 #include <xfuncs.h>
-#include <efi.h>
 #include <readkey.h>
 #include <linux/ctype.h>
-#include <efi/efi-payload.h>
+#include <efi/payload.h>
 #include <kfifo.h>
-#include <efi/efi-device.h>
-#include <efi/efi-stdio.h>
+#include <efi/payload/driver.h>
+#include <efi/protocol/text.h>
+#include <efi/error.h>
 
 struct efi_console_priv {
 	struct efi_simple_text_output_protocol *out;
diff --git a/drivers/serial/serial_efi.c b/drivers/serial/serial_efi.c
index a0abbaf649d3..070abb142850 100644
--- a/drivers/serial/serial_efi.c
+++ b/drivers/serial/serial_efi.c
@@ -7,80 +7,10 @@
 #include <driver.h>
 #include <init.h>
 #include <malloc.h>
-#include <efi.h>
-#include <efi/efi-payload.h>
-#include <efi/efi-device.h>
-
-/*
- * define for Control bits, grouped by read only, write only, and read write
- *
- * Read Only
- */
-#define EFI_SERIAL_CLEAR_TO_SEND        0x00000010
-#define EFI_SERIAL_DATA_SET_READY       0x00000020
-#define EFI_SERIAL_RING_INDICATE        0x00000040
-#define EFI_SERIAL_CARRIER_DETECT       0x00000080
-#define EFI_SERIAL_INPUT_BUFFER_EMPTY   0x00000100
-#define EFI_SERIAL_OUTPUT_BUFFER_EMPTY  0x00000200
-
-/*
- * Write Only
- */
-#define EFI_SERIAL_REQUEST_TO_SEND      0x00000002
-#define EFI_SERIAL_DATA_TERMINAL_READY  0x00000001
-
-/*
- * Read Write
- */
-#define EFI_SERIAL_HARDWARE_LOOPBACK_ENABLE     0x00001000
-#define EFI_SERIAL_SOFTWARE_LOOPBACK_ENABLE     0x00002000
-#define EFI_SERIAL_HARDWARE_FLOW_CONTROL_ENABLE 0x00004000
-
-typedef enum {
-	DefaultParity,
-	NoParity,
-	EvenParity,
-	OddParity,
-	MarkParity,
-	SpaceParity
-} efi_parity_type;
-
-typedef enum {
-	DefaultStopBits,
-	OneStopBit,
-	OneFiveStopBits,
-	TwoStopBits
-} efi_stop_bits_type;
-
-struct efi_serial_io_mode {
-	uint32_t controlmask;
-	uint32_t timeout;
-	uint64_t baudrate;
-	uint32_t receivefifodepth;
-	uint32_t databits;
-	uint32_t parity;
-	uint32_t stopbits;
-};
-
-struct efi_serial_io_protocol {
-	uint32_t revision;
-
-	efi_status_t (EFIAPI *reset) (struct efi_serial_io_protocol *This);
-	efi_status_t (EFIAPI *set_attributes) (struct efi_serial_io_protocol *This,
-			uint64_t baudrate, uint32_t receivefifodepth,
-			uint32_t timeout, efi_parity_type parity,
-			uint8_t databits, efi_stop_bits_type stopbits);
-	efi_status_t (EFIAPI *setcontrol) (struct efi_serial_io_protocol *This,
-			uint32_t control);
-	efi_status_t (EFIAPI *getcontrol) (struct efi_serial_io_protocol *This,
-			uint32_t *control);
-	efi_status_t (EFIAPI *write) (struct efi_serial_io_protocol *This,
-			size_t *buffersize, void *buffer);
-	efi_status_t (EFIAPI *read) (struct efi_serial_io_protocol *This,
-			size_t *buffersize, void *buffer);
-
-	struct efi_serial_io_mode *mode;
-};
+#include <efi/payload.h>
+#include <efi/error.h>
+#include <efi/payload/driver.h>
+#include <efi/protocol/serial.h>
 
 /*
  * We wrap our port structure around the generic console_device.
diff --git a/drivers/serial/serial_semihosting.c b/drivers/serial/serial_semihosting.c
index d495b07f11ca..02d2ade367d6 100644
--- a/drivers/serial/serial_semihosting.c
+++ b/drivers/serial/serial_semihosting.c
@@ -2,7 +2,7 @@
 
 #include <console.h>
 #include <asm/semihosting.h>
-#include <efi/efi-mode.h>
+#include <efi/mode.h>
 
 static void smh_serial_putc(struct console_device *cdev, char ch)
 {
diff --git a/drivers/video/efi_gop.c b/drivers/video/efi_gop.c
index cef8a6816cac..00ebd2fcbd55 100644
--- a/drivers/video/efi_gop.c
+++ b/drivers/video/efi_gop.c
@@ -11,56 +11,10 @@
 #include <fb.h>
 #include <errno.h>
 #include <gui/graphic_utils.h>
-#include <efi.h>
-#include <efi/efi-payload.h>
-#include <efi/efi-device.h>
-
-#define PIXEL_RGB_RESERVED_8BIT_PER_COLOR		0
-#define PIXEL_BGR_RESERVED_8BIT_PER_COLOR		1
-#define PIXEL_BIT_MASK					2
-#define PIXEL_BLT_ONLY					3
-#define PIXEL_FORMAT_MAX				4
-
-struct efi_pixel_bitmask {
-	u32 red_mask;
-	u32 green_mask;
-	u32 blue_mask;
-	u32 reserved_mask;
-};
-
-struct efi_graphics_output_mode_info {
-	u32 version;
-	u32 horizontal_resolution;
-	u32 vertical_resolution;
-	int pixel_format;
-	struct efi_pixel_bitmask pixel_information;
-	u32 pixels_per_scan_line;
-};
-
-struct efi_graphics_output_protocol_mode {
-	uint32_t max_mode;
-	uint32_t mode;
-	struct efi_graphics_output_mode_info *info;
-	size_t size_of_info;
-	void *frame_buffer_base;
-	size_t frame_buffer_size;
-};
-
-struct efi_graphics_output_protocol {
-	efi_status_t (EFIAPI *query_mode) (struct efi_graphics_output_protocol *This,
-			uint32_t mode_number, size_t *size_of_info,
-			struct efi_graphics_output_mode_info **info);
-	efi_status_t (EFIAPI *set_mode) (struct efi_graphics_output_protocol *This,
-			uint32_t mode_number);
-	efi_status_t (EFIAPI *blt)(struct efi_graphics_output_protocol *This,
-			void *buffer,
-			unsigned long operation,
-			unsigned long sourcex, unsigned long sourcey,
-			unsigned long destinationx, unsigned long destinationy,
-			unsigned long width, unsigned long height, unsigned
-			long delta);
-	struct efi_graphics_output_protocol_mode *mode;
-};
+#include <efi/payload.h>
+#include <efi/payload/driver.h>
+#include <efi/protocol/gop.h>
+#include <efi/error.h>
 
 struct efi_gop_priv {
 	struct device *dev;
diff --git a/drivers/watchdog/efi_wdt.c b/drivers/watchdog/efi_wdt.c
index 072240fcaf86..32b165fd0e66 100644
--- a/drivers/watchdog/efi_wdt.c
+++ b/drivers/watchdog/efi_wdt.c
@@ -6,8 +6,8 @@
 #include <common.h>
 #include <init.h>
 #include <driver.h>
-#include <efi.h>
-#include <efi/efi-payload.h>
+#include <efi/payload.h>
+#include <efi/error.h>
 #include <watchdog.h>
 
 struct efi_wdt_priv {
diff --git a/drivers/watchdog/itco_wdt.c b/drivers/watchdog/itco_wdt.c
index ca012c92dc37..e55206b3498a 100644
--- a/drivers/watchdog/itco_wdt.c
+++ b/drivers/watchdog/itco_wdt.c
@@ -13,7 +13,6 @@
 
 #include <common.h>
 #include <init.h>
-#include <efi.h>
 #include <linux/pci.h>
 #include <watchdog.h>
 
diff --git a/efi/devicepath.c b/efi/devicepath.c
index 1c4a0d692c1e..1d49f450ec8e 100644
--- a/efi/devicepath.c
+++ b/efi/devicepath.c
@@ -2,13 +2,15 @@
 
 #include <common.h>
 #include <linux/compiler.h>
-#include <efi.h>
-#include <efi/efi-util.h>
 #include <malloc.h>
 #include <string.h>
 #include <wchar.h>
 #include <linux/overflow.h>
-#include <efi/device-path.h>
+#include <efi/devicepath.h>
+#include <efi/guid.h>
+#include <efi/mode.h>
+#include <efi/error.h>
+#include <efi/services.h>
 
 struct string {
 	char *str;
diff --git a/efi/efivar-filename.c b/efi/efivar-filename.c
index 51d0130fa774..984e40bc1c85 100644
--- a/efi/efivar-filename.c
+++ b/efi/efivar-filename.c
@@ -2,7 +2,8 @@
 
 #include <linux/ctype.h>
 #include <string.h>
-#include <efi/efi-util.h>
+#include <efi/guid.h>
+#include <efi/variable.h>
 
 static int char_to_nibble(char c)
 {
diff --git a/efi/efivar.c b/efi/efivar.c
index 808693a7a746..4fb28419d537 100644
--- a/efi/efivar.c
+++ b/efi/efivar.c
@@ -7,11 +7,10 @@
 
 #define pr_fmt(fmt) "efi-var: " fmt
 
-#include <efi/efi-mode.h>
-#include <efi/variable.h>
-#include <efi.h>
-#include <efi/efi-util.h>
+#include <efi/mode.h>
 #include <efi/variable.h>
+#include <efi/services.h>
+#include <efi/error.h>
 #include <wchar.h>
 #include <xfuncs.h>
 #include <errno.h>
diff --git a/efi/errno.c b/efi/errno.c
index ed14b1a8a6b0..79437be34712 100644
--- a/efi/errno.c
+++ b/efi/errno.c
@@ -1,7 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
-#include <efi/efi-util.h>
-#include <efi.h>
+#include <efi/error.h>
 #include <errno.h>
 
 const char *efi_strerror(efi_status_t err)
diff --git a/efi/guid.c b/efi/guid.c
index 46440c9f3328..6b8e50741ec1 100644
--- a/efi/guid.c
+++ b/efi/guid.c
@@ -1,8 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <common.h>
-#include <efi.h>
-#include <efi/efi-util.h>
+#include <efi/guid.h>
 
 efi_guid_t efi_file_info_id = EFI_FILE_INFO_GUID;
 efi_guid_t efi_simple_file_system_protocol_guid = EFI_SIMPLE_FILE_SYSTEM_GUID;
diff --git a/efi/handle.c b/efi/handle.c
index d091d9e16514..a330927d7be2 100644
--- a/efi/handle.c
+++ b/efi/handle.c
@@ -3,10 +3,8 @@
  * Copyright (c) 2014 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
  */
 
-#include <efi.h>
-#include <efi/efi-util.h>
-#include <efi/efi-device.h>
-#include <efi/efi-mode.h>
+#include <efi/payload.h>
+#include <efi/error.h>
 #include <malloc.h>
 
 int __efi_locate_handle(struct efi_boot_services *bs,
diff --git a/efi/payload/boarddata.c b/efi/payload/boarddata.c
index d4e4b5ac1d49..a2f4b8d21b4a 100644
--- a/efi/payload/boarddata.c
+++ b/efi/payload/boarddata.c
@@ -6,8 +6,9 @@
 #define DEBUG
 #endif
 
-#include <efi/efi-payload.h>
-#include <efi.h>
+#include <efi/payload.h>
+#include <efi/error.h>
+#include <efi/guid.h>
 #include <memory.h>
 #include <linux/kernel.h>
 #include <linux/printk.h>
diff --git a/efi/payload/bootm.c b/efi/payload/bootm.c
index c81211d896ad..87bf1de709b4 100644
--- a/efi/payload/bootm.c
+++ b/efi/payload/bootm.c
@@ -18,7 +18,6 @@
 #include <init.h>
 #include <driver.h>
 #include <io.h>
-#include <efi.h>
 #include <malloc.h>
 #include <string.h>
 #include <linux/err.h>
@@ -29,8 +28,10 @@
 #include <binfmt.h>
 #include <wchar.h>
 #include <image-fit.h>
-#include <efi/efi-payload.h>
-#include <efi/efi-device.h>
+#include <efi/payload.h>
+#include <efi/payload/driver.h>
+#include <efi/error.h>
+#include <efi/initrd.h>
 
 #include "image.h"
 
diff --git a/efi/payload/early-mem.c b/efi/payload/early-mem.c
index c5e94b33a756..6cf48e543db4 100644
--- a/efi/payload/early-mem.c
+++ b/efi/payload/early-mem.c
@@ -2,8 +2,8 @@
 
 #include <linux/kernel.h>
 #include <linux/sizes.h>
-#include <efi.h>
-#include <efi/efi-payload.h>
+#include <efi/error.h>
+#include <efi/payload.h>
 
 void *efi_earlymem_alloc(const struct efi_system_table *sys_table,
 			 size_t memsize, enum efi_memory_type mem_type)
diff --git a/efi/payload/efi-initrd.c b/efi/payload/efi-initrd.c
index 7a9317fa070e..708418da62b7 100644
--- a/efi/payload/efi-initrd.c
+++ b/efi/payload/efi-initrd.c
@@ -9,10 +9,12 @@
 #include <driver.h>
 #include <init.h>
 #include <linux/hw_random.h>
-#include <efi.h>
-#include <efi/efi-device.h>
-#include <efi/device-path.h>
-#include <efi/efi-payload.h>
+#include <efi/devicepath.h>
+#include <efi/protocol/file.h>
+#include <efi/protocol/initrd.h>
+#include <efi/guid.h>
+#include <efi/payload.h>
+#include <efi/error.h>
 
 static efi_status_t EFIAPI efi_initrd_load_file2(
 	struct efi_load_file_protocol *this, struct efi_device_path *file_path,
@@ -101,4 +103,4 @@ void efi_initrd_unregister(void)
 		&efi_load_file2_protocol_guid, &initrd.base, NULL);
 
 	initrd.base.load_file = NULL;
-}
\ No newline at end of file
+}
diff --git a/efi/payload/entry-multi.c b/efi/payload/entry-multi.c
index 82f3dfffe870..ef90ee077622 100644
--- a/efi/payload/entry-multi.c
+++ b/efi/payload/entry-multi.c
@@ -4,10 +4,9 @@
 #include <linux/linkage.h>
 #include <linux/sizes.h>
 #include <stdio.h>
-#include <efi.h>
 #include <asm/common.h>
-#include <efi/efi-util.h>
-#include <efi/efi-payload.h>
+#include <efi/protocol/text.h>
+#include <efi/payload.h>
 #include <pbl.h>
 #include <pbl/handoff-data.h>
 
diff --git a/efi/payload/entry-single.c b/efi/payload/entry-single.c
index f481d0942ba5..26930af0c314 100644
--- a/efi/payload/entry-single.c
+++ b/efi/payload/entry-single.c
@@ -6,8 +6,10 @@
 
 #include <linux/kernel.h>
 #include <linux/sizes.h>
-#include <efi.h>
-#include <efi/efi-payload.h>
+#include <efi/payload.h>
+#include <efi/error.h>
+#include <efi/guid.h>
+#include <efi/protocol/text.h>
 #include <memory.h>
 #include <common.h>
 
diff --git a/efi/payload/fdt.c b/efi/payload/fdt.c
index b50c09691976..9cdb32370f22 100644
--- a/efi/payload/fdt.c
+++ b/efi/payload/fdt.c
@@ -5,9 +5,9 @@
 #include <common.h>
 #include <init.h>
 #include <libfile.h>
-#include <efi.h>
-#include <efi/efi-payload.h>
-#include <efi/efi-device.h>
+#include <efi/payload.h>
+#include <efi/payload/init.h>
+#include <efi/guid.h>
 
 static int efi_fdt_probe(void)
 {
diff --git a/efi/payload/handover.c b/efi/payload/handover.c
index 0bbac598542d..c7f1deabfffa 100644
--- a/efi/payload/handover.c
+++ b/efi/payload/handover.c
@@ -17,7 +17,6 @@
 #include <init.h>
 #include <driver.h>
 #include <io.h>
-#include <efi.h>
 #include <malloc.h>
 #include <string.h>
 #include <linux/err.h>
@@ -27,8 +26,9 @@
 #include <libfile.h>
 #include <binfmt.h>
 #include <wchar.h>
-#include <efi/efi-payload.h>
-#include <efi/efi-device.h>
+#include <efi/payload.h>
+#include <efi/payload/init.h>
+#include <efi/guid.h>
 #include <efi/variable.h>
 
 #include "image.h"
diff --git a/efi/payload/image.c b/efi/payload/image.c
index 2dd545fc0d79..976327e08842 100644
--- a/efi/payload/image.c
+++ b/efi/payload/image.c
@@ -15,7 +15,6 @@
 #include <init.h>
 #include <driver.h>
 #include <io.h>
-#include <efi.h>
 #include <malloc.h>
 #include <string.h>
 #include <linux/err.h>
@@ -25,8 +24,9 @@
 #include <libfile.h>
 #include <binfmt.h>
 #include <wchar.h>
-#include <efi/efi-payload.h>
-#include <efi/efi-device.h>
+#include <efi/error.h>
+#include <efi/payload.h>
+#include <efi/payload/driver.h>
 #include <efi/variable.h>
 
 #include "image.h"
diff --git a/efi/payload/init.c b/efi/payload/init.c
index 7e407991b4a0..7e361bab8ab3 100644
--- a/efi/payload/init.c
+++ b/efi/payload/init.c
@@ -25,7 +25,6 @@
 #include <driver.h>
 #include <platform_data/serial-ns16550.h>
 #include <io.h>
-#include <efi.h>
 #include <malloc.h>
 #include <string.h>
 #include <linux/err.h>
@@ -34,8 +33,10 @@
 #include <binfmt.h>
 #include <wchar.h>
 #include <envfs.h>
-#include <efi/efi-payload.h>
-#include <efi/efi-device.h>
+#include <efi/payload.h>
+#include <efi/payload/driver.h>
+#include <efi/devicepath.h>
+#include <efi/error.h>
 #include <efi/variable.h>
 #include <libfile.h>
 #include <state.h>
diff --git a/efi/payload/iomem.c b/efi/payload/iomem.c
index d58f95ca70a2..8b92dc47a7b9 100644
--- a/efi/payload/iomem.c
+++ b/efi/payload/iomem.c
@@ -5,9 +5,9 @@
 
 #include <common.h>
 #include <init.h>
-#include <efi.h>
-#include <efi/efi-payload.h>
-#include <efi/efi-init.h>
+#include <efi/payload.h>
+#include <efi/error.h>
+#include <efi/payload/init.h>
 #include <memory.h>
 #include <linux/sizes.h>
 
diff --git a/fs/efi.c b/fs/efi.c
index 9cdae7efeeb4..76eb86a85eea 100644
--- a/fs/efi.c
+++ b/fs/efi.c
@@ -26,10 +26,11 @@
 #include <xfuncs.h>
 #include <fcntl.h>
 #include <wchar.h>
-#include <efi.h>
+#include <efi/protocol/file.h>
 #include <libfile.h>
-#include <efi/efi-payload.h>
-#include <efi/efi-device.h>
+#include <efi/payload.h>
+#include <efi/payload/driver.h>
+#include <efi/error.h>
 #include <linux/stddef.h>
 
 struct efifs_priv {
diff --git a/fs/efivarfs.c b/fs/efivarfs.c
index 3641dd92917d..a4d8cc8d0268 100644
--- a/fs/efivarfs.c
+++ b/fs/efivarfs.c
@@ -24,13 +24,14 @@
 #include <linux/stat.h>
 #include <xfuncs.h>
 #include <fcntl.h>
-#include <efi.h>
-#include <efi/efi-mode.h>
 #include <wchar.h>
 #include <linux/err.h>
 #include <linux/ctype.h>
-#include <efi/efi-payload.h>
-#include <efi/efi-device.h>
+#include <efi/services.h>
+#include <efi/mode.h>
+#include <efi/variable.h>
+#include <efi/error.h>
+#include <efi/guid.h>
 
 struct efivarfs_inode {
 	s16 *name;
diff --git a/fs/ubootvarfs.c b/fs/ubootvarfs.c
index c725969b1ee3..c7fb97c8bded 100644
--- a/fs/ubootvarfs.c
+++ b/fs/ubootvarfs.c
@@ -15,7 +15,6 @@
 #include <linux/stat.h>
 #include <xfuncs.h>
 #include <fcntl.h>
-#include <efi.h>
 #include <wchar.h>
 #include <linux/err.h>
 #include <linux/ctype.h>
diff --git a/include/acpi.h b/include/acpi.h
index fa94d972e3fe..4bca3d421479 100644
--- a/include/acpi.h
+++ b/include/acpi.h
@@ -9,7 +9,7 @@
 #include <linux/string.h>
 #include <linux/types.h>
 #include <driver.h>
-#include <efi/efi-init.h>
+#include <efi/payload/init.h>
 
 /* Names within the namespace are 4 bytes long */
 
diff --git a/include/efi.h b/include/efi.h
deleted file mode 100644
index bd339ea097c3..000000000000
--- a/include/efi.h
+++ /dev/null
@@ -1,886 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-#ifndef _LINUX_EFI_H
-#define _LINUX_EFI_H
-
-/*
- * Extensible Firmware Interface
- * Based on 'Extensible Firmware Interface Specification' version 0.9, April 30, 1999
- *
- * Copyright (C) 1999 VA Linux Systems
- * Copyright (C) 1999 Walt Drummond <drummond@valinux.com>
- * Copyright (C) 1999, 2002-2003 Hewlett-Packard Co.
- *	David Mosberger-Tang <davidm@hpl.hp.com>
- *	Stephane Eranian <eranian@hpl.hp.com>
- */
-#include <linux/string.h>
-#include <linux/types.h>
-#include <efi/types.h>
-#include <efi/memtype.h>
-
-/* Bit mask for EFI status code with error */
-#define EFI_ERROR_MASK (1UL << (BITS_PER_LONG-1))
-
-#define EFI_SUCCESS                       0
-#define EFI_LOAD_ERROR                  ( 1 | EFI_ERROR_MASK)
-#define EFI_INVALID_PARAMETER           ( 2 | EFI_ERROR_MASK)
-#define EFI_UNSUPPORTED                 ( 3 | EFI_ERROR_MASK)
-#define EFI_BAD_BUFFER_SIZE             ( 4 | EFI_ERROR_MASK)
-#define EFI_BUFFER_TOO_SMALL            ( 5 | EFI_ERROR_MASK)
-#define EFI_NOT_READY                   ( 6 | EFI_ERROR_MASK)
-#define EFI_DEVICE_ERROR                ( 7 | EFI_ERROR_MASK)
-#define EFI_WRITE_PROTECTED             ( 8 | EFI_ERROR_MASK)
-#define EFI_OUT_OF_RESOURCES            ( 9 | EFI_ERROR_MASK)
-#define EFI_VOLUME_CORRUPTED            (10 | EFI_ERROR_MASK)
-#define EFI_VOLUME_FULL                 (11 | EFI_ERROR_MASK)
-#define EFI_NO_MEDIA                    (12 | EFI_ERROR_MASK)
-#define EFI_MEDIA_CHANGED               (13 | EFI_ERROR_MASK)
-#define EFI_NOT_FOUND                   (14 | EFI_ERROR_MASK)
-#define EFI_ACCESS_DENIED               (15 | EFI_ERROR_MASK)
-#define EFI_NO_RESPONSE                 (16 | EFI_ERROR_MASK)
-#define EFI_NO_MAPPING                  (17 | EFI_ERROR_MASK)
-#define EFI_TIMEOUT                     (18 | EFI_ERROR_MASK)
-#define EFI_NOT_STARTED                 (19 | EFI_ERROR_MASK)
-#define EFI_ALREADY_STARTED             (20 | EFI_ERROR_MASK)
-#define EFI_ABORTED                     (21 | EFI_ERROR_MASK)
-#define EFI_ICMP_ERROR                  (22 | EFI_ERROR_MASK)
-#define EFI_TFTP_ERROR                  (23 | EFI_ERROR_MASK)
-#define EFI_PROTOCOL_ERROR              (24 | EFI_ERROR_MASK)
-#define EFI_INCOMPATIBLE_VERSION        (25 | EFI_ERROR_MASK)
-#define EFI_SECURITY_VIOLATION          (26 | EFI_ERROR_MASK)
-#define EFI_CRC_ERROR                   (27 | EFI_ERROR_MASK)
-#define EFI_END_OF_MEDIA                (28 | EFI_ERROR_MASK)
-#define EFI_END_OF_FILE                 (31 | EFI_ERROR_MASK)
-#define EFI_INVALID_LANGUAGE            (32 | EFI_ERROR_MASK)
-#define EFI_COMPROMISED_DATA            (33 | EFI_ERROR_MASK)
-
-#define EFI_WARN_UNKNOWN_GLYPH		1
-#define EFI_WARN_DELETE_FAILURE		2
-#define EFI_WARN_WRITE_FAILURE		3
-#define EFI_WARN_BUFFER_TOO_SMALL	4
-#define EFI_WARN_STALE_DATA		5
-#define EFI_WARN_FILE_SYSTEM		6
-#define EFI_WARN_RESET_REQUIRED		7
-
-#define EFI_ERROR(a)	(((signed long) a) < 0)
-
-/*
- * Generic EFI table header
- */
-struct efi_table_hdr {
-	u64 signature;
-	u32 revision;
-	u32 headersize;
-	u32 crc32;
-	u32 reserved;
-};
-
-/*
- * Memory map descriptor:
- */
-
-struct efi_memory_desc {
-    u32 type; /* enum efi_memory_type */
-    u32 _padding;
-    efi_physical_addr_t phys_start;
-    void *virt_start;
-    u64 npages;
-    u64 attrs;
-};
-
-#define EFI_PAGE_SHIFT		12
-#define EFI_PAGE_SIZE		(1ULL << EFI_PAGE_SHIFT)
-#define EFI_PAGE_MASK		(EFI_PAGE_SIZE - 1)
-
-/*
- * Allocation types for calls to boottime->allocate_pages.
- */
-enum efi_allocate_type {
-	EFI_ALLOCATE_ANY_PAGES,
-	EFI_ALLOCATE_MAX_ADDRESS,
-	EFI_ALLOCATE_ADDRESS,
-	EFI_MAX_ALLOCATE_TYPE
-};
-
-typedef int (*efi_freemem_callback_t) (u64 start, u64 end, void *arg);
-
-/*
- * Types and defines for Time Services
- */
-#define EFI_TIME_ADJUST_DAYLIGHT 0x1
-#define EFI_TIME_IN_DAYLIGHT     0x2
-#define EFI_UNSPECIFIED_TIMEZONE 0x07ff
-
-struct efi_time {
-	u16 year;
-	u8 month;
-	u8 day;
-	u8 hour;
-	u8 minute;
-	u8 second;
-	u8 pad1;
-	u32 nanosecond;
-	s16 timezone;
-	u8 daylight;
-	u8 pad2;
-};
-
-struct efi_time_cap {
-	u32 resolution;
-	u32 accuracy;
-	u8 sets_to_zero;
-};
-
-enum efi_locate_search_type {
-	ALL_HANDLES,
-	BY_REGISTER_NOTIFY,
-	BY_PROTOCOL
-};
-
-struct efi_open_protocol_information_entry {
-	efi_handle_t agent_handle;
-	efi_handle_t controller_handle;
-	u32 attributes;
-	u32 open_count;
-};
-
-enum efi_timer_delay {
-	EFI_TIMER_CANCEL = 0,
-	EFI_TIMER_PERIODIC = 1,
-	EFI_TIMER_RELATIVE = 2
-};
-
-struct efi_event;
-
-/*
- * EFI Boot Services table
- */
-struct efi_boot_services {
-	struct efi_table_hdr hdr;
-	efi_status_t (EFIAPI *raise_tpl)(unsigned long new_tpl);
-	void (EFIAPI *restore_tpl)(unsigned long old_tpl);
-	efi_status_t (EFIAPI *allocate_pages)(int, int, size_t,
-				       efi_physical_addr_t *);
-	efi_status_t (EFIAPI *free_pages)(efi_physical_addr_t, size_t);
-	efi_status_t (EFIAPI *get_memory_map)(size_t *, struct efi_memory_desc *,
-					      ulong *, size_t *, u32 *);
-	efi_status_t (EFIAPI *allocate_pool)(int, size_t, void **);
-	efi_status_t (EFIAPI *free_pool)(void *);
-#define EFI_EVT_TIMER				0x80000000
-#define EFI_EVT_RUNTIME				0x40000000
-#define EFI_EVT_NOTIFY_WAIT			0x00000100
-#define EFI_EVT_NOTIFY_SIGNAL			0x00000200
-#define EFI_EVT_SIGNAL_EXIT_BOOT_SERVICES	0x00000201
-#define EFI_EVT_SIGNAL_VIRTUAL_ADDRESS_CHANGE	0x60000202
-
-#define EFI_TPL_APPLICATION	4
-#define EFI_TPL_CALLBACK	8
-#define EFI_TPL_NOTIFY		16
-#define EFI_TPL_HIGH_LEVEL	31
-	efi_status_t(EFIAPI *create_event)(u32 type , unsigned long tpl,
-			void (*fn) (struct efi_event *event, void *ctx),
-			void *ctx, struct efi_event **event);
-	efi_status_t(EFIAPI *set_timer)(struct efi_event *event, enum efi_timer_delay type, uint64_t time);
-	efi_status_t(EFIAPI *wait_for_event)(size_t number_of_events, struct efi_event **event,
-			size_t *index);
-	efi_status_t (EFIAPI *signal_event)(struct efi_event *event);
-	efi_status_t(EFIAPI *close_event)(struct efi_event *event);
-#define EFI_NATIVE_INTERFACE	0x00000000
-	efi_status_t (EFIAPI *check_event)(struct efi_event *event);
-	efi_status_t (EFIAPI *install_protocol_interface)(efi_handle_t *handle, const efi_guid_t *protocol,
-			int protocol_interface_type, void *protocol_interface);
-	efi_status_t (EFIAPI *reinstall_protocol_interface)(efi_handle_t handle, const efi_guid_t *protocol,
-			void *old_interface, void *new_interface);
-	efi_status_t (EFIAPI *uninstall_protocol_interface)(efi_handle_t handle,
-			const efi_guid_t *protocol, void *protocol_interface);
-
-	efi_status_t (EFIAPI *handle_protocol)(efi_handle_t, const efi_guid_t *, void **);
-	void *__reserved;
-	efi_status_t (EFIAPI *register_protocol_notify)(const efi_guid_t *protocol, struct efi_event *event,
-			void **registration);
-	efi_status_t (EFIAPI *locate_handle) (enum efi_locate_search_type search_type,
-			const efi_guid_t *protocol, void *search_key,
-			size_t *buffer_size, efi_handle_t *buffer);
-	efi_status_t (EFIAPI *locate_device_path)(const efi_guid_t *protocol,
-			struct efi_device_path **device_path, efi_handle_t *device);
-	efi_status_t (EFIAPI *install_configuration_table)(const efi_guid_t *guid, void *table);
-	efi_status_t (EFIAPI *load_image)(bool boot_policiy, efi_handle_t parent_image,
-			struct efi_device_path *file_path, void *source_buffer,
-			size_t source_size, efi_handle_t *image);
-	efi_status_t (EFIAPI *start_image)(efi_handle_t handle,
-			size_t *exitdata_size, u16 **exitdata);
-	efi_status_t(EFIAPI *exit)(efi_handle_t handle,  efi_status_t exit_status,
-			size_t exitdata_size, u16 *exitdata);
-	efi_status_t (EFIAPI *unload_image)(efi_handle_t handle);
-	efi_status_t (EFIAPI *exit_boot_services)(efi_handle_t, unsigned long);
-	void *get_next_monotonic_count;
-	efi_status_t (EFIAPI *stall)(unsigned long usecs);
-	efi_status_t (EFIAPI *set_watchdog_timer)(unsigned long timeout,
-						  uint64_t watchdog_code,
-						  size_t data_size,
-						  u16 *watchdog_data);
-	efi_status_t(EFIAPI *connect_controller)(efi_handle_t controller_handle,
-			efi_handle_t *driver_image_handle,
-			struct efi_device_path *remaining_device_path,
-			bool Recursive);
-	efi_status_t (EFIAPI *disconnect_controller)(efi_handle_t controller_handle,
-			efi_handle_t driver_image_handle, efi_handle_t child_handle);
-#define EFI_OPEN_PROTOCOL_BY_HANDLE_PROTOCOL  0x00000001
-#define EFI_OPEN_PROTOCOL_GET_PROTOCOL        0x00000002
-#define EFI_OPEN_PROTOCOL_TEST_PROTOCOL       0x00000004
-#define EFI_OPEN_PROTOCOL_BY_CHILD_CONTROLLER 0x00000008
-#define EFI_OPEN_PROTOCOL_BY_DRIVER           0x00000010
-#define EFI_OPEN_PROTOCOL_EXCLUSIVE           0x00000020
-	efi_status_t (EFIAPI *open_protocol)(efi_handle_t handle, const efi_guid_t *protocol,
-			void ** interface, efi_handle_t agent_handle,
-			efi_handle_t controller_handle, u32 attributes);
-	efi_status_t (EFIAPI *close_protocol)(efi_handle_t handle, const efi_guid_t *protocol,
-					      efi_handle_t agent, efi_handle_t controller);
-	efi_status_t(EFIAPI *open_protocol_information)(efi_handle_t handle, const efi_guid_t *Protocol,
-			struct efi_open_protocol_information_entry **entry_buffer,
-			size_t *entry_count);
-	efi_status_t (EFIAPI *protocols_per_handle)(efi_handle_t handle,
-			efi_guid_t ***protocol_buffer,
-			size_t *protocols_buffer_count);
-	efi_status_t (EFIAPI *locate_handle_buffer) (
-			enum efi_locate_search_type search_type,
-			const efi_guid_t *protocol, void *search_key,
-			size_t *no_handles, efi_handle_t **buffer);
-	efi_status_t (EFIAPI *locate_protocol)(const efi_guid_t *protocol,
-			void *registration, void **protocol_interface);
-	efi_status_t (EFIAPI *install_multiple_protocol_interfaces)(efi_handle_t *handle, ...);
-	efi_status_t (EFIAPI *uninstall_multiple_protocol_interfaces)(efi_handle_t handle, ...);
-	efi_status_t (EFIAPI *calculate_crc32)(const void *data,
-			size_t data_size, uint32_t *crc32);
-	void (EFIAPI *copy_mem)(void *destination, const void *source, size_t length);
-	void (EFIAPI *set_mem)(void *buffer, size_t size, uint8_t value);
-	void *create_event_ex;
-};
-
-extern struct efi_boot_services *BS;
-
-/*
- * Types and defines for EFI ResetSystem
- */
-enum efi_reset_type {
-	EFI_RESET_COLD = 0,
-	EFI_RESET_WARM = 1,
-	EFI_RESET_SHUTDOWN = 2,
-	EFI_RESET_PLATFORM_SPECIFIC = 3,
-};
-
-/*
- * EFI Runtime Services table
- */
-#define EFI_RUNTIME_SERVICES_SIGNATURE ((u64)0x5652453544e5552ULL)
-#define EFI_RUNTIME_SERVICES_REVISION  0x00010000
-
-struct efi_capsule_header;
-
-struct efi_runtime_services {
-	struct efi_table_hdr hdr;
-	efi_status_t (EFIAPI *get_time)(struct efi_time *time,
-					struct efi_time_cap *capabilities);
-	efi_status_t (EFIAPI *set_time)(struct efi_time *time);
-	efi_status_t (EFIAPI *get_wakeup_time)(char *enabled, char *pending,
-				       struct efi_time *time);
-	efi_status_t (EFIAPI *set_wakeup_time)(char enabled, struct efi_time *time);
-	efi_status_t (EFIAPI *set_virtual_address_map)(size_t memory_map_size,
-				       size_t descriptor_size,
-				       uint32_t descriptor_version,
-				       struct efi_memory_desc *virtmap);
-	efi_status_t (*convert_pointer)(unsigned long dbg, void **address);
-	efi_status_t (EFIAPI *get_variable)(efi_char16_t *variable_name, const efi_guid_t *vendor,
-			u32 *Attributes, size_t *data_size, void *data);
-	efi_status_t (EFIAPI *get_next_variable)(size_t *variable_name_size,
-			efi_char16_t *variable_name, efi_guid_t *vendor);
-	efi_status_t (EFIAPI *set_variable)(efi_char16_t *variable_name, const efi_guid_t *vendor,
-			u32 Attributes, size_t data_size, const void *data);
-	efi_status_t (EFIAPI *get_next_high_mono_count)(uint32_t *high_count);
-	void (EFIAPI *reset_system)(enum efi_reset_type reset_type, efi_status_t reset_status,
-			size_t data_size, void *reset_data);
-	efi_status_t (EFIAPI *update_capsule)(struct efi_capsule_header **capsule_header_array,
-					      size_t capsule_count,
-					      u64 scatter_gather_list);
-	efi_status_t (EFIAPI *query_capsule_caps)(struct efi_capsule_header **capsule_header_array,
-						  size_t capsule_count,
-						  u64 *maximum_capsule_size,
-						  u32 *reset_type);
-	void *query_variable_info;
-};
-
-extern struct efi_runtime_services *RT;
-
-/* EFI event group GUID definitions */
-#define EFI_EVENT_GROUP_EXIT_BOOT_SERVICES \
-	EFI_GUID(0x27abf055, 0xb1b8, 0x4c26, 0x80, 0x48, \
-		 0x74, 0x8f, 0x37, 0xba, 0xa2, 0xdf)
-
-#define EFI_EVENT_GROUP_VIRTUAL_ADDRESS_CHANGE \
-	EFI_GUID(0x13fa7698, 0xc831, 0x49c7, 0x87, 0xea, \
-		 0x8f, 0x43, 0xfc, 0xc2, 0x51, 0x96)
-
-#define EFI_EVENT_GROUP_MEMORY_MAP_CHANGE \
-	EFI_GUID(0x78bee926, 0x692f, 0x48fd, 0x9e, 0xdb, \
-		 0x01, 0x42, 0x2e, 0xf0, 0xd7, 0xab)
-
-#define EFI_EVENT_GROUP_READY_TO_BOOT \
-	EFI_GUID(0x7ce88fb3, 0x4bd7, 0x4679, 0x87, 0xa8, \
-		 0xa8, 0xd8, 0xde, 0xe5, 0x0d, 0x2b)
-
-#define EFI_EVENT_GROUP_RESET_SYSTEM \
-	EFI_GUID(0x62da6a56, 0x13fb, 0x485a, 0xa8, 0xda, \
-		 0xa3, 0xdd, 0x79, 0x12, 0xcb, 0x6b)
-
-/*
- *  EFI Configuration Table and GUID definitions
- */
-#define EFI_NULL_GUID \
-    EFI_GUID(  0x00000000, 0x0000, 0x0000, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 )
-
-#define EFI_MPS_TABLE_GUID    \
-    EFI_GUID(  0xeb9d2d2f, 0x2d88, 0x11d3, 0x9a, 0x16, 0x0, 0x90, 0x27, 0x3f, 0xc1, 0x4d )
-
-#define EFI_ACPI_TABLE_GUID    \
-    EFI_GUID(  0xeb9d2d30, 0x2d88, 0x11d3, 0x9a, 0x16, 0x0, 0x90, 0x27, 0x3f, 0xc1, 0x4d )
-
-#define EFI_ACPI_20_TABLE_GUID    \
-    EFI_GUID(  0x8868e871, 0xe4f1, 0x11d3, 0xbc, 0x22, 0x0, 0x80, 0xc7, 0x3c, 0x88, 0x81 )
-
-#define EFI_SMBIOS_TABLE_GUID    \
-    EFI_GUID(  0xeb9d2d31, 0x2d88, 0x11d3, 0x9a, 0x16, 0x0, 0x90, 0x27, 0x3f, 0xc1, 0x4d )
-
-#define EFI_SAL_SYSTEM_TABLE_GUID    \
-    EFI_GUID(  0xeb9d2d32, 0x2d88, 0x11d3, 0x9a, 0x16, 0x0, 0x90, 0x27, 0x3f, 0xc1, 0x4d )
-
-#define EFI_HCDP_TABLE_GUID	\
-    EFI_GUID(  0xf951938d, 0x620b, 0x42ef, 0x82, 0x79, 0xa8, 0x4b, 0x79, 0x61, 0x78, 0x98 )
-
-#define EFI_UGA_IO_PROTOCOL_GUID \
-    EFI_GUID(  0x61a4d49e, 0x6f68, 0x4f1b, 0xb9, 0x22, 0xa8, 0x6e, 0xed, 0xb, 0x7, 0xa2 )
-
-#define EFI_GLOBAL_VARIABLE_GUID \
-    EFI_GUID(  0x8be4df61, 0x93ca, 0x11d2, 0xaa, 0x0d, 0x00, 0xe0, 0x98, 0x03, 0x2b, 0x8c )
-
-#define EFI_UV_SYSTEM_TABLE_GUID \
-    EFI_GUID(  0x3b13a7d4, 0x633e, 0x11dd, 0x93, 0xec, 0xda, 0x25, 0x56, 0xd8, 0x95, 0x93 )
-
-#define EFI_LINUX_EFI_CRASH_GUID \
-    EFI_GUID(  0xcfc8fc79, 0xbe2e, 0x4ddc, 0x97, 0xf0, 0x9f, 0x98, 0xbf, 0xe2, 0x98, 0xa0 )
-
-#define EFI_LOADED_IMAGE_PROTOCOL_GUID \
-    EFI_GUID(  0x5b1b31a1, 0x9562, 0x11d2, 0x8e, 0x3f, 0x00, 0xa0, 0xc9, 0x69, 0x72, 0x3b )
-
-#define EFI_LOADED_IMAGE_DEVICE_PATH_PROTOCOL_GUID \
-    EFI_GUID(0xbc62157e, 0x3e33, 0x4fec, 0x99, 0x20, 0x2d, 0x3b, 0x36, 0xd7, 0x50, 0xdf)
-
-#define EFI_GRAPHICS_OUTPUT_PROTOCOL_GUID \
-    EFI_GUID(  0x9042a9de, 0x23dc, 0x4a38, 0x96, 0xfb, 0x7a, 0xde, 0xd0, 0x80, 0x51, 0x6a )
-
-#define EFI_UGA_PROTOCOL_GUID \
-    EFI_GUID(  0x982c298b, 0xf4fa, 0x41cb, 0xb8, 0x38, 0x77, 0xaa, 0x68, 0x8f, 0xb8, 0x39 )
-
-#define EFI_PCI_IO_PROTOCOL_GUID \
-    EFI_GUID(  0x4cf5b200, 0x68b8, 0x4ca5, 0x9e, 0xec, 0xb2, 0x3e, 0x3f, 0x50, 0x2, 0x9a )
-
-#define EFI_USB_IO_PROTOCOL_GUID \
-    EFI_GUID(0x2B2F68D6, 0x0CD2, 0x44cf, 0x8E, 0x8B, 0xBB, 0xA2, 0x0B, 0x1B, 0x5B, 0x75)
-
-#define EFI_FILE_INFO_GUID \
-    EFI_GUID(  0x9576e92, 0x6d3f, 0x11d2, 0x8e, 0x39, 0x00, 0xa0, 0xc9, 0x69, 0x72, 0x3b )
-
-#define EFI_SIMPLE_FILE_SYSTEM_GUID \
-    EFI_GUID(  0x964e5b22, 0x6459, 0x11d2, 0x8e, 0x39, 0x00, 0xa0, 0xc9, 0x69, 0x72, 0x3b )
-
-#define EFI_FILE_SYSTEM_INFO_GUID \
-    EFI_GUID(0x09576e93, 0x6d3f, 0x11d2, 0x8e, 0x39, 0x00, 0xa0, 0xc9, 0x69, 0x72, 0x3b)
-
-#define EFI_FILE_SYSTEM_VOLUME_LABEL_ID \
-    EFI_GUID(0xdb47d7d3, 0xfe81, 0x11d3, 0x9a, 0x35, 0x00, 0x90, 0x27, 0x3f, 0xC1, 0x4d)
-
-#define EFI_DEVICE_TREE_GUID \
-    EFI_GUID(  0xb1b621d5, 0xf19c, 0x41a5, 0x83, 0x0b, 0xd9, 0x15, 0x2c, 0x69, 0xaa, 0xe0 )
-
-#define EFI_DEVICE_PATH_PROTOCOL_GUID \
-    EFI_GUID(  0x9576e91, 0x6d3f, 0x11d2, 0x8e, 0x39, 0x0, 0xa0, 0xc9, 0x69, 0x72, 0x3b )
-
-#define EFI_DEVICE_PATH_TO_TEXT_PROTOCOL_GUID \
-    EFI_GUID( 0x8b843e20, 0x8132, 0x4852, 0x90, 0xcc, 0x55, 0x1a, 0x4e, 0x4a, 0x7f, 0x1c)
-
-#define EFI_DEVICE_PATH_UTILITIES_PROTOCOL_GUID \
-    EFI_GUID(0x0379be4e, 0xd706, 0x437d, 0xb0, 0x37, 0xed, 0xb8, 0x2f, 0xb7, 0x72, 0xa4)
-
-#define EFI_SIMPLE_NETWORK_PROTOCOL_GUID \
-    EFI_GUID( 0xA19832B9, 0xAC25, 0x11D3, 0x9A, 0x2D, 0x00, 0x90, 0x27, 0x3F, 0xC1, 0x4D )
-
-#define EFI_SIMPLE_FILE_SYSTEM_PROTOCOL_GUID \
-    EFI_GUID(0x0964e5b22, 0x6459, 0x11d2, 0x8e, 0x39, 0x00, 0xa0, 0xc9, 0x69, 0x72, 0x3b)
-
-#define EFI_UNKNOWN_DEVICE_GUID \
-    EFI_GUID(0xcf31fac5, 0xc24e, 0x11d2, 0x85, 0xf3, 0x0, 0xa0, 0xc9, 0x3e, 0xc9, 0x3b)
-
-#define EFI_BLOCK_IO_PROTOCOL_GUID \
-    EFI_GUID(0x964e5b21, 0x6459, 0x11d2, 0x8e, 0x39, 0x00, 0xa0, 0xc9, 0x69, 0x72, 0x3b)
-
-/* additional GUID from EDK2 */
-#define EFI_FIRMWARE_VOLUME2_PROTOCOL_GUID \
-    EFI_GUID(0x220e73b6, 0x6bdb, 0x4413, 0x84, 0x5, 0xb9, 0x74, 0xb1, 0x8, 0x61, 0x9a)
-
-#define EFI_FIRMWARE_VOLUME_BLOCK_PROTOCOL_GUID \
-    EFI_GUID(0x8f644fa9, 0xe850, 0x4db1, 0x9c, 0xe2, 0xb, 0x44, 0x69, 0x8e, 0x8d, 0xa4)
-
-#define EFI_PCI_ROOT_BRIDGE_IO_PROTOCOL_GUID \
-    EFI_GUID(0x2f707ebb, 0x4a1a, 0x11d4, 0x9a, 0x38, 0x00, 0x90, 0x27, 0x3f, 0xc1, 0x4d)
-
-#define EFI_ISA_ACPI_PROTOCOL_GUID \
-    EFI_GUID(0x64a892dc, 0x5561, 0x4536, 0x92, 0xc7, 0x79, 0x9b, 0xfc, 0x18, 0x33, 0x55)
-
-#define EFI_ISA_IO_PROTOCOL_GUID \
-    EFI_GUID(0x7ee2bd44, 0x3da0, 0x11d4, 0x9a, 0x38, 0x0, 0x90, 0x27, 0x3f, 0xc1, 0x4d)
-
-#define EFI_STANDARD_ERROR_DEVICE_GUID \
-    EFI_GUID(0xd3b36f2d, 0xd551, 0x11d4, 0x9a, 0x46, 0x0, 0x90, 0x27, 0x3f, 0xc1, 0x4d)
-
-#define EFI_CONSOLE_OUT_DEVICE_GUID \
-    EFI_GUID(0xd3b36f2c, 0xd551, 0x11d4, 0x9a, 0x46, 0x0, 0x90, 0x27, 0x3f, 0xc1, 0x4d)
-
-#define EFI_CONSOLE_IN_DEVICE_GUID \
-    EFI_GUID(0xd3b36f2b, 0xd551, 0x11d4, 0x9a, 0x46, 0x0, 0x90, 0x27, 0x3f, 0xc1, 0x4d)
-
-#define EFI_SIMPLE_TEXT_OUT_PROTOCOL_GUID \
-    EFI_GUID(0x387477c2, 0x69c7, 0x11d2, 0x8e, 0x39, 0x0, 0xa0, 0xc9, 0x69, 0x72, 0x3b)
-
-#define EFI_SIMPLE_TEXT_INPUT_EX_PROTOCOL_GUID \
-    EFI_GUID(0xdd9e7534, 0x7762, 0x4698, 0x8c, 0x14, 0xf5, 0x85, 0x17, 0xa6, 0x25, 0xaa)
-
-#define EFI_SIMPLE_TEXT_IN_PROTOCOL_GUID \
-    EFI_GUID(0x387477c1, 0x69c7, 0x11d2, 0x8e, 0x39, 0x0, 0xa0, 0xc9, 0x69, 0x72, 0x3b)
-
-#define EFI_CONSOLE_CONTROL_GUID \
-    EFI_GUID(0xf42f7782, 0x12e, 0x4c12, 0x99, 0x56, 0x49, 0xf9, 0x43, 0x4, 0xf7, 0x21)
-
-#define EFI_DISK_IO_PROTOCOL_GUID \
-    EFI_GUID(0xce345171, 0xba0b, 0x11d2, 0x8e, 0x4f, 0x0, 0xa0, 0xc9, 0x69, 0x72, 0x3b)
-
-#define EFI_IDE_CONTROLLER_INIT_PROTOCOL_GUID \
-    EFI_GUID(0xa1e37052, 0x80d9, 0x4e65, 0xa3, 0x17, 0x3e, 0x9a, 0x55, 0xc4, 0x3e, 0xc9)
-
-#define EFI_DISK_INFO_PROTOCOL_GUID \
-    EFI_GUID(0xd432a67f, 0x14dc, 0x484b, 0xb3, 0xbb, 0x3f, 0x2, 0x91, 0x84, 0x93, 0x27)
-
-#define EFI_SERIAL_IO_PROTOCOL_GUID \
-    EFI_GUID(0xbb25cf6f, 0xf1d4, 0x11d2, 0x9a, 0x0c, 0x00, 0x90, 0x27, 0x3f, 0xc1, 0xfd)
-
-#define EFI_BUS_SPECIFIC_DRIVER_OVERRIDE_PROTOCOL_GUID \
-    EFI_GUID(0x3bc1b285, 0x8a15, 0x4a82, 0xaa, 0xbf, 0x4d, 0x7d, 0x13, 0xfb, 0x32, 0x65)
-
-#define EFI_LOAD_FILE2_PROTOCOL_GUID \
-    EFI_GUID(0x4006c0c1, 0xfcb3, 0x403e, 0x99, 0x6d, 0x4a, 0x6c, 0x87, 0x24, 0xe0, 0x6d)
-
-#define EFI_MTFTP4_SERVICE_BINDING_PROTOCOL_GUID \
-    EFI_GUID(0x2fe800be, 0x8f01, 0x4aa6, 0x94, 0x6b, 0xd7, 0x13, 0x88, 0xe1, 0x83, 0x3f)
-
-#define EFI_DHCP4_PROTOCOL_GUID \
-    EFI_GUID(0x9d9a39d8, 0xbd42, 0x4a73, 0xa4, 0xd5, 0x8e, 0xe9, 0x4b, 0xe1, 0x13, 0x80)
-
-#define EFI_UDP4_SERVICE_BINDING_PROTOCOL_GUID \
-    EFI_GUID(0x83f01464, 0x99bd, 0x45e5, 0xb3, 0x83, 0xaf, 0x63, 0x05, 0xd8, 0xe9, 0xe6)
-
-#define EFI_TCP4_SERVICE_BINDING_PROTOCOL_GUID \
-    EFI_GUID(0x00720665, 0x67EB, 0x4a99, 0xBA, 0xF7, 0xD3, 0xC3, 0x3A, 0x1C, 0x7C, 0xC9)
-
-#define EFI_IP4_SERVICE_BINDING_PROTOCOL_GUID \
-    EFI_GUID(0xc51711e7, 0xb4bf, 0x404a, 0xbf, 0xb8, 0x0a, 0x04, 0x8e, 0xf1, 0xff, 0xe4)
-
-#define EFI_IP4_CONFIG_PROTOCOL_GUID \
-    EFI_GUID(0x3b95aa31, 0x3793, 0x434b, 0x86, 0x67, 0xc8, 0x07, 0x08, 0x92, 0xe0, 0x5e)
-
-#define EFI_ARP_SERVICE_BINDING_PROTOCOL_GUID\
-    EFI_GUID(0xf44c00ee, 0x1f2c, 0x4a00, 0xaa, 0x9, 0x1c, 0x9f, 0x3e, 0x8, 0x0, 0xa3)
-
-#define EFI_MANAGED_NETWORK_SERVICE_BINDING_PROTOCOL_GUID \
-    EFI_GUID(0xf36ff770, 0xa7e1, 0x42cf, 0x9e, 0xd2, 0x56, 0xf0, 0xf2, 0x71, 0xf4, 0x4c)
-
-#define EFI_VLAN_CONFIG_PROTOCOL_GUID \
-    EFI_GUID(0x9e23d768, 0xd2f3, 0x4366, 0x9f, 0xc3, 0x3a, 0x7a, 0xba, 0x86, 0x43, 0x74)
-
-#define EFI_HII_CONFIG_ACCESS_PROTOCOL_GUID \
-    EFI_GUID(0x330d4706, 0xf2a0, 0x4e4f, 0xa3, 0x69, 0xb6, 0x6f, 0xa8, 0xd5, 0x43, 0x85)
-
-#define EFI_LOAD_FILE_PROTOCOL_GUID \
-    EFI_GUID(0x56ec3091, 0x954c, 0x11d2, 0x8e, 0x3f, 0x00, 0xa0, 0xc9, 0x69, 0x72, 0x3b)
-
-#define EFI_COMPONENT_NAME2_PROTOCOL_GUID \
-    EFI_GUID(0x6a7a5cff, 0xe8d9, 0x4f70, 0xba, 0xda, 0x75, 0xab, 0x30, 0x25, 0xce, 0x14)
-
-#define EFI_IDEBUSDXE_INF_GUID \
-    EFI_GUID(0x69fd8e47, 0xa161, 0x4550, 0xb0, 0x1a, 0x55, 0x94, 0xce, 0xb2, 0xb2, 0xb2)
-
-#define EFI_TERMINALDXE_INF_GUID \
-    EFI_GUID(0x9e863906, 0xa40f, 0x4875, 0x97, 0x7f, 0x5b, 0x93, 0xff, 0x23, 0x7f, 0xc6)
-
-#define EFI_NETWORK_INTERFACE_IDENTIFIER_PROTOCOL_GUID_31 \
-    EFI_GUID(0x1aced566, 0x76ed, 0x4218, 0xbc, 0x81, 0x76, 0x7f, 0x1f, 0x97, 0x7a, 0x89)
-
-#define EFI_NETWORK_INTERFACE_IDENTIFIER_PROTOCOL_GUID \
-    EFI_GUID(0xe18541cd, 0xf755, 0x4f73, 0x92, 0x8d, 0x64, 0x3c, 0x8a, 0x79, 0xb2, 0x29)
-
-#define EFI_ISCSIDXE_INF_GUID \
-    EFI_GUID(0x4579b72d, 0x7ec4, 0x4dd4, 0x84, 0x86, 0x08, 0x3c, 0x86, 0xb1, 0x82, 0xa7)
-
-#define EFI_VLANCONFIGDXE_INF_GUID \
-    EFI_GUID(0xe4f61863, 0xfe2c, 0x4b56, 0xa8, 0xf4, 0x08, 0x51, 0x9b, 0xc4, 0x39, 0xdf)
-
-#define EFI_TIMESTAMP_PROTOCOL_GUID \
-    EFI_GUID(0xafbfde41, 0x2e6e, 0x4262, 0xba, 0x65, 0x62, 0xb9, 0x23, 0x6e, 0x54, 0x95)
-
-#define EFI_I2C_MASTER_PROTOCOL_GUID \
-	EFI_GUID(0xcd72881f, 0x45b5, 0x4feb, 0x98, 0xc8, 0x31, 0x3d, 0xa8, 0x11, 0x74, 0x62)
-
-/* barebox specific GUIDs */
-#define EFI_BAREBOX_VENDOR_GUID \
-    EFI_GUID(0x5b91f69c, 0x8b88, 0x4a2b, 0x92, 0x69, 0x5f, 0x1d, 0x80, 0x2b, 0x51, 0x75)
-
-/* for systemd */
-#define EFI_SYSTEMD_VENDOR_GUID \
-    EFI_GUID(0x4a67b082, 0x0a4c, 0x41cf, 0xb6, 0xc7, 0x44, 0x0b, 0x29, 0xbb, 0x8c, 0x4f)
-
-/* for TPM 1.2 */
-#define EFI_TCG_PROTOCOL_GUID \
-    EFI_GUID(0xf541796d, 0xa62e, 0x4954, 0xa7, 0x75, 0x95, 0x84, 0xf6, 0x1b, 0x9c, 0xdd)
-
-/* for TPM 2.0 */
-#define EFI_TCG2_PROTOCOL_GUID \
-    EFI_GUID(0x607f766c, 0x7455, 0x42be, 0x93, 0x0b, 0xe4, 0xd7, 0x6d, 0xb2, 0x72, 0x0f)
-
-#define EFI_DT_FIXUP_PROTOCOL_GUID \
-    EFI_GUID(0xe617d64c, 0xfe08, 0x46da, 0xf4, 0xdc, 0xbb, 0xd5, 0x87, 0x0c, 0x73, 0x00)
-
-#define EFI_DRIVER_BINDING_PROTOCOL_GUID \
-    EFI_GUID(0x18a031ab, 0xb443, 0x4d1a, 0xa5, 0xc0, 0x0c, 0x09, 0x26, 0x1e, 0x9f, 0x71)
-
-#define EFI_LINUX_INITRD_MEDIA_GUID \
-	EFI_GUID(0x5568e427, 0x68fc, 0x4f3d,  0xac, 0x74, 0xca, 0x55, 0x52, 0x31, 0xcc, 0x68)
-
-struct efi_driver_binding_protocol {
-	efi_status_t (EFIAPI * supported)(
-			struct efi_driver_binding_protocol *this,
-			efi_handle_t controller_handle,
-			struct efi_device_path *remaining_device_path);
-	efi_status_t (EFIAPI * start)(
-			struct efi_driver_binding_protocol *this,
-			efi_handle_t controller_handle,
-			struct efi_device_path *remaining_device_path);
-	efi_status_t (EFIAPI * stop)(
-			struct efi_driver_binding_protocol *this,
-			efi_handle_t controller_handle,
-			size_t number_of_children,
-			efi_handle_t *child_handle_buffer);
-	u32 version;
-	efi_handle_t image_handle;
-	efi_handle_t driver_binding_handle;
-};
-
-extern efi_guid_t efi_file_info_id;
-extern efi_guid_t efi_simple_file_system_protocol_guid;
-extern efi_guid_t efi_file_system_info_guid;
-extern efi_guid_t efi_system_volume_label_id;
-extern efi_guid_t efi_device_path_protocol_guid;
-extern efi_guid_t efi_loaded_image_protocol_guid;
-extern efi_guid_t efi_unknown_device_guid;
-extern efi_guid_t efi_null_guid;
-extern efi_guid_t efi_global_variable_guid;
-extern efi_guid_t efi_block_io_protocol_guid;
-extern efi_guid_t efi_rng_protocol_guid;
-extern efi_guid_t efi_barebox_vendor_guid;
-extern efi_guid_t efi_systemd_vendor_guid;
-extern efi_guid_t efi_fdt_guid;
-extern efi_guid_t efi_loaded_image_device_path_guid;
-extern const efi_guid_t efi_device_path_to_text_protocol_guid;
-extern const efi_guid_t efi_dt_fixup_protocol_guid;
-extern const efi_guid_t efi_driver_binding_protocol_guid;
-extern const efi_guid_t efi_guid_event_group_exit_boot_services;
-extern const efi_guid_t efi_guid_event_group_virtual_address_change;
-extern const efi_guid_t efi_guid_event_group_memory_map_change;
-extern const efi_guid_t efi_guid_event_group_ready_to_boot;
-extern const efi_guid_t efi_guid_event_group_reset_system;
-extern const efi_guid_t efi_load_file_protocol_guid;
-extern const efi_guid_t efi_load_file2_protocol_guid;
-extern const efi_guid_t efi_device_path_utilities_protocol_guid;
-extern const efi_guid_t efi_linux_initrd_media_guid;
-
-struct efi_config_table {
-	efi_guid_t guid;
-	void * table;
-};
-
-#define for_each_efi_config_table(t) \
-	for (t = efi_sys_table->tables; \
-	     t - efi_sys_table->tables < efi_sys_table->nr_tables; \
-	     t++)
-
-#define EFI_SYSTEM_TABLE_SIGNATURE ((u64)0x5453595320494249ULL)
-
-#define EFI_2_30_SYSTEM_TABLE_REVISION  ((2 << 16) | (30))
-#define EFI_2_20_SYSTEM_TABLE_REVISION  ((2 << 16) | (20))
-#define EFI_2_10_SYSTEM_TABLE_REVISION  ((2 << 16) | (10))
-#define EFI_2_00_SYSTEM_TABLE_REVISION  ((2 << 16) | (00))
-#define EFI_1_10_SYSTEM_TABLE_REVISION  ((1 << 16) | (10))
-#define EFI_1_02_SYSTEM_TABLE_REVISION  ((1 << 16) | (02))
-
-struct efi_system_table {
-	struct efi_table_hdr hdr;
-	efi_char16_t *fw_vendor;	/* physical addr of CHAR16 vendor string */
-	u32 fw_revision;
-	efi_handle_t con_in_handle;
-	struct efi_simple_text_input_protocol *con_in;
-	efi_handle_t con_out_handle;
-	struct efi_simple_text_output_protocol *con_out;
-	efi_handle_t stderr_handle;
-	struct efi_simple_text_output_protocol *std_err;
-	struct efi_runtime_services *runtime;
-	struct efi_boot_services *boottime;
-	size_t nr_tables;
-	struct efi_config_table *tables;
-};
-
-struct efi_loaded_image {
-	u32 revision;
-	efi_handle_t parent_handle;
-	struct efi_system_table *system_table;
-	efi_handle_t device_handle;
-	void *file_path;
-	void *reserved;
-	u32 load_options_size;
-	void *load_options;
-	void *image_base;
-	__aligned_u64 image_size;
-	unsigned int image_code_type;
-	unsigned int image_data_type;
-	efi_status_t (EFIAPI *unload)(efi_handle_t image_handle);
-};
-
-/* Open modes */
-#define EFI_FILE_MODE_READ      0x0000000000000001
-#define EFI_FILE_MODE_WRITE     0x0000000000000002
-#define EFI_FILE_MODE_CREATE    0x8000000000000000
-
-/* File attributes */
-#define EFI_FILE_READ_ONLY      0x0000000000000001
-#define EFI_FILE_HIDDEN         0x0000000000000002
-#define EFI_FILE_SYSTEM         0x0000000000000004
-#define EFI_FILE_RESERVIED      0x0000000000000008
-#define EFI_FILE_DIRECTORY      0x0000000000000010
-#define EFI_FILE_ARCHIVE        0x0000000000000020
-#define EFI_FILE_VALID_ATTR     0x0000000000000037
-
-struct efi_file_io_token {
-	struct efi_event *event;
-	efi_status_t status;
-	size_t buffer_size;
-	void *buffer;
-};
-
-#define EFI_FILE_HANDLE_REVISION         0x00010000
-#define EFI_FILE_HANDLE_REVISION2        0x00020000
-#define EFI_FILE_HANDLE_LATEST_REVISION  EFI_FILE_PROTOCOL_REVISION2
-struct efi_file_handle {
-	uint64_t Revision;
-	efi_status_t(EFIAPI *open)(struct efi_file_handle *File,
-			struct efi_file_handle **NewHandle, efi_char16_t *FileName,
-			uint64_t OpenMode, uint64_t Attributes);
-	efi_status_t(EFIAPI *close)(struct efi_file_handle *File);
-	efi_status_t(EFIAPI *delete)(struct efi_file_handle *File);
-	efi_status_t(EFIAPI *read)(struct efi_file_handle *File, size_t *BufferSize,
-			void *Buffer);
-	efi_status_t(EFIAPI *write)(struct efi_file_handle *File,
-			size_t *BufferSize, void *Buffer);
-	efi_status_t(EFIAPI *get_position)(struct efi_file_handle *File,
-			uint64_t *Position);
-	efi_status_t(EFIAPI *set_position)(struct efi_file_handle *File,
-			uint64_t Position);
-	efi_status_t(EFIAPI *get_info)(struct efi_file_handle *File,
-			const efi_guid_t *InformationType, size_t *BufferSize,
-			void *Buffer);
-	efi_status_t(EFIAPI *set_info)(struct efi_file_handle *File,
-			const efi_guid_t *InformationType, size_t BufferSize,
-			void *Buffer);
-	efi_status_t(EFIAPI *flush)(struct efi_file_handle *File);
-	efi_status_t (EFIAPI *open_ex)(struct efi_file_handle *this,
-			struct efi_file_handle **new_handle,
-			u16 *file_name, u64 open_mode, u64 attributes,
-			struct efi_file_io_token *token);
-	efi_status_t (EFIAPI *read_ex)(struct efi_file_handle *this,
-			struct efi_file_io_token *token);
-	efi_status_t (EFIAPI *write_ex)(struct efi_file_handle *this,
-			struct efi_file_io_token *token);
-	efi_status_t (EFIAPI *flush_ex)(struct efi_file_handle *this,
-			struct efi_file_io_token *token);
-};
-
-#define EFI_SIMPLE_FILE_SYSTEM_PROTOCOL_REVISION 0x00010000
-
-struct efi_load_file_protocol {
-	efi_status_t (EFIAPI *load_file)(struct efi_load_file_protocol *this,
-					 struct efi_device_path *file_path,
-					 bool boot_policy,
-					 size_t *buffer_size,
-					 void *buffer);
-};
-
-#define EFI_FILE_IO_INTERFACE_REVISION   0x00010000
-
-struct efi_file_io_interface {
-	uint64_t Revision;
-	efi_status_t(EFIAPI *open_volume)(
-			struct efi_file_io_interface *This,
-			struct efi_file_handle **Root);
-};
-
-struct efi_simple_file_system_protocol {
-	u64 Revision;
-	efi_status_t (EFIAPI *open_volume)(struct efi_simple_file_system_protocol *this,
-			struct efi_file_handle **root);
-};
-
-struct efi_file_info {
-	uint64_t Size;
-	uint64_t FileSize;
-	uint64_t PhysicalSize;
-	struct efi_time CreateTime;
-	struct efi_time LastAccessTime;
-	struct efi_time ModificationTime;
-	uint64_t Attribute;
-	efi_char16_t FileName[];
-};
-
-struct efi_file_system_info {
-	u64 size;
-	u8 read_only;
-	u64 volume_size;
-	u64 free_space;
-	u32 block_size;
-	efi_char16_t volume_label[];
-};
-
-__attribute__((noreturn)) void efi_main(efi_handle_t, struct efi_system_table *);
-
-/*
- * Variable Attributes
- */
-#define EFI_VARIABLE_NON_VOLATILE       0x0000000000000001
-#define EFI_VARIABLE_BOOTSERVICE_ACCESS 0x0000000000000002
-#define EFI_VARIABLE_RUNTIME_ACCESS     0x0000000000000004
-#define EFI_VARIABLE_HARDWARE_ERROR_RECORD 0x0000000000000008
-#define EFI_VARIABLE_AUTHENTICATED_WRITE_ACCESS 0x0000000000000010
-#define EFI_VARIABLE_TIME_BASED_AUTHENTICATED_WRITE_ACCESS 0x0000000000000020
-#define EFI_VARIABLE_APPEND_WRITE	0x0000000000000040
-
-#define EFI_VARIABLE_MASK 	(EFI_VARIABLE_NON_VOLATILE | \
-				EFI_VARIABLE_BOOTSERVICE_ACCESS | \
-				EFI_VARIABLE_RUNTIME_ACCESS | \
-				EFI_VARIABLE_HARDWARE_ERROR_RECORD | \
-				EFI_VARIABLE_AUTHENTICATED_WRITE_ACCESS | \
-				EFI_VARIABLE_TIME_BASED_AUTHENTICATED_WRITE_ACCESS | \
-				EFI_VARIABLE_APPEND_WRITE)
-/*
- * Length of a GUID string (strlen("aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee"))
- * not including trailing NUL
- */
-#define EFI_VARIABLE_GUID_LEN 36
-
-struct efi_block_io_media{
-	u32 media_id;
-	bool removable_media;
-	bool media_present;
-	bool logical_partition;
-	bool read_only;
-	bool write_caching;
-	u32 block_size;
-	u32 io_align;
-	sector_t last_block;
-	u64 lowest_aligned_lba; /* added in Revision 2 */
-	u32 logical_blocks_per_physical_block; /* added in Revision 2 */
-	u32 optimal_transfer_length_granularity; /* added in Revision 3 */
-};
-
-struct efi_block_io_protocol {
-	u64 revision;
-	struct efi_block_io_media *media;
-	efi_status_t(EFIAPI *reset)(struct efi_block_io_protocol *this,
-			bool ExtendedVerification);
-	efi_status_t(EFIAPI *read)(struct efi_block_io_protocol *this, u32 media_id,
-			u64 lba, size_t buffer_size, void *buf);
-	efi_status_t(EFIAPI *write)(struct efi_block_io_protocol *this, u32 media_id,
-			u64 lba, size_t buffer_size, void *buf);
-	efi_status_t(EFIAPI *flush)(struct efi_block_io_protocol *this);
-};
-
-struct simple_text_output_mode {
-	s32 max_mode;
-	s32 mode;
-	s32 attribute;
-	s32 cursor_column;
-	s32 cursor_row;
-	bool cursor_visible;
-};
-
-struct efi_simple_text_output_protocol {
-	efi_status_t (EFIAPI *reset)(
-			struct efi_simple_text_output_protocol *this,
-			char extended_verification);
-	efi_status_t (EFIAPI *output_string)(struct efi_simple_text_output_protocol *this, const efi_char16_t *str);
-	efi_status_t (EFIAPI *test_string)(struct efi_simple_text_output_protocol *this,
-			const efi_char16_t *str);
-
-	efi_status_t(EFIAPI *query_mode)(struct efi_simple_text_output_protocol *this,
-			unsigned long mode_number, unsigned long *columns, unsigned long *rows);
-	efi_status_t(EFIAPI *set_mode)(struct efi_simple_text_output_protocol *this,
-			unsigned long mode_number);
-	efi_status_t(EFIAPI *set_attribute)(struct efi_simple_text_output_protocol *this,
-			unsigned long attribute);
-	efi_status_t(EFIAPI *clear_screen) (struct efi_simple_text_output_protocol *this);
-	efi_status_t(EFIAPI *set_cursor_position) (struct efi_simple_text_output_protocol *this,
-			unsigned long column, unsigned long row);
-	efi_status_t(EFIAPI *enable_cursor)(struct efi_simple_text_output_protocol *this,
-			bool enable);
-	struct simple_text_output_mode *mode;
-};
-
-struct efi_input_key;
-
-struct efi_simple_text_input_protocol {
-	efi_status_t(EFIAPI *reset)(struct efi_simple_text_input_protocol *this,
-			bool ExtendedVerification);
-	efi_status_t(EFIAPI *read_key_stroke)(struct efi_simple_text_input_protocol *this,
-			struct efi_input_key *key);
-	struct efi_event *wait_for_key;
-};
-
-const struct efi_device_path *device_path_from_handle(efi_handle_t handle);
-char *device_path_to_str(const struct efi_device_path *dev_path);
-size_t device_path_to_str_buf(const struct efi_device_path *dev_path, char buf[], size_t size);
-u8 device_path_to_type(const struct efi_device_path *dev_path);
-u8 device_path_to_subtype(const struct efi_device_path *dev_path);
-char *device_path_to_partuuid(const struct efi_device_path *dev_path);
-char *device_path_to_filepath(const struct efi_device_path *dev_path);
-
-const char *efi_guid_string(efi_guid_t *g);
-
-#define EFI_RNG_PROTOCOL_GUID \
-	EFI_GUID(0x3152bca5, 0xeade, 0x433d, 0x86, 0x2e, \
-		 0xc0, 0x1c, 0xdc, 0x29, 0x1f, 0x44)
-
-#define EFI_RNG_ALGORITHM_RAW \
-	EFI_GUID(0xe43176d7, 0xb6e8, 0x4827, 0xb7, 0x84, \
-		 0x7f, 0xfd, 0xc4, 0xb6, 0x85, 0x61)
-
-struct efi_rng_protocol {
-	efi_status_t (EFIAPI *get_info)(struct efi_rng_protocol *protocol,
-					size_t *rng_algorithm_list_size,
-					efi_guid_t *rng_algorithm_list);
-	efi_status_t (EFIAPI *get_rng)(struct efi_rng_protocol *protocol,
-				       efi_guid_t *rng_algorithm,
-				       size_t rng_value_length, uint8_t *rng_value);
-};
-
-#endif /* _LINUX_EFI_H */
diff --git a/include/efi/attributes.h b/include/efi/attributes.h
new file mode 100644
index 000000000000..49d401b8fab1
--- /dev/null
+++ b/include/efi/attributes.h
@@ -0,0 +1,21 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef _EFI_ATTRIBUTES_H_
+#define _EFI_ATTRIBUTES_H_
+
+#ifdef __x86_64__
+#define EFIAPI __attribute__((ms_abi))
+#define efi_va_list __builtin_ms_va_list
+#define efi_va_start __builtin_ms_va_start
+#define efi_va_arg __builtin_va_arg
+#define efi_va_copy __builtin_ms_va_copy
+#define efi_va_end __builtin_ms_va_end
+#else
+#define EFIAPI
+#define efi_va_list va_list
+#define efi_va_start va_start
+#define efi_va_arg va_arg
+#define efi_va_copy va_copy
+#define efi_va_end va_end
+#endif /* __x86_64__ */
+
+#endif
diff --git a/include/efi/debug_ll.h b/include/efi/debug_ll.h
index 279e8995f2b3..2cc75b83b104 100644
--- a/include/efi/debug_ll.h
+++ b/include/efi/debug_ll.h
@@ -1,12 +1,13 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
-#ifndef __MACH_DEBUG_LL_H__
-#define __MACH_DEBUG_LL_H__
+#ifndef __EFI_DEBUG_LL_H__
+#define __EFI_DEBUG_LL_H__
 
 #define EFI_DEBUG 0
 #define EFI_DEBUG_CLEAR_MEMORY 0
 
-#include <efi.h>
-#include <efi/efi-payload.h>
+#include <efi/services.h>
+#include <efi/payload.h>
+#include <efi/protocol/text.h>
 
 static inline void PUTC_LL(char c)
 {
diff --git a/include/efi/device-path.h b/include/efi/devicepath.h
similarity index 95%
rename from include/efi/device-path.h
rename to include/efi/devicepath.h
index f6f11672f5d6..405f4446310e 100644
--- a/include/efi/device-path.h
+++ b/include/efi/devicepath.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __EFI_DEVICE_PATH_H
 #define __EFI_DEVICE_PATH_H
 
@@ -395,4 +396,12 @@ struct efi_device_path_bbs_bbs {
 #define DEVICE_PATH_SUB_TYPE_INSTANCE_END	0x01
 #define DEVICE_PATH_END_LENGTH			(sizeof(struct efi_device_path))
 
+const struct efi_device_path *device_path_from_handle(efi_handle_t handle);
+char *device_path_to_str(const struct efi_device_path *dev_path);
+size_t device_path_to_str_buf(const struct efi_device_path *dev_path, char buf[], size_t size);
+u8 device_path_to_type(const struct efi_device_path *dev_path);
+u8 device_path_to_subtype(const struct efi_device_path *dev_path);
+char *device_path_to_partuuid(const struct efi_device_path *dev_path);
+char *device_path_to_filepath(const struct efi_device_path *dev_path);
+
 #endif /* __EFI_DEVICE_PATH_H */
diff --git a/include/efi/efi-util.h b/include/efi/efi-util.h
deleted file mode 100644
index c61f3a5b05d2..000000000000
--- a/include/efi/efi-util.h
+++ /dev/null
@@ -1,20 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-#ifndef __EFI_UTIL_H
-#define __EFI_UTIL_H
-
-#include <efi/types.h>
-
-const char *efi_strerror(efi_status_t err);
-int efi_errno(efi_status_t err);
-
-int __efivarfs_parse_filename(const char *filename, efi_guid_t *vendor,
-			      s16 *name, size_t *namelen);
-int efivarfs_parse_filename(const char *filename, efi_guid_t *vendor, s16 **name);
-
-static inline int
-efi_guidcmp (efi_guid_t left, efi_guid_t right)
-{
-	return memcmp(&left, &right, sizeof (efi_guid_t));
-}
-
-#endif
diff --git a/include/efi/error.h b/include/efi/error.h
new file mode 100644
index 000000000000..2bff720670bd
--- /dev/null
+++ b/include/efi/error.h
@@ -0,0 +1,58 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __EFI_ERROR_H_
+#define __EFI_ERROR_H_
+
+#include <asm/bitsperlong.h>
+#include <efi/types.h>
+
+/* Bit mask for EFI status code with error */
+#define EFI_ERROR_MASK (1UL << (BITS_PER_LONG-1))
+
+#define EFI_SUCCESS                       0
+#define EFI_LOAD_ERROR                  ( 1 | EFI_ERROR_MASK)
+#define EFI_INVALID_PARAMETER           ( 2 | EFI_ERROR_MASK)
+#define EFI_UNSUPPORTED                 ( 3 | EFI_ERROR_MASK)
+#define EFI_BAD_BUFFER_SIZE             ( 4 | EFI_ERROR_MASK)
+#define EFI_BUFFER_TOO_SMALL            ( 5 | EFI_ERROR_MASK)
+#define EFI_NOT_READY                   ( 6 | EFI_ERROR_MASK)
+#define EFI_DEVICE_ERROR                ( 7 | EFI_ERROR_MASK)
+#define EFI_WRITE_PROTECTED             ( 8 | EFI_ERROR_MASK)
+#define EFI_OUT_OF_RESOURCES            ( 9 | EFI_ERROR_MASK)
+#define EFI_VOLUME_CORRUPTED            (10 | EFI_ERROR_MASK)
+#define EFI_VOLUME_FULL                 (11 | EFI_ERROR_MASK)
+#define EFI_NO_MEDIA                    (12 | EFI_ERROR_MASK)
+#define EFI_MEDIA_CHANGED               (13 | EFI_ERROR_MASK)
+#define EFI_NOT_FOUND                   (14 | EFI_ERROR_MASK)
+#define EFI_ACCESS_DENIED               (15 | EFI_ERROR_MASK)
+#define EFI_NO_RESPONSE                 (16 | EFI_ERROR_MASK)
+#define EFI_NO_MAPPING                  (17 | EFI_ERROR_MASK)
+#define EFI_TIMEOUT                     (18 | EFI_ERROR_MASK)
+#define EFI_NOT_STARTED                 (19 | EFI_ERROR_MASK)
+#define EFI_ALREADY_STARTED             (20 | EFI_ERROR_MASK)
+#define EFI_ABORTED                     (21 | EFI_ERROR_MASK)
+#define EFI_ICMP_ERROR                  (22 | EFI_ERROR_MASK)
+#define EFI_TFTP_ERROR                  (23 | EFI_ERROR_MASK)
+#define EFI_PROTOCOL_ERROR              (24 | EFI_ERROR_MASK)
+#define EFI_INCOMPATIBLE_VERSION        (25 | EFI_ERROR_MASK)
+#define EFI_SECURITY_VIOLATION          (26 | EFI_ERROR_MASK)
+#define EFI_CRC_ERROR                   (27 | EFI_ERROR_MASK)
+#define EFI_END_OF_MEDIA                (28 | EFI_ERROR_MASK)
+#define EFI_END_OF_FILE                 (31 | EFI_ERROR_MASK)
+#define EFI_INVALID_LANGUAGE            (32 | EFI_ERROR_MASK)
+#define EFI_COMPROMISED_DATA            (33 | EFI_ERROR_MASK)
+
+#define EFI_WARN_UNKNOWN_GLYPH		1
+#define EFI_WARN_DELETE_FAILURE		2
+#define EFI_WARN_WRITE_FAILURE		3
+#define EFI_WARN_BUFFER_TOO_SMALL	4
+#define EFI_WARN_STALE_DATA		5
+#define EFI_WARN_FILE_SYSTEM		6
+#define EFI_WARN_RESET_REQUIRED		7
+
+#define EFI_ERROR(a)	(((signed long) a) < 0)
+
+const char *efi_strerror(efi_status_t err);
+int efi_errno(efi_status_t err);
+
+#endif
diff --git a/include/efi/guid.h b/include/efi/guid.h
new file mode 100644
index 000000000000..a5b26d420f05
--- /dev/null
+++ b/include/efi/guid.h
@@ -0,0 +1,303 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __EFI_GUID_H_
+#define __EFI_GUID_H_
+
+#include <efi/types.h>
+#include <linux/string.h>
+
+const char *efi_guid_string(efi_guid_t *g);
+
+static inline int
+efi_guidcmp (efi_guid_t left, efi_guid_t right)
+{
+	return memcmp(&left, &right, sizeof (efi_guid_t));
+}
+
+extern efi_guid_t efi_file_info_id;
+extern efi_guid_t efi_simple_file_system_protocol_guid;
+extern efi_guid_t efi_file_system_info_guid;
+extern efi_guid_t efi_system_volume_label_id;
+extern efi_guid_t efi_device_path_protocol_guid;
+extern efi_guid_t efi_loaded_image_protocol_guid;
+extern efi_guid_t efi_unknown_device_guid;
+extern efi_guid_t efi_null_guid;
+extern efi_guid_t efi_global_variable_guid;
+extern efi_guid_t efi_block_io_protocol_guid;
+extern efi_guid_t efi_rng_protocol_guid;
+extern efi_guid_t efi_barebox_vendor_guid;
+extern efi_guid_t efi_systemd_vendor_guid;
+extern efi_guid_t efi_fdt_guid;
+extern efi_guid_t efi_loaded_image_device_path_guid;
+extern const efi_guid_t efi_device_path_to_text_protocol_guid;
+extern const efi_guid_t efi_dt_fixup_protocol_guid;
+extern const efi_guid_t efi_driver_binding_protocol_guid;
+extern const efi_guid_t efi_guid_event_group_exit_boot_services;
+extern const efi_guid_t efi_guid_event_group_virtual_address_change;
+extern const efi_guid_t efi_guid_event_group_memory_map_change;
+extern const efi_guid_t efi_guid_event_group_ready_to_boot;
+extern const efi_guid_t efi_guid_event_group_reset_system;
+extern const efi_guid_t efi_load_file_protocol_guid;
+extern const efi_guid_t efi_load_file2_protocol_guid;
+extern const efi_guid_t efi_device_path_utilities_protocol_guid;
+extern const efi_guid_t efi_linux_initrd_media_guid;
+
+
+/* EFI event group GUID definitions */
+#define EFI_EVENT_GROUP_EXIT_BOOT_SERVICES \
+	EFI_GUID(0x27abf055, 0xb1b8, 0x4c26, 0x80, 0x48, \
+		 0x74, 0x8f, 0x37, 0xba, 0xa2, 0xdf)
+
+#define EFI_EVENT_GROUP_VIRTUAL_ADDRESS_CHANGE \
+	EFI_GUID(0x13fa7698, 0xc831, 0x49c7, 0x87, 0xea, \
+		 0x8f, 0x43, 0xfc, 0xc2, 0x51, 0x96)
+
+#define EFI_EVENT_GROUP_MEMORY_MAP_CHANGE \
+	EFI_GUID(0x78bee926, 0x692f, 0x48fd, 0x9e, 0xdb, \
+		 0x01, 0x42, 0x2e, 0xf0, 0xd7, 0xab)
+
+#define EFI_EVENT_GROUP_READY_TO_BOOT \
+	EFI_GUID(0x7ce88fb3, 0x4bd7, 0x4679, 0x87, 0xa8, \
+		 0xa8, 0xd8, 0xde, 0xe5, 0x0d, 0x2b)
+
+#define EFI_EVENT_GROUP_RESET_SYSTEM \
+	EFI_GUID(0x62da6a56, 0x13fb, 0x485a, 0xa8, 0xda, \
+		 0xa3, 0xdd, 0x79, 0x12, 0xcb, 0x6b)
+
+/*
+ *  EFI Configuration Table and GUID definitions
+ */
+#define EFI_NULL_GUID \
+    EFI_GUID(  0x00000000, 0x0000, 0x0000, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 )
+
+#define EFI_MPS_TABLE_GUID    \
+    EFI_GUID(  0xeb9d2d2f, 0x2d88, 0x11d3, 0x9a, 0x16, 0x0, 0x90, 0x27, 0x3f, 0xc1, 0x4d )
+
+#define EFI_ACPI_TABLE_GUID    \
+    EFI_GUID(  0xeb9d2d30, 0x2d88, 0x11d3, 0x9a, 0x16, 0x0, 0x90, 0x27, 0x3f, 0xc1, 0x4d )
+
+#define EFI_ACPI_20_TABLE_GUID    \
+    EFI_GUID(  0x8868e871, 0xe4f1, 0x11d3, 0xbc, 0x22, 0x0, 0x80, 0xc7, 0x3c, 0x88, 0x81 )
+
+#define EFI_SMBIOS_TABLE_GUID    \
+    EFI_GUID(  0xeb9d2d31, 0x2d88, 0x11d3, 0x9a, 0x16, 0x0, 0x90, 0x27, 0x3f, 0xc1, 0x4d )
+
+#define EFI_SAL_SYSTEM_TABLE_GUID    \
+    EFI_GUID(  0xeb9d2d32, 0x2d88, 0x11d3, 0x9a, 0x16, 0x0, 0x90, 0x27, 0x3f, 0xc1, 0x4d )
+
+#define EFI_HCDP_TABLE_GUID \
+    EFI_GUID(  0xf951938d, 0x620b, 0x42ef, 0x82, 0x79, 0xa8, 0x4b, 0x79, 0x61, 0x78, 0x98 )
+
+#define EFI_UGA_IO_PROTOCOL_GUID \
+    EFI_GUID(  0x61a4d49e, 0x6f68, 0x4f1b, 0xb9, 0x22, 0xa8, 0x6e, 0xed, 0xb, 0x7, 0xa2 )
+
+#define EFI_GLOBAL_VARIABLE_GUID \
+    EFI_GUID(  0x8be4df61, 0x93ca, 0x11d2, 0xaa, 0x0d, 0x00, 0xe0, 0x98, 0x03, 0x2b, 0x8c )
+
+#define EFI_UV_SYSTEM_TABLE_GUID \
+    EFI_GUID(  0x3b13a7d4, 0x633e, 0x11dd, 0x93, 0xec, 0xda, 0x25, 0x56, 0xd8, 0x95, 0x93 )
+
+#define EFI_LINUX_EFI_CRASH_GUID \
+    EFI_GUID(  0xcfc8fc79, 0xbe2e, 0x4ddc, 0x97, 0xf0, 0x9f, 0x98, 0xbf, 0xe2, 0x98, 0xa0 )
+
+#define EFI_LOADED_IMAGE_PROTOCOL_GUID \
+    EFI_GUID(  0x5b1b31a1, 0x9562, 0x11d2, 0x8e, 0x3f, 0x00, 0xa0, 0xc9, 0x69, 0x72, 0x3b )
+
+#define EFI_LOADED_IMAGE_DEVICE_PATH_PROTOCOL_GUID \
+    EFI_GUID(0xbc62157e, 0x3e33, 0x4fec, 0x99, 0x20, 0x2d, 0x3b, 0x36, 0xd7, 0x50, 0xdf)
+
+#define EFI_GRAPHICS_OUTPUT_PROTOCOL_GUID \
+    EFI_GUID(  0x9042a9de, 0x23dc, 0x4a38, 0x96, 0xfb, 0x7a, 0xde, 0xd0, 0x80, 0x51, 0x6a )
+
+#define EFI_UGA_PROTOCOL_GUID \
+    EFI_GUID(  0x982c298b, 0xf4fa, 0x41cb, 0xb8, 0x38, 0x77, 0xaa, 0x68, 0x8f, 0xb8, 0x39 )
+
+#define EFI_PCI_IO_PROTOCOL_GUID \
+    EFI_GUID(  0x4cf5b200, 0x68b8, 0x4ca5, 0x9e, 0xec, 0xb2, 0x3e, 0x3f, 0x50, 0x2, 0x9a )
+
+#define EFI_USB_IO_PROTOCOL_GUID \
+    EFI_GUID(0x2B2F68D6, 0x0CD2, 0x44cf, 0x8E, 0x8B, 0xBB, 0xA2, 0x0B, 0x1B, 0x5B, 0x75)
+
+#define EFI_FILE_INFO_GUID \
+    EFI_GUID(  0x9576e92, 0x6d3f, 0x11d2, 0x8e, 0x39, 0x00, 0xa0, 0xc9, 0x69, 0x72, 0x3b )
+
+#define EFI_SIMPLE_FILE_SYSTEM_GUID \
+    EFI_GUID(  0x964e5b22, 0x6459, 0x11d2, 0x8e, 0x39, 0x00, 0xa0, 0xc9, 0x69, 0x72, 0x3b )
+
+#define EFI_FILE_SYSTEM_INFO_GUID \
+    EFI_GUID(0x09576e93, 0x6d3f, 0x11d2, 0x8e, 0x39, 0x00, 0xa0, 0xc9, 0x69, 0x72, 0x3b)
+
+#define EFI_FILE_SYSTEM_VOLUME_LABEL_ID \
+    EFI_GUID(0xdb47d7d3, 0xfe81, 0x11d3, 0x9a, 0x35, 0x00, 0x90, 0x27, 0x3f, 0xC1, 0x4d)
+
+#define EFI_DEVICE_TREE_GUID \
+    EFI_GUID(  0xb1b621d5, 0xf19c, 0x41a5, 0x83, 0x0b, 0xd9, 0x15, 0x2c, 0x69, 0xaa, 0xe0 )
+
+#define EFI_DEVICE_PATH_PROTOCOL_GUID \
+    EFI_GUID(  0x9576e91, 0x6d3f, 0x11d2, 0x8e, 0x39, 0x0, 0xa0, 0xc9, 0x69, 0x72, 0x3b )
+
+#define EFI_DEVICE_PATH_TO_TEXT_PROTOCOL_GUID \
+    EFI_GUID( 0x8b843e20, 0x8132, 0x4852, 0x90, 0xcc, 0x55, 0x1a, 0x4e, 0x4a, 0x7f, 0x1c)
+
+#define EFI_DEVICE_PATH_UTILITIES_PROTOCOL_GUID \
+    EFI_GUID(0x0379be4e, 0xd706, 0x437d, 0xb0, 0x37, 0xed, 0xb8, 0x2f, 0xb7, 0x72, 0xa4)
+
+#define EFI_SIMPLE_NETWORK_PROTOCOL_GUID \
+    EFI_GUID( 0xA19832B9, 0xAC25, 0x11D3, 0x9A, 0x2D, 0x00, 0x90, 0x27, 0x3F, 0xC1, 0x4D )
+
+#define EFI_SIMPLE_FILE_SYSTEM_PROTOCOL_GUID \
+    EFI_GUID(0x0964e5b22, 0x6459, 0x11d2, 0x8e, 0x39, 0x00, 0xa0, 0xc9, 0x69, 0x72, 0x3b)
+
+#define EFI_UNKNOWN_DEVICE_GUID \
+    EFI_GUID(0xcf31fac5, 0xc24e, 0x11d2, 0x85, 0xf3, 0x0, 0xa0, 0xc9, 0x3e, 0xc9, 0x3b)
+
+#define EFI_BLOCK_IO_PROTOCOL_GUID \
+    EFI_GUID(0x964e5b21, 0x6459, 0x11d2, 0x8e, 0x39, 0x00, 0xa0, 0xc9, 0x69, 0x72, 0x3b)
+
+/* additional GUID from EDK2 */
+#define EFI_FIRMWARE_VOLUME2_PROTOCOL_GUID \
+    EFI_GUID(0x220e73b6, 0x6bdb, 0x4413, 0x84, 0x5, 0xb9, 0x74, 0xb1, 0x8, 0x61, 0x9a)
+
+#define EFI_FIRMWARE_VOLUME_BLOCK_PROTOCOL_GUID \
+    EFI_GUID(0x8f644fa9, 0xe850, 0x4db1, 0x9c, 0xe2, 0xb, 0x44, 0x69, 0x8e, 0x8d, 0xa4)
+
+#define EFI_PCI_ROOT_BRIDGE_IO_PROTOCOL_GUID \
+    EFI_GUID(0x2f707ebb, 0x4a1a, 0x11d4, 0x9a, 0x38, 0x00, 0x90, 0x27, 0x3f, 0xc1, 0x4d)
+
+#define EFI_ISA_ACPI_PROTOCOL_GUID \
+    EFI_GUID(0x64a892dc, 0x5561, 0x4536, 0x92, 0xc7, 0x79, 0x9b, 0xfc, 0x18, 0x33, 0x55)
+
+#define EFI_ISA_IO_PROTOCOL_GUID \
+    EFI_GUID(0x7ee2bd44, 0x3da0, 0x11d4, 0x9a, 0x38, 0x0, 0x90, 0x27, 0x3f, 0xc1, 0x4d)
+
+#define EFI_STANDARD_ERROR_DEVICE_GUID \
+    EFI_GUID(0xd3b36f2d, 0xd551, 0x11d4, 0x9a, 0x46, 0x0, 0x90, 0x27, 0x3f, 0xc1, 0x4d)
+
+#define EFI_CONSOLE_OUT_DEVICE_GUID \
+    EFI_GUID(0xd3b36f2c, 0xd551, 0x11d4, 0x9a, 0x46, 0x0, 0x90, 0x27, 0x3f, 0xc1, 0x4d)
+
+#define EFI_CONSOLE_IN_DEVICE_GUID \
+    EFI_GUID(0xd3b36f2b, 0xd551, 0x11d4, 0x9a, 0x46, 0x0, 0x90, 0x27, 0x3f, 0xc1, 0x4d)
+
+#define EFI_SIMPLE_TEXT_OUT_PROTOCOL_GUID \
+    EFI_GUID(0x387477c2, 0x69c7, 0x11d2, 0x8e, 0x39, 0x0, 0xa0, 0xc9, 0x69, 0x72, 0x3b)
+
+#define EFI_SIMPLE_TEXT_INPUT_EX_PROTOCOL_GUID \
+    EFI_GUID(0xdd9e7534, 0x7762, 0x4698, 0x8c, 0x14, 0xf5, 0x85, 0x17, 0xa6, 0x25, 0xaa)
+
+#define EFI_SIMPLE_TEXT_IN_PROTOCOL_GUID \
+    EFI_GUID(0x387477c1, 0x69c7, 0x11d2, 0x8e, 0x39, 0x0, 0xa0, 0xc9, 0x69, 0x72, 0x3b)
+
+#define EFI_CONSOLE_CONTROL_GUID \
+    EFI_GUID(0xf42f7782, 0x12e, 0x4c12, 0x99, 0x56, 0x49, 0xf9, 0x43, 0x4, 0xf7, 0x21)
+
+#define EFI_DISK_IO_PROTOCOL_GUID \
+    EFI_GUID(0xce345171, 0xba0b, 0x11d2, 0x8e, 0x4f, 0x0, 0xa0, 0xc9, 0x69, 0x72, 0x3b)
+
+#define EFI_IDE_CONTROLLER_INIT_PROTOCOL_GUID \
+    EFI_GUID(0xa1e37052, 0x80d9, 0x4e65, 0xa3, 0x17, 0x3e, 0x9a, 0x55, 0xc4, 0x3e, 0xc9)
+
+#define EFI_DISK_INFO_PROTOCOL_GUID \
+    EFI_GUID(0xd432a67f, 0x14dc, 0x484b, 0xb3, 0xbb, 0x3f, 0x2, 0x91, 0x84, 0x93, 0x27)
+
+#define EFI_SERIAL_IO_PROTOCOL_GUID \
+    EFI_GUID(0xbb25cf6f, 0xf1d4, 0x11d2, 0x9a, 0x0c, 0x00, 0x90, 0x27, 0x3f, 0xc1, 0xfd)
+
+#define EFI_BUS_SPECIFIC_DRIVER_OVERRIDE_PROTOCOL_GUID \
+    EFI_GUID(0x3bc1b285, 0x8a15, 0x4a82, 0xaa, 0xbf, 0x4d, 0x7d, 0x13, 0xfb, 0x32, 0x65)
+
+#define EFI_LOAD_FILE2_PROTOCOL_GUID \
+    EFI_GUID(0x4006c0c1, 0xfcb3, 0x403e, 0x99, 0x6d, 0x4a, 0x6c, 0x87, 0x24, 0xe0, 0x6d)
+
+#define EFI_MTFTP4_SERVICE_BINDING_PROTOCOL_GUID \
+    EFI_GUID(0x2fe800be, 0x8f01, 0x4aa6, 0x94, 0x6b, 0xd7, 0x13, 0x88, 0xe1, 0x83, 0x3f)
+
+#define EFI_DHCP4_PROTOCOL_GUID \
+    EFI_GUID(0x9d9a39d8, 0xbd42, 0x4a73, 0xa4, 0xd5, 0x8e, 0xe9, 0x4b, 0xe1, 0x13, 0x80)
+
+#define EFI_UDP4_SERVICE_BINDING_PROTOCOL_GUID \
+    EFI_GUID(0x83f01464, 0x99bd, 0x45e5, 0xb3, 0x83, 0xaf, 0x63, 0x05, 0xd8, 0xe9, 0xe6)
+
+#define EFI_TCP4_SERVICE_BINDING_PROTOCOL_GUID \
+    EFI_GUID(0x00720665, 0x67EB, 0x4a99, 0xBA, 0xF7, 0xD3, 0xC3, 0x3A, 0x1C, 0x7C, 0xC9)
+
+#define EFI_IP4_SERVICE_BINDING_PROTOCOL_GUID \
+    EFI_GUID(0xc51711e7, 0xb4bf, 0x404a, 0xbf, 0xb8, 0x0a, 0x04, 0x8e, 0xf1, 0xff, 0xe4)
+
+#define EFI_IP4_CONFIG_PROTOCOL_GUID \
+    EFI_GUID(0x3b95aa31, 0x3793, 0x434b, 0x86, 0x67, 0xc8, 0x07, 0x08, 0x92, 0xe0, 0x5e)
+
+#define EFI_ARP_SERVICE_BINDING_PROTOCOL_GUID\
+    EFI_GUID(0xf44c00ee, 0x1f2c, 0x4a00, 0xaa, 0x9, 0x1c, 0x9f, 0x3e, 0x8, 0x0, 0xa3)
+
+#define EFI_MANAGED_NETWORK_SERVICE_BINDING_PROTOCOL_GUID \
+    EFI_GUID(0xf36ff770, 0xa7e1, 0x42cf, 0x9e, 0xd2, 0x56, 0xf0, 0xf2, 0x71, 0xf4, 0x4c)
+
+#define EFI_VLAN_CONFIG_PROTOCOL_GUID \
+    EFI_GUID(0x9e23d768, 0xd2f3, 0x4366, 0x9f, 0xc3, 0x3a, 0x7a, 0xba, 0x86, 0x43, 0x74)
+
+#define EFI_HII_CONFIG_ACCESS_PROTOCOL_GUID \
+    EFI_GUID(0x330d4706, 0xf2a0, 0x4e4f, 0xa3, 0x69, 0xb6, 0x6f, 0xa8, 0xd5, 0x43, 0x85)
+
+#define EFI_LOAD_FILE_PROTOCOL_GUID \
+    EFI_GUID(0x56ec3091, 0x954c, 0x11d2, 0x8e, 0x3f, 0x00, 0xa0, 0xc9, 0x69, 0x72, 0x3b)
+
+#define EFI_COMPONENT_NAME2_PROTOCOL_GUID \
+    EFI_GUID(0x6a7a5cff, 0xe8d9, 0x4f70, 0xba, 0xda, 0x75, 0xab, 0x30, 0x25, 0xce, 0x14)
+
+#define EFI_IDEBUSDXE_INF_GUID \
+    EFI_GUID(0x69fd8e47, 0xa161, 0x4550, 0xb0, 0x1a, 0x55, 0x94, 0xce, 0xb2, 0xb2, 0xb2)
+
+#define EFI_TERMINALDXE_INF_GUID \
+    EFI_GUID(0x9e863906, 0xa40f, 0x4875, 0x97, 0x7f, 0x5b, 0x93, 0xff, 0x23, 0x7f, 0xc6)
+
+#define EFI_NETWORK_INTERFACE_IDENTIFIER_PROTOCOL_GUID_31 \
+    EFI_GUID(0x1aced566, 0x76ed, 0x4218, 0xbc, 0x81, 0x76, 0x7f, 0x1f, 0x97, 0x7a, 0x89)
+
+#define EFI_NETWORK_INTERFACE_IDENTIFIER_PROTOCOL_GUID \
+    EFI_GUID(0xe18541cd, 0xf755, 0x4f73, 0x92, 0x8d, 0x64, 0x3c, 0x8a, 0x79, 0xb2, 0x29)
+
+#define EFI_ISCSIDXE_INF_GUID \
+    EFI_GUID(0x4579b72d, 0x7ec4, 0x4dd4, 0x84, 0x86, 0x08, 0x3c, 0x86, 0xb1, 0x82, 0xa7)
+
+#define EFI_VLANCONFIGDXE_INF_GUID \
+    EFI_GUID(0xe4f61863, 0xfe2c, 0x4b56, 0xa8, 0xf4, 0x08, 0x51, 0x9b, 0xc4, 0x39, 0xdf)
+
+#define EFI_TIMESTAMP_PROTOCOL_GUID \
+    EFI_GUID(0xafbfde41, 0x2e6e, 0x4262, 0xba, 0x65, 0x62, 0xb9, 0x23, 0x6e, 0x54, 0x95)
+
+#define EFI_I2C_MASTER_PROTOCOL_GUID \
+    EFI_GUID(0xcd72881f, 0x45b5, 0x4feb, 0x98, 0xc8, 0x31, 0x3d, 0xa8, 0x11, 0x74, 0x62)
+
+/* barebox specific GUIDs */
+#define EFI_BAREBOX_VENDOR_GUID \
+    EFI_GUID(0x5b91f69c, 0x8b88, 0x4a2b, 0x92, 0x69, 0x5f, 0x1d, 0x80, 0x2b, 0x51, 0x75)
+
+/* for systemd */
+#define EFI_SYSTEMD_VENDOR_GUID \
+    EFI_GUID(0x4a67b082, 0x0a4c, 0x41cf, 0xb6, 0xc7, 0x44, 0x0b, 0x29, 0xbb, 0x8c, 0x4f)
+
+/* for TPM 1.2 */
+#define EFI_TCG_PROTOCOL_GUID \
+    EFI_GUID(0xf541796d, 0xa62e, 0x4954, 0xa7, 0x75, 0x95, 0x84, 0xf6, 0x1b, 0x9c, 0xdd)
+
+/* for TPM 2.0 */
+#define EFI_TCG2_PROTOCOL_GUID \
+    EFI_GUID(0x607f766c, 0x7455, 0x42be, 0x93, 0x0b, 0xe4, 0xd7, 0x6d, 0xb2, 0x72, 0x0f)
+
+#define EFI_DT_FIXUP_PROTOCOL_GUID \
+    EFI_GUID(0xe617d64c, 0xfe08, 0x46da, 0xf4, 0xdc, 0xbb, 0xd5, 0x87, 0x0c, 0x73, 0x00)
+
+#define EFI_DRIVER_BINDING_PROTOCOL_GUID \
+    EFI_GUID(0x18a031ab, 0xb443, 0x4d1a, 0xa5, 0xc0, 0x0c, 0x09, 0x26, 0x1e, 0x9f, 0x71)
+
+#define EFI_LINUX_INITRD_MEDIA_GUID \
+    EFI_GUID(0x5568e427, 0x68fc, 0x4f3d,  0xac, 0x74, 0xca, 0x55, 0x52, 0x31, 0xcc, 0x68)
+
+#define EFI_RNG_PROTOCOL_GUID \
+    EFI_GUID(0x3152bca5, 0xeade, 0x433d, 0x86, 0x2e, 0xc0, 0x1c, 0xdc, 0x29, 0x1f, 0x44)
+
+#define EFI_RNG_ALGORITHM_RAW \
+    EFI_GUID(0xe43176d7, 0xb6e8, 0x4827, 0xb7, 0x84, 0x7f, 0xfd, 0xc4, 0xb6, 0x85, 0x61)
+
+#endif
diff --git a/include/efi/initrd.h b/include/efi/initrd.h
new file mode 100644
index 000000000000..08af2d299ad6
--- /dev/null
+++ b/include/efi/initrd.h
@@ -0,0 +1,11 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __EFI_PAYLOAD_INITRD_H
+#define __EFI_PAYLOAD_INITRD_H
+
+#include <linux/types.h>
+
+int efi_initrd_register(void *initrd, size_t initrd_size);
+void efi_initrd_unregister(void);
+
+#endif
diff --git a/include/efi/memtype.h b/include/efi/memory.h
similarity index 90%
rename from include/efi/memtype.h
rename to include/efi/memory.h
index 3f33b911a545..df980a0f348f 100644
--- a/include/efi/memtype.h
+++ b/include/efi/memory.h
@@ -1,6 +1,6 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
-#ifndef _EFI_MEMTYPE_H_
-#define _EFI_MEMTYPE_H_
+#ifndef _EFI_MEMORY_H_
+#define _EFI_MEMORY_H_
 
 #include <linux/ioport.h>
 #include <efi/types.h>
@@ -76,4 +76,19 @@ static inline void resource_set_efi_memory_type_attrs(struct resource *res,
 	res->flags |= IORESOURCE_TYPE_VALID;
 }
 
+/*
+ * Memory map descriptor:
+ */
+
+struct efi_memory_desc {
+    u32 type; /* enum efi_memory_type */
+    u32 _padding;
+    efi_physical_addr_t phys_start;
+    void *virt_start;
+    u64 npages;
+    u64 attrs;
+};
+
+#define EFI_MEMORY_DESCRIPTOR_VERSION	1
+
 #endif
diff --git a/include/efi/efi-mode.h b/include/efi/mode.h
similarity index 100%
rename from include/efi/efi-mode.h
rename to include/efi/mode.h
diff --git a/include/efi/efi-payload.h b/include/efi/payload.h
similarity index 56%
rename from include/efi/efi-payload.h
rename to include/efi/payload.h
index 644620062aad..381598ba59f2 100644
--- a/include/efi/efi-payload.h
+++ b/include/efi/payload.h
@@ -1,20 +1,24 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __EFI_PAYLOAD_H
 #define __EFI_PAYLOAD_H
 
 #include <efi/types.h>
-#include <efi/efi-util.h>
-#include <efi/memtype.h>
-#include <efi/variable.h>
+#include <efi/memory.h>
+#include <efi/services.h>
 
 struct efi_system_table;
 struct efi_loaded_image;
+struct efi_boot_services;
+struct efi_runtime_services;
 
 struct barebox_efi_data {
 	void *image;
 	void *sys_table;
 };
 
+extern struct efi_boot_services *BS;
+extern struct efi_runtime_services *RT;
 extern struct efi_system_table *efi_sys_table;
 extern efi_handle_t efi_parent_image;
 extern struct efi_device_path *efi_device_path;
@@ -23,7 +27,11 @@ extern struct efi_loaded_image *efi_loaded_image;
 void *efi_earlymem_alloc(const struct efi_system_table *sys_table,
 			 size_t memsize, enum efi_memory_type mem_type);
 
-int efi_initrd_register(void *initrd, size_t initrd_size);
-void efi_initrd_unregister(void);
+__attribute__((noreturn)) void efi_main(efi_handle_t, struct efi_system_table *);
+
+#define for_each_efi_config_table(t) \
+	for (t = efi_sys_table->tables; \
+	     t - efi_sys_table->tables < efi_sys_table->nr_tables; \
+	     t++)
 
 #endif
diff --git a/include/efi/efi-device.h b/include/efi/payload/driver.h
similarity index 78%
rename from include/efi/efi-device.h
rename to include/efi/payload/driver.h
index 06903f48da64..e8da580133d4 100644
--- a/include/efi/efi-device.h
+++ b/include/efi/payload/driver.h
@@ -1,11 +1,11 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
-#ifndef __EFI_EFI_DEVICE_H
-#define __EFI_EFI_DEVICE_H
+#ifndef __EFI_PAYLOAD_DRIVER_H
+#define __EFI_PAYLOAD_DRIVER_H
 
 #include <efi/types.h>
-#include <efi/efi-util.h>
+#include <efi/guid.h>
 #include <driver.h>
-#include <efi/efi-init.h>
+#include <efi/payload/init.h>
 
 struct efi_device {
 	struct device dev;
@@ -60,13 +60,4 @@ static inline bool efi_device_has_guid(struct efi_device *efidev, efi_guid_t gui
 	return false;
 }
 
-enum efi_locate_search_type;
-
-int __efi_locate_handle(struct efi_boot_services *bs,
-		enum efi_locate_search_type search_type,
-		efi_guid_t *protocol,
-		void *search_key,
-		size_t *no_handles,
-		efi_handle_t **buffer);
-
-#endif /* __EFI_EFI_DEVICE_H */
+#endif /* __EFI_PAYLOAD_DRIVER_H */
diff --git a/include/efi/efi-init.h b/include/efi/payload/init.h
similarity index 96%
rename from include/efi/efi-init.h
rename to include/efi/payload/init.h
index f524f3973e0e..f27151636bad 100644
--- a/include/efi/efi-init.h
+++ b/include/efi/payload/init.h
@@ -1,7 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 
-#ifndef EFI_INIT_H_
-#define EFI_INIT_H_
+#ifndef __EFI_PAYLOAD_INIT_H_
+#define __EFI_PAYLOAD_INIT_H_
 
 #include <init.h>
 #include <linux/compiler.h>
diff --git a/include/efi/protocol/block.h b/include/efi/protocol/block.h
new file mode 100644
index 000000000000..e3e99334eead
--- /dev/null
+++ b/include/efi/protocol/block.h
@@ -0,0 +1,35 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __EFI_PROTOCOL_BLOCK_H_
+#define __EFI_PROTOCOL_BLOCK_H_
+
+#include <efi/types.h>
+
+struct efi_block_io_media{
+	u32 media_id;
+	bool removable_media;
+	bool media_present;
+	bool logical_partition;
+	bool read_only;
+	bool write_caching;
+	u32 block_size;
+	u32 io_align;
+	sector_t last_block;
+	u64 lowest_aligned_lba; /* added in Revision 2 */
+	u32 logical_blocks_per_physical_block; /* added in Revision 2 */
+	u32 optimal_transfer_length_granularity; /* added in Revision 3 */
+};
+
+struct efi_block_io_protocol {
+	u64 revision;
+	struct efi_block_io_media *media;
+	efi_status_t(EFIAPI *reset)(struct efi_block_io_protocol *this,
+			bool ExtendedVerification);
+	efi_status_t(EFIAPI *read)(struct efi_block_io_protocol *this, u32 media_id,
+			u64 lba, size_t buffer_size, void *buf);
+	efi_status_t(EFIAPI *write)(struct efi_block_io_protocol *this, u32 media_id,
+			u64 lba, size_t buffer_size, void *buf);
+	efi_status_t(EFIAPI *flush)(struct efi_block_io_protocol *this);
+};
+
+#endif
diff --git a/include/efi/protocol/file.h b/include/efi/protocol/file.h
new file mode 100644
index 000000000000..50dedc631303
--- /dev/null
+++ b/include/efi/protocol/file.h
@@ -0,0 +1,111 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __EFI_PROTOCOL_FILE_H_
+#define __EFI_PROTOCOL_FILE_H_
+
+#include <efi/types.h>
+
+/* Open modes */
+#define EFI_FILE_MODE_READ      0x0000000000000001
+#define EFI_FILE_MODE_WRITE     0x0000000000000002
+#define EFI_FILE_MODE_CREATE    0x8000000000000000
+
+/* File attributes */
+#define EFI_FILE_READ_ONLY      0x0000000000000001
+#define EFI_FILE_HIDDEN         0x0000000000000002
+#define EFI_FILE_SYSTEM         0x0000000000000004
+#define EFI_FILE_RESERVIED      0x0000000000000008
+#define EFI_FILE_DIRECTORY      0x0000000000000010
+#define EFI_FILE_ARCHIVE        0x0000000000000020
+#define EFI_FILE_VALID_ATTR     0x0000000000000037
+
+struct efi_file_io_token {
+	struct efi_event *event;
+	efi_status_t status;
+	size_t buffer_size;
+	void *buffer;
+};
+
+#define EFI_FILE_HANDLE_REVISION         0x00010000
+#define EFI_FILE_HANDLE_REVISION2        0x00020000
+#define EFI_FILE_HANDLE_LATEST_REVISION  EFI_FILE_PROTOCOL_REVISION2
+struct efi_file_handle {
+	uint64_t Revision;
+	efi_status_t(EFIAPI *open)(struct efi_file_handle *File,
+			struct efi_file_handle **NewHandle, efi_char16_t *FileName,
+			uint64_t OpenMode, uint64_t Attributes);
+	efi_status_t(EFIAPI *close)(struct efi_file_handle *File);
+	efi_status_t(EFIAPI *delete)(struct efi_file_handle *File);
+	efi_status_t(EFIAPI *read)(struct efi_file_handle *File, size_t *BufferSize,
+			void *Buffer);
+	efi_status_t(EFIAPI *write)(struct efi_file_handle *File,
+			size_t *BufferSize, void *Buffer);
+	efi_status_t(EFIAPI *get_position)(struct efi_file_handle *File,
+			uint64_t *Position);
+	efi_status_t(EFIAPI *set_position)(struct efi_file_handle *File,
+			uint64_t Position);
+	efi_status_t(EFIAPI *get_info)(struct efi_file_handle *File,
+			const efi_guid_t *InformationType, size_t *BufferSize,
+			void *Buffer);
+	efi_status_t(EFIAPI *set_info)(struct efi_file_handle *File,
+			const efi_guid_t *InformationType, size_t BufferSize,
+			void *Buffer);
+	efi_status_t(EFIAPI *flush)(struct efi_file_handle *File);
+	efi_status_t (EFIAPI *open_ex)(struct efi_file_handle *this,
+			struct efi_file_handle **new_handle,
+			u16 *file_name, u64 open_mode, u64 attributes,
+			struct efi_file_io_token *token);
+	efi_status_t (EFIAPI *read_ex)(struct efi_file_handle *this,
+			struct efi_file_io_token *token);
+	efi_status_t (EFIAPI *write_ex)(struct efi_file_handle *this,
+			struct efi_file_io_token *token);
+	efi_status_t (EFIAPI *flush_ex)(struct efi_file_handle *this,
+			struct efi_file_io_token *token);
+};
+
+#define EFI_SIMPLE_FILE_SYSTEM_PROTOCOL_REVISION 0x00010000
+
+#define EFI_FILE_IO_INTERFACE_REVISION   0x00010000
+
+struct efi_file_io_interface {
+	uint64_t Revision;
+	efi_status_t(EFIAPI *open_volume)(
+			struct efi_file_io_interface *This,
+			struct efi_file_handle **Root);
+};
+
+struct efi_simple_file_system_protocol {
+	u64 Revision;
+	efi_status_t (EFIAPI *open_volume)(struct efi_simple_file_system_protocol *this,
+			struct efi_file_handle **root);
+};
+
+struct efi_file_info {
+	uint64_t Size;
+	uint64_t FileSize;
+	uint64_t PhysicalSize;
+	struct efi_time CreateTime;
+	struct efi_time LastAccessTime;
+	struct efi_time ModificationTime;
+	uint64_t Attribute;
+	efi_char16_t FileName[];
+};
+
+struct efi_file_system_info {
+	u64 size;
+	u8 read_only;
+	u64 volume_size;
+	u64 free_space;
+	u32 block_size;
+	efi_char16_t volume_label[];
+};
+
+struct efi_load_file_protocol {
+	efi_status_t (EFIAPI *load_file)(struct efi_load_file_protocol *this,
+					 struct efi_device_path *file_path,
+					 bool boot_policy,
+					 size_t *buffer_size,
+					 void *buffer);
+};
+
+#endif
diff --git a/include/efi/protocol/gop.h b/include/efi/protocol/gop.h
new file mode 100644
index 000000000000..bad9f64f0623
--- /dev/null
+++ b/include/efi/protocol/gop.h
@@ -0,0 +1,54 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __EFI_PROTOCOL_GOP_H_
+#define __EFI_PROTOCOL_GOP_H_
+
+#include <efi/types.h>
+
+#define PIXEL_RGB_RESERVED_8BIT_PER_COLOR		0
+#define PIXEL_BGR_RESERVED_8BIT_PER_COLOR		1
+#define PIXEL_BIT_MASK					2
+#define PIXEL_BLT_ONLY					3
+#define PIXEL_FORMAT_MAX				4
+
+struct efi_pixel_bitmask {
+	u32 red_mask;
+	u32 green_mask;
+	u32 blue_mask;
+	u32 reserved_mask;
+};
+
+struct efi_graphics_output_mode_info {
+	u32 version;
+	u32 horizontal_resolution;
+	u32 vertical_resolution;
+	int pixel_format;
+	struct efi_pixel_bitmask pixel_information;
+	u32 pixels_per_scan_line;
+};
+
+struct efi_graphics_output_protocol_mode {
+	uint32_t max_mode;
+	uint32_t mode;
+	struct efi_graphics_output_mode_info *info;
+	size_t size_of_info;
+	void *frame_buffer_base;
+	size_t frame_buffer_size;
+};
+
+struct efi_graphics_output_protocol {
+	efi_status_t (EFIAPI *query_mode) (struct efi_graphics_output_protocol *This,
+			uint32_t mode_number, size_t *size_of_info,
+			struct efi_graphics_output_mode_info **info);
+	efi_status_t (EFIAPI *set_mode) (struct efi_graphics_output_protocol *This,
+			uint32_t mode_number);
+	efi_status_t (EFIAPI *blt)(struct efi_graphics_output_protocol *This,
+			void *buffer,
+			unsigned long operation,
+			unsigned long sourcex, unsigned long sourcey,
+			unsigned long destinationx, unsigned long destinationy,
+			unsigned long width, unsigned long height, unsigned
+			long delta);
+	struct efi_graphics_output_protocol_mode *mode;
+};
+
+#endif
diff --git a/include/efi/protocol/i2c.h b/include/efi/protocol/i2c.h
new file mode 100644
index 000000000000..f87846788f84
--- /dev/null
+++ b/include/efi/protocol/i2c.h
@@ -0,0 +1,55 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __EFI_PROTOCOL_I2C_H_
+#define __EFI_PROTOCOL_I2C_H_
+
+#include <efi/types.h>
+
+/* Define EFI I2C transfer control flags */
+#define EFI_I2C_FLAG_READ           0x00000001
+
+#define EFI_I2C_ADDRESSING_10_BIT   0x80000000
+
+/* The set_bus_frequency() EFI call doesn't work (doesn't alter SPI clock
+ * frequency) if it's parameter is defined on the stack (observed with
+ * American Megatrends EFI Revision 5.19) - let's define it globaly.
+ */
+static unsigned int bus_clock;
+
+struct efi_i2c_capabilities {
+	u32 StructureSizeInBytes;
+	u32 MaximumReceiveBytes;
+	u32 MaximumTransmitBytes;
+	u32 MaximumTotalBytes;
+};
+
+struct efi_i2c_operation {
+	u32 Flags;
+	u32 LengthInBytes;
+	u8  *Buffer;
+};
+
+struct efi_i2c_request_packet {
+	unsigned int OperationCount;
+	struct efi_i2c_operation Operation[];
+};
+
+struct efi_i2c_master_protocol {
+	efi_status_t(EFIAPI * set_bus_frequency)(
+		struct efi_i2c_master_protocol *this,
+		unsigned int *bus_clock
+	);
+	efi_status_t(EFIAPI * reset)(
+		struct efi_i2c_master_protocol *this
+	);
+	efi_status_t(EFIAPI * start_request)(
+		struct efi_i2c_master_protocol *this,
+		unsigned int slave_address,
+		struct efi_i2c_request_packet *request_packet,
+		void *event,
+		efi_status_t *status
+	);
+	struct efi_i2c_capabilities *capabilities;
+};
+
+#endif
diff --git a/drivers/pci/pci-efi.h b/include/efi/protocol/pci.h
similarity index 98%
rename from drivers/pci/pci-efi.h
rename to include/efi/protocol/pci.h
index 1dba0b9906f9..41feab4fdb95 100644
--- a/drivers/pci/pci-efi.h
+++ b/include/efi/protocol/pci.h
@@ -1,8 +1,10 @@
-// SPDX-License-Identifier: GPL-2.0-only
-#ifndef __PCI_EFI_H_
-#define __PCI_EFI_H_
+/* SPDX-License-Identifier: GPL-2.0-only */
 
-#include <efi.h>
+#ifndef __EFI_PROTOCOL_PCI_H_
+#define __EFI_PROTOCOL_PCI_H_
+
+#include <efi/types.h>
+#include <efi/memory.h>
 
 struct efi_pci_root_bridge_io_protocol;
 struct efi_pci_io_protocol;
diff --git a/include/efi/protocol/rng.h b/include/efi/protocol/rng.h
new file mode 100644
index 000000000000..d8f29453dafe
--- /dev/null
+++ b/include/efi/protocol/rng.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __EFI_PROTOCOL_RNG_H_
+#define __EFI_PROTOCOL_RNG_H_
+
+#include <efi/types.h>
+
+struct efi_rng_protocol {
+	efi_status_t (EFIAPI *get_info)(struct efi_rng_protocol *protocol,
+					size_t *rng_algorithm_list_size,
+					efi_guid_t *rng_algorithm_list);
+	efi_status_t (EFIAPI *get_rng)(struct efi_rng_protocol *protocol,
+				       efi_guid_t *rng_algorithm,
+				       size_t rng_value_length, uint8_t *rng_value);
+};
+
+#endif
diff --git a/include/efi/protocol/serial.h b/include/efi/protocol/serial.h
new file mode 100644
index 000000000000..3d1e285a2f37
--- /dev/null
+++ b/include/efi/protocol/serial.h
@@ -0,0 +1,79 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __EFI_PROTOCOL_SERIAL_H_
+#define __EFI_PROTOCOL_SERIAL_H_
+
+#include <efi/types.h>
+
+/*
+ * define for Control bits, grouped by read only, write only, and read write
+ *
+ * Read Only
+ */
+#define EFI_SERIAL_CLEAR_TO_SEND        0x00000010
+#define EFI_SERIAL_DATA_SET_READY       0x00000020
+#define EFI_SERIAL_RING_INDICATE        0x00000040
+#define EFI_SERIAL_CARRIER_DETECT       0x00000080
+#define EFI_SERIAL_INPUT_BUFFER_EMPTY   0x00000100
+#define EFI_SERIAL_OUTPUT_BUFFER_EMPTY  0x00000200
+
+/*
+ * Write Only
+ */
+#define EFI_SERIAL_REQUEST_TO_SEND      0x00000002
+#define EFI_SERIAL_DATA_TERMINAL_READY  0x00000001
+
+/*
+ * Read Write
+ */
+#define EFI_SERIAL_HARDWARE_LOOPBACK_ENABLE     0x00001000
+#define EFI_SERIAL_SOFTWARE_LOOPBACK_ENABLE     0x00002000
+#define EFI_SERIAL_HARDWARE_FLOW_CONTROL_ENABLE 0x00004000
+
+typedef enum {
+	DefaultParity,
+	NoParity,
+	EvenParity,
+	OddParity,
+	MarkParity,
+	SpaceParity
+} efi_parity_type;
+
+typedef enum {
+	DefaultStopBits,
+	OneStopBit,
+	OneFiveStopBits,
+	TwoStopBits
+} efi_stop_bits_type;
+
+struct efi_serial_io_mode {
+	uint32_t controlmask;
+	uint32_t timeout;
+	uint64_t baudrate;
+	uint32_t receivefifodepth;
+	uint32_t databits;
+	uint32_t parity;
+	uint32_t stopbits;
+};
+
+struct efi_serial_io_protocol {
+	uint32_t revision;
+
+	efi_status_t (EFIAPI *reset) (struct efi_serial_io_protocol *This);
+	efi_status_t (EFIAPI *set_attributes) (struct efi_serial_io_protocol *This,
+			uint64_t baudrate, uint32_t receivefifodepth,
+			uint32_t timeout, efi_parity_type parity,
+			uint8_t databits, efi_stop_bits_type stopbits);
+	efi_status_t (EFIAPI *setcontrol) (struct efi_serial_io_protocol *This,
+			uint32_t control);
+	efi_status_t (EFIAPI *getcontrol) (struct efi_serial_io_protocol *This,
+			uint32_t *control);
+	efi_status_t (EFIAPI *write) (struct efi_serial_io_protocol *This,
+			size_t *buffersize, void *buffer);
+	efi_status_t (EFIAPI *read) (struct efi_serial_io_protocol *This,
+			size_t *buffersize, void *buffer);
+
+	struct efi_serial_io_mode *mode;
+};
+
+#endif
diff --git a/include/efi/protocol/snp.h b/include/efi/protocol/snp.h
new file mode 100644
index 000000000000..afd9f508c3fd
--- /dev/null
+++ b/include/efi/protocol/snp.h
@@ -0,0 +1,110 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __EFI_PROTOCOL_SNP_H_
+#define __EFI_PROTOCOL_SNP_H_
+
+#include <efi/types.h>
+
+struct efi_network_statistics {
+	uint64_t RxTotalFrames;
+	uint64_t RxGoodFrames;
+	uint64_t RxUndersizeFrames;
+	uint64_t RxOversizeFrames;
+	uint64_t RxDroppedFrames;
+	uint64_t RxUnicastFrames;
+	uint64_t RxBroadcastFrames;
+	uint64_t RxMulticastFrames;
+	uint64_t RxCrcErrorFrames;
+	uint64_t RxTotalBytes;
+	uint64_t TxTotalFrames;
+	uint64_t TxGoodFrames;
+	uint64_t TxUndersizeFrames;
+	uint64_t TxOversizeFrames;
+	uint64_t TxDroppedFrames;
+	uint64_t TxUnicastFrames;
+	uint64_t TxBroadcastFrames;
+	uint64_t TxMulticastFrames;
+	uint64_t TxCrcErrorFrames;
+	uint64_t TxTotalBytes;
+	uint64_t Collisions;
+	uint64_t UnsupportedProtocol;
+};
+
+enum efi_simple_network_state {
+	EfiSimpleNetworkStopped,
+	EfiSimpleNetworkStarted,
+	EfiSimpleNetworkInitialized,
+	EfiSimpleNetworkMaxState
+};
+
+#define EFI_SIMPLE_NETWORK_RECEIVE_UNICAST               0x01
+#define EFI_SIMPLE_NETWORK_RECEIVE_MULTICAST             0x02
+#define EFI_SIMPLE_NETWORK_RECEIVE_BROADCAST             0x04
+#define EFI_SIMPLE_NETWORK_RECEIVE_PROMISCUOUS           0x08
+#define EFI_SIMPLE_NETWORK_RECEIVE_PROMISCUOUS_MULTICAST 0x10
+
+#define EFI_SIMPLE_NETWORK_RECEIVE_INTERRUPT        0x01
+#define EFI_SIMPLE_NETWORK_TRANSMIT_INTERRUPT       0x02
+#define EFI_SIMPLE_NETWORK_COMMAND_INTERRUPT        0x04
+#define EFI_SIMPLE_NETWORK_SOFTWARE_INTERRUPT       0x08
+
+#define MAX_MCAST_FILTER_CNT    16
+struct efi_simple_network_mode {
+	uint32_t State;
+	uint32_t HwAddressSize;
+	uint32_t MediaHeaderSize;
+	uint32_t MaxPacketSize;
+	uint32_t NvRamSize;
+	uint32_t NvRamAccessSize;
+	uint32_t ReceiveFilterMask;
+	uint32_t ReceiveFilterSetting;
+	uint32_t MaxMCastFilterCount;
+	uint32_t MCastFilterCount;
+	struct efi_mac_address MCastFilter[MAX_MCAST_FILTER_CNT];
+	struct efi_mac_address CurrentAddress;
+	struct efi_mac_address BroadcastAddress;
+	struct efi_mac_address PermanentAddress;
+	uint8_t IfType;
+        bool MacAddressChangeable;
+	bool MultipleTxSupported;
+	bool MediaPresentSupported;
+	bool MediaPresent;
+};
+
+#define EFI_SIMPLE_NETWORK_INTERFACE_REVISION   0x00010000
+
+struct efi_simple_network {
+	uint64_t Revision;
+	efi_status_t (EFIAPI *start) (struct efi_simple_network *This);
+	efi_status_t (EFIAPI *stop) (struct efi_simple_network *This);
+	efi_status_t (EFIAPI *initialize) (struct efi_simple_network *This,
+			unsigned long ExtraRxBufferSize, unsigned long ExtraTxBufferSize);
+	efi_status_t (EFIAPI *reset) (struct efi_simple_network *This, bool ExtendedVerification);
+	efi_status_t (EFIAPI *shutdown) (struct efi_simple_network *This);
+	efi_status_t (EFIAPI *receive_filters) (struct efi_simple_network *This,
+			uint32_t Enable, uint32_t Disable, bool ResetMCastFilter,
+			unsigned long MCastFilterCnt, struct efi_mac_address *MCastFilter);
+	efi_status_t (EFIAPI *station_address) (struct efi_simple_network *This,
+			bool Reset, struct efi_mac_address *New);
+	efi_status_t (EFIAPI *statistics) (struct efi_simple_network *This,
+			bool Reset, unsigned long *StatisticsSize,
+			struct efi_network_statistics *StatisticsTable);
+	efi_status_t (EFIAPI *mcast_ip_to_mac) (struct efi_simple_network *This,
+			bool IPv6, union efi_ip_address *IP, struct efi_mac_address *MAC);
+	efi_status_t (EFIAPI *nvdata) (struct efi_simple_network *This,
+			bool ReadWrite, unsigned long Offset, unsigned long BufferSize,
+			void *Buffer);
+	efi_status_t (EFIAPI *get_status) (struct efi_simple_network *This,
+			uint32_t *InterruptStatus, void **TxBuf);
+	efi_status_t (EFIAPI *transmit) (struct efi_simple_network *This,
+			unsigned long HeaderSize, unsigned long BufferSize, void *Buffer,
+			struct efi_mac_address *SrcAddr, struct efi_mac_address *DestAddr,
+			uint16_t *Protocol);
+	efi_status_t (EFIAPI *receive) (struct efi_simple_network *This,
+			unsigned long *HeaderSize, unsigned long *BufferSize, void *Buffer,
+			struct efi_mac_address *SrcAddr, struct efi_mac_address *DestAddr, uint16_t *Protocol);
+	void *WaitForPacket;
+	struct efi_simple_network_mode *Mode;
+};
+
+#endif
diff --git a/include/efi/efi-stdio.h b/include/efi/protocol/text.h
similarity index 67%
rename from include/efi/efi-stdio.h
rename to include/efi/protocol/text.h
index 55ceb47d1b79..7a1fe8e4875a 100644
--- a/include/efi/efi-stdio.h
+++ b/include/efi/protocol/text.h
@@ -1,6 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
-#ifndef EFI_STDIO_H_
-#define EFI_STDIO_H_
+
+#ifndef __EFI_PROTOCOL_TEXT_H_
+#define __EFI_PROTOCOL_TEXT_H_
 
 #include <efi/types.h>
 
@@ -61,6 +62,45 @@ struct efi_simple_text_input_ex_protocol {
 	efi_unregister_keystroke_notify unregister_key_notify;
 };
 
+struct simple_text_output_mode {
+	s32 max_mode;
+	s32 mode;
+	s32 attribute;
+	s32 cursor_column;
+	s32 cursor_row;
+	bool cursor_visible;
+};
+
+struct efi_simple_text_output_protocol {
+	efi_status_t (EFIAPI *reset)(
+			struct efi_simple_text_output_protocol *this,
+			char extended_verification);
+	efi_status_t (EFIAPI *output_string)(struct efi_simple_text_output_protocol *this, const efi_char16_t *str);
+	efi_status_t (EFIAPI *test_string)(struct efi_simple_text_output_protocol *this,
+			const efi_char16_t *str);
+
+	efi_status_t(EFIAPI *query_mode)(struct efi_simple_text_output_protocol *this,
+			unsigned long mode_number, unsigned long *columns, unsigned long *rows);
+	efi_status_t(EFIAPI *set_mode)(struct efi_simple_text_output_protocol *this,
+			unsigned long mode_number);
+	efi_status_t(EFIAPI *set_attribute)(struct efi_simple_text_output_protocol *this,
+			unsigned long attribute);
+	efi_status_t(EFIAPI *clear_screen) (struct efi_simple_text_output_protocol *this);
+	efi_status_t(EFIAPI *set_cursor_position) (struct efi_simple_text_output_protocol *this,
+			unsigned long column, unsigned long row);
+	efi_status_t(EFIAPI *enable_cursor)(struct efi_simple_text_output_protocol *this,
+			bool enable);
+	struct simple_text_output_mode *mode;
+};
+
+struct efi_simple_text_input_protocol {
+	efi_status_t(EFIAPI *reset)(struct efi_simple_text_input_protocol *this,
+			bool ExtendedVerification);
+	efi_status_t(EFIAPI *read_key_stroke)(struct efi_simple_text_input_protocol *this,
+			struct efi_input_key *key);
+	struct efi_event *wait_for_key;
+};
+
 #define EFI_SHIFT_STATE_VALID           0x80000000
 #define EFI_RIGHT_CONTROL_PRESSED       0x00000004
 #define EFI_LEFT_CONTROL_PRESSED        0x00000008
diff --git a/include/efi/services.h b/include/efi/services.h
new file mode 100644
index 000000000000..9fc6a066a917
--- /dev/null
+++ b/include/efi/services.h
@@ -0,0 +1,271 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef _EFI_SERVICES_H_
+#define _EFI_SERVICES_H_
+
+#include <efi/types.h>
+
+/*
+ * Generic EFI table header
+ */
+struct efi_table_hdr {
+	u64 signature;
+	u32 revision;
+	u32 headersize;
+	u32 crc32;
+	u32 reserved;
+};
+
+typedef int (*efi_freemem_callback_t) (u64 start, u64 end, void *arg);
+
+enum efi_locate_search_type {
+	ALL_HANDLES,
+	BY_REGISTER_NOTIFY,
+	BY_PROTOCOL
+};
+
+struct efi_open_protocol_information_entry {
+	efi_handle_t agent_handle;
+	efi_handle_t controller_handle;
+	u32 attributes;
+	u32 open_count;
+};
+
+enum efi_timer_delay {
+	EFI_TIMER_CANCEL = 0,
+	EFI_TIMER_PERIODIC = 1,
+	EFI_TIMER_RELATIVE = 2
+};
+
+struct efi_event;
+struct efi_memory_desc;
+
+/*
+ * EFI Boot Services table
+ */
+struct efi_boot_services {
+	struct efi_table_hdr hdr;
+	efi_status_t (EFIAPI *raise_tpl)(unsigned long new_tpl);
+	void (EFIAPI *restore_tpl)(unsigned long old_tpl);
+	efi_status_t (EFIAPI *allocate_pages)(int, int, size_t,
+				       efi_physical_addr_t *);
+	efi_status_t (EFIAPI *free_pages)(efi_physical_addr_t, size_t);
+	efi_status_t (EFIAPI *get_memory_map)(size_t *, struct efi_memory_desc *,
+					      ulong *, size_t *, u32 *);
+	efi_status_t (EFIAPI *allocate_pool)(int, size_t, void **);
+	efi_status_t (EFIAPI *free_pool)(void *);
+#define EFI_EVT_TIMER				0x80000000
+#define EFI_EVT_RUNTIME				0x40000000
+#define EFI_EVT_NOTIFY_WAIT			0x00000100
+#define EFI_EVT_NOTIFY_SIGNAL			0x00000200
+#define EFI_EVT_SIGNAL_EXIT_BOOT_SERVICES	0x00000201
+#define EFI_EVT_SIGNAL_VIRTUAL_ADDRESS_CHANGE	0x60000202
+
+#define EFI_TPL_APPLICATION	4
+#define EFI_TPL_CALLBACK	8
+#define EFI_TPL_NOTIFY		16
+#define EFI_TPL_HIGH_LEVEL	31
+	efi_status_t(EFIAPI *create_event)(u32 type , unsigned long tpl,
+			void (*fn) (struct efi_event *event, void *ctx),
+			void *ctx, struct efi_event **event);
+	efi_status_t(EFIAPI *set_timer)(struct efi_event *event, enum efi_timer_delay type, uint64_t time);
+	efi_status_t(EFIAPI *wait_for_event)(size_t number_of_events, struct efi_event **event,
+			size_t *index);
+	efi_status_t (EFIAPI *signal_event)(struct efi_event *event);
+	efi_status_t(EFIAPI *close_event)(struct efi_event *event);
+#define EFI_NATIVE_INTERFACE	0x00000000
+	efi_status_t (EFIAPI *check_event)(struct efi_event *event);
+	efi_status_t (EFIAPI *install_protocol_interface)(efi_handle_t *handle, const efi_guid_t *protocol,
+			int protocol_interface_type, void *protocol_interface);
+	efi_status_t (EFIAPI *reinstall_protocol_interface)(efi_handle_t handle, const efi_guid_t *protocol,
+			void *old_interface, void *new_interface);
+	efi_status_t (EFIAPI *uninstall_protocol_interface)(efi_handle_t handle,
+			const efi_guid_t *protocol, void *protocol_interface);
+
+	efi_status_t (EFIAPI *handle_protocol)(efi_handle_t, const efi_guid_t *, void **);
+	void *__reserved;
+	efi_status_t (EFIAPI *register_protocol_notify)(const efi_guid_t *protocol, struct efi_event *event,
+			void **registration);
+	efi_status_t (EFIAPI *locate_handle) (enum efi_locate_search_type search_type,
+			const efi_guid_t *protocol, void *search_key,
+			size_t *buffer_size, efi_handle_t *buffer);
+	efi_status_t (EFIAPI *locate_device_path)(const efi_guid_t *protocol,
+			struct efi_device_path **device_path, efi_handle_t *device);
+	efi_status_t (EFIAPI *install_configuration_table)(const efi_guid_t *guid, void *table);
+	efi_status_t (EFIAPI *load_image)(bool boot_policiy, efi_handle_t parent_image,
+			struct efi_device_path *file_path, void *source_buffer,
+			size_t source_size, efi_handle_t *image);
+	efi_status_t (EFIAPI *start_image)(efi_handle_t handle,
+			size_t *exitdata_size, u16 **exitdata);
+	efi_status_t(EFIAPI *exit)(efi_handle_t handle,  efi_status_t exit_status,
+			size_t exitdata_size, u16 *exitdata);
+	efi_status_t (EFIAPI *unload_image)(efi_handle_t handle);
+	efi_status_t (EFIAPI *exit_boot_services)(efi_handle_t, unsigned long);
+	void *get_next_monotonic_count;
+	efi_status_t (EFIAPI *stall)(unsigned long usecs);
+	efi_status_t (EFIAPI *set_watchdog_timer)(unsigned long timeout,
+						  uint64_t watchdog_code,
+						  size_t data_size,
+						  u16 *watchdog_data);
+	efi_status_t(EFIAPI *connect_controller)(efi_handle_t controller_handle,
+			efi_handle_t *driver_image_handle,
+			struct efi_device_path *remaining_device_path,
+			bool Recursive);
+	efi_status_t (EFIAPI *disconnect_controller)(efi_handle_t controller_handle,
+			efi_handle_t driver_image_handle, efi_handle_t child_handle);
+#define EFI_OPEN_PROTOCOL_BY_HANDLE_PROTOCOL  0x00000001
+#define EFI_OPEN_PROTOCOL_GET_PROTOCOL        0x00000002
+#define EFI_OPEN_PROTOCOL_TEST_PROTOCOL       0x00000004
+#define EFI_OPEN_PROTOCOL_BY_CHILD_CONTROLLER 0x00000008
+#define EFI_OPEN_PROTOCOL_BY_DRIVER           0x00000010
+#define EFI_OPEN_PROTOCOL_EXCLUSIVE           0x00000020
+	efi_status_t (EFIAPI *open_protocol)(efi_handle_t handle, const efi_guid_t *protocol,
+			void ** interface, efi_handle_t agent_handle,
+			efi_handle_t controller_handle, u32 attributes);
+	efi_status_t (EFIAPI *close_protocol)(efi_handle_t handle, const efi_guid_t *protocol,
+					      efi_handle_t agent, efi_handle_t controller);
+	efi_status_t(EFIAPI *open_protocol_information)(efi_handle_t handle, const efi_guid_t *Protocol,
+			struct efi_open_protocol_information_entry **entry_buffer,
+			size_t *entry_count);
+	efi_status_t (EFIAPI *protocols_per_handle)(efi_handle_t handle,
+			efi_guid_t ***protocol_buffer,
+			size_t *protocols_buffer_count);
+	efi_status_t (EFIAPI *locate_handle_buffer) (
+			enum efi_locate_search_type search_type,
+			const efi_guid_t *protocol, void *search_key,
+			size_t *no_handles, efi_handle_t **buffer);
+	efi_status_t (EFIAPI *locate_protocol)(const efi_guid_t *protocol,
+			void *registration, void **protocol_interface);
+	efi_status_t (EFIAPI *install_multiple_protocol_interfaces)(efi_handle_t *handle, ...);
+	efi_status_t (EFIAPI *uninstall_multiple_protocol_interfaces)(efi_handle_t handle, ...);
+	efi_status_t (EFIAPI *calculate_crc32)(const void *data,
+			size_t data_size, uint32_t *crc32);
+	void (EFIAPI *copy_mem)(void *destination, const void *source, size_t length);
+	void (EFIAPI *set_mem)(void *buffer, size_t size, uint8_t value);
+	void *create_event_ex;
+};
+
+/*
+ * Types and defines for EFI ResetSystem
+ */
+enum efi_reset_type {
+	EFI_RESET_COLD = 0,
+	EFI_RESET_WARM = 1,
+	EFI_RESET_SHUTDOWN = 2,
+	EFI_RESET_PLATFORM_SPECIFIC = 3,
+};
+
+/*
+ * EFI Runtime Services table
+ */
+#define EFI_RUNTIME_SERVICES_SIGNATURE ((u64)0x5652453544e5552ULL)
+#define EFI_RUNTIME_SERVICES_REVISION  0x00010000
+
+struct efi_capsule_header;
+
+struct efi_runtime_services {
+	struct efi_table_hdr hdr;
+	efi_status_t (EFIAPI *get_time)(struct efi_time *time,
+					struct efi_time_cap *capabilities);
+	efi_status_t (EFIAPI *set_time)(struct efi_time *time);
+	efi_status_t (EFIAPI *get_wakeup_time)(char *enabled, char *pending,
+				       struct efi_time *time);
+	efi_status_t (EFIAPI *set_wakeup_time)(char enabled, struct efi_time *time);
+	efi_status_t (EFIAPI *set_virtual_address_map)(size_t memory_map_size,
+				       size_t descriptor_size,
+				       uint32_t descriptor_version,
+				       struct efi_memory_desc *virtmap);
+	efi_status_t (*convert_pointer)(unsigned long dbg, void **address);
+	efi_status_t (EFIAPI *get_variable)(efi_char16_t *variable_name, const efi_guid_t *vendor,
+			u32 *Attributes, size_t *data_size, void *data);
+	efi_status_t (EFIAPI *get_next_variable)(size_t *variable_name_size,
+			efi_char16_t *variable_name, efi_guid_t *vendor);
+	efi_status_t (EFIAPI *set_variable)(efi_char16_t *variable_name, const efi_guid_t *vendor,
+			u32 Attributes, size_t data_size, const void *data);
+	efi_status_t (EFIAPI *get_next_high_mono_count)(uint32_t *high_count);
+	void (EFIAPI *reset_system)(enum efi_reset_type reset_type, efi_status_t reset_status,
+			size_t data_size, void *reset_data);
+	efi_status_t (EFIAPI *update_capsule)(struct efi_capsule_header **capsule_header_array,
+					      size_t capsule_count,
+					      u64 scatter_gather_list);
+	efi_status_t (EFIAPI *query_capsule_caps)(struct efi_capsule_header **capsule_header_array,
+						  size_t capsule_count,
+						  u64 *maximum_capsule_size,
+						  u32 *reset_type);
+	void *query_variable_info;
+};
+
+struct efi_driver_binding_protocol {
+	efi_status_t (EFIAPI * supported)(
+			struct efi_driver_binding_protocol *this,
+			efi_handle_t controller_handle,
+			struct efi_device_path *remaining_device_path);
+	efi_status_t (EFIAPI * start)(
+			struct efi_driver_binding_protocol *this,
+			efi_handle_t controller_handle,
+			struct efi_device_path *remaining_device_path);
+	efi_status_t (EFIAPI * stop)(
+			struct efi_driver_binding_protocol *this,
+			efi_handle_t controller_handle,
+			size_t number_of_children,
+			efi_handle_t *child_handle_buffer);
+	u32 version;
+	efi_handle_t image_handle;
+	efi_handle_t driver_binding_handle;
+};
+
+struct efi_config_table {
+	efi_guid_t guid;
+	void * table;
+};
+
+#define EFI_SYSTEM_TABLE_SIGNATURE ((u64)0x5453595320494249ULL)
+
+#define EFI_2_30_SYSTEM_TABLE_REVISION  ((2 << 16) | (30))
+#define EFI_2_20_SYSTEM_TABLE_REVISION  ((2 << 16) | (20))
+#define EFI_2_10_SYSTEM_TABLE_REVISION  ((2 << 16) | (10))
+#define EFI_2_00_SYSTEM_TABLE_REVISION  ((2 << 16) | (00))
+#define EFI_1_10_SYSTEM_TABLE_REVISION  ((1 << 16) | (10))
+#define EFI_1_02_SYSTEM_TABLE_REVISION  ((1 << 16) | (02))
+
+struct efi_system_table {
+	struct efi_table_hdr hdr;
+	efi_char16_t *fw_vendor;	/* physical addr of CHAR16 vendor string */
+	u32 fw_revision;
+	efi_handle_t con_in_handle;
+	struct efi_simple_text_input_protocol *con_in;
+	efi_handle_t con_out_handle;
+	struct efi_simple_text_output_protocol *con_out;
+	efi_handle_t stderr_handle;
+	struct efi_simple_text_output_protocol *std_err;
+	struct efi_runtime_services *runtime;
+	struct efi_boot_services *boottime;
+	size_t nr_tables;
+	struct efi_config_table *tables;
+};
+
+struct efi_loaded_image {
+	u32 revision;
+	efi_handle_t parent_handle;
+	struct efi_system_table *system_table;
+	efi_handle_t device_handle;
+	void *file_path;
+	void *reserved;
+	u32 load_options_size;
+	void *load_options;
+	void *image_base;
+	__aligned_u64 image_size;
+	unsigned int image_code_type;
+	unsigned int image_data_type;
+	efi_status_t (EFIAPI *unload)(efi_handle_t image_handle);
+};
+
+enum efi_locate_search_type;
+
+int __efi_locate_handle(struct efi_boot_services *bs,
+		enum efi_locate_search_type search_type,
+		efi_guid_t *protocol,
+		void *search_key,
+		size_t *no_handles,
+		efi_handle_t **buffer);
+
+#endif
diff --git a/include/efi/types.h b/include/efi/types.h
index 4b2276038de2..0d6d6c8b05b9 100644
--- a/include/efi/types.h
+++ b/include/efi/types.h
@@ -2,6 +2,8 @@
 #ifndef _EFI_TYPES_H_
 #define _EFI_TYPES_H_
 
+#include <efi/attributes.h>
+
 #ifndef __ASSEMBLY__
 
 #include <linux/types.h>
@@ -39,12 +41,6 @@ typedef guid_t efi_guid_t __aligned(__alignof__(u32));
   (c) & 0xff, ((c) >> 8) & 0xff, \
   (d0), (d1), (d2), (d3), (d4), (d5), (d6), (d7) }})
 
-#ifdef __x86_64__
-#define EFIAPI __attribute__((ms_abi))
-#else
-#define EFIAPI
-#endif
-
 struct efi_device_path {
 	u8 type;
 	u8 sub_type;
@@ -82,6 +78,47 @@ static inline efi_physical_addr_t efi_virt_to_phys(const void *addr)
 	return (uintptr_t)addr;
 }
 
+/*
+ * Types and defines for Time Services
+ */
+#define EFI_TIME_ADJUST_DAYLIGHT 0x1
+#define EFI_TIME_IN_DAYLIGHT     0x2
+#define EFI_UNSPECIFIED_TIMEZONE 0x07ff
+
+struct efi_time {
+	u16 year;
+	u8 month;
+	u8 day;
+	u8 hour;
+	u8 minute;
+	u8 second;
+	u8 pad1;
+	u32 nanosecond;
+	s16 timezone;
+	u8 daylight;
+	u8 pad2;
+};
+
+struct efi_time_cap {
+	u32 resolution;
+	u32 accuracy;
+	u8 sets_to_zero;
+};
+
+/*
+ * Allocation types for calls to boottime->allocate_pages.
+ */
+enum efi_allocate_type {
+	EFI_ALLOCATE_ANY_PAGES,
+	EFI_ALLOCATE_MAX_ADDRESS,
+	EFI_ALLOCATE_ADDRESS,
+	EFI_MAX_ALLOCATE_TYPE
+};
+
+#define EFI_PAGE_SHIFT			12
+#define EFI_PAGE_SIZE			(1ULL << EFI_PAGE_SHIFT)
+#define EFI_PAGE_MASK			(EFI_PAGE_SIZE - 1)
+
 #endif
 
 #endif
diff --git a/include/efi/variable.h b/include/efi/variable.h
index c53b295eefe8..53f465117cd5 100644
--- a/include/efi/variable.h
+++ b/include/efi/variable.h
@@ -5,6 +5,34 @@
 
 #include <efi/types.h>
 
+/*
+ * Variable Attributes
+ */
+#define EFI_VARIABLE_NON_VOLATILE       0x0000000000000001
+#define EFI_VARIABLE_BOOTSERVICE_ACCESS 0x0000000000000002
+#define EFI_VARIABLE_RUNTIME_ACCESS     0x0000000000000004
+#define EFI_VARIABLE_HARDWARE_ERROR_RECORD 0x0000000000000008
+#define EFI_VARIABLE_AUTHENTICATED_WRITE_ACCESS 0x0000000000000010
+#define EFI_VARIABLE_TIME_BASED_AUTHENTICATED_WRITE_ACCESS 0x0000000000000020
+#define EFI_VARIABLE_APPEND_WRITE	0x0000000000000040
+
+#define EFI_VARIABLE_MASK 	(EFI_VARIABLE_NON_VOLATILE | \
+				EFI_VARIABLE_BOOTSERVICE_ACCESS | \
+				EFI_VARIABLE_RUNTIME_ACCESS | \
+				EFI_VARIABLE_HARDWARE_ERROR_RECORD | \
+				EFI_VARIABLE_AUTHENTICATED_WRITE_ACCESS | \
+				EFI_VARIABLE_TIME_BASED_AUTHENTICATED_WRITE_ACCESS | \
+				EFI_VARIABLE_APPEND_WRITE)
+/*
+ * Length of a GUID string (strlen("aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee"))
+ * not including trailing NUL
+ */
+#define EFI_VARIABLE_GUID_LEN 36
+
+int __efivarfs_parse_filename(const char *filename, efi_guid_t *vendor,
+			      s16 *name, size_t *namelen);
+int efivarfs_parse_filename(const char *filename, efi_guid_t *vendor, s16 **name);
+
 void *efi_get_variable(char *name, efi_guid_t *vendor, int *var_size);
 
 int efi_set_variable(char *name, efi_guid_t *vendor, uint32_t attributes,
diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index c7295c1067e0..622b40ac69e9 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -21,7 +21,7 @@
 #include <kallsyms.h>
 #include <wchar.h>
 #include <of.h>
-#include <efi.h>
+#include <efi/devicepath.h>
 
 #include <common.h>
 #include <pbl.h>
diff --git a/test/self/mmu.c b/test/self/mmu.c
index 60bc9b38e84a..f5a09d76131e 100644
--- a/test/self/mmu.c
+++ b/test/self/mmu.c
@@ -9,7 +9,7 @@
 #include <abort.h>
 #include <zero_page.h>
 #include <linux/sizes.h>
-#include <efi/efi-mode.h>
+#include <efi/mode.h>
 #include <memory.h>
 
 #define TEST_BUFFER_SIZE		SZ_1M
-- 
2.47.3



