Delivery-date: Thu, 15 Apr 2021 13:53:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lX0Z6-0007Mu-6S
	for lore@lore.pengutronix.de; Thu, 15 Apr 2021 13:53:44 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lX0Z4-0006XC-O4
	for lore@pengutronix.de; Thu, 15 Apr 2021 13:53:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:MIME-Version:Message-ID:Subject:To:Date:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=V7x/nM6zG7ogPHRPxaWWXZBYiZUKJJPfxeL+NoP9hmI=; b=W8WTgpK3mFxyKX
	t/C7elUbdoE7tfqS0WcjnWStaK3PfJAd+ZsUk2U5CSnR4pQbxfZGefIMJHKZJmXgvq75TBkzhZces
	4tXFdYCwFNYOiiBOszUsxxg2CGD6mHkpDyLC1kmRBx9DhuUXWMJnW7mHYFq+oQakLcTYg/UhZIImj
	a4hVhxzvO1jYalN0FpBW2hOaWtbPVIZea0Cg/KQ1ncp3c64bNrBaXj5VGzJ22QfRntureHD7t7aNq
	RHYH1H77DRd/PXVVKTY8RwwJf1UcYpnsaKyVRi2tEm7JKGIrdCXnfkRhA74uu7uts4FDztuih5iCg
	ycegiEOmO3cfE4AzDQJA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lX0Xx-00G1YZ-FN; Thu, 15 Apr 2021 11:52:34 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lX0Xc-00G1Qj-O6
 for barebox@desiato.infradead.org; Thu, 15 Apr 2021 11:52:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Message-ID:Subject:To:Date:Sender:Reply-To:Cc:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=BFiaaBEDWHsoNu9pWJmHQbRtysjSjHyajE3n2WFPtSQ=; b=45aI8jD0V6TAQr8O/0v3Z1X/qo
 GtC1hkuVpUji2t9FkFP/tGhEB9LjHJKFCe652uWnl3PD4CxtdLVUBbw7GPU+nKWQ5/wabgUK7WxBH
 eNU1u/CmmzhBUCCWDB42J9VtMRLb+8KMB1nhOtbhDzQsKeJVeO+ppwZsUEpnljU9enwUfC80mwroN
 UXX9l9+1fDErNGgMOzpfru3fF89DyThGAOex2Fe/LvOD9cWiZBVFxbaSNwqw4XdfyqZr5ly4/wXYW
 lD5OZWMGR0EO0ZbC68p9cfEwEg5d+/hOEbaoYwf+adJYurtEzpd8+Wpcy+JP0QS3/nIsTJIoShRSI
 JHZBNljQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lX0XZ-008XhH-CR
 for barebox@lists.infradead.org; Thu, 15 Apr 2021 11:52:11 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lX0XX-0006Hi-QJ; Thu, 15 Apr 2021 13:52:07 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lX0XX-0001SM-Gi; Thu, 15 Apr 2021 13:52:07 +0200
Date: Thu, 15 Apr 2021 13:52:07 +0200
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20210415115207.GF19819@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:40:20 up 56 days, 15:04, 105 users,  load average: 0.21, 0.14,
 0.10
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210415_045209_614804_A3B10CE9 
X-CRM114-Status: GOOD (  21.56  )
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
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: v2021.04.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi All,

barebox-2021.04.0 is out.

This release brings us nice improvements for the RISC-V architecture.
barebox for RISC-V now has full PBL support and builds a generic 2nd
state dt image to be used with Qemus virt machine.  See
Documentation/boards/riscv.rst, it's worth checking out.

The second great feature this time is cooperative multitasking support.
It is implemented using setjmp/longjmp and is available on all supported
architectures. Multitasking is currently unused unless explicitly
enabled in Kconfig. When enabled all that's currently available is a
test command, but in future pollers can be implemented using threads and
porting over kernel code could become simpler.

As usual, see the full list of changes below. Thank you all for
participating!

Have Fun!
  Sascha

