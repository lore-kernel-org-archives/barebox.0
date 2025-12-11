Delivery-date: Thu, 11 Dec 2025 21:31:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnK9-00AQAT-2j
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 21:31:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnK7-0006kg-7Z
	for lore@pengutronix.de; Thu, 11 Dec 2025 21:31:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=t3brvZnkgRE2EvB7246Jja9w1pam4/CdV6XNXAVeJ1g=; b=V/YFgUBgDV112irsXPM/4HXjbZ
	qs8gnES8sAR1NK+RceoGCoZ/4VaSngVbHbqSvOVYaq88P1rgNXglQ2XgdRSj6UJCTaX6BFVWOc+h5
	iHGmYUjc7CgY0hq3QCKS5qRKnCuvkNUINF4KkCIXE8Zmpox685maQkInC6bk3PlSKiTSswFKwk6cl
	Slqv/RYpToJmoy8DPhGDau5DBkv87l7PhDOzynrJ+uWgxfSsEPi3ZCzBPNBJcNGNZw/vSRo9XiqOX
	S0SdvVrGLyUOgBKbYrYdbUp6uQrEFoErNBAtcZbz3IOr3fkBzxUiq/l0ZbEmpdHRGkwkHaw9Iwpi0
	4muNn1VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnJX-0000000HE5Z-0x2B;
	Thu, 11 Dec 2025 20:31:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnJT-0000000HE2w-0ev7
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 20:31:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnJR-0006J0-Fj; Thu, 11 Dec 2025 21:30:57 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnJR-005BQp-0w;
	Thu, 11 Dec 2025 21:30:57 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnJR-00000008e20-0l3B;
	Thu, 11 Dec 2025 21:30:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 21:29:51 +0100
Message-ID: <20251211203056.2014710-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_123059_355237_AC164DF2 
X-CRM114-Status: GOOD (  12.16  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 00/16] efi: restructure for reuse from loader code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series mostly prepares existing definitions and code used for
payload so it can be reused from the new loader support as well.

