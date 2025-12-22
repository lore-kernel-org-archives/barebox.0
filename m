Delivery-date: Mon, 22 Dec 2025 10:54:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vXccK-00ECLG-00
	for lore@lore.pengutronix.de;
	Mon, 22 Dec 2025 10:54:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vXccI-0001to-Vt
	for lore@pengutronix.de; Mon, 22 Dec 2025 10:54:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fDdzQrOUSn3s8JEkNoMYFsLjIoQrF4AmUsi+/EwwpNU=; b=Y/ZsTNQUzXT4ghckbspZ1IagIg
	jxx3yeuTN5j9F92++WCNl1F04n70fGd9t9y+wsymRaODDnOVT2N+ugOtZcqQ2wMDWUKpzrcPvcn+R
	bdFh7oWLuXUYfmH2kn72wu5cEMVWsF8l0LfaXiHUDnS1gEQtrW0nXqtneRhROClpbSUxefDgLP1C5
	HISznLx4FwCVJUqBZnvMdB8sBr7qKKKwkPl7NCTfN5NFYNOPGyASp8IkOGiAxARIGRZaQEok68sKO
	B7Gv+SLJbNiLcKzHfb5puRdxRkreEPCP9hIRa9bm8BpkWxxh/M2fIGvlm/R12hfk5W1jLLX1OkaB4
	IFBh619g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXcba-0000000DZIU-1aTy;
	Mon, 22 Dec 2025 09:53:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXcbW-0000000DZI2-0hQF
	for barebox@lists.infradead.org;
	Mon, 22 Dec 2025 09:53:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vXcbS-0001m4-64; Mon, 22 Dec 2025 10:53:22 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vXcbS-006unO-00;
	Mon, 22 Dec 2025 10:53:22 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vXcbR-004TMh-2n;
	Mon, 22 Dec 2025 10:53:21 +0100
