Delivery-date: Mon, 22 Mar 2021 14:15:21 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOKOv-0003fX-4g
	for lore@lore.pengutronix.de; Mon, 22 Mar 2021 14:15:21 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOKOt-0003nl-Rd
	for lore@pengutronix.de; Mon, 22 Mar 2021 14:15:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:MIME-Version:Message-ID:Subject:To:Date:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DJ878z3nsWGj6EgVrCS2xDTxhm9XlOAJt9hT7ZQarhg=; b=aTVggcvrYgCvB9
	hTCY/5WES3ApOQy4YIy/CfBtl92xNJdf0D82idQv4F9V6GZB+Hy+ewi4YIOxQvveX47UxNQ8oL/P+
	1UY4wpjDfSte7+aD9T0t1kQ48BA3bWdqFg+690SP3WbRSahR3uxscR4Z3U+JQRbE/PKofyht0n6Jt
	ucgq4br4t/1gWuY/V0RFr1sq3+sfLdTZdWMKZTWFFbIQAcst8ztgJyAq2yGxDxI3Ejc///E72UEZQ
	Ru31P4k7zU70++QA9zB+Li7adCS5gr8FUP7U7wOVv44k9JLAVpH7sFzzaB6jA4YVPhLJJj/ztuTLg
	+6qkFypxgQ8cDim3uDLg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOKNP-00Bf3U-TR; Mon, 22 Mar 2021 13:13:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOKLH-00Bekr-5L
 for barebox@lists.infradead.org; Mon, 22 Mar 2021 13:13:37 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lOKLG-00035h-HI; Mon, 22 Mar 2021 14:11:34 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lOKLG-00025x-87; Mon, 22 Mar 2021 14:11:34 +0100
Date: Mon, 22 Mar 2021 14:11:34 +0100
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20210322131134.GS23724@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:37:12 up 32 days, 16:01, 86 users,  load average: 0.35, 0.45, 0.49
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210322_131335_771186_5D8BA42C 
X-CRM114-Status: GOOD (  21.63  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: v2021.03.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


Hi All,

I am happy to announce barebox-2021.03.0. Developer of the month is once
again Ahmad. He added VirtIO support to barebox which makes barebox
better integrate into qemu. Also he added Sound card support, enough to
play the imperial march on sandbox. Decide for yourself what you find
more useful :)
If you are like me bitten by watchdogs sometimes you might like a
feature I added: A watchdog device now has a counter which counts down
to zero from the point where we last fed it. With this we can see if an
actual device reset matches the point in time that barebox thinks it
should happen.
Other than that we have the usual flow of patches, see below.

Have Fun!
 Sascha

----------------------------------------------------------------
Ahmad Fatoum (56):
      commands: usbgadget: remove deprecated s option from help text
      usb: add fallback ->detect method for USB host drivers
      usb: host: ehci: remove duplicated usb_host_detect() calls
      ARM: i.MX8MM: fix sparse warnings in early clock code
      ARM: i.MX8MM: move system counter enabling into imx8mm_cpu_lowlevel_i=
nit
      ARM: <asm/io.h>: define macros for I/O memcpy/memset
      asm-generic: define fallback memcpy and memset for device I/O
      ppc: <asm/io.h>: remove duplicate definition
      printk: port over Linux print_hex_dump_bytes/print_hex_dump_debug
      sandbox: migrate to SDL 2.0
      drivers: add sound card driver support
      sound: add basic synthesizers for PCM beeper use
      sound: add SDL 2.0 sound driver
      commands: add beep command
      sound: add PWM beeper support
      sound: add gpio-beeper support
      regulator: add regulator_get_voltage() to API
      regulator: add support for struct regulator_desc::off_on_delay
      regulator: add driver for stm32-vrefbuf
      aiodev: add support for STM32 ADC
      efi: declare prototype for close_protocol BootService
      Kbuild: add compile_commands.json target
      sandbox: increase MALLOC_SIZE from 4M to 16M
      fs: increase reference count for backing store when loop mounting
      sandbox: support 64-bit file IO in 32-bit build
      ext4: ext_common.h: drop declaration of never-defined part_offset
      fs: ext4: ext4fs.h: remove unused struct members of ext_filesystem
      block: use 64-bit types for sector offset and count on all platforms
      usb: storage: support USB disks up to 2TiB of size
      fs: ext4: use sector_t and loff_t where appropriate
      fs: ext4: support files exceeding 4G
      show_progress: change HASHES_PER_LINE from 65 to 64 to avoid division
      include: <linux/math64.h>: include header for __always_inline definit=
ion
      treewide: include <linux/math64.h> wrapper instead of <asm-generic/di=
v64.h>
      include: asm-generic: don't do 64-bit soft division on 64-bit platfor=