Ahmad Fatoum (16):
  efi: payload: restructure Kconfig
  efi: payload: populate $global.efi.payload variable
  efi: mode: add efi_get_runtime_services helper
  efi: payload: make EFI variable helpers usable for loader as well
  fs: efivarfs: prepare for use with barebox as EFI loader
  efi: handle: build for both EFI payload and loader
  efi: provide populate $efi.payload_default_path depending on arch
  efi: tidy up header includes for reuse
  efi: types: add efi_intn_t/efi_uintn_t definition
  efi: devicepath: make fully usable for loader
  efi: guid: don't interleave protocol and event GUIDs
  efi: guid: add some more GUIDs
  efi: guid: move static GUIDs out of drivers
  efi: gop: flesh out efi_graphics_output_protocol::blt definition
  efi: payload: initrd: move into common efi code
  efi: add missing EFIAPI to functions

 arch/Kconfig                                  |   5 +
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
 common/startup.c                              |   6 +-
 drivers/block/efi-block-io.c                  |   7 +-
 drivers/bus/acpi.c                            |   5 +-
 drivers/clocksource/efi.c                     |   7 +-
 drivers/clocksource/efi_x86.c                 |   3 +-
 drivers/efi/Makefile                          |   2 +-
 drivers/efi/efi-device.c                      |  16 +-
 drivers/hw_random/efi-rng.c                   |   6 +-
 drivers/i2c/busses/i2c-efi.c                  |  54 +-
 drivers/net/efi-snp.c                         | 115 +--
 drivers/pci/pci-efi.c                         |   9 +-
 drivers/serial/efi-stdio.c                    |  11 +-
 drivers/serial/serial_efi.c                   |  78 +-
 drivers/serial/serial_semihosting.c           |   2 +-
 drivers/video/efi_gop.c                       |  57 +-
 drivers/watchdog/efi_wdt.c                    |   4 +-
 drivers/watchdog/itco_wdt.c                   |   1 -
 efi/Kconfig                                   |  24 +-
 efi/Makefile                                  |   3 +-
 efi/devicepath.c                              |  11 +-
 efi/efivar-filename.c                         |   3 +-
 efi/efivar.c                                  | 130 +++
 efi/errno.c                                   |   3 +-
 efi/guid.c                                    |  44 +-
 drivers/efi/efi-handle.c => efi/handle.c      |   8 +-
 efi/{payload/efi-initrd.c => initrd.c}        |  28 +-
 efi/payload/Kconfig                           |  27 -
 efi/payload/Makefile                          |   1 -
 efi/payload/boarddata.c                       |   5 +-
 efi/payload/bootm.c                           |   7 +-
 efi/payload/early-mem.c                       |   4 +-
 efi/payload/entry-multi.c                     |   5 +-
 efi/payload/entry-single.c                    |   6 +-
 efi/payload/fdt.c                             |   6 +-
 efi/payload/handover.c                        |   7 +-
 efi/payload/image.c                           |   7 +-
 efi/payload/init.c                            | 109 +--
 efi/payload/iomem.c                           |   6 +-
 fs/Kconfig                                    |   2 +-
 fs/efi.c                                      |   7 +-
 fs/efivarfs.c                                 |  45 +-
 fs/ubootvarfs.c                               |   1 -
 include/acpi.h                                |   2 +-
 include/efi.h                                 | 886 ------------------
 include/efi/attributes.h                      |  21 +
 include/efi/debug_ll.h                        |   9 +-
 include/efi/{device-path.h => devicepath.h}   |   9 +
 include/efi/efi-payload.h                     |  40 -
 include/efi/efi-util.h                        |  20 -
 include/efi/error.h                           |  58 ++
 include/efi/guid.h                            | 361 +++++++
 include/efi/initrd.h                          |  11 +
 include/efi/{memtype.h => memory.h}           |  19 +-
 include/efi/{efi-mode.h => mode.h}            |  11 +
 include/efi/payload.h                         |  37 +
 .../efi/{efi-device.h => payload/driver.h}    |  19 +-
 include/efi/{efi-init.h => payload/init.h}    |   4 +-
 include/efi/protocol/block.h                  |  35 +
 include/efi/protocol/file.h                   | 111 +++
 include/efi/protocol/gop.h                    |  53 ++
 include/efi/protocol/i2c.h                    |  55 ++
 .../pci-efi.h => include/efi/protocol/pci.h   |  10 +-
 include/efi/protocol/rng.h                    |  17 +
 include/efi/protocol/serial.h                 |  79 ++
 include/efi/protocol/snp.h                    | 110 +++
 include/efi/{efi-stdio.h => protocol/text.h}  |  44 +-
 include/efi/services.h                        | 271 ++++++
 include/efi/types.h                           |  51 +-
 include/efi/variable.h                        |  51 +
 lib/vsprintf.c                                |   2 +-
 test/self/mmu.c                               |   2 +-
 82 files changed, 1787 insertions(+), 1526 deletions(-)
 create mode 100644 efi/efivar.c
 rename drivers/efi/efi-handle.c => efi/handle.c (87%)
 rename efi/{payload/efi-initrd.c => initrd.c} (84%)
 delete mode 100644 include/efi.h
 create mode 100644 include/efi/attributes.h
 rename include/efi/{device-path.h => devicepath.h} (95%)
 delete mode 100644 include/efi/efi-payload.h
 delete mode 100644 include/efi/efi-util.h
 create mode 100644 include/efi/error.h
 create mode 100644 include/efi/guid.h
 create mode 100644 include/efi/initrd.h
 rename include/efi/{memtype.h => memory.h} (90%)
 rename include/efi/{efi-mode.h => mode.h} (68%)
 create mode 100644 include/efi/payload.h
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
 create mode 100644 include/efi/variable.h

-- 
2.47.3



