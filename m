Delivery-date: Tue, 30 Sep 2025 15:11:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3a8g-002mvc-37
	for lore@lore.pengutronix.de;
	Tue, 30 Sep 2025 15:11:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3a8f-0007NZ-Lb
	for lore@pengutronix.de; Tue, 30 Sep 2025 15:11:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rbMTg9AB16JkuN0S24o/LfWPdaB8uoU5Bd9tg9xcKQk=; b=LqvhddFf4PcJZCPCV/LnFPup3u
	/GOoc+e/daaA6Hf8A42IpAU/73v1aO8YdseG8/J0rLm3JY6glmQDfb17Mq+h4+vPOHVhgW5gynd5y
	uX3s8AgsUvwV3eYacuXQQNk9CQwXmY6f3juXDslaaUOyMItkNaS8RufVp+yrh9XOOCF6ceqZLLJ54
	nLEy1qI+Eopy8Vy7A0C7r4aBUmyOlbTzzzR5a/TsoS3cOf3kv4/Y8TB6vwczNR55lXf3La1hYNhUv
	X5EgLSUnMtzusEuynLSQKVTt9eBQ7eYI5/Z1K5Vb8vwdS4MxPdRraI/+KAW0oS3HTfoYnXyBqmgbD
	3rSVFwWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3a84-00000005MKK-46J1;
	Tue, 30 Sep 2025 13:10:52 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3a82-00000005MJ5-3Jl0
	for barebox@lists.infradead.org;
	Tue, 30 Sep 2025 13:10:52 +0000
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-273a0aeed57so79207875ad.1
        for <barebox@lists.infradead.org>; Tue, 30 Sep 2025 06:10:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759237850; x=1759842650; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rbMTg9AB16JkuN0S24o/LfWPdaB8uoU5Bd9tg9xcKQk=;
        b=JDpU/LxuZO1zW11FvyMVIP0OF/94BiEK6+99fhxj0T5PMdzytC3H0ree1/k8r5YRdL
         prhO3STlGqgjSIvUHo7ihWH/HGFx4OWmg9BmrRapwfw9VkaKFffGyNkSsqSx49sbUQrl
         lk+8JwvqMY1fLQdhzqAR1Oz3F576ARhJGtA9DKsSO+TgiXSCjmCJ2wvzA3V85jXvoE0+
         jwjzVapWK7faRb7jdVSc6SZy5yfBxEfrSDhOIFEcyid1L5t8BanuHJ9ykrJvJDgVdvdd
         oCTcliw0IsBBJ5f4GnfZocaNx/C+cJsC0i4/L4Gq5T3KfPJfegiXjwhBXxcPG1peMVju
         vRhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759237850; x=1759842650;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rbMTg9AB16JkuN0S24o/LfWPdaB8uoU5Bd9tg9xcKQk=;
        b=Ycxs/ry3A9Q4YVPRy0ecYx1Rkn5omgiioB5RC7Av3CpM4zwF/O6hpvKQdhT73EW3NQ
         yzGx/2QgVVyewAF03WqSjILB5XC0AU2KK4m6h7P2uFg5GHNkdrIZA5kRuFkTepy+DG+5
         EhMdnOWFXp1gDHMpumi8LFiukfm06FfrXQEnQ9uo2aIG8NVHM6puOH/f+d/CvoBE2KA0
         BVqKfs9I0QbA3apGugxiL/eBLzROkiAw2HtZCJjMPre46vkT+chXfkl0v+UNDfrRO6s7
         CYtl6YE5Blf9OZOE33lv5/T8qdI930qtwFZmSAbGdNmvjyYottBIE3pD2QX1ZHwuD3PN
         7N0A==
X-Gm-Message-State: AOJu0YzaW/WK96Whznj6vTiq06zfQ+pRd8TShvMS/5uNgK0cDfW54v4O
	uM0ACSGxrSCxWpki9OKJmaG/lNIbKS1otUkIWGgoW/dd+POdKsuQhYTOvbDFFB/z2pZObAd60Wg
	cv2j3fMqh0dgfbAbMjdj536mD3J6wlJu820Y3
X-Gm-Gg: ASbGnctgBnDSke1X54k2nONW/o3f/ApXRwo00KWwgWs77hFiDnCY0Nc8ToTVKnZh/fz
	I7eTu/PgacLp07WuTl5IMpoC+GYJr5OcXqZy1jDne7XQmxTaors/rbfg37H0RnHRxNm4l44jeVv
	S/f0tig5F0ahWIySddLSOEq7h4rMsChIRBjkd7OHjC3NEY4vrhBIq2CcnlfujwZ8564CNYiSxd0
	RBkKukGUFJ87Gy6Gq7sFEXvIEwNrBXl
