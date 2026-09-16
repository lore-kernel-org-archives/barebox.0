Delivery-date: Wed, 16 Sep 2026 15:09:33 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x6pOG-002nRt-1A
	for lore@lore.pengutronix.de;
	Wed, 16 Sep 2026 15:09:33 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=IkX5vAUj;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B6200202169
	for <lore@pengutronix.de>; Wed, 16 Sep 2026 15:09:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:To:Subject:From:Message-ID:Reply-To:Cc
	:MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5M4s6wzUvJziQ+CQkV2iDCZ+CJbIbopaLU/uPLEJyiY=; b=IkX5vAUjcYTRNy
	Xcppt3CFg3xYCszuiWXN4f0QRDJci4o862ooMX9Qdwms8StK1lToSwWMGNKoZJpm/qsFUtyhoFIGD
	lj3TO/Jl+h/zAE4TeIyqz/zC0sm1EYxtZr6Hb21udm8/A1vbPL30CVJP+OgPbLG2OWP7sVhiXAwsP
	/j/T3qVpOnBugWEVd38lNps1OoSwymslMFb2qGPiyBPC/H4pMPmmMpGCIJ8TgSYhBFyhhVdNwcVJ6
	O/+JH2OWwh+z+8UpcbQJ2K0gg4Pfr1667UfwewuMn04HqPhAsz4ukMvYp8v7uBkfSahBct0lGpm0E
	CZ7IflwiPmhnQyafCm+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pMq-00000009F7x-3pAB;
	Wed, 16 Sep 2026 13:08:04 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pMk-00000009F6E-2xpO
	for barebox@lists.infradead.org;
	Wed, 16 Sep 2026 13:08:01 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id AE3D2202169
	for <barebox@lists.infradead.org>; Wed, 16 Sep 2026 15:07:54 +0200 (CEST)