ms
      lib: remove duplicate __div64_32
      drivers: replaces references to <asm-generic/*.h>
      copy_file: fix progress bar for files larger than 2G
      ARM: cpu: board-dt-2nd: rename of_find_mem for more generic use
      pbl: provide externally visible fdt_find_mem
      kbuild: add include/uapi to path
      driver: Don't throw an error on probes that didn't find the device
      drivers: add support for memory-mapped VirtIO paravirtualization
      hw_random: add VirtIO RNG driver
      serial: add basic VirtIO console driver
      block: add VirtIO block device driver
      ARM: vexpress: config: update for VirtIO support
      Documentation: add Documentation on VirtIO for barebox
      ARM: mmu64: fix build for non-MMU configurations
      of: base: probe simple-pm-bus children as well
      glob: use empty globfree when compiling without CONFIG_GLOB
      common: boot: select dependency CONFIG_GLOB
      common: shell: select dependency GLOB for SHELL_SIMPLE
      commands: readline: fix memory leak on wrong usage
      common: readline: fix possible buffer overflows
      sandbox: fix use of initialized variable in error path

Alexander Kurz (1):
      scripts: imx-image: fix iMX35 header generation

Alexander Shiyan (1):
      ARM: dts: imx6qdl: pfla02: Use NAND pinmux entries from upstream

Andrej Picej (1):
      ARM: i.MX: xload-gpmi-nand: apply errata 007117

Antony Pavlov (1):
      Documentation: mips: fixup qemu-system-mipsel cmdline

Bastian Krause (1):
      Documentation: state: recommend a partition type GUID for state GPT p=
artitions

Edoardo Scaglia (1):
      mtd: nand: fix hardware ECC support in atmel_nand driver

Jules Maselbas (4):
      usb: gadget: dfu: Use func_to_dfu
      usb: gadget: dfu: Rework print messages
      usb: gadget: dfu: Wrap fs operation in workqueue
      usb: otg: Add support to register more than one otg dev

Marco Felsch (11):
      of: overlay: split debug messages for of_overlay_apply_symbols
      ARM: boards: kontron-samx6i: fix memory detection helper
      ARM: boards: kontron-samx6i: simplify memory detection function
      ARM: dts: imx6qdl-smarc-samx6i: remove iomuxc hog
      ARM: dts: imx6qdl-samx6i: switch to SPDX license identifier
      ARM: dts: imx6qdl-samx6i: use upstream device tree files
      ARM: dts: imx6qdl-samx6i: cosmetic partition cleanup
      nvmem: sync stub return values with linux code
      nvmem: add missing stubs
      nvmem: make nvmem_device_write/read public
      nvmem: make id optional for of_nvmem_device_get()

Michael Grzeschik (2):
      usb: imx: fix overcurrent polarity handling on i.MX7
      usb: imx: add overcurrent polarity handling on i.MX6

Mike Nawrocki (1):
      drivers: smc911x fix inverted wait_on_timeout

Primoz Fiser (1):
      ARM: i.MX: move BCB structures to header file

Rouven Czerwinski (2):
      commands: readline: use exit code macros
      commands: readline: release command slice

Sascha Hauer (30):
      dts: update to v5.11-rc4
      dts: update to v5.11-rc5
      ARM: i.MX: implement GPMI NAND xload
      dts: update to v5.11-rc6
      watchdog: Print seconds to expire
      dts: update to v5.11-rc7
      dts: update to v5.11
      Merge branch 'for-next/aiodev'
      Merge branch 'for-next/asm-generic'
      Merge branch 'for-next/asm-io'
      Merge branch 'for-next/dfu'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/ext4'
      Merge branch 'for-next/firmware'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mtd'
      Merge branch 'for-next/nvmem'
      Merge branch 'for-next/sound'
      Merge branch 'for-next/usb'
      Merge branch 'for-next/virtio'
      of: fdt: Add root name checks during unflattening
      nios2: Remove architecture
      Merge branch 'for-next/arch-remove'
      Merge branch 'for-next/misc'
      net: phy: fix waiting for link
      net: e1000: Fix mtd compilation
      printk: fix inverted logic in print_hex_dump_debug()
      gpio: pl061: Fix driver registration
      Release v2021.03.0

Stafford Horne (1):
      openrisc: Define the elf binary entry point

Stefan Agner (1):
      ARM: drop no-thumb-interwork in EABI mode

Stefan Riedmueller (1):
      nand: nand-mxs: Fix marking BBT blocks as bad

Steffen Trumtrar (1):
      ARM: add fncpy.h from linux v5.10

Thorsten Scherer (1):
      Documentation: devicetree: include firmware in toctree

Uwe Kleine-K=F6nig (3):
      scripts: Replace license and copyright boilerplate by SPDX identifiers
      ARM: davinci: Replace license and copyright boilerplate by SPDX ident=
ifiers
      bcm283X: Select OF clock providers

Yoshio Furuyama (1):
      mtd: nand: Fix BBT update issue

jameszxj (1):
      extend the test in bbu_std_file_handler() to also check for -ENOTSUP.
-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

