Delivery-date: Mon, 27 Oct 2025 11:56:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDKtt-00CJOl-2x
	for lore@lore.pengutronix.de;
	Mon, 27 Oct 2025 11:56:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDKts-00086z-RP
	for lore@pengutronix.de; Mon, 27 Oct 2025 11:56:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JartzzgA2gGadvy6yVhRIqZGmwF/Sp6ici0A5Ndy0AM=; b=ojQkl6X1LXthDoIn8L7Mi1ij0F
	lNd5zV+kp7263VveClc5uQJSsj+HxGpNf08366AyOSk9+YxrSsYErBavR+tY5Uv269W0BBfP22ZmH
	hqbz66dnx955F6qURsHBsAQKNzrkOM4zgTSI9jOwNrHpKTAw80foINnRQfsSW+GQMXeTV3UvRSKWD
	SgXirMD+2E4wKe9t1bYzNZjjR91SDEjbpt1ZCLWe1lRo1F7E+Z+zbGWGGU7JyEck/x4SH0bVoQv+D
	9/oiEiSG/uRaOFqqPBD4XR3whuFlx0MoxKdRXgqrkatkHoGvsePzvGYAn+DrNd74XTzqO48CQp5ua
	v+d2DmYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDKtE-0000000Dh3L-3oSv;
	Mon, 27 Oct 2025 10:55:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDKtC-0000000Dh2k-3ntd
	for barebox@lists.infradead.org;
	Mon, 27 Oct 2025 10:55:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vDKtB-00081Y-8g; Mon, 27 Oct 2025 11:55:49 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vDKtB-005gq5-0G;
	Mon, 27 Oct 2025 11:55:49 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vDKtA-0039Qq-3C;
	Mon, 27 Oct 2025 11:55:49 +0100
Date: Mon, 27 Oct 2025 11:55:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <aP9PtG3lT5ZvFFOX@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_035551_139598_6E6AA3CB 
X-CRM114-Status: GOOD (  22.89  )
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
Subject: v2025.10.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi All,

We finally have an October release.

We have two bigger things both security related in this release I am happy
to mention here.

First of all thanks to Tobias barebox now supports device mapper and with
it dm-verity. This is a great step towards more standardized booting
when it comes to secure boot. Right now with secure boot we depended on
FIT images in separate partitions, dm-verity will allow us to put
unsigned kernel images into the root partition.

Then there's security policy support. Security policies allow us to
decide at a Kconfig level whether an operation is allowed or forbidden
in a specific security mode which makes it more straight forward to
review security constraints while still allowing more flexibilities to
decide what can be done in development or security enforced mode.

Apart from that there are a few more boards supported in this release:
Samsung Galaxy S8, Samsung Galaxy S20 5G, Radxa Rock-5T and Protonic
PRT8ML.

A few releases ago we started maintaining a migration guide in
Documentation/migration-guides which mentions breaking or other
important changes users might be interested in when migrating to a new
barebox release. I'll add that to the announcement mail in future, so
here we go. Also as usual see below for all patches that went into this
release.

Have Fun!
  Sascha

Migration to v2025.10.0
=======================

Rename in /dev
--------------

The i.MX SNVS device file is now simply called ``snvs`` instead of the
previous unwieldy name derived from device tree,
e.g., ``/dev/30370000.snvs@30370000:snvs-lpgpr.of0``.

EEPROMs that are pointed at by a device tree alias do no longer have
an extra 0 at the end, e.g., ``/dev/eeprom00`` has become ``/dev/eeprom0``.

AM62L DT Bindings
-----------------

The SCMI clock IDs for the AM62L have changed in ARM Trusted Firmware,
because the old assignment was not conforming to spec.

barebox now requires TF-A to contain commit
229d03adf ("PENDING: feat(ti): add missing scmi pds").


----------------------------------------------------------------
Ahmad Fatoum (47):
      ci: container: update components installed on top to newest versions
      ci: container: update to Debian Trixie
      ci: build: shuffle goal and prerequisite ordering
      ARM: cpu: allow selecting CPU_V7/CPU_V8 directly
      checkpatch: drop ENOSYS warning
      crypto: ecc: drop unused curve25519 definitions
      kconfig: allow setting CONFIG_ from the outside
      scripts: include scripts/include for all host tools
      kbuild: implement loopable loop_cmd
      Add security policy support
      kbuild: allow security config use without source tree modification
      defaultenv: update PS1 according to security policy
      security: policy: support externally provided configs
      docs: security-policies: add documentation
      commands: go: add security config option
      console: ratp: add security config option
      bootm: support calling bootm_optional_signed_images at any time
      bootm: make unsigned image support runtime configurable
      ARM: configs: add virt32_secure_defconfig
      boards: qemu-virt: add security policies
      boards: qemu-virt: allow setting policy from command line
      test: py: add basic security policy test
      test: emulate.pl: remove in favor of pytest
      common: misc: reduce duplication in strerror
      common: binfmt: replace generic ENOENT message with "Command not found"
      MAKEALL: query CONFIG_64BIT before make instead of CONFIG_ARM64 after
      Makefile: fix spurious find No such file or directory warnings
      test: py: policies: rework for latest changes
      Revert "MAKEALL: query CONFIG_64BIT before make instead of CONFIG_ARM64 after"
      scripts: rockchip: rkimage: reinstate OpenSSL 1.1 compatibility
      scripts: sconfigpast: print panic message when nonnull fails
      kbuild: fix spurious CI failure around sconfig_names.h
      security: hide CRYPTO_BUILTIN_DEVELOPMENT_KEYS behind INSECURE
      Documentation: migration-2025.09.0: add missing guide
      Documentation: migration-2025.10.0: add guide
      Documentation: fix warnings during config build
      scripts: container.sh: support -e for environment variables
      Documentation: add contributing section
      checkpatch: increase maximum line length to 100
      MAKEALL: print --shuffle seed used for initial make *_defconfig
      ci: container: downgrade LLVM to v20
      Documentation: contributing: fix command to reproduce shuffle failure
      MAKEALL: do not early abort initial "probe" defconfig sourcing
      security: policy: remove duplicate SECURITY_POLICY_PATH symbol
      Documentation: migration-2025.08.0: add note about W^X
      Documentation: boards: k3: fix wrong indentation in ReST
      ARM: Rockchip: mention tee-raw.bin by name

