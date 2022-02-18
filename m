Delivery-date: Fri, 18 Feb 2022 15:44:30 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nL4Uo-002z0g-BJ
	for lore@lore.pengutronix.de; Fri, 18 Feb 2022 15:44:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nL4Ul-0004bP-WF
	for lore@pengutronix.de; Fri, 18 Feb 2022 15:44:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:MIME-Version:Message-ID:Subject:To
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZKOegS3Q++lAm/BmfFnIsg2kaKmgLzROEGVefjWi0OE=; b=kWLuw38rbdRvee
	OpGuQ3HFG9+gtnA0OtFmWDDy2Y4jt6xV4wkQzLjwi52xPDHHwPMrAl0ZzzqNgaX2+he7EavYWL9aD
	bxD1e7NsmQo8QnY6J/VgsM7/jdeubbcraLHlpV+xIq0ZQceYju8muDkflZPnSIcerPqGwec803WE1
	HfWQx1CzzlhJhhaG2QHyifhf1IKxNeuuLGg9JFYgzer91EW8aKuUidGaqldsRncR/1VTyGe0Ve44e
	TBGI8owKGw9oajlEBfnSusRykjfV/cVWOzUqtsPlLE3Dl3XlNJC6wkVba35d4klwZAEZ9pNLh673/
	bU/ruC+a7VIoYsjF2zDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nL4T0-00EpeM-8i; Fri, 18 Feb 2022 14:42:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nL4Sq-00EpcF-4u
 for barebox@lists.infradead.org; Fri, 18 Feb 2022 14:42:31 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nL4Sm-0004P9-E3; Fri, 18 Feb 2022 15:42:24 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nL4Sm-0001lK-5P; Fri, 18 Feb 2022 15:42:24 +0100
