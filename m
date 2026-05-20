Delivery-date: Wed, 20 May 2026 07:16:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPZIa-001l0L-2r
	for lore@lore.pengutronix.de;
	Wed, 20 May 2026 07:16:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPZIZ-0003hW-GP
	for lore@pengutronix.de; Wed, 20 May 2026 07:16:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0VKdWYak+eZeEyXaTyMY6yEo/jkMluXJ3tbzUwdYy7k=; b=U+jJ/cLoMKT0KwtH30GYqdd62x
	MK4rUD3PvENjlPGZeo78rBoeTEdfItu5vOF5UQKR5y+Y0vZusvzQvFqWS3E9hn3p+Ubh74xwWg+6u
	ILivoK7GwiG57I/KzropLJn3EikHZj5JA5Bns+HjgWYjbFYuZmRzrQ9TnoV4GJwFnmYyJUqpq3nMu
	6eh5etatRxfpDcqrIYRvv8Ll83NEc6QU6wg+pXe3ouWKX5ul+jNvVpHgFTRgd1GceigL5SsJ6k8cB
	QaXlY65g6n0AsLUu1u0usnR5xqS9f9aroWPEjmWoVLHC4d/HpaB9ba8gSk7rlrQQFr1InoXXFNTmV
	q2q9EbeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPZH9-00000003Xvu-3FxF;
	Wed, 20 May 2026 05:15:23 +0000
Received: from mail-dl1-x1234.google.com ([2607:f8b0:4864:20::1234])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPZH3-00000003XvC-2FWb
	for barebox@lists.infradead.org;
	Wed, 20 May 2026 05:15:21 +0000
Received: by mail-dl1-x1234.google.com with SMTP id a92af1059eb24-1329fc4bf77so1270488c88.1
        for <barebox@lists.infradead.org>; Tue, 19 May 2026 22:15:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779254116; cv=none;
        d=google.com; s=arc-20240605;
        b=F8EnlZglzVg0T4Jsk7zwrpMVXx15IVmjcy+WyvHD448Aecibb0y5RvQlR72bYk0iod
         krnc9cJM7qSUq8+x8xAb8xsTV5Ej6hY5gAil01hRdKnaY0iaUoM5262EoMEHz3mOKcpX
         U+sGCTBcYKgUBhOvvDNkfCwaHRiGhfTfLMzDzADa9AOB2l892/6flHNghEVMu4Pzdvs6
         cfeuLi07fpsRFW3jq8x4750aset6PrtkrWQ7yC70KUZJlXKypQeMMrj1G4DSEJtYuH1l
         3ceNU2Ng9LbwJgWoRsWaWmpK3rAdeD0/wGKJZDo145beAS1iz178X0JLq5uPPLGPzP6V
         AChA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=0VKdWYak+eZeEyXaTyMY6yEo/jkMluXJ3tbzUwdYy7k=;
        fh=QTl4aF0/iXkDY6Uf61Tk/V/7sh5GF70RwK/YHfa2l1k=;
        b=f85ztqrc2GOOkq3ty6JCZmICYDYvkDD03oXYqQ91ap2sAnU2xSqiS2CthAT79Z/iMG
         O6zKNPiMIne+uI8U9n0cbSUN7bc3gYQ0FoeeduUF14v9Kp9j6Kef/h6aihaSeHDM7feG
         IHm6fP/hR6GSyfK+mgPAwYAPkhU02GiAz0H3GCxWHXnEAuVByEHL4ZYWwFrF9CktYhgH
         mxiT1vr6l9eFTHMNur1JbXx2G3hF4PO11q4YbELFrzjx8fVxPT5BUFHKqttqHk0HflxY
         S2QcXSOzSX68JcCFay6nDIWNAXqOBAgbg2YD5o4Cc9sl3OyNk7Z9ESQITL+EkqJpgMYy
         sW0Q==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779254116; x=1779858916; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0VKdWYak+eZeEyXaTyMY6yEo/jkMluXJ3tbzUwdYy7k=;
        b=hx10bWK86oZ1JWVQfRPZaM29EFjKK+nFmKxfYY2YpCEdVD2t+NeOq1RgRuf8zixQoG
         sJqioMAyHJJ75eWQlkKM2KW+rLc8hz6bz0VtnGO3nNZ7FDbn0pu9o+CJ1qzm9XWsuJwk
         hIL0/J88Z4Z043mxRA2lzAR9QxijzhTtVnbuqDrVi70InSHd6Zh7hAxwyQxTz9FCfOah
         9YMMCpm8nA1+s7u6fgHRYB/8mJicmFLEz3HIRTjGkDTncnf8wzzb0mcI2usx4pSgPNYM
         8VhJRB/TiTe6B2GnfoR80OPGOer79kICZHwg4QL+CcPQ9R6flXu6AvVzT+lmelLWkbvq
         ggIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779254116; x=1779858916;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0VKdWYak+eZeEyXaTyMY6yEo/jkMluXJ3tbzUwdYy7k=;
        b=MdGCaWZlY68Mar6rYR+KuMkbT8FprkSFh6SR78WMg650x69dF45Efc4LLxCgTZE0vJ
         ffuUeuh5Vi73mUqvKMLFUK3UiPIrM7kPa2+Q+pPv/2Qa9efutacsoeUsZ1XzTDV1r+UP
         3jLzSOSiapYyc/mkFZF6kvOxyQOj7pSmqn1UIiFL1np0RtcTPU3IExnO7DOj7HBmzNzo
         tgqrvnJ9NiCfHBGnEpw/X5upSFZnlNLs4vFiyb+LbK6J9FrjK9hQdoOGHgYuMDNIgyUT
         ehSVmmQLimyVTpld+dZW+JSsl+8igR+6DobtBlwAHS5/qJ7LQXvNtOkxve8EjhCMeO13
         ghMg==
