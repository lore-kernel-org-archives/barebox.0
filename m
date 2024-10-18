Delivery-date: Fri, 18 Oct 2024 10:45:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1ibk-005oqY-0m
	for lore@lore.pengutronix.de;
	Fri, 18 Oct 2024 10:45:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1ibj-0001D7-Gs
	for lore@pengutronix.de; Fri, 18 Oct 2024 10:45:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=H3nsXHofEZaeous3eRjlS6Xrzk1pYkoPqMH6G3zBFQo=; b=ERqg4ST5I1g7Y3DSBSrMhPRoan
	H73NZIH91H+6fCp3hAUne/nSlyrrQyTxwu6BXA7y8cOKG5mbBwYUowF2PcjzRovcDYjdpvKgS0YiH
	0znqq7B9P1WJkm/LzhK6+aSIhVvaMrrl6DGJQrWqnBvd8+/HMaVqOIWhuc0XpYHytUi2lSKd3wmTX
	9Ahw15cwDp3I915l+l+AyDOnow8yu65kO/GGmtjB9r706us1X8J/wDqR6ackbp6S4DjQpTksNFXZz
	1W0gJWAMDWOPo1UVmf68MHJzhRWqsD8kSHE5P3p0H26wR08tCt+OXl4hKsOo4Ec9B/3E0EGJno3WU
	SB4pA4IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1ib4-000000001Uu-3A5L;
	Fri, 18 Oct 2024 08:44:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1iP2-0000000HYSH-41Hc
	for barebox@lists.infradead.org;
	Fri, 18 Oct 2024 08:32:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1t1iP1-0000DJ-16; Fri, 18 Oct 2024 10:32:07 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t1iP0-000BFg-2k;
	Fri, 18 Oct 2024 10:32:06 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t1iP0-000PcT-2V;
	Fri, 18 Oct 2024 10:32:06 +0200
Date: Fri, 18 Oct 2024 10:32:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <ZxIdBi3xLj0dHqzi@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_013209_028450_A366CD2C 
X-CRM114-Status: GOOD (  12.47  )
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
Subject: v2024.10.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi All,

This is mostly a cleanup release. One thing worth noting is that Ahmad
has updated the CI container so that barebox is now tested on Debian
Bookworm with GCC 14.2.0 and with the latest Labgrid Release.
Also he ported a bigger font which is looking great on high res
monitors.

Have Fun!
  Sascha

----------------------------------------------------------------
Ahmad Fatoum (57):
      common: make BOOTM_SHOW_TYPE depend on UIMAGE
      fastboot: print all variables only on getvar:all and not its prefixes
      fastboot: retire strcmp_l1 in favor of str_has_prefix
      fastboot: avoid console_countdown_abort for getvar request
      ARM: add ARM32/ARM64 symbols for use in generic code
      efi: payload: force PBL_FULLY_PIC for ARM64
      efi: payload: alert user if CONFIG_FS_EFI is missing
      ARM: i.MX: drop explicit reservation of scratch area
      gpio: make gpio.h header self-contained
      gpiolib: permit GPIO drivers to implement struct gpio_ops::set_config
      pinctrl: stm32: implement generic struct gpio_ops::set_config
      gpiolib: turn request/active_low into bit flags
      gpiolib: don't use GPIO number API in of_hog_gpio
      gpiolib: store all OF flags into GPIO descriptor
      gpiolib: add support for OF GPIO configuration binding
      gpiolib: use dev_gpiod_get_index device node argument throughout
      gpiolib: export function to get struct gpio_desc from index
      input: gpio_keys: switch to GPIO descriptor API
      input: gpio-keys: request with label in DT if available
      ci: container: update to Debian Bookworm with GCC v14.2.0
      ci: container: add kvx-elf- toolchain
      ci: container: update to newest Labgrid release
      ci: pytest: test sandbox configuration with labgrid
      ci: build: add kvx build test
      test: py: strategy: drop no longer needed labgrid workarounds
      ci: container: make wget less verbose
      debug_ll: ns16550: fix prototype in documentation comment
      openrisc: implement C debug_ll for NS16550
      ci: container: fix CROSS_COMPILE_openrisc to point at correct version
      test: conftest.py: move top-level
      MAKEALL: return error code from do_build_target
      MAKEALL: don't build all configs wen defconfigs given
      MAKEALL: add support for running pytest after build
      Documentation: board: emulated: rewrite to use MAKEALL/pytest directly
      test: directly exit when barebox state transition fails
      ARM: socfpga: drop unused Arria 10 barebox-arm-head.h
      MIPS: dts: add /chosen/stdout-path where it is missing
      MIPS: qemu-malta: explicitly set stdout-path
      test: mips: use new qemu-maltael_defconfig
      lib: math: rename file providing arith() to arith.c
      include: move STACK_ALIGN_ARRAY to linux/align.h
      fbconsole: support fonts wider than 16 pixels
      fonts: add TER16x32 font
      ARM: rpi: turn fixup message into debug messages
      ARM: rpi: always add built-in env
      ARM: rpi: return correct error code when failing to read revision
      ARM: psci: hide ARM_PSCI options when ARCH_IMX7 is disabled
      PWM: core: make pwm.h header self-contained
      font: fbconsole: use DIV_ROUND_UP for clarity
      ARM: errata: document errata workarounds
      sandbox: lds: fix "ELF has a LOAD segment with RWX permissions" warning
      lib: notifier: allow unregistering notifier in notifier_call_chain
      lib: drop separate int_sqrt.h header
      include: linux/math.h: sync with linux
      uimage: use read_full where appropriate
      sandbox: lds: fix relocation in read-only section warning
      uimage: fix CRC32 verification on NFS

Antony Pavlov (1):
      MIPS: fix elf_check_arch(x)

Bastian Krause (1):
      test: sandbox: support testing with Labgrid

Jonas Rebmann (1):
      wd_core: remove obsolete watchdog list

Julian Vetter (1):
      kvx: Fix SoC version/revision string

Mohamed Sawy (1):
      sandbox: defconfig: activate CONFIG_CONSOLE_ACTIVATE_ALL

Roland Hieber (1):
      ARM: i.MX8MP: König+Bauer AlphaJet: remove barebox partition from eMMC

Sascha Hauer (14):
      dts: update to v6.11-rc3
      dts: update to v6.11-rc4
      dts: update to v6.11-rc5
      dts: update to v6.11-rc6
      Merge branch 'master' into for-next/misc
      dts: update to v6.11-rc7
      Merge branch 'for-next/ci'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/gpio'
      Merge branch 'for-next/misc'
      mci: Fix erase_grp_size extraction for SD with csd_struct v0
      test: arm: qemu-sabrelite: Use qemu specific device tree
      ARM: i.MX6 sabrelite: free USB VBUS GPIO after use
      Release v2024.10.0

Stefan Kerkmann (1):
      net: designware: let phy_resume handle fixed link phys

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