----------------------------------------------------------------
Ahmad Fatoum (61):
      usb: storage: refactor usb 32-bit capacity read
      usb: storage: add support for drivers larger than 2TiB
      mtd: cfi-flash: fail gracefully instead of crashing on NULL page
      usb: dwc2: fix mismatching argument to printf format specifier
      MIPS: qemu-malta: make barebox Malta images detectable
      video: add simplefb driver
      virtio: align virtio_config_ops::generation return type with Linux
      virtio: remove unused, left-over, virtio_config_ops::set_features
      hw_random: virtio: simplify code
      dma: move dma_map/unmap_single from ARM to common code
      virtio: ring: fix erroneous behavior around caches and MMU
      virtio: fix support for big-endian clients
      PCI: port Linux pci_find_capability
      virtio: support virtio-based device drivers over PCI
      virtio: virtio-pci: restrict MIPS support to MMU configuration
      ARM64: qemu-virt64: remove dead CPU identification code
      common: introduce HAS_ARCH_SJLJ
      ARM: asm: setjmp: annotate setjmp/longjmp for GCC
      resource: include region name in conflict's debug output
      sandbox: add Xterm escape sequence backed LED driver
      param: drop unused left-over struct members
      fs: delete unused members in <linux/stat.h>
      kbuild: add '-fno-stack-check' to barebox build options
      kbuild: add '-fcf-protection=3Dnone' to barebox build options
      phy: stm32: sync with upstream
      ARM: stm32mp: add support for STM32MP157-EV1 board
      ARM: stm32mp: defconfig: enable DWC2 USB OTG controller
      ARM: asm: setjmp: implement coroutine dependency initjmp()
      sandbox: asm: implement setjmp/longjmp/initjmp
      x86: implement setjmp/longjmp/initjmp
      common: poller: replace explicit calls to poller_call() with resched()
      console: unconditionally run resched() in ctrlc()
      ARM64: qemu-virt64: migrate to generic DT image
      ARM64: qemu-virt64: enable Virt IO and other useful options
      ARM64: board-dt-2nd: adopt kernel image header
      common: introduce bthreads, co-operative barebox threads
      commands: add new bthread test command
      bthread: disable ASan accounting for fibers on 32-bit sandbox
      partitions: don't allocate dma capable memory
      images: make BOARD_ARM_GENERIC_DT available for other arches
      ARM: make ARM_USE_COMPRESSED_DTB available for other arches
      ARM: aarch64: omit unused label in assembly
      serial: virtio-console: depend on, but don't select VIRTIO
      RISC-V: <asm/unaligned.h>: don't do unaligned accesses
      RISC-V: debug_ll: ns16550: align C access size with assembly's
      RISC-V: drop duplicate or unneeded cflags
      RISC-V: add cacheless HAS_DMA support
      RISC-V: erizo: move to arch/riscv/boards/erizo
      RISC-V: import Linux' optimized string functions
      filetype: detect RISC-V images
      RISC-V: implement PBL image header
      RISC-V: implement PBL and relocation support
      RISC-V: erizo: migrate to PBL
      RISC-V: support symbol names in barebox image
      RISC-V: add generic DT image
      clocksource: add driver for RISC-V and CLINT timers
      power: reset: add drivers for generic syscon reset and poweroff
      fs: ext4: fix bogus behavior on failure to read ext4 block
      RISC-V: cpu: request stack memory region
      RISC-V: board-dt-2nd: ensure FDT doesn't overlap with early mem regio=
ns
      RISC-V: boot: move stack top to very end of memory

Alexander Kurz (1):
      ARM: i.MX8M: bbu: fix variable name to used semantic

Antony Pavlov (6):
      bootm: add RISC-V image type
      clocksource: timer-riscv: adapt riscv_timer_get_count_rdcycle() for R=
V32
      RISC-V: erizo.dtsi: set timebase-frequency =3D <24000000>
      RISC-V: drop old timer handling code
      Documentation: dlink-dir-320: update image file name
      Documentation: dlink-dir-320: update device links

