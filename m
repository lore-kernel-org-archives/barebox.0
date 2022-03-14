Delivery-date: Mon, 14 Mar 2022 10:18:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nTgq9-002igJ-VJ
	for lore@lore.pengutronix.de; Mon, 14 Mar 2022 10:18:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nTgq8-0006ip-24
	for lore@pengutronix.de; Mon, 14 Mar 2022 10:18:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:MIME-Version:Message-ID:Subject:To
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DloMdKLB+0bLSJvj6Ori5JSL86VTQCJBUMb3U0Jrbw8=; b=CN+goVCj7pFGSP
	NGX70uVZTqVIHvWamfBX0qaEepHU8UOQFMjy4aSsos8nAwx90nwC0nhXCOZTyraN+IOEPEaLYttBy
	kYtJH83UAqbc0dfLylAan+VUmV8zogTY5LGU1kYkRNcVEmUXYrBJosnaleRP8dmW8SKz9ct6KOZqc
	cfz1bdqUr6pPqedcy8ZWLI/cTen6WYOF0ywYk6VnWsJvkGwkiaVVy0RpOKVL2p86jPE+6Am/eAofC
	T7Or6tnmEfleHGzVfUHj4eR5EiSqw0jsPqpWV0KWc4dpWc3RsnMeL3FMjX01qHL2Eb+MhoilrDDrV
	Hfwl52iVIb22u9FZ53uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nTgoo-004lVq-Ds; Mon, 14 Mar 2022 09:16:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTgoi-004lUl-R7
 for barebox@lists.infradead.org; Mon, 14 Mar 2022 09:16:42 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nTgoh-0006fB-8W; Mon, 14 Mar 2022 10:16:39 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nTgog-00005c-W3; Mon, 14 Mar 2022 10:16:38 +0100
