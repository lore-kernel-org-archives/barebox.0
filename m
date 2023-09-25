Delivery-date: Mon, 25 Sep 2023 12:37:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qkiyR-00ARf3-8K
	for lore@lore.pengutronix.de; Mon, 25 Sep 2023 12:37:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qkiyO-0004rF-Bj
	for lore@pengutronix.de; Mon, 25 Sep 2023 12:37:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:Content-Type:
	MIME-Version:Message-ID:Subject:To:Date:Reply-To:Cc:Content-Transfer-Encoding
	:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Res6JojdPvxwtcgaBm4k94CUacyNH/uJd9QB1POqSBg=; b=Hxc2k2a7f+tRW8nS2NAuEoyt+f
	5WpWp3m7bXHP6ZlvP6sQbDGdpz4zhBrmUEtijj61vo508CSErgntx9nCQ3R6q/3RKdQevzncgUF6p
	MKtX7yo9mx/ZQQHjmkxV0Bgi9xuwJ/eyX+qMGscvHH5EFIalYhSYB6tz0YZunBhVXaZkTZKYIB1lo
	rxRFpJ61RTRkuFWIPSnLqLeAl5UrfT+DtYevQX2W8R4mRsCWlaZ+A8UHj2N5V+An7mTWd+eUrvfSF
	gOwOSMnEjc+L8cGf2uK5fwW4FQccaauvKy85zOqLK19CtKBM8mfMRn0cp8mY/6E9gK/jsOGWmcujy
	gsc06S0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qkiwr-00DzCA-1c;
	Mon, 25 Sep 2023 10:36:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qkiwn-00DzAY-2D
	for barebox@lists.infradead.org;
	Mon, 25 Sep 2023 10:36:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qkiwk-0004Qk-0U; Mon, 25 Sep 2023 12:36:10 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qkiwj-008qa5-KC; Mon, 25 Sep 2023 12:36:09 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qkiwj-00BOqI-Hu; Mon, 25 Sep 2023 12:36:09 +0200
