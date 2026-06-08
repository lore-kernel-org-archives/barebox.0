Delivery-date: Mon, 08 Jun 2026 15:09:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wWZjR-003eGl-1w
	for lore@lore.pengutronix.de;
	Mon, 08 Jun 2026 15:09:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wWZjQ-0003CA-B3
	for lore@pengutronix.de; Mon, 08 Jun 2026 15:09:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:To:Subject:From:Reply-To:Cc:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lDRB4vNeLHL85aeRE3A3bhirZZiJ0ySpDmwo8wPrIac=; b=4IKZ0z+uFQ/33c
	LfyTkaI7xscfJs1fcUfZdp2YUZtFSok+HK8x3nO10z+owSV6Qrn/kzp/RAQQqfrFKnbWj1r7fTarK
	YDcIrEkpshxBkEk5Ejm/2WSEf1UL0h9sWRN5YciDQTblGOSkx5YCCa1ez3M8KxosNg5msd5s60Cjg
	fMu+Djjq+t4j65z6VKZMRr59tCQpBw/xLe97IS29xQmkrKkWkGWB9EKRvq/hgkriUXwM93OvMZIh1
	wmplnPlqKfNM8pqrRB3zA10us7r1t/NIvcQMi44bX68v4bkdjFGxGq9MCrV7Nu0ZVt2WYZqsKS7f1
	w8ACoZe4fO6vb05lLrcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWZi1-00000003aZW-0704;
	Mon, 08 Jun 2026 13:08:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWZhx-00000003aYh-0WtG
	for barebox@lists.infradead.org;
	Mon, 08 Jun 2026 13:08:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wWZht-0002yY-SE
	for barebox@lists.infradead.org; Mon, 08 Jun 2026 15:07:57 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wWZht-001jKo-2g
	for barebox@lists.infradead.org;
	Mon, 08 Jun 2026 15:07:57 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wWZht-000000078kI-350K
	for barebox@lists.infradead.org;
	Mon, 08 Jun 2026 15:07:57 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 08 Jun 2026 13:07:57 +0000