X-Google-Smtp-Source: AGHT+IHZPhaqdyKPcEMjHHov1XpmhDTBOGWfc7eLukBgFlYPOgqewNCwwhBWKBWV24dTPbvUwPl6rD/g9fngzEAKERw=
X-Received: by 2002:a17:903:13d0:b0:269:b2e5:900d with SMTP id
 d9443c01a7336-28d170f197cmr58533305ad.5.1759237849577; Tue, 30 Sep 2025
 06:10:49 -0700 (PDT)
MIME-Version: 1.0
References: <aNugWfoJR_2AirEx@pengutronix.de>
In-Reply-To: <aNugWfoJR_2AirEx@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 30 Sep 2025 16:10:36 +0300
X-Gm-Features: AS18NWA6otxCxx0cv3cMs36HgybCj2hoetpJIWaU1PrKKlUCtN1MklLpWp4tIlQ
Message-ID: <CAP1tNvTR9SkajSZaeh2Jsb_FNu=w87Et5oAcc1=FoZiK=_-rCQ@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250930_061050_859301_A178BA83 
X-CRM114-Status: GOOD (  33.26  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: v2025.09.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello.

shc@shc /home/ARM64/barebox $ LANG=3Den PATH=3D$PATH:/usr/local/usr64/bin
make ARCH=3Darm64 CROSS_COMPILE=3Daarch64-buildroot-linux-gnu- -j25
CREATE  include/config.h
HOSTCC  scripts/rkimage
scripts/rkimage.c:16:10: fatal error: openssl/core_names.h: No such
file or directory
16 | #include <openssl/core_names.h>
|          ^~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make[1]: *** [scripts/Makefile.host:107: scripts/rkimage] Error 1
make: *** [Makefile:1095: scripts] Error 2

=D0=B2=D1=82, 30 =D1=81=D0=B5=D0=BD=D1=82. 2025=E2=80=AF=D0=B3. =D0=B2 12:1=
8, Sascha Hauer <s.hauer@pengutronix.de>:
>
> Hi All,
>
> I am happy to release barebox-2025.09.0.
>
> This relase brings us a bunch of new stuff. First of all there is
> SoCFPGA Agilex5 support and also Rockchip RK3576 support. Ahmad has
> introduced bfetch support, a nice eyecandy which shows information about
> the currently running barebox similar to neofetch. To get there Ahmad
> also introduced structered I/O support which allows us to capture
> information from command output in a machine readable way. We are not
> there yet, but in future this could be used to pass objects between
> commands.  Along with the RK3576 support Michael has also upstreamed
> support for booting signed Rockchip images so that we can now offer
> secure boot for Rockchip. The nvmem layer now has nvmem-layout support.
> device tree overlay files can now be integrated into FIT images so
> that they can now be signed along with the FIT image.
>
> As usual there are several fixes and improvements all over the place,
> see below for a full list of patches that went into this release.
>
> Have Fun!
>   Sascha
>
> Ahmad Fatoum (127):
>       test: update requirement to Labgrid v25.0
>       test: drop now superfluous extra_args
>       test: document pytest --env and --fs options
>       include: linux/iopoll.h: evaluate timeout_us argument only once
>       mci: bcm2835: allow core to request timeouts longer than 100ms
>       mci: sdhci: use sdhci_compute_timeout in sdhci_wait_idle[_data]
>       mci: sdhci: reduce duplication in sdhci_wait_idle[_data]
>       test: add support for pytest --graphic
>       test: add --bootarg option when running under QEMU
>       ci: pytest: print labgrid console output inline
>       common: prefix panic with PANIC:
>       ARM: interrupts: unify panic output on unhandled exception
>       mmu: define MAP_WRITECOMBINE for all architectures
>       ppc: implement sync_caches_for_execution
>       MIPS: implement sync_caches_for_execution
>       openrisc: implement sync_caches_for_execution
>       video: remap framebuffer as writecombine if possible
>       ARM: mmu: introduce new maptype_t type
>       ARM: mmu: compare only lowest 16 bits for map type
>       ARM: mmu: prefix pre-MMU functions with early_
>       ARM: mmu: panic when alloc_pte fails
>       ARM: mmu32: introduce new mmu_addr_t type
>       ARM: mmu: provide zero page control in PBL
>       ARM: mmu: print map type as string
>       ARM: mmu64: rename create_sections to __arch_remap_range
>       ARM: mmu: move get_pte_attrs call into __arch_remap_range
>       ARM: mmu64: print debug message in __arch_remap_range
>       ARM: mmu: make force_pages a maptype_t flag
>       ARM: mmu64: move granule_size to the top of the file
>       ARM: mmu64: fix benign off-by-one in flush_cacheable_pages
>       ARM: mmu64: make flush_cacheable_pages less 64-bit dependent
>       ARM: mmu64: allow asserting last level page in __find_pte
>       ARM: mmu64: rename __find_pte to find_pte
>       ARM: mmu32: rework find_pte to have ARM64 find_pte semantics
>       ARM: mmu64: factor out flush_cacheable_pages for reusability
>       ARM: mmu32: flush only cacheable pages on remap
>       ARM: mmu32: factor out set_pte_range helper
>       ARM: mmu64: factor out set_pte_range helper
>       ARM: mmu: define dma_alloc_writecombine in common code
>       serial: cadence: support console=3D and earlycon=3D fixups
>       ARM: zynq: drop the board-specific environment
>       kbuild: drop ineffectual variable assignments in Makefile.dtbs
>       hardening: make stack guard page the default
>       hardening: update text after addition of CONFIG_ARM_MMU_PERMISSIONS
>       tee: optee: merge tee/optee.h and ARM asm/optee.h
>       tee: optee: skip optee node fixup if method is NULL
>       gpio: dw: support numbering via aliases
>       gpio: dw: make deep probe compatible
>       commands: iomem: add JSON output
>       commands: introduce new security command group
>       security: password: make PBKDF2 the default instead of MD5
>       security: add new top-level menu
>       commands: move login/passwd into security section
>       security: mark weaker passwords hashing algorithms insecure
>       scripts: Makefile.pic: define __NO_FORTIFY without value
>       ARM64: configs: multi_v8: disable layerscape temporarily
>       ARM: configs: multi: configure CONFIG_CONSOLE_ACTIVATE_ALL_FALLBACK
>       ARM64: configs: add multi_v8_efi_defconfig
>       driver: move device name definition into device.h
>       driver: introduce common struct bobject
>       lib: param: rename dev_remove_param to param_remove
>       param: implement dev_remove_parameters using param_remove
>       lib: param: add dev_for_each_param helpers
>       driver: initialize device parameters as part of bobject
>       param: operate on bobjects instead of full devices
>       commands: version: print value of CONFIG_NAME
>       treewide: populate CONFIG_NAME for all configs in-tree
>       test: py: change barebox_config from set to dict
>       test: add heuristic for guessing labgrid environment YAML
>       usb: drop dead iSerialNumber parameter addition
>       drivers: use dev_add_param_uint32_fixed for IDs
>       param: make bobject_add_param_fixed variadic
>       param: handle NULL gracefully in bobject_get_param
>       stringlist: implement string_list_empty
>       mtd: add devices to new mtd class
>       nvmem: add devices to new nvmem class
>       nvmem: export functions to query NVMEM size
>       video: add devices to new fb class
>       pmdomain: add easy way to check for provider support
>       bbu: add easy way to check for existent providers
>       firmware: add easy way to check for existent providers
>       rtc: export rtc_class in header
>       driver: featctrl: export of_feature_controllers
>       net: dsa: export dsa_switch_list
>       usb: export usb_host_list
>       pstore: export pstore_is_ready
>       pinctrl: export pinctrl_list
>       driver: bus: export get_bus_by_name
>       fimware: arm_scmi: export scmi_list
>       block: define BLK_TYPE_COUNT as last enum blk_type value
>       hush: implement PROMPT_COMMAND
>       common: introduce structured I/O
>       ARM: cpuinfo: support structio output
>       commands: uptime: enable structured I/O
>       string: implement strv_length helper
>       ARM: psci: client: add PSCI version/method parameters
>       net: move netmask_to_prefix into header
>       optee: add revision info to tee devinfo output
>       tee: enable structured I/O in devinfo handler
>       security: blobgen: add easy way to check for existent providers
>       clk: implement clk_have_nonfixed_providers
>       commands: introduce bfetch command
>       configs: enable bfetch in some popular defconfigs
>       hush: structio: silence missing command error message
>       commands: introduce new security command group
>       security: password: make PBKDF2 the default instead of MD5
>       commands: move login/passwd into security section
>       common: fix outdated barebox_set_hostname comment
>       RISC-V: virt: riscvemu: set better hostname/model
>       netconsole: bump down ip/port not set messages to info
>       RISC-V: cpuinfo: enable structured I/O
>       commands: bfetch: add RISC-V cpu/firmware info
>       RISC-V: riscvemu: update configs for web demo
>       RISC-V: rv64i_defconfig: enable Virt I/O
>       poller: allow suppressing overtime warnings
>       common: panic: add new CONFIG_PANIC_TRAP option
>       fuzz: add test harness for fuzzing nul-terminated strings
>       test: self: jwt: add dedicated option for development_rsa2048.pem
>       security: jwt: add simple fuzzer
>       state: do not panic on flipped bits in on-disk sizes
>       state: dtb: enforce minimum FDT length
>       ARM: cpu: allow selecting CPU_V7/CPU_V8 directly
>       checkpatch: drop ENOSYS warning
>       crypto: ecc: drop unused curve25519 definitions
>       test: emulate.pl: remove in favor of pytest
>       common: misc: reduce duplication in strerror
>       common: binfmt: replace generic ENOENT message with "Command not fo=
und"
>
> Alexander Kurz (1):
>       ARM i.MX: fix iMX6SL detection
>
> Alexander Shiyan (2):
>       arm: bootm-fip: remove redundant variable declaration
>       Revert "ARM: at91: choose proper parent for both MCI clocks"
>
> Antony Pavlov (4):
>       include/stdio.h: drop serial_printf() declaration
>       include/scsi.h: drop unused declarations
>       include/of.h: drop of_parse_dtb() declaration
>       include/driver.h: drop unused declarations
>
> Bastian Krause (1):
>       ARM: riotboard: add habv4-imx6-gencsf.h to flash header
>
> Bo Sun (5):
>       of: platform: rename parameter 'bus' to 'node' in of_platform_bus_c=
reate()
>       driver: clean up comment formatting and spacing
>       miitool: clarify help text for default behavior and -s option
>       of: base: fix of_match_node function documentation
>       driver: convert struct device comments to kernel-doc style
>
> Chali Anis (9):
>       clk: clkdev: fix format security.
>       arm: configs: raspberry-pi: add support for fit image.
>       efi: devicepath: add support for mbr partition.
>       efi: payload: early-mem: add memory type on early mem allocation
>       arm: crypto: add a check for crypto extensions support.
>       clk: clkdev: fix format security.
>       drivers: dma: refactor: rename dma_ops to dma_device_ops.
>       riscv: dma: rename dma_ops to dma_map_ops.
>       video: efi-gop: remove dependency to x86.
>
> David Jander (9):
>       clk: rockchip: clk-pll.c: Fix macro name confusion
>       clk: rockchip: Introduce rockchip_grf_type enum from kernel driver
>       ARM: Initial support for Rockchip RK3576
>       arm: dts: Add barebox specific RK3576.dtsi
>       aiodev: rockchip_saradc.c: Add support for RK3576
>       gpio: gpio-rockchip.c: Add support for GPIO_TYPE_V2_2
>       arm: dts: rk3576.dtsi: Add gpio aliases
>       phy: phy-rockchip-inno-usb2.c: Fix crash if phyclk isn't found
>       arm: boards: Add support for Protonic PRTPUK board
>
> Gwenhael Goavec-Merou (2):
>       ARM: zynq: zed: remove early clock config causing hang
>       ARM: zynq: zed: add SDIO clk frequency configuration
>
> Ivaylo Ivanov (1):
>       clocksource: arm_architected_timer: support clock-frequency
>
> Marco Felsch (29):
>       block: follow links before check if cdev_is_block_partition
>       keytoc: mark keyspec user input as readonly
>       keytoc: add support to handle single env keyspec
>       of: sync of_*_phandle_with_args with Linux
>       of: base: add of_parse_phandle_with_optional_args()
>       of: device: Export of_device_make_bus_id()
>       nvmem: core: fix nvmem_register error path
>       crypto: add examples to CRYPTO_PUBLIC_KEYS
>       nvmem: core: sync with Linux
>       nvmem: core: expose nvmem cells as cdev
>       nvmem: core: allow single and dynamic device ids
>       eeprom: at24: fix device name handling
>       nvmem: core: create a header for internal sharing
>       FIT: fix missing free in fit_open error path
>       FIT: fit_open_configuration: add match function support
>       of: overlay: make the pattern match function more generic
>       of: overlay: make search dir more generic
>       of: overlay: refactor of_overlay_global_fixup
>       FIT: make fit_config_verify_signature public
>       of: overlay: add FIT image overlay support
>       of: overlay: replace filename with an more unique name
>       of: overlay: add more debugging prints to of_overlay_matches_filter
>       FIT: add support to cache opened fit images
>       nvmem: core: add nvmem-layout support
>       nvmem: core: add an index parameter to the cell
>       nvmem: core: add per-cell post processing
>       nvmem: core: add cell based fixup logic
>       nvmem: core: provide own priv pointer in post process callback
>       nvmem: core: drop global cell_post_process
>
> Michael Tretter (11):
>       scripts: rockchip: use correct header size
>       scripts: rockchip: rename hashtype to flags
>       scripts: rockchip: add helper for updating hash
>       scripts: rockchip: rename NEWIDB_MAGIC to NEWIDB_MAGIC_RKNS
>       scripts: rockchip: support RKSS images
>       commands: mmc_extcsd: fix calculation of RPMB size
>       filetype: detect Rockchip signed images
>       ARM: rockchip: bbu: accept signed images
>       ARM: rockchip: bootm: don't propagate error from register_image_han=
dler
>       ARM: rockchip: bootm: accept signed images
>       scripts: rockchip: implement image signing
>
> Sascha Hauer (43):
>       dts: update to v6.16-rc5
>       dts: update to v6.16-rc6
>       dts: update to v6.16-rc7
>       dts: update to v6.16
>       dts: update to v6.17-rc1
>       Merge branch 'for-next/security' into for-next/bfetch
>       ARM: k3: AM62l3-EVM: add usb0
>       ARM: k3: quote PEM files
>       ARM: k3: allow to pass custom signing keys
>       k3img: handle PKCS#11 uris
>       dts: update to v6.17-rc2
>       Merge branch 'master' into HEAD
>       dts: update to v6.17-rc3
>       Merge branch 'for-next/security' into HEAD
>       crypto: drop BOOTM_FITIMAGE_PUBKEY
>       crypto: Allow to include development keys in build
>       crypto: include public key hashes
>       commands: add keys command
>       fit: consistently pass around fit_handle
>       fit: improve diagnostics
>       ARM: K3: Update yaml files for AM62L
>       ARM: k3: use newer ti-linux-firmware
>       ARM: k3: add syscon-reboot-mode
>       public-keys: store pointers in linker list
>       Merge branch 'for-next/arm'
>       Merge branch 'for-next/bfetch'
>       Merge branch 'for-next/dts'
>       Merge branch 'for-next/fit-overlay'
>       Merge branch 'for-next/k3'
>       Merge branch 'for-next/keys'
>       Merge branch 'for-next/misc'
>       Merge branch 'for-next/mmc'
>       Merge branch 'for-next/nvmem-layout'
>       Merge branch 'for-next/rockchip'
>       Merge branch 'for-next/socfpga'
>       Merge branch 'for-next/sync-caches'
>       Merge branch 'for-next/test'
>       Merge branch 'for-next/usbnet'
>       treewide: drop useless casting to void * in of_device_id
>       crc-itu-t: fix typo in CRC ITU-T polynomial comment
>       firmware: handle firmware files being links correctly
>       lib: add crc16 support
>       nvmem: add support for Atmel sha204(a)
>
> Stefan Kerkmann (9):
>       ARM: i.MX: ele: make ele_life_cycle public
>       hab: writing the same srk hash is not an error
>       usb: dwc3: remove CONFIG_USB_ROLE_SWITCH in condition
>       net: usb: r8152: disable rx aggregation
>       net: usb: r8152: print the detected version
>       net: usb: usbnet: calm noisy debug calls
>       net: usb: add debug call in the receive path
>       net: usb: ax88179_178a: align rx_fixup with upstream
>       net: usb: ax88179_178a: align reset with upstream
>
> Stefano Manni (1):
>       mtd: nand: add manufacturer ISSI
>
> Steffen Trumtrar (11):
>       ARM: socfpga: kconfig: sort entries
>       mach: socfpga: debug_ll: rework putc_ll
>       reset: reset-socfpga: build only for 32-bit socfpga
>       arm: socfgpa: add support for SoCFPGA Agilex5
>       clk: support init->parent_data
>       linux: clk: add fw_name
>       clk: socfpga: add agilex5 clock support
>       net: phy: add Analog Devices ADIN1300
>       net: add support for Designware XGMAC (10gb) ethernet
>       ARM: socfpga: add Arrow AXE5 Agilex5 board
>       spi: mvebu: move timekeeping out of hot path
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