Date: Mon, 25 Sep 2023 12:36:09 +0200
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230925103609.GY637806@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230925_033613_881253_C5CB71C1 
X-CRM114-Status: GOOD (  21.48  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: v2023.09.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


Hi All,

I am happy to announce barebox-2023.09.0. It's not a big release, but
there are some things worth telling. Marco has worked on network phy
support. We now have phy_{read,write,modify}_mmd() helpers working
consistently with Linux. This and other changes make it easier to adopt
Linux phy driver to barebox. Oleksij has worked on switch support and
now we have the ksz9893 in the family of supported switches in barebox.
There are some changes in the bootm code. We now longer modify the
barebox live device tree in the bootm command which avoids surprises
when calling bootm (dryrun) multiple times and possibly of_diff
afterwards.

As usual there are lots of other changes listed below.

Have fun!
 Sascha

----------------------------------------------------------------
Ahmad Fatoum (39):
      net: ifup: check for ctrl+c during ifup
      net: ifup: don't redo ifup -a1 if we have a gateway
      common: bootm: support locating kernel in FIT image in zero page
      commands: go: support passing integer arguments instead of argc/argv
      ddr: imx8m: add comment and print out prior to first DDRC read
      Makefile: allow setting pkg-config binary via PKG_CONFIG
      bootm: export bootm_set_verify_mode
      commands: hab: check for error in imx_hab_device_locked_down
      HAB: guard against NULL imx_hab_ops in imx_hab_device_locked_down()
      nvmem: ocotp: handle too early calls into ocotp driver gracefully
      hab: habv4: export function to query HAB state
      FIT: don't verify signature of non-signature nodes
      state: backend_bucket_direct: add debug prints on read/write
      linux/printk.h: drop unused log_entry::dummy member
      console: allocate only once instead of twice per log message
      commands: rm: add -f option to ignore nonexistent files
      ARM: socfpga: fix include after upstream DT reorganization
      ARM: i.MX25: image: consult pkg-config for openssl cflags
      boot: support running scripts when doing a dry run
      PCI: populate struct pci_device subsystem_device, subsystem_vendor
      virtio: pci: add support for transitional devices
      test: pytest: have --qemu gobble up all remaining arguments
      test: pytest: support formats besides raw for --blk
      FIT: refactor compression handling into separate function
      FIT: do not decompress ramdisks even if asked
      ARM: mmu32: mark whole early pagetable region as reserved
      clk: implement clk_get_optional helper
      pwm: imx: enable clocks during PWM register accesses
      firmware: fix dependency tracking for PBL firmware files
      ARM: i.MX8M: romapi: reserve scratch space
      fs: ext4: initialize variable to silence GCC false-positive
      aiodev: imx_thermal: fix breakage after device tree sync
      boards: qemu-virt: rescan aliases after merging DT fragment
      mci: sdhci: unmap the DMA buffers actually used
      mci: sdhci: hardcode SDMA boundary for DMA
      MIPS: bootm: fix format string type mismatch
      Documentation: boards: imx: add some HAB documentation
      Documentation: user: introduction: suggest b4 shazam
      Documentation: remove info about bridging to matrix

Alexander Shiyan (3):
      .gitignore: Add generated scripts/rkimage to .gitignore
      mfd: rk808: Add missing RK809 chip ID to poweroff handler
      i2c: stm32: Update driver

Clement Leger (1):
      mtd: spi-nor: enable {dual,quad}-read and quad-write for w25q256

Denis Orlov (21):
      MIPS: addrspace: rectify ksseg segment naming
      MIPS: addrspace: simplify the header
      MIPS: main_entry-pbl: remove unused variable
      MIPS: barebox.lds: remove extra whitespace
      MIPS: reloc: mark relocate_code() as noreturn
      MIPS: cpuinfo: use appropriate format specifiers in printf
      MIPS: print BadVAddr CP0 register on exception
      MIPS: malta: merge GT64120 headers
      MIPS: pbl_macros: use .asciiz instead of .ascii + .byte 0
      MIPS: malta: remove duplicated barebox magic code
      MIPS: pbl: put mips_barebox_10h into ENTRY_FUNCTION
      MIPS: pbl: make sure to disable interrupts/watchpoints on entry
      MIPS: pbl: do enable 64-bit addressing in PBL
      MIPS: clean up barebox proper entry point
      MIPS: main_entry: properly set XTLB handler for 64-bit mode
      MIPS: main_entry: remove exception vector array
      MIPS: c-r4k: prettify code in __BUILD_BLAST_CACHE_RANGE
      MIPS: c-r4k: generate blast_*cache functions via macros
      MIPS: c-r4k: do flush secondary cache
      MIPS: c-r4k: remove extra function declaration
      MIPS: reloc: use IS_ALIGNED macro to check for an alignment

Elliot Berman (1):
      kbuild: Add environment variables for userprogs flags

Enrico Scholz (1):
      fdt: copy terminating '\0' in lstrcpy()

Jules Maselbas (15):
      soc: kvx: Rename function to match global variable
      soc: kvx: Fix memory leaks
      soc: kvx: Add board_sn global var from OTP
      kvx: Remove unused defines
      mtd: spi-nor: Add SPI_NOR_QUAD_WRITE hwcap
      mtd: spi-nor: enable quad-write for is25lp01g
      mtd: spi-nor: move SPI_NOR_MAX_ADDR_WIDTH define to spi-nor.h
      mtd: spi-nor: Add Synopsys DesignWare Octal SPI driver
      mci: sdhci: Set 8-bit host caps
      mci: sdhci: Add registers defines
      mci: sdhci: Actually return the error code instead of 0
      mci: sdhci: Add sd host v4 mode
      mci: sdhci: Add 64-bit DMA addressing suport for V4 mode
      mci: sdhci: Force DMA update to the next block boundary
      mci: Add dwcmshc-sdhci driver

Marco Felsch (15):
      mci: imx-esdhc-pbl: fix image load in DDR mode
      commands: test: simplify argv handling
      commands: test: add based support for bash-test style
      ARM: boards: make use of MDIO_MMD register defines
      net: phy: micrel: make use of MDIO_MMD register defines
      net: phy: fix struct member comments
      net: phy: mmd_phy_indirect: align parameters with Linux
      net: phy: add phydev_{err,err_probe,info,warn,dbg} macros
      net: phy: import phy_{read,write,modify}_mmd helpers from Linux
      net: phy: replace phy_{write,read,modify}_mmd_indirect with phy_{write,read,modify}_mmd
      net: phy: add deprecation warning to phy_{read,write,modify}_mmd_indirect
      net: phy: at803x: disable SmartEEE
      net: phy: at803x: add disable hibernation mode support
      net: phy: at803x: disable extended next page bit
      ARM: i.MX8M: esdctl: split memory banks for devices with >4G

Michael Tretter (1):
      of_firmware: fix lookup of fpga manager

Oleksij Rempel (11):
      ARM: at91: enable ddramc for sama5d3 and sama5d4
      ARM: at91: add support for SAMA5D3 - Ethernet Development System Board
      ARM: at91: microchip-ksz9477-evb: migrate to sama5d3_barebox_entry()
      net: designware: eqos: initialize MAC address specific DMA channel configuration
      net: designware: eqos: fix non-working promisc mode when set before interface start
      net: designware: eqos: add comment about external clock dependencies for the soft reset
      net: designware: eqos: fix NULL pointer dereference on LLDP packets
      net: designware: eqos: do not receive pause frames
      net: ksz9477: add support for ksz9893 switch
      net: ksz9477: do not advertise EEE support
      ARM: add Skov i.MX8MP based board support

Roland Hieber (2):
      commands: global: document usage without parameters
      doc: booting-linux: improve Bootloader spec section

Rouven Czerwinski (1):
      rsa: escape pkcs11 string passed to RSA command

Sascha Hauer (30):
      dts: update to v6.5-rc1
      dts: update to v6.5-rc2
      Documentation: bcm2835: Fix grammar
      of: never fixup internal live tree
      Drop mkimage tool
      mci: arasan: Fix reg/val argument swap in register write
      dts: update to v6.5-rc3
      ARM: socfpga_defconfig: Enable more boards
      dts: update to v6.5-rc5
      dts: update to v6.5-rc6
      ARM: rockchip_v8_defconfig: Enable PCI and RTL8169 support
      ARM: skov-imx6: Add new calibration values for i.MX6Q
      ARM: skov-imx6: Add new calibration values for i.MX6S
      filetype: return error and pass filetype as pointer argument
      lib: open_and_lseek(): return error code on error
      lib: open_and_lseek(): move error messages to callers
      dts: update to v6.5-rc7
      Merge branch 'for-next/at91'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/dwcmshc-sdhci'
      Merge branch 'for-next/eqos'
      Merge branch 'for-next/kvx'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/phy'
      Merge branch 'for-next/spi-nor'
      bootm: always put a copy into data->of_root_node
      bootm: fix printing kernel command line
      of: Add static inline wrapper for of_dup()
      Release v2023.09.0

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


