Delivery-date: Thu, 18 Dec 2025 12:13:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWBx0-00Co1z-0g
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:13:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWBwy-0005of-4B
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:13:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=cO5dAPLMrvTalfP4dzNpMKsrxYSWtD9EclaF4Q88BOo=; b=2ZPWxf8VeY2RaRH/pbU/DOTE6E
	1ghJjnlUWkkCns+/+doSeONvn/BuD0t2DK1lfvYt7cJuIAXW6mfW0Dj7zQMEzV+WpBowWfzmdeZiI
	n50dDCzSK9f8AmzD3YeaJ2eyjPOpeZk4lJPG9ovU5TBH7dhbSuSRBzGP2vjtqTHJ19LQZvFlxwGg7
	TYISzTwgkYnuv7y641wSRUtKf+vTDbJRfKWzr/bfYD5F2DoJXtBIIf2ppTUnoFmUXT18YU/vUSWvQ
	mWMegqAodXJ/lrRm+XVzt9YNGKVdku2f75v9nKVgtZ4STePc0lBoD2G4uv+vjPYxrdGJI3DxFZKC/
	KR7jfLzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWBwF-00000008IMS-2CoR;
	Thu, 18 Dec 2025 11:12:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWBw7-00000008IG5-2ndL
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 11:12:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw3-0005N1-8l; Thu, 18 Dec 2025 12:12:43 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw3-006GgD-0H;
	Thu, 18 Dec 2025 12:12:43 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw2-0000000AVre-48Uu;
	Thu, 18 Dec 2025 12:12:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:37:20 +0100
Message-ID: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_031248_012018_372CBAC4 
X-CRM114-Status: GOOD (  18.94  )
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
Subject: [PATCH v1 00/54] efi: implement EFI loader support in barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds enough support to barebox, so we can boot GRUB and an EFI
stubbed kernel in Debian ARM32 and ARM64 UEFI CDROM installers and
ARM64 nocloud images.

This was mostly tested on Qemu Virt and a RK3568-powered QNAP TS-433eU
and with Debian 13 (Trixie) images.

This builds on lots of great work done on U-Boot. Some of the protocols
differ only little from the U-Boot original, but the parts that are
interfacing with barebox frameworks like memory allocations, file
handling, block devices and so on are understandably different.

I am still debugging an integration test that will boot a Debian kernel
and verify somethings, so that will follow later.

For manual use, here's an example:

  IMG=https://cloud.debian.org/images/cloud/trixie/latest/debian-13-nocloud-arm64.raw
  qemu-system-aarch64 -kernel images/barebox-dt-2nd.img \
  -drive if=virtio,format=raw,snapshot=on,file=$IMG -device virtio-rng -nographic \
  -machine virt,highmem=off -cpu cortex-a57 -m 1024M -serial mon:stdio -trace file=/dev/null

My wishlist for the midterm future:

  - Support for StandaloneMM. Currently only storing the variables in a
    file in the ESP is supported, which is not power-fail safe, doesn't
    allow authenticated variables and doesn't work for setups with
    multiple ESPs (e.g. when installing from USB flash drive).

  - Support for capsules: This would provide us a long missing way
    to expose barebox_update handlers to userspace

  - Making this a sensible default: EFI boot happens with MMU enabled
    and I can see myself using this even with just an EFI-stubbed kernel
    to speed up early kernel boot, but this needs more thorough testing,
    before we enable it in existing defconfigs

  - Implement efibootmgr, so we can boot according to Boot####
    variables. Currently, GRUB or the kernel must either be invoked
    directly or be placed at the removable media path
    (CONFIG_EFI_PAYLOAD_PATH).

  - Turn run time services into a DSO instead of just a section within
    barebox