X-Gm-Message-State: AOJu0YzKjw/eUvtar6odE9oxakfw+NjRz77h3sIInjOUK95pk9KqfrJ0
	FdPVN6GvgU8GDAukAhur27s/vPZ43uEtzuv8BHE5rUyKs6PT9tBhdl6J5vJDWjDKKvZU7qRJck9
	87s/K6fykRomGsZ+iXoO7GXYeaIBQm7L7jDtflmD0pg==
X-Gm-Gg: Acq92OFc6umPkmaN40tGux538RdxiH19uk7wY2MxlN3/WctB+P8PP5WFKbx5Fjuljgz
	FjzOzgbQ2LDMjPWD+M/iFiJnUqXcFSLAxHTp9I7yncy9L0xEQNhHeSL8FnBPwp5ZUCvOg3bi4Qx
	1Eaw1ZB4HHh3ZZUrDhGkERmvpPkJgS4OvXq+U7K1RYew7eI6lC8hb2d2n5RshSNiqTN9IldJ/5S
	wSJGZIoclXk+iYV05YIyXRYtMwuCJSk8D/ULemEzdVMivgiKLmVAVpeCfGFy+vo9JkwHrg9UpRK
	CJZebw==
X-Received: by 2002:a05:7022:239d:b0:133:598c:2b45 with SMTP id
 a92af1059eb24-1350494e3f6mr9657943c88.31.1779254115954; Tue, 19 May 2026
 22:15:15 -0700 (PDT)