Date: Mon, 14 Mar 2022 10:16:38 +0100
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20220314091638.GO405@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:06:32 up 93 days, 17:52, 88 users,  load average: 0.14, 0.25, 0.25
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220314_021640_908700_EB70120C 
X-CRM114-Status: GOOD (  22.19  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: v2022.03.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi All,

I am happy to announce barebox-2022.03.0.

No big changes, but a few nice little thingies here and there. UBIFS now
has ZSTD compression support which is supported in the Kernel for quite
a while. The 'wd' command now has an option to shortcircuit all running
watchdogs: A 'wd -x' disables all known watchdogs, either by hardware
disabling them or then that's not possibly by periodically feeding them.
We have support for a new rk3568 board, the BananaPi R2 Pro. The TQMa6UL
SoM board is now supported on the TQ eval board and in our mission to
widen the deep probe support, it is now supported on the raspberry Pi
boards.

Hve Fun!
  Sascha

----------------------------------------------------------------
Ahmad Fatoum (42):
      block: efi-block-io: add devinfo callback for media info
      commands: wd: add new -x option to inhibit all watchdogs
      Documentation: user: introduction: update with lore/matrix/libera info
      commands: add missing command groups
      Documentation: regulator: reference new directory from index
      Documentation: boards: openrisc: fix wrong header format
      Documentation: user: watchdog: note new wd -x option
      reset: add simple reset controller support
      reset: stm32: drop STM32 MCU support in favor of simple reset driver
      include: <asm-generic/bug.h>: implement WARN_ON_ONCE
      string: define new memdup_array
      clk: composite: add clk_hw registration functions
      clk: divider: add clk_hw registration functions
      clk: fixed-factor: add clk_hw registration functions
      clk: clk-fixed: add clk_hw registration functions
      clk: define clk_hw_register
      clk: mux: add clk_hw registration functions
      clk: mux: export clk_mux_round_rate
      clk: implement of_clk_add_hw_provider
      clk: gate: add clk_hw registration functions
      ARM: stm32mp: allow driver reuse for STM32 MCUs
      clk: add clock driver for stm32f4 and stm32f7
      clocksource: add ARMv7-M SysTick driver
      clocksource: add STM32 Timer driver
      gpiolib: implement gpiod_set_value
      video: add driver for STM32 LCD-TFT Display Controller
      sandbox: symlink stickypage.bin into build directory
      compiler: fix __attribute__((format(printf, sandbox incompatibility
      mtd: mtdram: discard superfluous code
      mtd: mtdram: add physically mapped ROM (mtd-rom) support
      test: self: printf: log skipped tests
      test: self: printf: add tests for %*ph prints
      of: report whether of_diff found differences in return code
      of: silence of_diff output for negative indents
      test: self: add device tree manipulation test
      state: add deep probe aware helpers to get state
      video: add MIPI DBI Type C Option 3 support
      video: add Ilitek ILI9341 panel support
      regulator: fix enabling of always-on regulators
      bootm: add missing space in error message
      Documentation: devel: project-ideas: align with GSoC guidelines
      clk: composite: fix possible NULL pointer dereference

Antony Pavlov (1):
      imd: add optional endianness=3D parameter for bi-endian systems

Denis Orlov (1):
      MIPS: fix optimised memset returning garbage

Frank Wunderlich (2):
      Kbuild: add bareboxversion target to Makefile
      ARM: Rockchip: Add rk3568 BananaPi R2 Pro board support

Johannes Schneider (1):
      Documentation: add chapter on Talks about barebox

Juergen Borleis (2):
      Add the base Ricoh RN5T568 PMIC driver
      Add Ricoh RN5T568 PMIC based watchdog

Jules Maselbas (5):
      filetype: Add QOI format image type
      gui: Add qoi image format
      scripts: Add qoiconv to convert png to qoi
      logo: Enable image format selection for the logo
      logo: Add choice for the QOI image format option

Masahiro Yamada (3):
      setlocalversion: update to Linux 5.16
      kvx: remove unused CONFIG_ARCHINFO
      kbuild: replace $(H) with $(pound)

Michael Olbrich (3):
      cdev: rename partuuid to uuid
      cdev: add diskuuid support
      efi: probe devices from the device-tree

Oleksij Rempel (6):
      ARM: rpi: convert board code to a driver
      ARM: bcm2835 mbox: drop driver mode and probe on first request
      ARM: rpi: move clk support to a separate driver
      ARM: rpi: validate devicetree compatible instead of changing model na=
me
      ARM: rpi: set host name based on DT compatible
      ARM: rpi: enable deep-probe support

Rouven Czerwinski (1):
      ARM: imx: add support for TQMa6UL SoM on MBa6ulxl

Sascha Hauer (29):
      ARM: rockchip-v8-defconfig: Enable USB
      build: Include dts/include/ after include/
      dts: update to v5.17-rc1
      clk: Move clk_hw_get_num_parents out of ifdef
      of_path: Fix typo
      dts: update to v5.17-rc2
      ubifs: Add zstd support
      rename cdev_open() -> cdev_open_by_name()
      cdev: implement cdev_open()
      driver: Add functions to free devices
      cdev: Create missing cdev_* functions
      cdev: create iterator for cdev list
      misc: Add storage-by-uuid driver
      ARM: rockchip: rk3568-evb: Drop unused property
      compressed dtb: Make sure they are only available when supported
      Merge branch 'for-next/doc'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/efi'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/qoi'
      Merge branch 'for-next/rpi'
      Merge branch 'for-next/sata-mv'
      Merge branch 'for-next/state'
      Merge branch 'for-next/stm32'
      Merge branch 'for-next/tests'
      Merge branch 'for-next/ubifs'
      Merge branch 'for-next/video'
      scripts: bareboximd: Fix -c option
      Release v2022.03.0

Steffen Trumtrar (6):
      ata: sata_mv: cleanup alignment
      ata: sata_mv: clear SERROR and en/disable EDMA
      ata: sata_mv: handle the phy errata
      ata: sata_mv: enable Generation 2 speed support
      ata: sata_mv: issue hard-reset on probe
      ata: sata_mv: try probing multiple times

Ulrich =D6lmann (3):
      power: reset: Kconfig: fix copy-&-paste bug in help text
      Documentation: reboot-mode: fix typos
      Documentation: reboot-mode: mention that system.reboot_mode.next is i=
nitially set to 'normal'

Uwe Kleine-K=F6nig (1):
      crypto: consistently name the algo digest symbols HAVE_DIGEST_...

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