Ahmad Fatoum (54):
  efi: payload: initrd: fix type mismatch on 32-bit
  efi: loader: switch over event/memory key type to efi_uintn_t
  lib: vsprintf: print human-readable EFI GUIDs with %pUs
  fs: fat: don't duplicate dentries when resolving differently cased
    paths
  efi: loader: add memory accounting
  efi: loader: add pool allocator
  efi: types: add EFI_RUNTIME_SECTION
  resource: assign memory banks a default type and attr
  ARM: lds: add EFI runtime service section
  ARM: move needed assembly routines into EFI runtime section
  crypto: crc32: implement position independent CRC32
  efi: loader: add support for tracing calls back into UEFI
  efi: loader: add table utility functions
  lib: add charset helpers
  efi: loader: add object handling API
  efi: loader: add devicepath support
  efi: loader: add debug support
  efi: loader: add boot services support
  efi: loader: add support for runtime services before ExitBootServices
  efi: loader: setup root node
  efi: loader: add watchdog support
  efi: loader: move PE implementation out of common code
  efi: loader: protocol: add file protocol support
  efi: loader: protocol: add Block IO support
  efi: loader: protocol: implement efi_file_from_path
  efi: loader: boot: implement LoadImage BootService
  efi: loader: add EFI load option handling
  efi: loader: protocol: add graphical output protocol support
  efi: loader: protocol: add console support
  efi: loader: protocol: add HII support
  efi: loader: protocol: add unicode collation support
  efi: loader: protocol: add random number generator protocol
  efi: loader: protocol: add device_path_utilities
  efi: loader: support formatting only first device path node to text
  efi: loader: protocol: add efi_device_path_to_text support
  restart: allow drivers to register runtime restart handler
  poweroff: allow drivers to register runtime poweroff handler
  ARM: psci: client: register runtime service poweroff handler
  ARM: psci: client: register runtime service restart handler
  hardening: disable some features when EFI runtime support is enabled
  filetype: add new filetype for efi-stubbed ARM zImages
  bootm: add global.bootm.efi toggle
  efi: loader: add ESP boot entry provider
  efi: loader: add rudimentary EFI boot manager
  efi: loader: implement bootm handler
  efi: runtime: add EFI variable support
  efi: loader: populate OsIndicationsSupported/PlatformLang variables
  ARM: don't disable MMU when EFI booting
  efi: runtime: add runtime service support after ExitBootServices
  efi: runtime: add relocation check
  efi: loader: CONFIG_EFI_RT_VOLATILE_STORE
  efi: loader: support ExitBootServices
  efi: loader: pass along SMBIOS table
  ARM: configs: add multi_v7/8_efiloader_defconfig

 Makefile                                     |    3 +
 arch/Kconfig                                 |    3 +
 arch/arm/Kconfig                             |    3 +
 arch/arm/Makefile                            |    4 +
 arch/arm/cpu/cpu.c                           |    3 +
 arch/arm/cpu/psci-client.c                   |   27 +-
 arch/arm/cpu/smccc-call_32.S                 |    4 +-
 arch/arm/cpu/smccc-call_64.S                 |    5 +-
 arch/arm/lib32/barebox.lds.S                 |    5 +
 arch/arm/lib32/memcpy.S                      |    3 +-
 arch/arm/lib32/memmove.S                     |    3 +-
 arch/arm/lib32/memset.S                      |    3 +-
 arch/arm/lib64/armlinux.c                    |   14 +-
 arch/arm/lib64/barebox.lds.S                 |    4 +
 arch/arm/lib64/memcpy.S                      |    3 +
 arch/arm/lib64/memset.S                      |    3 +
 arch/riscv/lib/bootm.c                       |   14 +-
 commands/efi_handle_dump.c                   |    4 +-
 common/Kconfig                               |   16 +-
 common/Kconfig.debug                         |   23 +
 common/Makefile                              |    1 -
 common/boards/configs/efi-loader.config      |    2 +
 common/boot.c                                |    7 +-
 common/bootm.c                               |   43 +
 common/filetype.c                            |   20 +-
 common/memory.c                              |   40 +-
 common/pe.c                                  |  382 --
 common/poweroff.c                            |   36 +
 common/restart.c                             |   46 +
 crypto/crc32.c                               |   24 +
 drivers/efi/efi-device.c                     |    4 +-
 efi/Kconfig                                  |   31 +
 efi/Makefile                                 |    2 +
 efi/devicepath.c                             |   17 +-
 efi/guid.c                                   |    4 +-
 efi/initrd.c                                 |    4 +-
 efi/loader/Kconfig                           |   91 +
 efi/loader/Makefile                          |   23 +
 efi/loader/boot.c                            | 3920 ++++++++++++++++++
 efi/loader/bootesp.c                         |  260 ++
 efi/loader/bootm.c                           |  358 ++
 efi/loader/debug_support.c                   |  192 +
 efi/loader/defaultvars.c                     |  122 +
 efi/loader/devicepath.c                      | 1073 +++++
 efi/loader/efi_var_common.c                  |  475 +++
 efi/loader/efi_var_file.c                    |  254 ++
 efi/loader/efi_var_mem.c                     |   80 +
 efi/loader/efi_variable.c                    |  214 +
 efi/loader/efibootmgr.c                      |   79 +
 efi/loader/loadopts.c                        |  181 +
 efi/loader/memory.c                          |  415 ++
 efi/loader/pe.c                              |  727 ++++
 efi/loader/pool_alloc.c                      |  205 +
 efi/loader/protocols/Kconfig                 |   56 +
 efi/loader/protocols/Makefile                |   11 +
 efi/loader/protocols/console.c               | 1327 ++++++
 efi/loader/protocols/device_path_to_text.c   |  130 +
 efi/loader/protocols/device_path_utilities.c |  210 +
 efi/loader/protocols/disk.c                  |  412 ++
 efi/loader/protocols/file.c                  | 1044 +++++
 efi/loader/protocols/gop.c                   |  572 +++
 efi/loader/protocols/hii.c                   | 1100 +++++
 efi/loader/protocols/hii_config.c            |  157 +
 efi/loader/protocols/rng.c                   |  165 +
 efi/loader/protocols/unicode_collation.c     |  329 ++
 efi/loader/runtime.c                         |  314 ++
 efi/loader/setup.c                           |  233 ++
 efi/loader/smbios.c                          |   55 +
 efi/loader/table.c                           |   31 +
 efi/loader/trace.c                           |   44 +
 efi/loader/variable.h                        |   35 +
 efi/loader/watchdog.c                        |   94 +
 efi/payload/bootm.c                          |    1 +
 efi/payload/init.c                           |    2 +-
 efi/runtime/Kconfig                          |   44 +
 efi/runtime/Makefile                         |   53 +
 efi/runtime/common.h                         |   35 +
 efi/runtime/efi_var_mem.c                    |  380 ++
 efi/runtime/efi_variable.c                   |  211 +
 efi/runtime/services.c                       |  303 ++
 fs/fat/fat.c                                 |    1 +
 fs/fs.c                                      |   10 +
 include/asm-generic/barebox.lds.h            |   40 +
 include/asm-generic/sections.h               |   10 +
 include/bootm.h                              |   12 +
 include/capitalization.h                     | 2029 +++++++++
 include/charset.h                            |  346 ++
 include/crc.h                                |    2 +
 include/efi/attributes.h                     |   84 +
 include/efi/devicepath.h                     |    5 +-
 include/efi/guid.h                           |    2 +-
 include/efi/loader.h                         |   86 +
 include/efi/loader/debug.h                   |   73 +
 include/efi/loader/devicepath.h              |   66 +
 include/efi/loader/event.h                   |   93 +
 include/efi/loader/file.h                    |   33 +
 include/efi/loader/image.h                   |   18 +
 include/efi/loader/object.h                  |  137 +
 include/efi/loader/option.h                  |   36 +
 include/efi/loader/pe.h                      |   83 +
 include/efi/loader/table.h                   |   11 +
 include/efi/loader/trace.h                   |  111 +
 include/efi/loader/variable.h                |  153 +
 include/efi/mode.h                           |   23 +-
 include/efi/protocol/devicepath.h            |   42 +
 include/efi/protocol/gop.h                   |    9 +
 include/efi/protocol/hii.h                   |  428 ++
 include/efi/protocol/text.h                  |   32 +-
 include/efi/protocol/unicode_collation.h     |   24 +
 include/efi/runtime.h                        |  164 +
 include/efi/services.h                       |   28 +-
 include/efi/table/rt_properties.h            |   30 +
 include/efi/types.h                          |   14 +
 include/efi/variable.h                       |    7 +-
 include/filetype.h                           |    2 +
 include/libfile.h                            |    2 +
 include/linux/fs.h                           |    1 +
 include/linux/ioport.h                       |    2 +
 include/memory.h                             |    2 +
 include/pe.h                                 |   47 +-
 include/poweroff.h                           |    2 +
 include/restart.h                            |    3 +
 lib/Kconfig                                  |   16 +
 lib/Kconfig.hardening                        |    2 +
 lib/Makefile                                 |    2 +
 lib/charset.c                                |  583 +++
 lib/cp437.h                                  |   48 +
 lib/libfile.c                                |   56 +
 lib/vsprintf.c                               |   25 +-
 scripts/check-efi-runtime.sh                 |   13 +
 test/self/printf.c                           |    4 +
 131 files changed, 21392 insertions(+), 487 deletions(-)
 create mode 100644 common/boards/configs/efi-loader.config
 delete mode 100644 common/pe.c
 create mode 100644 efi/loader/Kconfig
 create mode 100644 efi/loader/Makefile
 create mode 100644 efi/loader/boot.c
 create mode 100644 efi/loader/bootesp.c
 create mode 100644 efi/loader/bootm.c
 create mode 100644 efi/loader/debug_support.c
 create mode 100644 efi/loader/defaultvars.c
 create mode 100644 efi/loader/devicepath.c
 create mode 100644 efi/loader/efi_var_common.c
 create mode 100644 efi/loader/efi_var_file.c
 create mode 100644 efi/loader/efi_var_mem.c
 create mode 100644 efi/loader/efi_variable.c
 create mode 100644 efi/loader/efibootmgr.c
 create mode 100644 efi/loader/loadopts.c
 create mode 100644 efi/loader/memory.c
 create mode 100644 efi/loader/pe.c
 create mode 100644 efi/loader/pool_alloc.c
 create mode 100644 efi/loader/protocols/Kconfig
 create mode 100644 efi/loader/protocols/Makefile
 create mode 100644 efi/loader/protocols/console.c
 create mode 100644 efi/loader/protocols/device_path_to_text.c
 create mode 100644 efi/loader/protocols/device_path_utilities.c
 create mode 100644 efi/loader/protocols/disk.c
 create mode 100644 efi/loader/protocols/file.c
 create mode 100644 efi/loader/protocols/gop.c
 create mode 100644 efi/loader/protocols/hii.c
 create mode 100644 efi/loader/protocols/hii_config.c
 create mode 100644 efi/loader/protocols/rng.c
 create mode 100644 efi/loader/protocols/unicode_collation.c
 create mode 100644 efi/loader/runtime.c
 create mode 100644 efi/loader/setup.c
 create mode 100644 efi/loader/smbios.c
 create mode 100644 efi/loader/table.c
 create mode 100644 efi/loader/trace.c
 create mode 100644 efi/loader/variable.h
 create mode 100644 efi/loader/watchdog.c
 create mode 100644 efi/runtime/Kconfig
 create mode 100644 efi/runtime/Makefile
 create mode 100644 efi/runtime/common.h
 create mode 100644 efi/runtime/efi_var_mem.c
 create mode 100644 efi/runtime/efi_variable.c
 create mode 100644 efi/runtime/services.c
 create mode 100644 include/capitalization.h
 create mode 100644 include/charset.h
 create mode 100644 include/efi/loader.h
 create mode 100644 include/efi/loader/debug.h
 create mode 100644 include/efi/loader/devicepath.h
 create mode 100644 include/efi/loader/event.h
 create mode 100644 include/efi/loader/file.h
 create mode 100644 include/efi/loader/image.h
 create mode 100644 include/efi/loader/object.h
 create mode 100644 include/efi/loader/option.h
 create mode 100644 include/efi/loader/pe.h
 create mode 100644 include/efi/loader/table.h
 create mode 100644 include/efi/loader/trace.h
 create mode 100644 include/efi/loader/variable.h
 create mode 100644 include/efi/protocol/devicepath.h
 create mode 100644 include/efi/protocol/hii.h
 create mode 100644 include/efi/protocol/unicode_collation.h
 create mode 100644 include/efi/runtime.h
 create mode 100644 include/efi/table/rt_properties.h
 create mode 100644 lib/charset.c
 create mode 100644 lib/cp437.h
 create mode 100755 scripts/check-efi-runtime.sh

-- 
2.47.3