Message-ID: <de610af5-7726-4241-a645-0b55fa1da559@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: v2026.09.0
To: barebox@lists.infradead.org
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 16 Sep 2026 13:07:54 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_060759_135630_5AC260D8 
X-CRM114-Status: GOOD (  19.06  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi all, We have a barebox Release for September, I just released
    barebox-2026.09.0. This release fixes vulnerabilities in the FIT image code.
    Most important one is fixed with "FIT: resolve FIT images case-sensitively".
    This vulnerability allowed to trick barebox into verifying one FI [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Server: mx1
X-Stat-Signature: 3pzmcj94yy8rthxbgwcousyw1fatunru
X-Rspamd-Queue-Id: B6200202169
X-Spamd-Result: default: False [-55.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCPT_COUNT_ONE(0.00)[1];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action

Hi all,

We have a barebox Release for September, I just released
barebox-2026.09.0.

This release fixes vulnerabilities in the FIT image code. Most important
one is fixed with "FIT: resolve FIT images case-sensitively". This
vulnerability allowed to trick barebox into verifying one FIT image node
while booting another. The issue showed up in a security audit and is
fixed in this release, stable updates for v2026.04 and v2026.08 will
follow shortly.

Another issue fixed is that a hash node in a FIT image defines its
algorithm. We used to look only at the first hash node. If that says
crc32 then barebox would use that to verify the image data. This is
changed to iterate over the available algos from strong to weak and
see if one of them can verify the image data. crc32, md5 and sha1 are
explicitly no longer allowed. Note that this vulnerability requires
a signed FIT image with crc32 as hashing algorithm, something a properly
signed FIT image shouldn't have, but as crc32 used to be the
pre-secure-boot standard, it could well have leaked into images.

On the brighter side this release adds support for the Novarq Tactical
1000 board which is a switch built around the Microchip LAN9696. Also
the PXA support has been revived, with the PXA3xx as a fully supported
device tree platform.

For the usual flow of patches that went into this release see below.

Have Fun!
  Sascha

----------------------------------------------------------------
Ahmad Fatoum (35):
      Documentation: security: mention long term stable release
      clk: tolerate clocks registered without a name
      efi: payload: gracefully handle OOM in initrd allocation
      ARM: lds: place EFI runtime code and data in separate PT_LOAD segments
      efi: loader: map code-type page allocations executable
      ARM: allow CONFIG_ARM_MMU_PERMISSIONS together with EFI_RUNTIME
      test: py: efiloader: test EFI ResetSystem from booted Linux
      bootm: remove previously deprecated CONFIG_BOOTM_OPTEE
      commands: cpuinfo: unify command description
      virtio_blk: write back the block cache before resetting the device
      efi: loader: don't truncate the status in efi_init_runtime_variable_s=
upported()
      efi: loader: fix sign of the error passed to ERR_PTR()
      efi: loader: disk: don't require block-size aligned I/O buffers
      efi: loader: select PRINTF_WCHAR
      boot: don't use the nfs:// mount path after freeing it
      net: dsa: don't index the port array one entry past its end
      libfile: advance offset in pread_full() on short reads
      libfile: allow fixup_path_case() to resolve directories
      fs: don't leak the parent path when openat() fails after the lookup
      ARM64: efi-header: declare the code section writable
      ARM64: lds: place relocation tables explicitly
      common: boards: qemu: read the command line from the cmdline fw_cfg k=
ey
      efi: loader: fix EFI_EXIT2 tracing an uninitialized status
      fs: efivarfs: initialize dummy data written on variable creation
      sandbox: actually build the assembly setjmp/longjmp/initjmp
      clk: k3: pll: initialize success flag in ti_pll_wait_for_lock
      ARM: i.MX9: initialize max_speed in imx9_cpu_speed_grade_hz
      defaultenv: don't pass environment path to zero env
      Makefile: fix security_%config configurator targets
      FIT: reject non-zero hashed-strings offset
      FIT: reject configuration properties that are not NUL-terminated
      crypto: ecdsa: validate the signature and digest lengths
      crypto: rsa: check the PKCS#1 v1.5 block header and minimum length
      Documentation: security: note FIT configuration choice being unsigned
      ARM64: clocksource: drop too early error message

Bruno Produit (Patch the Planet in collaboration with OpenAI) (1):
      FIT: resolve FIT images case-sensitively

Chali Anis (1):
      bcm283x: debug_ll: add RaspberryPi 4 PL011 UART support

Fabian Pflug (1):
      ARM: boards: i.MX93: use kernel dts

Michael Riesch (2):
      clang-format: do not allow short enums on a single line
      clang-format: align consecutive macros

Oleksij Rempel (8):
      ARM: introduce ARCH_MICROCHIP for ARM64 Microchip SoCs
      serial: atmel: add lan9696 (Microchip LAN969X) support
      clk: add Microchip LAN966X / LAN969X generic clock controller driver
      pinctrl: ocelot: port Microsemi/Microchip Ocelot pinctrl from Linux
      gpio: add Microchip SGPIO (serial GPIO) driver
      reset: add Microchip sparx5 / LAN969X / LAN966X switch reset driver
      spi: atmel-quadspi: add Microchip LAN966X / LAN969X support
      ARM: add Novarq Tactical 1000 board

Sascha Hauer (49):
      PBL: add pbl_sha256()
      ARM: pbl: add PBL support for crypto extensions
      input: gpio-keys: initialize the input value with the current gpioval
      net: designware: eqos: keep virtual RX buffer address around
      ARM: pxa: remove PXA25x and PXA27x support
      video: remove the PXA framebuffer driver
      ARM: cache: drive the XSC3 cache with the ARMv4 functions
      mci: pxamci: get the clock from the clk API
      pwm: pxa: get the clock from the clk API
      serial: pxa: get the clock from the clk API
      clk: pxa: add a device tree clock driver for PXA3xx
      mtd: nand: nand_mrvl_nfc: honour marvell,nand-keep-config
      mtd: nand: nand_mrvl_nfc: support the nand-controller bindings
      mtd: nand: mrvl_nfc: keep the ready latch across a STATUS command
      mtd: nand: mrvl_nfc: do not report a command timeout as an error
      mci: pxamci: probe from the device tree
      serial: pxa: add device tree support
      serial: pxa: provide the Linux console name
      gpio: pxa: add a driver and switch the architecture to GPIOLIB
      ARM: pxa: add DEBUG_LL support
      ARM: pxa: let the board select the SoC
      ARM: pxa: enable device tree support
      scripts: add pxa-image
      ARM: pxa: add a NAND first stage loader
      filetype: detect PXA3xx NTIM images
      ARM: pxa: add a barebox update handler for NAND
      clocksource: add a driver for the PXA OS timer and its watchdog
      ARM: pxa: move over to MULTIARCH
      ARM: pxa: reset straight away and without complaining
      ARM: pxa: add Raumfeld Speaker board support
      ARM: multi_v5_v6_defconfig: enable PXA support
      Release v2026.08.0: Move migration-master to release path
      migration guide: Create new migration guide for next release
      Merge branch 'for-next/efi'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/microchip'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/pbl-clocksource'
      Merge branch 'for-next/pbl-sha'
      Merge branch 'for-next/pxa'
      Merge branch 'for-next/xhci'
      Documentation: Officially accept GitHub pull requests
      FIT: Do not accept insecure hashing algos for signed images
      Merge remote-tracking branch 'github-ghsa-jhvm-7xq8-rvgm/advisory-fix=
-2'
      Merge remote-tracking branch 'github-ghsa-jhvm-7xq8-rvgm/advisory-fix=
-1'
      Merge remote-tracking branch 'github-ghsa-jhvm-7xq8-rvgm/advisory-fix=
-4'
      Merge remote-tracking branch 'github-ghsa-jhvm-7xq8-rvgm/advisory-fix=
-3'
      ci: pytest: test against Debian 13.7.0 image
      Release v2026.09.0

Stefan Kerkmann (6):
      RISC-V: setup_c: avoid clearing BSS twice
      ARM/ARM64/RISC-V: pbl: add constructor support
      clocksource: allow re-init for same clock
      drivers: arm_architected_timer: refactor for pbl compatibility
      ARM64: enable PBL_CLOCKSOURCE compatibility
      linux/iopoll: enable polled timeouts for PBL_CLOCKSOURCE

Stephano Cetola (7):
      usb: xhci: tolerate COMP_CTX_STATE in abort_td's final completion che=
ck
      usb: xhci: reset_ep: wait for real completion, not the caller's timeo=
ut
      usb: xhci: reset_ep: fix misaligned pointer in Set TR Dequeue Pointer
      usb: xhci: xhci_bulk_tx: re-fetch ep_ctx after resetting a halted end=
point
      usb: xhci: wait a real interval for interrupt endpoint transfers
      ARM: mmu64: fix arch_remap_range permission-strip order
      spi: rockchip: initialize bus_num to -1

Thomas Bonnefille (1):
      sandbox: enable keytoc in hosttools_defconfig

Ulrich =C3=96lmann (4):
      security: Kconfig.policy: fix typos
      commands: Kconfig: fix typo
      common: Sconfig: fix help text of BOOT_UNSIGNED_IMAGES
      common: Kconfig.debug: fix typos

bruno.produit@trailofbits.com (2):
      partitions: efi: reject partitions with negative size
      partitions: efi: reject partitions with negative size

zhengxiaojun (1):
      net: designware_eqs: set upper 32bit address for DMA descriptors to s=
upport 64-bit addressing

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



