Delivery-date: Fri, 13 Sep 2024 10:36:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sp1n6-0043br-0D
	for lore@lore.pengutronix.de;
	Fri, 13 Sep 2024 10:36:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sp1n4-0004L7-HT
	for lore@pengutronix.de; Fri, 13 Sep 2024 10:36:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qEfB42ZoLl6b8A2awTtWPN+lNKHLTwu5uxMTKk06jxc=; b=0i5fSaeBsxc9stuAZgGtB9v6eD
	1fXfGiLp6TTEbNW23V/UcwdVNCP9NPkrbtbTGmN+3AGxWSfIFb26I+CIqISgNiiNzlJ4EAvtpc+9o
	esHFS4JJJ5GasqAIOEYTfIGLC4YxAFpLtCXewi6RBCkBPeEQtgILikTGtjBOMFzPuqsMjRpLXptaf
	7m04aSPPlTCO0bBI1IDVzuRbZW5oAZ+dFchDUciBrLQmYcXNmNiLCTim8Og5V0h5NnKJMobhZqW/6
	3e1Q3M5szeykBp7vDIe/6h3I/XdmcH6iaIymT5OoNJPK9T4NZ76DqvZPG4hQZ58LPlZ0XHbI7JNjt
	v6UpCdXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp1mT-0000000FMFU-17GY;
	Fri, 13 Sep 2024 08:35:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp1l0-0000000FM35-2EPR
	for barebox@lists.infradead.org;
	Fri, 13 Sep 2024 08:34:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1sp1kz-0003Zz-8E; Fri, 13 Sep 2024 10:34:21 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1sp1ky-007a1h-RR; Fri, 13 Sep 2024 10:34:20 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1sp1ky-005gUi-2S;
	Fri, 13 Sep 2024 10:34:20 +0200