MIME-Version: 1.0
References: <E1wPQDN-0000000HNwn-1uvZ@pty.whiteo.stw.pengutronix.de>
In-Reply-To: <E1wPQDN-0000000HNwn-1uvZ@pty.whiteo.stw.pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 20 May 2026 08:15:04 +0300
X-Gm-Features: AVHnY4JAy7jEzmrlaKMyNNixlQ3iHo52USGiI51cG_1QmgmGtvpKayM-leW9Jt8
Message-ID: <CAP1tNvQNpjt4e2AhwTPoMKM0E9gra__3feFdczhvVWTc6e_4CA@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_221517_592808_9ED958FB 
X-CRM114-Status: GOOD (  39.34  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: v2026.05.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha.

The first launch of the new release has failed.
On the RK3568 platform, BL31 does not start. The size of the final
binary has decreased from 1.5 MB
to 930 KB - possibly due to the announced compression, but it seems to
me that this is too
large a reduction...
Are there any additional settings/calls required for custom boards in
the new release?

Thanks!

=D0=B2=D1=82, 19 =D0=BC=D0=B0=D1=8F 2026=E2=80=AF=D0=B3. =D0=B2 23:33, Sasc=
ha Hauer <s.hauer@pengutronix.de>:
>
> Hi All,
>
> Here comes the barebox May Release - barebox-2026.05.0.
>
> Our testing before releases has vastly improved over the last year(s)
> which I can see clearly in the amount of regression fixes we need to do
> before a release. This is good news as we detect and fix many
> regressions before they go into a release, but of course also means more
> work for us.
>
> This release has some improvements that have the potential to make
> the binaries smaller. builtin firmware files like TF-A or OP-TEE can now
> be compressed. Decompression can be painfully slow on ARM without MMU,
> so we also added very early MMU support to not hurt startup time too
> much. Both features have been driven by the Rockchip support, they are
> actively used there. Others would need additional SoC/board support to
> use them.
>
> Michael Tretter landed quite some SoCFPGA patches into this release,
> mostly early startup cleanups. Thanks for that, I hope there are fewer
> pitfalls in the code now.
>
> Other than that the usual patch flow, fixes and cleanups, see below for
> a full list.
>
> Have Fun!
>
>
> Migration notes for v2026.05.0
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
>
> CONFIG_CRYPTO_PUBLIC_KEYS
> -------------------------
>
> The syntax of keytoc keyspecs when fully provided via an environment vari=
able
> was slightly changed to allow any number of keyspecs to be provided via a=
n
> environment variable. Such environment variables are now split at spaces =
to be
> interpreted as multiple keyspecs. Any literal spaces and backslashes cont=
ained
> in such keyspecs need to be escaped with a backslash.
>
> This only applies to the form:
>
>   CONFIG_CRYPTO_PUBLIC_KEYS=3D"__ENV__A"
>
> While the interpretation of environment variables specifying hint or URI =
remains unchanged:
>
>   CONFIG_CRYPTO_PUBLIC_KEYS=3D"keyring=3Dkr:__ENV__B"
>
> Fit hints can no longer be specified by environment variables using the _=
_ENV__
> syntax. This functionality was broken since the last change to the keyspe=
c
> syntax in 2025.12.
>
> register_simplefb parameter
> ---------------------------
>
> The ``register_simplefb`` parameter on framebuffer devices has changed fr=
om
> boolean to an enum with values ``disabled``, ``enabled``, and ``stdout-pa=
th``.
>
> Scripts that **read** the parameter will now receive ``"disabled"`` or
> ``"enabled"`` instead of ``"0"`` or ``"1"``.
>
> Scripts that **write** ``"0"`` or ``"1"`` continue to work.
>
> ----------------------------------------------------------------
> Ahmad Fatoum (39):
>       state: suppress state overwrite warning for barebox DT
>       console: return characters written from console_putc
>       stddef: implement scoped_var for use in iterators
>       console: have for_each_console declare the iterator internally
>       console: make console_puts and friends accept a console_device
>       console: implement console_putc in terms of console_putbin
>       console: implement console_printf
>       commands: dmesg: give log_print a console_device parameter
>       video: simplefb: add r5g5b5a1 and x8b8g8r8 formats to SIMPLEFB_FORM=
ATS
>       video: simplefb-fixup: use shared SIMPLEFB_FORMATS table
>       parameter: allow enum params to be set by numeric index
>       video: simplefb-fixup: add stdout-path mode to register_simplefb pa=
ram
>       Documentation: add OpenBSD booting guide
>       gpio: have gpio_chip::set return an error code
>       gpiolib: propagate errors from gpiod_set_(raw_)?value
>       regmap: align dev_get_regmap error return with Linux
>       usb: dwc2: remove non-existent brcm,bcm2708-usb compatible
>       serial: introduce clk_get_enabled_for_console()
>       clk: ignore -EPROTO in clk_get_enabled_if_available
>       firmware: arm_scmi: clock: sync with Linux v7.0
>       environment: support DT-compatible-specific overlays
>       sandbox: add a match.of_compatible directory to exercise the featur=
e
>       efi: payload: image: exit if kernel image returned
>       efi: payload: bootm: fix potential double-unload for image
>       ppc: define sync_caches_for_execution only for MPC85xx
>       riscv: make header self-contained
>       mem: add flush callback to sync caches for execution
>       efi: gop: use screen_base directly instead of shadow buffer
>       kfifo: do not allocate a fifo smaller than 2 bytes
>       Documentation: user: use matrix.to instead of element.io link
>       ARM: dts: stm32mp: stm32mp135-dk: disable button on PA13
>       efi: payload: handle NULL return from loadable_view for ramdisk
>       fs: fix memory leak in automount_add()
>       mci: atmel_mci: fix mci_pbl breakage after mci_cmd::data change
>       ARM: i.MX8: esdctl: fix breakage for multi-SoC i.MX8M
>       startup: point out that /env/bin/init is legacy
>       doc: user: barebox: update typical barebox startup log
>       ci: pytest: bump Debian installer image to 13.5
>       serial: ns16550: add missing Linux console names
>
> Anees Rehman (1):
>       ARM: i.MX7: DDR size detection off-by-one in row_max
>
> Chali Anis (1):
>       usb: dwc2: host: initialize sub to fix maybe-uninitialized warning
>
> David Jander (3):
>       arm: mach-imx: esdctl.c: Add support for imx8mp inline ECC
>       drivers: ddr: imx8m: ddr_init.c: support ECC scrubbing
>       arm: boards: protonic-imx8ml: Add ECC + scrubbing
>
> Fabian Pflug (3):
>       ARM: i.MX: atf: pass scratch fdt if configured
>       arm: i.mx: fix error in field return configuration
>       doc: tlv: add images and custom format documentation
>
> Gavin Schenk (1):
>       docs: migration-guides: Fix typo
>
> Jonas Rebmann (9):
>       scripts: include: Add string_util.h for strsep_unescaped
>       crypto: keytoc: Improve readability
>       crypto: keytoc: Move special handling of legacy pkcs11 format to pa=
rse_keyspec
>       crypto: keytoc: Parse all keyspecs before writing to stdout
>       crypto: keytoc: Split env-provided full keyspec on spaces
>       Documentation: migration-guides: Document change in keyspec env var=
s
>       crypto: keytoc: Allow fields to start with underscore
>       crypto: keytoc: Deprecate fit-hint from env variable
>       crypto: ecc: Add Origin-URL to document kernel revision
>
> Lukas Wunner (1):
>       crypto: ecdsa - Harden against integer overflows in DIV_ROUND_UP()
>
> Michael Tretter (27):
>       mci: cadence: fix device tree override of host_caps
>       arm: socfpga: iossm: remove uninitialized variable
>       arm: socfpga: iossm: add version check
>       arm: socfpga: iossm: use local mb_ctrl variable
>       arm: socfpga: iossm: store size in bytes
>       arm: socfpga: iossm: refactor io96b_mb_init
>       arm: socfpga: iossm: refactor return value handling
>       arm: socfgpa: iossm: extract poll_bist_mem_init_status
>       arm: socfgpa: iossm: extract initialization of one interface
>       arm: socfpga: iossm: add memory initialization with inline ecc
>       arm: socfpga: iossm: add support for mailbox v1
>       arm: socfpga: iossm: make io96b_cal_status static
>       arm: socfpga: iossm: use readl_poll_timeout
>       arm: socfpga: iossm: remove duplicate read of response status
>       arm: socfpga: iossm: remove multiple read of status_addr
>       arm: socfpga: iossm: change io96b_csr_addr to void *
>       arm: socfpga: iossm: extract io96b_mb_init_instance
>       arm: socfpga: agilex5: cleanup TF-A loading
>       arm: socfgpa: agilex5: remove unused memsize
>       arm: socfpga: agilex5: configure firewall with base and size
>       arm: socfpga: agilex5: fix read of memory limit
>       arm: socfpga: agilex5: fix SDRAM size calculation
>       arm: socfpga: agilex5: remove unused declarations
>       arm: socfpga: agilex5: read SDRAM limits from firewall
>       arm: socfpga: agilex5: add agilex5_barebox_entry
>       arm: socfpga: agilex5: add explicit unreachable after TF-A load
>       Documentation: rk35xx: add secure boot documentation
>
> Sascha Hauer (50):
>       ARM: socfpga: Drop unnecessary select USE_COMPRESSED_DTB
>       ARM: radxa-rock5: Use compressed DTB
>       ARM: Rockchip: Simplify retrieval of SoC specific addresses
>       firmware: Move firmware assembly generation to scripts/gen-fw-s
>       firmware: Use struct fwobj for get_builtin_firmware APIs
>       ARM: radxa-rock5t: Disable pcie3x2
>       optee: Explicitly ignore OPTEE_RPC_CMD_RPMB_*
>       pmdomain: rockchip: inform about missing subdomain support when in =
use
>       nvmem: rockchip-otp: implement SoC UID reading
>       ARM: rockchip: atf: add missing newline in message
>       firmware: Add compressed firmware symbols for PBL
>       firmware: Add fwobj_uncompress() for decompressing firmware in PBL
>       ARM: Rockchip: Use compressed OP-TEE binary
>       ARM: Rockchip: Use compressed TF-A binary
>       optee: skip registration of already known TEE bus devices
>       Merge branch 'for-next/compressed-firmware' into for-next/rockchip
>       ARM: rockchip: dmc: rework DRAM functions
>       ARM: rockchip: atf: make all memory banks available
>       ARM: rockchip: atf: add OP-TEE fdt creation function for all SoCs
>       ARM: Rockchip: Drop rk3xxx_atf_load_bl31()
>       ARM: rockchip: separate physical DRAM start from usable start
>       ARM: rockchip: atf: enable MMU in PBL
>       ARM: tqmls1046a: Add Arkona AT300 support
>       v2026.04.0: Move migration guide to correct place
>       Merge branch 'for-next/arm'
>       Merge branch 'for-next/compressed-firmware'
>       Merge branch 'for-next/imx'
>       Merge branch 'for-next/keys'
>       Merge branch 'for-next/mci'
>       Merge branch 'for-next/misc'
>       Merge branch 'for-next/optee'
>       Merge branch 'for-next/rockchip'
>       Merge branch 'for-next/socfpga'
>       Merge branch 'for-next/usb'
>       fs: set linux.bootargs.rootopts only when existing
>       ARM: rockchip: atf: only set OP-TEE address when starting it
>       ARM: rockchip: dmc: substract ROCKCHIP_DRAM_TFA_CARVE_OUT from memo=
ry regions
>       ARM: rockchip: atf: pass correct memsize to mmu_early_enable()
>       ARM: fix wrong calculation of barebox base
>       riscv: fix wrong calculation of barebox base
>       ARM: k3: am62x: move stack to end of SRAM
>       ARM: k3: am62x: make more space for r5 barebox binary
>       ARM: k3: k3-r5_defconfig: limit image size to maximum available spa=
ce
>       PBL: add common define for early malloc size
>       pbl: cleanup early malloc
>       ARM: rockchip: initialize PBL malloc
>       pbl: mips/riscv compile fixes
>       fs: jffs2: zero initialize allocated inode
>       fs: ubifs: zero initialize allocated inode
>       Release v2026.05.0
>
> Stefan Berger (1):
>       crypto: ecc - Fix off-by-one missing to clear most significant digi=
t
>
> Steffen Trumtrar (8):
>       ARM: i.MX: esdctl: fix spelling of ad(d)ress
>       mci: add data segment to mci_cmd
>       mci: sdhci: add sdhci_send_cmd
>       mci: sdhci: add set_uhs_signaling callback
>       mci: cadence: remove driver
>       mci: cadence: add support for version 6
>       ARM: socfpga-agilex5_defconfig: enable cadence-sdhci
>       scripts: ls1046a-rcwtool: add functions to generate RCW
>
> Thorsten Blum (1):
>       crypto: ecc - Streamline alloc_point and remove {alloc,free}_digits=
_space
>
> --
> Pengutronix e.K.                           |                             =
|
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  =
|
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    =
|
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|
>


