Delivery-date: Fri, 13 Jun 2025 13:32:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uQ2e6-006qh5-25
	for lore@lore.pengutronix.de;
	Fri, 13 Jun 2025 13:32:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uQ2e5-0004vL-NA
	for lore@pengutronix.de; Fri, 13 Jun 2025 13:32:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=S/7/dgNDLNXtnm5XTyhUM7gACC5rmnWB58+C3BvYWmM=; b=PKmqn7XEhCQV0/35bSSbYgxF2x
	qVOKXY2/vgDeWCz6s8iKyTwSiuZzd6ZoN6OF6r7q18iLopXsrw/y+2Suj+52yR5Ym0J7xrFCYAW/m
	GY1mmM1k/SWetMcLAbLANoI6Sti+mHQ1vzC0EkcQczup6HT1O0B/JJJ+YRdVvPCHqBgs+WySwSWbo
	I4mvfM0VN1pi8BFZUZaGXseu8YJqXwy7zGuBNN8/4C0Fv3wP5qGZa2G2DWAqGTMSn914PYGVhs4Hr
	JVfV/j+diKikVJZyXh8BiBhtR3KXTBm26Ivb13n+1LZvSpRxt0pPUemuzncIQz2FrbTGwKwacJ3fM
	JKv29I9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ2de-0000000GCyr-2vJl;
	Fri, 13 Jun 2025 11:32:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ2Uu-0000000GA2u-1dCn
	for barebox@lists.infradead.org;
	Fri, 13 Jun 2025 11:23:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uQ2Us-0001Ok-7I; Fri, 13 Jun 2025 13:22:58 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uQ2Us-003HVc-09;
	Fri, 13 Jun 2025 13:22:58 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uQ2Ur-00B9be-34;
	Fri, 13 Jun 2025 13:22:57 +0200
Date: Fri, 13 Jun 2025 13:22:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <aEwKEf9V0V9tbD5p@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_042300_583367_7FCA277D 
X-CRM114-Status: GOOD (  16.38  )
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
Subject: v2025.06.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi All,

barebox-2025.06.0 is just released.

This is a rather small release but is interesting due to some bug fixes.

First of all decompression of FIT images failed in v2025.05.0. This is now
fixed with "fs: remove O_DIRECTORY flag from O_TMPFILE". FIT images with
uncompressed contents were not affected by this bug.

Another bug was in unmounting of filesystems. Filesystems could not be
unmounted after they have been accessed due to wrong reference counting.
Furthermore a filesystem could not be unmounted once a findmnt command
was executed on the mountpoint. These are fixed in "fs: unreference path
on file close" and "fs: unreference path in canonicalize_path()"

There is a cool new feature as well: barebox now supports eMMC HS200
mode which speeds up eMMCs quite nicely. For now this is only supported
on i.MX but can be extended later.

For a full list of patches that went into this release see below.

Have fun!
  Sascha