Date: Fri, 13 Sep 2024 10:34:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <ZuP5DC_fmAqC45Oh@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_013422_752773_C1C6989B 
X-CRM114-Status: GOOD (  17.58  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: v2024.09.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi All,

barebox v2024.09.0 is out. This release brings us erase support for
eMMC/SD cards. This can be helpful when a new image with gaps in between
is flashed, in this case erase makes sure no loeftovers from the old
images can confuse later software. Also this release brings us a long
overdue overhaul of the README file, thanks Ahmad!

As usual, many small fixes all over the place, see below for details.

Have Fun!
 Sascha

----------------------------------------------------------------
Ahmad Fatoum (92):
      nvmem: add support for fixed-layout binding
      sandbox: use fixed-layout binding
      aiodev: mc13xxx_adc: zero-initialize struct aiochannel
      firmware: ti_sci: drop unused ti_sci_list
      init: mark initcalls const
      watchdog: remove needless error checking for device parameter
      watchdog: factor out device registration into common class code
      regmap-mmio: don't call kfree on non kmalloc allocated buffers
      treewide: fix dependency on indirectly included linux/kernel.h
      stringlist: make header self-contained
      module: retire MODULE_SYMBOL_PREFIX
      include: move MODULE_* macro definitions into own header
      include: asm-generic/bug: break recursive dependency
      include: linux/kernel.h: split off into multiple headers
      lib: term: add missing headers, license and copyright
      ARM: i.MX8M: bootrom-cmd: include missing linux/kernel.h header
      include: list: replace full kernel.h inclusion with smaller container_of.h
      rtc: add stubs for when CONFIG_RTC_CLASS is disabled
      rtc: return first RTC when rtc_lookup(NULL) is called
      squashfs: be more careful about metadata corruption
      squashfs: more metadata hardening
      squashfs metadata 2: electric boogaloo
      squashfs: more metadata hardening
      Squashfs: Compute expected length from inode size rather than block length
      squashfs: refuse mount of squashfs images with non-128K block size
      ci: bump action versions
      ci: labgrid: use different names per Test Results entry
      xfuncs: return NULL from xstrdup_wchar(NULL)
      include: xfuncs: employ compiler attributes to aid GCC warnings
      base: use initcalls instead of linker lists to register classes
      sandbox: alias I/O ports region in MMIO space
      sandbox: add dummy pinctrl nodes
      lib: kasan: kasan_test: hide buggy access after xzalloc from compiler
      commands: mount: simplify positional argument handling
      pstore: implement devinfo callback
      resource: add CONFIG_DEBUG_RESOURCES option
      ARM: cpuinfo: add option to print early memory map
      watchdog: imxwd: more info in imx21_watchdog_set_timeout debug message
      mci: core: remove reference to SD Card from common mci_card_probe
      bbu: report what device caused the handler to be unavailble
      ARM: i.MX8MP: tqma8mpxl: match board code against SoM compatible
      net: designware: dma_sync_single_for_device buffer before passing to HW
      env: suggest global/nv command when calling setenv on non-existent parameter
      calloc: handle wrap around in total buffer size correctly
      rsa: fix deleting RSA keys
      fs: ramfs: simplify len calculation in ramfs_find_chunk
      fs: give erase() a new erase_type parameter
      cdev: factor out range identical/overlap check
      block: factor out chunk_flush helper
      block: allow block devices to implement the cdev erase operation
      mci: turn bool members into bitfield in struct mci
      mci: describe more command structure in mci.h
      mci: core: use CONFIG_MCI_WRITE, not CONFIG_BLOCK_WRITE
      mci: add support for discarding write blocks
      commands: sync: add new command to flush cached writes
      commands: blkstats: add command to print block device statistics
      console: add new CONSOLE_ACTIVATE_ALL_FALLBACK option
      common: clarify help text for CONFIG_CONSOLE_ACTIVATE_* options
      restart: allow selecting restart handler by device name
      watchdog: imxwd: populate device pointer when registering restart handler
      efi: define extra efi_memory_type flags
      debug_ll: implement putws_ll
      console: provide veprintf and eputchar helpers
      KASan: report: print shadow memory state to stderr
      ARM: print exception reports to stderr
      common: print panic to stderr
      RISC-V: stacktrace: output stack traces to standard error
      console: honour OF current-speed property if available
      parameter: fix parameter name to reflect usage
      ARM: rockchip: dmc: reduce number of leading zeroes
      bootchooser: warn if NV is used instead of barebox-state
      console: countdown: report who is interrupting
      Documentation: devel: background-execution: update section on I2C slices
      Documentation: user: intro: add more info about mailing list
      README: bring it up to date
      common: pe: fix use of undefined macro for ARMv7
      efi: fs: fix determination of read-only files
      filetype: fix else clause indentation
      acpi: fix compilation for 32-bit
      i2c: efi: avoid 64-bit division
      net: fsl_enetc: fix compilation for 32-bit
      ci: container: downgrade OpenRISC toolchain from 14.2.0 to 13.1.0
      include: linux/math.h: promote DIV_ROUND_UP_ULL args to 64-bit
      i2c: efi: use DIV_ROUND_UP_ULL instead of native division
      acpi: fix compilation for 32-bit
      openrisc: dts: describe all 4 UARTs
      ARM: semihosting: use svc instead of incorrect bkpt in DEBUG_LL
      input: don't report depressed keys that were never pressed
      doc: bcm283x: Mention arm_64bit config.txt key
      Kbuild: update gen_compile_commands.py
      lib: jsmn: fix compilation error
      include: stdlib.h: define prototypes for malloc/free

Alexander Shiyan (1):
      clk: rockchip: clk-rk3588: Fix 32k clock name for pmu_24m_32k_100m_src_p

Anand Moon (2):
      Fix Kconfig coding style from spaces to tab
      Fix Makefile coding style from spaces to tab

Antony Pavlov (1):
      MIPS: <asm/io.h>: use generic io accessors

Bastian Krause (1):
      partitions: dos: prefix hex sector numbers with 0x

Florian Otte (1):
      FIX: buffer overflow on MCI-partition enumeration

Rouven Czerwinski (1):
      include: linux/iopoll: fix uninitialized warning

Sascha Hauer (34):
      dts: update to v6.10-rc7
      hab: bail out with error when SRK hash write fails
      hab: ahab: cosmetic change
      hab: ahab: use pr_* for printing
      dts: update to v6.10
      clk: rockchip: rk3188: Drop CLK_NR_CLKS usage
      dts: update to v6.11-rc1
      errno: include string for EOPNOTSUPP
      rsatoc: disable deprecated function warnings
      rsatoc: remove unnecessary function call
      rsatoc: pass EVP_PKEY around
      rsatoc: rename rsa_err() to openssl_error()
      rsatoc: move engine initialization to engine_get_pub_key()
      rsatoc: remove unnecessary error check
      rsatoc: cleanup error handling
      rsatoc: use non deprecated openssl functions to retrieve RSA params
      rsatoc: check error value of gen_key()
      rsatoc: rename to keytoc
      keytoc: add ecdsa support
      keytoc: Let openssl_error() take a format string
      keytoc: clarify error messages
      dts: update to v6.11-rc2
      malloc: implement malloc_usable_size()
      malloc: implement free_sensitive()
      Merge branch 'for-next/dts'
      Merge branch 'for-next/ecdsa-prepare'
      Merge branch 'for-next/mci'
      Merge branch 'for-next/misc'
      tlsf_malloc: remove unused variable
      dlmalloc: remove unused variable
      clk: imx: clk-pllv2: Fix unitialized variable warning
      Revert "i2c: efi: avoid 64-bit division"
      mci: avoid out of bounds partition access
      Release v2024.09.0

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