Alexander Kurz (1):
      ARM: boards: kindle mx50: extend vendor ATAGs

Alexander Shiyan (5):
      Revert "ARM: at91: choose proper parent for both MCI clocks"
      clk: rockchip: rk3588: Add PLL rate for 1500 MHz
      clk: rockchip: Drop empty init callback for rk3588 PLL type
      ARM: dts: rockchip: Set initial CPU frequencies for RK3588
      ARM: dts: rockchip: Set CPLL frequency for RK3588

Chali Anis (4):
      clk: clkdev: fix format security.
      drivers: dma: refactor: rename dma_ops to dma_device_ops.
      riscv: dma: rename dma_ops to dma_map_ops.
      video: efi-gop: remove dependency to x86.

Fabian Pflug (1):
      ARM: k3: fix wrong reference to help

Ivaylo Ivanov (3):
      video: simplefb-client: switch to dev_get_resource
      ARM: boards: add support for Samsung Galaxy S8 (dreamlte)
      ARM: boards: add support for Samsung Galaxy S20 5G (x1s)

Jonas Rebmann (3):
      ARM: i.MX8M: protonic-imx8m: enable deep probe
      ARM: boards: Add support for PRT8ML
      ci: container: install crcmod and cryptography

Lucas Sinn (1):
      ARM: rockchip: add support for Radxa ROCK 5T

Matthias Zoechmann (3):
      scripts: imx: fix string in further auth block
      scripts: imx-image: support DCD_WRITE on closed dev
      mach-imx: Kconfig: add option for image with dcd auth block

Michael Grzeschik (1):
      clk: clk_set_parent: skip any operation if current and new parents are equal

Michael Tretter (2):
      ARM: rockchip: select bbu default target using bootsource
      ARM: rockchip: cleanup iram handling

Philipp Zabel (1):
      ARM: i.MX6: configure AIPS registers only if trusted

Sascha Hauer (39):
      dts: update to v6.17-rc4
      mci: am654-sdhci: Wait for transfer complete interrupt with MMC_RSP_BUSY cmd
      mci: sdhci: am654: Use sdhci_wait_idle()
      ARM: i.MX8M: initialize SNVS
      nvmem: snvs_lpgpr: Add i.MX7/8 support
      nvmem: snvs_lpgpr: set nvmem config name to snvs
      ARM: defconfigs: enable SNVS driver in i.MX8 configs
      ARM: k3: move am62x specific bits out of common file
      ARM: k3: add FAT environment support
      dts: update to v6.17-rc5
      dts: update to v6.17-rc6
      treewide: drop useless casting to void * in of_device_id
      ARM: dts: k3-am62l: read MAC address from E-Fuse
      crc-itu-t: fix typo in CRC ITU-T polynomial comment
      firmware: handle firmware files being links correctly
      lib: add crc16 support
      nvmem: add support for Atmel sha204(a)
      commands: implement sconfig command
      usbserial: add inline wrappers
      security: usbgadget: add usbgadget security policy
      security: fastboot: add security policy for fastboot oem
      security: shell: add policy for executing the shell
      security: add security policy for loading barebox environment
      security: add filesystem security policies
      security: console: add security policy for console input
      ARM: am62l: Update SCMI clock ids
      Merge branch 'for-next/device-mapper'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/exynos'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/k3'
      Merge branch 'for-next/make-shuffle'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/rockchip'
      Merge branch 'for-next/security-policies'
      ARM: dts: am62lx: fix secondary core startup
      Kbuild: make sure to build fixdep first
      github/ci: build Container on pushes to ci branch only
      Release v2025.10.0

Steffen Trumtrar (1):
      spi: mvebu: move timekeeping out of hot path

Tobias Waldekranz (18):
      string: add strtokv
      vsprintf: Add rasprintf(): the reallocing string printf family
      dm: Add initial device mapper infrastructure
      dm: linear: Add linear target
      MIPS: qemu-malta_defconfig: Use largest possible relocation table
      test: self: dm: Add test of linear target
      commands: dmsetup: Basic command set for dm device management
      dm: Add helper to manage a lower device
      dm: linear: Refactor to make use of the generalized cdev management
      dm: verity: Add transparent integrity checking target
      dm: verity: Add helper to parse superblock information
      commands: veritysetup: Create dm-verity devices
      ci: pytest: Open up testfs to more consumers than the FIT test
      ci: pytest: Enable testfs feature on malta boards
      ci: pytest: Generate test data for dm-verity
      test: pytest: add basic dm-verity test
      ci: pytest: Centralize feature discovery to a separate step
      ci: pytest: Enable device-mapper labgrid tests


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