----------------------------------------------------------------
Ahmad Fatoum (68):
      kbuild: treat char as always unsigned
      ARM: v7r: fix TLSF memory pool mix-up
      commands: devlookup: add support for cdev aliases
      common: bootdef: output resolution at info log level
      lib: random: make srand_xor a no-op in PBL
      clocksource: timer-ti-dm: replace magic constant with descriptive macros
      clocksource: timer-ti-dm: adapt omap_dmtimer_init parameter type to usage
      fastboot: introduce fastboot_tx_print_var() helper
      fastboot: don't populate partition variables unconditionally
      fastboot: only populate variables explicitly asked for
      fastboot: factor out fb_file_getsize
      fastboot: check for file existence before flashing/erasing
      fb: generate mode name if missing
      include: linux/printk: import Linux dev_err_ptr/case_probe helpers
      video: ipuv3: drop unused drm_ forward declarations
      video: Rockchip: drop unused declarations
      treewide: replace dev_get_drvdata with device_get_match_data
      ARM: i.MX: esdctl: replace dev_get_drvdata with device_get_match_data
      gpio: gpio-mxs: replace dev_get_drvdata with device_get_match_data
      pinctrl: at91: replace dev_get_drvdata with device_get_match_data
      driver: switch dev_get_drvdata to Linux semantics
      mci: am654-sdhci: fix error code printed in error messages
      drivers: maintain const when converting from struct driver
      driver: base: invert driver match callback for Linux compatibility
      mci: sdhci: fix SDHCI_TRNS_AUTO_CMD12 definition
      mci: move most recent I/O settings into mci_host::ios
      mci: use struct mci_host::ios inside mci_set_ios
      mci: tuning: fix fallback to DDR52
      mci: sdhci: unmap DMA buffers on timeout
      mci: add MMC_CAP_UHS constants
      mci: rename MMC_CAP_MMC_x_yV_DDR to MMC_CAP_x_yV_DDR as in Linux
      mci: compare host and card caps for supported speeds
      mci: print HS200 capabilities in devinfo
      mci: respect no-1-8-v OF property
      mci: sdhci: add support for struct mci_data::timeout_ns
      mci: imx-esdhc: use unsigned types where appropriate
      mci: imx-esdhc: implement esdhc_poll using sdhci_read32_poll_timeout
      mci: imx-esdhc: drop one extra read of SDHCI_INT_STATUS
      mci: sdhci: add cmd parameter to sdhci_transfer_*
      mci: arasan: introduce mmc_op_tuning helper
      mci: imx-esdhc: flesh out register description
      mci: imx-esdhc: add support for delay/tuning properties in DT
      mci: add mci_set_timing helper
      mci: imx-esdhc: add support for setting drive strength
      mci: sdhci: move SDHCI_MAKE_BLKSZ definition to header
      mci: imx-esdhc: select different pinctrl state depending on frequency
      mci: core: retry MMC_CMD_SET_BLOCKLEN up to 4 times
      mci: imx-esdhc: don't reconfigure clock unless required
      mci: sdhci: fix sdhci_transfer_data MMC_SEND_TUNING compatibility
      mci: core: implement mmc_send_tuning
      mci: imx-esdhc: set burst_length_enable
      mci: imx-esdhc: fixup quirks in standard SDHCI registers
      mci: sdhci: support Linux SDHCI_QUIRK2_BROKEN_HS200 flag
      mci: imx-esdhc: implement HS200 support
      usb: misc: rename USB onboard hub support to onboard device
      ARM: at91: xload: make capacity an argument to at91_mci_bio_set_highcapacity
      mci: atmel_mci: switch PBL implementation to common mci-pbl support
      Documentation: devicetree: mention when symbols are required in base DT
      Documentation: migration-2025.06.0: mention char becoming unsigned
      fbconsole: reset cursor to origin when changing fonts
      commands: bthread: fix format specifier for ulong
      common: optee: improve documentation of options
      scripts: rockchip: rename SECTOR_SIZE/PAGE_SIZE
      ci: add new musl-tools Github CI workflow
      hw_random: omap-rng: ignore clocks for OMAP3/4
      ARM: configs: omap_defconfig: enable HW_RANDOM_OMAP
      of: fdt: verify length within bounds before using it
      of: fdt: fix overflowing in dt_struct_advance arguments

Alexander Shiyan (3):
      AT91: bootsource: Remove zero check of at91_bootsource
      clk: Fix incorrect rate comparison in clk_set_rate()
      at91: xload: Fix MCI instance selection for SAMA5D3

Bastian Krause (1):
      Documentation: user: use https instead of git protocol for cloning

Enrico Jörns (6):
      doc: user: barebox: improved and consistent markup for console examples
      doc: user: devicetree: fix indentation and typo
      doc: user: barebox: add markup for release scheme and update dates
      doc: conf.py: update copyright from 2022 to 2025
      doc: user: booting-linux: fix double code-block markup
      docs: conf.py: tweak SearchEnglish to be hyphen- and dot-friendly

Johannes Roith (1):
      zedboard correct comments in lowlevel.c

Lars Schmidt (1):
      ARM: k3: beagleplay: Enable 32k crystal

Roland Hieber (1):
      Documentation: use https URLs for GitHub

Sascha Hauer (21):
      dts: update to v6.15-rc3
      dts: update to v6.15-rc4
      ti/k3-navss-ringacc: switch to Linux code base
      firmware: ti_sci: pass struct to ti_sci_rm_ringacc_ops::config
      firmware: ti_sci: handle Asel
      dma: k3-udma: Handle Asel
      dts: update to v6.15-rc5
      Merge branch 'master' into for-next/misc
      Merge branch 'for-next/arm'
      Merge branch 'for-next/char-always-unsigned'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/fastboot'
      Merge branch 'for-next/k3'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mmc'
      Documentation: boards: k3: adjust to reality
      Documentation: boards: k3: remove obsolete k3.rst
      sripts/k3img: determine size of files, not links
      fs: unreference path on file close
      fs: unreference path in canonicalize_path()
      Release v2025.06.0

Stefan Kerkmann (1):
      fs: remove O_DIRECTORY flag from O_TMPFILE

Steffen Trumtrar (1):
      of: fdt: fix length comparison

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