Message-Id: <E1wWZht-000000078kI-350K@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_060801_323818_0AA2BA4C 
X-CRM114-Status: GOOD (  13.67  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: v2026.06.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi All,

barebox-2026.06.0 is here.

This release brings us several fbconsole fixes and improvements on his
quest to make fbconsole more useful. Our MMC/SD framework now supports
HS200/400(ES) modes with great speed improvements. It works out of the
box with Rockchip SoCs. Some driver specific adjustments are necessary
to make it work, on SDHCI based controllers it should be relatively easy
to add though. Also added is support for the i.MX8MP FRDM board. Michael
has continued to cleanup the SoCFPGA lowlevel code.

Have Fun!
  Sascha

Migration notes for Release v2026.06.0
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

global.linux.bootargs.* appending order
---------------------------------------

If barebox was configured to automatically generate any of the ``root``,
``rootwait``, ``earlycon``, ``systemd.machine_id``, ``systemd.hostname``
or ``barebox.security.policy`` kernel command line options, they will be
appended onto the final kernel command line
:ref:`**after** all other options <bootargs_concat_order>`.

Removal of global.env.autoprobe
-------------------------------

The global.env.autoprobe variable introduced with v2025.02.0 is removed and
now replaced with CONFIG_ENV_HANDLING_AUTOPROBE. It has never worked. If you
want to load a barebox environment based on its partition UUID enable
CONFIG_ENV_HANDLING_AUTOPROBE.

----------------------------------------------------------------
Ahmad Fatoum (63):
      ARM: multi_v8_defconfig: enable QEMU ramfb driver
      test: enable VirtIO keyboard
      commands: fbtest: add flush for single pattern
      test: conftest: don't call .startswith on int
      test: conftest: set -display none when non-interactive
      test: conftest: add qemu feature
      test: add framebuffer screenshot testing via QMP screendump
      commands: add resize command to reset terminal scroll region
      lib: term: avoid printing NUL with new new console_puts API
      lib: term: return error code from term_getsize()
      lib: term: add per-console terminal response parser
      lib: term: factor out single cdev handling from term_getsize
      lib: term: fix term_getsize cursor restore
      console: add get_size callback for direct size reporting
      video: fbconsole: implement get_size
      console: add per-console terminal.size parameter
      efi: reimplement query_console_serial using term_getsize
      video: ramfb: support multiple resolutions via mode_name parameter
      serial: efi-stdio: implement DEC save/restore cursor
      fbconsole: make UTF-8 the default encoding instead of CP437
      commands: 2048: use 16-color ANSI palette
      commands: splash: optimize background fill
      fbconsole: remove incomplete CSI_CNT state
      fbconsole: improve handling of unexpected escape sequences
      fbconsole: fix handling of CSI buffer overflow
      fbconsole: do not reset cursor visibility alongside attributes
      fbconsole: respect hidden cursor everywhere
      fbconsole: call fb_blit_area for every drawchar
      fbconsole: skip fb_flush when processing escape sequences
      fbconsole: factor out helpers for clamped cursor row/col setting
      fbconsole: precompute foreground/background colors
      fbconsole: collect renderable state into struct fbc_screen_state
      fbconsole: implement CSI A/B/C/D cursor movement sequences
      fbconsole: restrict cursor visibility to DEC private mode 25
      fbconsole: add new clear_chars helper
      fbconsole: implement erase entire line CSI
      fbconsole: support ESC[0J and ESC[1J partial screen clear
      fbconsole: implement DEC save/restore cursor
      fbconsole: implement VT100 deferred wrap (last column flag)
      fbconsole: implement alternate screen buffer (ESC[?1049h/l)
      fbconsole: adapt logging depending on activated streams
      netconsole: suppress log message when opening console file
      netconsole: terminate netcat background process on exit
      netconsole: add support for binding to specific IP
      test: py: implement --port-forward option
      common: fix help text reference to internal magicvars
      Documentation: user: booting-linux: split off mtdparts fixup section
      bootm: append automatic parameters after all other linux.bootargs
      include: ktime: move ktime_t definition globally
      readkey: handle standalone ESC keypress with timeout
      efi: loader: gop: install device path to make GOP discoverable
      param: return error when assigning empty string
      clocksource: Rockchip: do not bind to RK3188 timer
      arch: enable RELR relocation packing support by default
      of: base: handle of_set_root_node(NULL) correctly
      ARM: uncompress: keep handoff data aligned
      common: env: make ENV_HANDLING_AUTOPROBE default to INSECURE
      mci: sdhci: suppress register dump on expected time out
      arch: introduce new CONFIG_ARCH_HAS_MALLOC_SIZE
      arch: introduce CONFIG_BAREBOX_MEMORY_OFFSET
      ARM64: switch to CONFIG_BAREBOX_MEMORY_OFFSET
      ARM64: configs: drop CONFIG_MALLOC_SIZE=3D0x0 as it's now the default
      ARM64: place PBL malloc area at start of barebox proper malloc area

Corentin Guillevic (1):
      x86: efi: fix objcopy flags for barebox.efi

Fabian Pfitzner (3):
      dts: backport NXP i.MX8MP FRDM board dts
      ARM: i.MX8MP: add imx8mp-frdm board
      ARM: i.MX: add support for fast authentication

Fabian Pflug (9):
      of: add of_property_write_string_array()
      security: policy: sanity check parameters
      security: policy: remove global active_policy var
      security: policy: add notifier chain for name change
      common: bootm: add policy to commandline
      drivers: pinctrl: configure pinctrl based on policy name
      security: kernel_pinctrl: fixup pinctrl in kernel dts
      common: misc: add soc_uid_hex to globalvar
      i.MX: HAB: update text for HABV4_CSF_UNLOCK_UID

Jonas Rebmann (3):
      input: add input_is_key_pressed() to read single key
      ARM: boards: protonic-imx6: use input_is_key_pressed()
      input: Add missing include for DECLARE_BITMAP

Lucas Sinn (1):
      drivers: mci: rockchip: fix HS400 DLL strobe and clock gate config

Miaoqian Lin (1):
      clk: rockchip: Fix error pointer check after rockchip_clk_register_ga=
te_link()

Michael Tretter (20):
      net: xgmac: switch to upstream compatible
      arm: socfpga: agilex5: add missing include soc64-regs.h
      arm: socfgpa: agilex5: remove mailbox_s10 from barebox proper
      arm: socfpga: agilex5: extract function to request qspi access
      arm: socfpga: mailbox_s10: keep clock rate in Hz
      arm: socfpga: mailbox_s10: add write_qspi_refclk helper
      arm: socfpga: agilex5: extract write_qspi_refclk from mailbox
      ARM: dts: socfpga: AXE5-Eagle: fix phy reset
      arm: socfpga: cyclone5: rename lowlevel.h
      arm: socfgpa: use tabs for indent in Kconfig
      arm: socfpga: reorganize Kconfig menu
      arm: socfpga: regenerate defconfig files
      arm: socfpga: axe5-eagle: fix stack location
      arm: socfpga: agilex5: add helper for entry function
      arm: socfpga: axe5-eagle: move PHY reset to board code
      arm: socfpga: agilex5: separate EL3 init function
      arm: socfpga: agilex5: panic if DDR init failed
      arm: socfpga: iossm: add delay to wait for firmware
      arm: socfpga: agilex5: drop dual port hack
      arm: socfpga: agilex5: drop bank select before ddr_init

Sascha Hauer (51):
      clk: imx: clk-vf610: Define VF610_CLK_END locally
      ARM: i.MX27-phytec-phycard-s: remove device nodes already upstream
      dts: update to v7.1-rc1
      rkimage: Support openssl provider API
      rkimage: unconditionally fill newidb
      rkimage: add support for re-signing an existing image
      rkimage: improve error handling
      environment: Drop /dev/env0 default
      environment: add global.env.path
      environment: add explicit option to allow searching for environment d=
evices
      dts: update to v7.1-rc2
      dts: update to v7.1-rc3
      Merge branch 'github/rk3188-timer-fix' into for-next/rockchip
      mci: sdhci: propagate tuning failures from sdhci_execute_tuning()
      mci: sdhci: drop unused re-tuning timer plumbing
      mci: sdhci: rockchip: set hidspd before re-enabling the clock
      mci: sdhci: rockchip: disable clock while setting DLL
      mci: sdhci: rockchip: Wait for transfer complete interrupt with MMC_R=
SP_BUSY cmd
      mci: sdhci: rockchip: Update pre-change delay for rockchip platform
      clk: composite: pick best parent for round_rate / set_rate
      mci: sdhci: rockchip: officially support HS200
      mci: sdhci: define VDD_180 and shrink UHS_MASK to bits 0..2
      mci: mmc_send_tuning: actually point data.dest at the buffer
      mci: sdhci: add ADMA2 descriptor helpers
      mci: add HS400 mode selection
      mci: add HS400 Enhanced Strobe (HS400ES) selection
      mci: rockchip-dwcmshc-sdhci: use ADMA2
      mci: sdhci: rockchip: set TX-path source-select bit in DWCMSHC_EMMC_D=
LL_TXCLK
      mci: sdhci: rockchip: distinguish IP revision 0 (rk3568) from 1 (rk35=
76/rk3588)
      mci: sdhci: rockchip: support HS400
      mci: sdhci: rockchip: support HS400 Enhanced Strobe
      Merge branch 'for-next/console'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/mci'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/rockchip'
      Merge branch 'for-next/security-policies'
      Merge branch 'for-next/socfpga'
      Merge branch 'for-next/test'
      dts: update to v7.1-rc5
      mci: rockchip-dwcmshc-sdhci: poll DATA_AVAIL for tuning commands
      mci: sdhci: Fix TIMEOUT_CONTROL register value
      mci: sdhci: rockchip: Use generic sdhci_send_command()
      dts: update to v7.1-rc6
      Merge branch 'for-next/dts'
      debug_ll: give PUTC_LL a common prototype
      debug_ll: Add Kconfig options for debug uarts that have none
      debug_ll: pl011: define PUTC_LL only when requested
      ARM: socfpga: add missing include
      Release v2026.06.0

Shawn Lin (1):
      clk: rockchip: rk3568: Add PCIe pipe clock gates

dcostan (3):
      ARM: rockchip: radxa-rock: fix startup regression
      ARM: rockchip: radxa-rock: assigned clock rates
      ARM: rockchip: enable BLSPEC

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