Date: Fri, 18 Feb 2022 15:42:24 +0100
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20220218144224.GX18637@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:27:52 up 69 days, 23:13, 85 users,  load average: 0.06, 0.17, 0.25
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220218_064228_419443_6C2B1407 
X-CRM114-Status: GOOD (  18.84  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: v2022.02.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi All,

barebox-2022.02.0 is out. There are no new spectacular features this
time, so maybe a few bugfixes are worth noting here. Support for
extended dos partitions were broken in the last releases, they simply
wouldn't show up. This is fixed now. Also there was a NULL pointer
dereference when when a barebox under EFI loads other images. It seems
not all BIOSes map the zero page as faulting, so this went through
unnoticed. This is also fixed. Last not least generating signed USB
images for i.MX was broken in the last release and is fixed now.

As usual see below for a full list of changes.

Have Fun!

 Sascha

----------------------------------------------------------------
Ahmad Fatoum (53):
      include: <linux/overflow.h>: add missing include
      include: spinlock.h: define dummy for DEFINE_SPINLOCK
      include: <linux/compiler.h>: delete __ADDRESSABLE macro
      x86: remove reference to empty file
      commands: set SPDX-License-Identifier for files without license state=
ment
      treewide: add SPDX-License-Identifier for Kbuild/Kconfig
      treewide: add SPDX-License-Identifier for .gitignore
      images: add SPDX-License-Identifiers
      fs: jffs2: add SPDX-License-Identifier: GPL-2.0-only
      include: add SPDX-License-Identifier
      ARM: i.MX: add SPDX-License-Identifier for DCD
      arch: add SPDX-License-Identifier to all headers
      arch: add SPDX-License-Identifier to all .S files
      arch: add SPDX-License-Identifier to all .c files
      treewide: add SPDX-License-Identifier for files without explicit lice=
nse
      parseopt: drop unused, duplicate, parseopt_u16
      commands: time: add -n option for nanoseconds output
      drivers: virtio: import list of newer Virtio IDs
      common: boards: qemu-virt: fix dtc warning
      ARM64: qemu-virt64: disable MMU
      include <printk.h>: include <linux/types.h> for size_t definition
      include: <asm/csr.h>: sync with upstream
      state: make first boot with uninitialized legacy state less verbose
      RISC-V: virt: activate all consoles
      power: reset: add RISC-V/UC Berkely HTIF poweroff driver support
      RISC-V: virt: riscvemu: add HTIF DEBUG_LL support
      RISC-V: virt: riscvemu: repurpose 64k low RAM for state/environment
      RISC-V: virt: riscvemu: be explicit about HTIF base address
      RISC-V: virt: riscvemu: clear frame buffer before jumping to reset ve=
ctor
      RISC-V: don't use x8/s0/fp in assembly
      RISC-V: add stacktrace support via frame pointer walking
      RISC-V: Virt: enable more useful options
      fs: implement pushd/popd chdir wrappers
      commands: add new tutorial command
      tlsf: dump stack on assertion failure
      driver: have CONFIG_DEBUG_PROBES report device unbind as well
      commands: add new devunbind debugging command
      pinctrl: stm32: replace magic values with defines for STM32_PINMODE
      clk: change clk_get_num_parents into clk_hw_get_num_parents
      clk: propagate error pointers in clk_hw_to_clk and clk_to_clk_hw
      ARM: rockchip: add new ARCH_ROCKCHIP_{V7,V8} symbols
      ARM: implement ENTRY_FUNCTION_WITHSTACK
      ARM: turn arm_mem_stack_top into a macro
      ARM: rpi: use ENTRY_FUNCTION_WITHSTACK to prepare for ARM64 support
      ARM64: rockchip: add config symbol for ARMv8-based rk3399 SoC
      clk: rockchip: extend for rk3399 support
      i2c: add Rockchip i2c controller support
      misc: acpi-test: retire test driver in favor of WDAT driver
      clk: imx6: fix PLL exception for i.MX6DQ revision 1.0
      Documentation: remove some references to zbarebox.bin
      Documentation: user: barebox: mention generic dt 2nd stage support
      Documentation: user: barebox: fix formatting for code block
      Documentation: devel: add new project ideas section

Andrej Picej (2):
      watchdog: imxwd: suspend watchdog timer in low power mode
      scripts/common: fix write_file when opened with mmap

Antony Pavlov (2):
      rtc: import pcf85363 support from linux-5.12
      pinctrl: rockchip: drop unused variable 'name'

Clement Leger (6):
      common: elf: add elf_load_binary
      kvx: enable FITIMAGE support
      nvmem: add kvx otp non volatile regbank support
      kvx: add kvx_sfr_field_val
      drivers: add soc hierarchy properly
      soc: add kvx_socinfo driver

Enguerrand de Ribaucourt (1):
      commands: hashsum: Fix endif typos

Holger Assmann (1):
      fs: jffs2: fix error when reading blocks with offset

Jules Maselbas (4):
      kvx: dma: Remove arch dma_map/unmap_single
      kvx: Move LINUX_BOOT_PARAM_MAGIC in asm/common.h
      kvx: Accept LINUX_BOOT_PARAM_MAGIC as a valid magic value
      clocksource: kvx: Register as postcore_platform_driver

Louis Morhet (1):
      watchdog: kvx: do not disable watchdog on probe

Lucas Stach (2):
      soc: imx: gpcv2: split PGC domain probe in two passes
      ARM: mnt-reform: switch to deep-probe

Michael Riesch (1):
      net: designware: rockchip: remove unnecessary clock pclk_xpcs

Michael Tretter (10):
      spi: stub device_spi_driver if SPI is disabled
      spi: add to_spi_device helper
      i2c: stub device_i2c_driver if I2C is disabled
      video: ssd1307fb: pass par instead of i2c client to write
      video: ssd1307fb: don't use i2c client for logging
      video: ssd1307fb: move i2c setup to single place
      video: ssd1307fb: use function pointer for write
      video: ssd1307fb: add spi support
      serial: cadence: add ZynqMP compatibles
      firmware: zynqmp-fpga: fix use of uninitialized addr

Oleksij Rempel (2):
      serial: amba-pl011: reset controller on pl011_setbaudrate()
      ARM: rpi: set uart0-pl0110 clk to 48MHz

Philipp Zabel (1):
      efi: skip devices without driver in efi_pause/continue_devices()

Sascha Hauer (21):
      dts: update to v5.16-rc6
      dts: update to v5.16-rc7
      getopt: Add support for '+' in optstring
      dts: update to v5.16
      Revert "clk: handle CLK_OF_DECLARE in deep probe"
      regmap: Implement regmap_[set|clear]_bits()
      Merge branch 'for-next/arm'
      Merge branch 'for-next/clk-revert'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/kvx'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/riscv'
      Merge branch 'for-next/spdx'
      Merge branch 'for-next/ssd1307'
      dos-partitions: Fix extended partitions
      mmc: sdhci: Fix setting wrong buswidth
      Documentation: Describe how to generate a uImage for use with bootm
      scripts/common: Do not mmap in read_file_2()
      scripts: bareboximd: Use mmap when possible
      Revert "scripts/common: fix write_file when opened with mmap"
      Release v2022.02.0

Steffen Trumtrar (2):
      acpi.h: add defines for adr_space and gas
      watchdog: add support for wdat_wdt

Uwe Kleine-K=F6nig (1):
      arm: mvebu: Replace license and copyright boilerplate by SPDX identif=
iers

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