Denis Osterland-Heim (1):
      image-fit: ignore rsa by image selection

Jules Maselbas (11):
      usb: gadget: dfu: call do_close also when not in safe mode
      usb: gadget: dfu: Simplify state handle
      usb: dwc2: Make dwc2_wait_bit_set wait all bits in mask
      usb: dwc2: Replace pr_info with dev_warn
      usb: dwc2: Rework dwc2_wait_for_mode to use wait_on_timeout
      usb: dwc2: Move wait_for_mode and iddig_filter_enabled to core
      usb: dwc2: Rework wait for host mode during core reset
      reset: Remove WARN_ON when CONFIG_RESET_CONTROLLER=3Dn
      kvx: Implement setjmp/longjmp/initjmp
      kvx: Request enough privilege to boot Linux
      kvx: lib: dtb: Remove unused variable

Michael Tretter (5):
      dts: zcu104: remove unnecessary ZynqMP clock dtsi
      net: phy: dp83867: convert driver to spdx
      net: phy: dp83867: fix checkpatch checks and warnings
      net: phy: dp83867: remove useless call to genphy_config_aneg
      net: macb: add tx clock rate for 10 MBit link

Oleksij Rempel (1):
      ARM: dts: protonic: drop all devictree copies and start to use mainli=
ned kernel versions

Rouven Czerwinski (3):
      scripts: imx-image: add error handling for pwrite
      RISC-V: add 64-bit support
      RISC-V: add Qemu virt support

Sascha Hauer (32):
      fs: ubifs: remove unused variable
      stringlist: Add adding sort uniq
      stringlist: Initialize HEAD str member to NULL
      complete: Use string_list_add_sort_uniq()
      dts: update to v5.12-rc1
      dts: update to v5.12-rc2
      dts: update to v5.12-rc3
      blspec: Check if already mounted before mounting
      riscv: Add asm/asm.h
      riscv: Add asm/linkage.h
      riscv: Implement setjmp/longjmp/initjmp for RV32I
      mips: Add linkage.h
      mips: Implement setjmp/longjmp/initjmp for 32BIT
      powerpc: Implement initjmp/setjmp/longjmp
      ARM: remove Calxeda Highbank support
      of: Return copy of live tree as fixed tree
      reboot-mode: drop now unnecessary check
      Merge branch 'for-next/arch-remove'
      Merge branch 'for-next/arm-qemu-virt64'
      Merge branch 'for-next/bthreads'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/net'
      Merge branch 'for-next/riscv'
      Merge branch 'for-next/spdx'
      Merge branch 'for-next/usb'
      Merge branch 'for-next/virtio'
      ARM: i.MX: Fix overwriting defaultenv with zii board specific env
      dts: update to v5.12-rc4
      dts: update to v5.12-rc5
      dts: update to v5.12-rc7
      Release v2021.04.0

Stafford Horne (4):
      openrisc: Use movhi to zero registers
      openrisc: Add gitignore for dtb files
      openrisc: Add linkage.h
      openrisc: Implement setjmp/longjmp/initjmp

Stefan Riedmueller (6):
      fs: Fix default mount when device already mounted
      mtd: Notify user when erasure of a block failed during erase op
      commands: Kconfig: Remove HW ECC dependency from nandtest
      nandtest: Fix status print for NAND which size exceeds 4 GB
      mtd: nand_msx: Implement ooblayout ops
      imx-bbu-nand-fcb: Inform user if the barebox partition is too small

Thomas Haemmerle (4):
      net: phy: dp83867: simplify dp83867_config_init
      net: phy: dp83867: remove explicit setting of cfg2
      net: phy: dp83867: read status from PHY status register PHYSTS
      net: phy: dp83867: enable link downshift by default

Uwe Kleine-K=F6nig (1):
      gpio: Replace license and copyright boilerplate by SPDX identifiers

Yann Sionneau (2):
      kvx: Implement dcache invalidation primitive
      kvx: Implement dma handling primitives


-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