Date: Mon, 22 Dec 2025 10:53:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <aUkVEcaajHt42VZl@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251222_015326_409095_4D41C31E 
X-CRM114-Status: GOOD (  21.34  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: v2025.12.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


Hi All,

Right before christmas we have a v2025.12.0 release.

Not a big release but there are still some nice things to find. First of
all sandbox can now utilize LeakSanitizer to find memory leaks. This was
already used to find several memory leaks so that sandbox now runs
through all tests without memory leaks.
The barebox TLV support now has signature support which makes it ideal
for storing factory data which can be coupled to a specific device.
Until now the barebox magicvars were only documented in the magicvar
command. With this release they are now also documented on the website,
check out https://barebox.org/doc/2025.12.0/user/variables.html.

See below for a migration guide to this release and also for a full list
of changes that went into this release.

I wish you all a merry christmas!

Sascha


Migration notes for Release v2025.12.0
======================================

Shell
-----

* An optional parameter was added to the `-c` option of `dmesg` allowing
  configuration of the number of lines to remain in the log buffer after
  clearing. When no parameter is provided to `-c`, zero is assumed, and no
  lines are retained. Earlier versions always left 10 lines of logs remain in
  the log buffer.

Configuration options
---------------------

* The syntax of ``CONFIG_CRYPTO_PUBLIC_KEYS`` was updated with the introduction
  of the keyring feature. Previously, keys selected via
  ``CONFIG_CRYPTO_PUBLIC_KEYS`` were only used for fitimage verification. Now,
  fitimage verification uses the "fit" keyring. "fit" will be selected as the
  default keyring for transition but a warning will be emitted when no keyring
  is explicitly provided. Existing users should update their keyspec for
  fitimage public keys to ``keyring=fit[,fit-hint=<fit_hint>]:<crt>``
* The fit-hints in ``CONFIG_CRYPTO_PUBLIC_KEYS`` are now limited to identifiers
  matching the regular expression ``[a-zA-Z][a-zA-Z0-9_-]*``. Public keys with
  a ``fit-hint`` not conforming to this results in an error, affected key-hints
  must be changed. Please reach out to the mailing list if this causes issues.

----------------------------------------------------------------
Ahmad Fatoum (52):
      fuzz: add context pointer to call_for_each_fuzz_test
      sandbox: export list_fuzz_tests to sandbox_main
      fuzz: do not export for_each_fuzz_test
      video: Rockchip: add vop2_data::version field like Linux
      video: vpl: add debug output when calling ioctl
      video: panel: add support for Sitronix ST7703 MIPI-DSI panel
      phy: add support for generic MIPI D-PHY
      phy: add devinfo callback
      phy: add phy_configure operation
      phy: rockchip: add Innosilicon MIPI/LVDS/TTL PHY driver
      pinctrl: support selecting states from command line
      video: make video/mipi_dsi.h header self-contained
      sound: pwm-beeper: make duty cycle configurable
      param: add support for setting parameters with percentages
      video: backlight-pwm: switch to gpiod functions
      backlight: support setting brightness as percentage
      console: print banner on every fully activated console
      regulator: implement dev_of_regulator_get
      pmdomain: look up pmdomain even if not have_genpd_providers
      pmdomain: allow callback for when devices are attached
      imd: drop .barebox_imd section from arm/riscv non-PBL lds
      common: elf: rename elf_section misnomer to elf_segment
      x86: drop unused header asm/segment.h and modes.h headers
      state: guard against empty variable set in DT
      commands: usbgadget: improve error message on failure
      usb: dwc3: port Linux i.MX8MP glue driver
      phy: freescale: imx8mq-usb: add support for 8MP/8MQ vbus-supply
      crypto: caam - skip RNG selftest when i.MX6 is in normal world
      .clangd: remove -enable-trivial-auto-var-init-zero-... flag
      lib: add talloc for overlaying a tree onto allocations
      video: stm: make multi-image compatible
      video: stm: allocate uncached framebuffer memory as write-combine
      video: stm: add explicit support for i.MX6SX
      test: self: add talloc selftest
      hush: fix memory leaks
      sandbox: add memory leak debugging tooling around LeakSanitizer
      ARM: i.MX93: reinstate aliases
      bootm: fix boot override inheritance
      boards: qemu-virt: drop fitimage-pubkey.dts
      Documentation: migration-guides: don't warn about migration-master
      Documentation: factor out build rules into stand-alone Makefile
      ci: add workflow to check documentation build is warning free
      ARM: Rockchip: document changing console baud rate
      pmdomain: fix NULL pointer derference with dummy power domains
      param: make setting a parameter to the same string value a no-op
      net: fsl_enetc: fix missing dmb() symbols on non-ARM
      i2c: omap: fix probe on am335x
      net: 9p: fix variable name in BAREBOX_MAGICVAR
      bootchooser: inline document global.bootchooser.reset_priorities
      reset_source: inline document global.system.reset*
      Documentation: generate docs for magic variables
      Documentation: turn magic variables literals into references

Fabian Pflug (1):
      console_common: get_first_active: respect security policy

Jan Luebbe (1):
      doc: user: booting-linux: document global.bootm.initrd

Jonas Rebmann (20):
      gitignore: ignore /build, /oe-logs, /oe-workdir
      commands: dmesg: clear logbuffer fully if not requested otherwise
      lib: idr: avoid dangling else in idr_for_each_entry()
      common: clean up TLV code
      crypto: Add support for keyrings
      fit: only accept keys from "fit"-keyring
      crypto: keytoc: Rename "hint" to "fit-hint" and do not use it in identifiers
      commands: keys: update output format to include keyring
      commands: tlv: Error out on invalid TLVs
      scripts: bareboxtlv-generator: Implement signature
      scripts: bareboxtlv-generator: Increase max_size in example schema
      common: tlv: Add TLV-Signature support
      common: tlv: default decoder for signed TLV
      crypto: Use "development" keys for "fit" and "tlv" keyring
      test: py: add signature to TLV integration tests
      ci: pytest: Add kconfig fragment for TLV signature integration tests
      crypto: concatenate fit development certificate with private key
      doc/barebox-tlv: Update documentation regarding TLV-Signature
      Documentation: migration-2025.12.0: List changes to CONFIG_CRYPTO_PUBLIC_KEYS
      tlv: register_device() error handling

Marco Felsch (1):
      ARM: atf: document BL32 FDT argument

Maud Spierings (4):
      scripts: imx: Makefile.mingw64: add _GNU_SOURCE
      scripts: imx: add pread implementation for mingw target
      gitignore: ignore *.exe
      pmdomain: fix collision in names when registering

Michael Grzeschik (1):
      crypto: keytoc: fix env parsing after keyring support

Sascha Hauer (28):
      mtd: peb: mtd_peb_read(): move error message to caller
      dts: update to v6.18-rc3
      dts: update to v6.18-rc4
      ARM: multi_v8_defconfig: enable more rockchip stuff
      ARM: k3: allow to take signing key from environment variable
      tlv: fix memory leak
      of: free of_fixup in of_unregister_fixup()
      bobject: free object name in bobject_del()
      bfetch: fix memory leak
      Merge branch 'for-next/arm'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/memleaks'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/pmdomain'
      Merge branch 'for-next/rochchip'
      Merge branch 'for-next/talloc'
      Merge branch 'for-next/tlv'
      clk: rockchip rk3588: configure CPLL in driver
      device: use free_const to free device/bobject name
      nvmem: Fix typo in Kconfig
      public-keys: fix warning message
      dm: fix memory leak
      Merge branch 'document-bootm-initrd' of https://github.com/jluebbe/barebox
      fs: fix automount when last filename component is a automountpoint
      Merge branch 'for-next/documentation'
      ARM: i.MX8MN-EVK: Fix maximum load size
      Release v2025.12.0

Sohaib Mohamed (1):
      Documentation: defaultenv-2: Document C-based init script

Steffen Trumtrar (1):
      ARM: i.MX8MP: skov: add new 10" jt101tm023 variant support

Ulrich Ölmann (2):
      docs: security-policies: fix typo
      docs: security-policies: fix code block rendering by removing extra colon

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


