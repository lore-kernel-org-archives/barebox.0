Delivery-date: Thu, 20 Mar 2025 10:22:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvC77-001pgd-0i
	for lore@lore.pengutronix.de;
	Thu, 20 Mar 2025 10:22:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvC75-0001EC-J1
	for lore@pengutronix.de; Thu, 20 Mar 2025 10:22:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NH83CzBlH8nIxFmrCju31scsTrSp3QXT5ZNI9EfFolI=; b=I0a0GqMbWKAuokTIRtl6ZNaEjV
	O671UFFPVH/Idn10X0pv6PY8sp9ZUBjN0fiWAZguJah6iXCL6ZT8E9ruZxbBF/2ThQ5bYkQtUFZX9
	IL3PF7vpDIQqXcQ4VlJYFhaK6F4ynuoIgsgUxEmKlc/pdRDWQNCbNvpFQMJrrB9fpLZmncjGTzJju
	opj6/6Hpnqw0ctyy7XCBQ0+Dxl/KCHvAB0CEi1+WD30Iz/s2fj6TtM+RCA0CzuVg5TrPhFIUV6gYB
	G8MQkXPzryAVv0E0lXCPksYWrMwqHF+k21+ciNDQ1HhZr0ZfNg/WektA+0aZtSaOfiPWOjYpIeZII
	Tk40hyxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvC6X-0000000Bg2J-1oHS;
	Thu, 20 Mar 2025 09:22:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvC6T-0000000Bg1d-3GIU
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 09:22:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tvC6S-00014J-1C; Thu, 20 Mar 2025 10:22:16 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tvC6R-000jeR-1L;
	Thu, 20 Mar 2025 10:22:15 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tvC6R-006ggL-2K;
	Thu, 20 Mar 2025 10:22:15 +0100
Date: Thu, 20 Mar 2025 10:22:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <Z9veR3N6puizrAT8@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250320_022217_975508_602DF0D0 
X-CRM114-Status: GOOD (  24.58  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: v2025.03.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi All,

I am happy to announce barebox-2025.02.0.

This release introduces support for Sunxi SoCs. barebox can now run on a
Pine64+ as a generic barebox-dt-2nd.img image. Thanks Jules for working
on this.

MMCs are now much faster to erase, reportedly up 60x faster.

Linux now has support for the fixed partition device tree binding for
block devices. barebox had the same for a long time, but differently. In
barebox we register both partitions from the partition table and the
device tree. In Linux both are used exclusively, once a device tree
partitioning is found the partition table on the disk is ignored. For
this reason barebox now uses barebox,fixed-partitions as compatible.

The i.MX HAB support now supports revoking keys and burning the field
return fuse.

The K3 support continues to evolve as well, with this release we can
boot from eMMC boot partitions and fully bootstrap the SoC over USB DFU.

One nice thing worth noting is the support for overriding boot
artifacts. With this we can boot regular bootspec entries or scripts,
but replace Kernel, device tree or initrd with one specified on the
command line. This is good for "injecting" an artifact into the regular
boot flow.

See below for a full list of changes for this release.

Have Fun!
 Sascha

----------------------------------------------------------------
Ahmad Fatoum (52):
      commands: readlink: print to stdout if variable is missing
      startup: add new AUTOBOOT_HALT state
      kbuild: allow overriding mkimage
      kbuild: allow overriding compression tools
      cdev: merge identical partitions despite DEVFS_PARTITION_CAN_OVERLAP
      cmdlinepart: refuse partitions with empty name
      bootm: change default verification mode from hash to available
      FIT: factor out fit_fdt_is_compatible for readability
      FIT: do not decompress device trees to find compatible
      bootm: add helper functions for checking if FIT image is used
      boot: move global.linux.bootargs.dyn. to common code
      blspec: don't clobber bootm.image on boot attempt
      fastboot: drop useless bootm.image clobber
      bootm: don't clobber global.bootm. variables after script boot fails
      bootm: retire bootm_has_initrd
      commands: boot: add support for overriding boot artifacts
      mount: support specifying mount -o options more than once
      lib: add scatterlist abstraction
      virtio: replace virtio_sg with common scatterlist
      virtio: add token data parameter to virtqueue_add_sgs
      boot: omit menu freeing loop when CONFIG_MENU is disabled
      fs: move fs_driver open/close into struct file_operations
      fs: remove unused members in struct file_operations
      fs: drop unused FS_DRIVER_NO_DEV flag
      nfs: add $global.net.nfsport override
      usb: dwc3: fix use of bool for prompt choice
      kbuild: export HOSTPKG_CONFIG like Linux does
      sandbox: make CC_HAS_LINUX_I386_SUPPORT depend on GCC
      Makefile: clang: fix typo in -Wno-typdef-redefinition flag
      kbuild: actually include Makefile.clang for clang builds
      Makefile: clang: fail non-sandbox LLVM builds early
      mci: core: import Linux logic for higher preferred erase size
      mci: core: reset ERASE_GRP_DEF on startup
      of: factor out of_node_is_fixed_partitions check
      of: of_path: support barebox,fixed-partitions
      ARM: IMX8MP: var-dart-dt8mcustomboard.dts: use new-style partition binding
      ARM: dts: prefix all non-MTD fixed-partitions with barebox,
      of: partition: refactor of_partition_binding checks into switch
      of: partition: add Linux CONFIG_OF_PARTITION-compatible adaptive fixup mode
      sandbox: configs: disable CONFIG_NET_NETCONSOLE in sandbox_defconfig
      malloc: define a maximum malloc size
      tlsf: fail allocations exceeding MALLOC_MAX_SIZE
      dlmalloc: fail allocations exceeding MALLOC_MAX_SIZE
      sandbox: libc_malloc: fail allocations exceeding MALLOC_MAX_SIZE
      dummy_malloc: fail allocations exceeding MALLOC_MAX_SIZE
      test: self: malloc: adapt to addition of MALLOC_MAX_SIZE
      sandbox: libc_malloc: multiply, not add, args in calloc overflow check
      nfs: rename global.net.nfsport to global.nfs.port
      Documentation: user: networking: fix trivial typo
      FIT: early exit if digest fails
      net: am65-cpsw-nuss: fix out-of-bounds access
      partition: fix reference to wrong cdev in warning message

Alexander Shiyan (9):
      phy: rockchip-inno-usb2: Add support for RK3588 PHY
      phy: rockchip: add usbdp combo phy driver
      aiodev: rockchip_saradc: Add reset control support
      aiodev: rockchip_saradc: Prepare driver to add support for other SARADC variants
      aiodev: rockchip_saradc: Add support for RK3588
      gpio: add driver for SAMA5D2 PIOBU pins
      arch: treewide: Cleanup generated devicetree overlay objects
      i2c: Remove dead link to struct i2c_algorithm
      i2c: rockchip: Replace driver from kernel repository

Bastian Krause (3):
      mfd: rn5t568: add priority to reset_source_set_device()
      ARM: i.MX9: tqma93xx: remove mach/imx/romapi.h include
      commands: fix typo in CMD_AUTOMOUNT

David Dgien (1):
      kbuild: Use uname for BAREBOX_COMPILE_HOST

Jonas Rebmann (3):
      ci: add workflow for coverity analysis
      ci: add workflow for CodeQL analysis
      ci: add workflow for CodeQL analysis

Jules Maselbas (7):
      scripts: include: rename printk.h to printf.h
      clk: divider: add error code propagation
      clk: Add clock driver for sun50i-a64
      pinctrl: Add sun50i-a64 pinctrl driver
      mci: Add sunxi-mmc driver
      ARM: sunxi: Introduce mach-sunxi
      Documentation: sunxi: Add some documentation

Marco Felsch (9):
      nvmem: ocotp: add support to get/set srk_revoke sticky bit
      nvmem: ocotp: add support to query the field-return sticky bit
      hab: convert flags to use BIT() macro
      i.MX: HAB: add imx_hab_revoke_key support
      i.MX: HABv4: add more i.MX8M fuse defines
      i.MX8M: HABv4: add an option to allow key revocation
      i.MX8M: HABv4: add option to allow burning the field-return fuse
      i.MX: HAB: add imx_hab_field_return support
      i.MX: HAB: fix i.MX8MP field-return fuse

Michael Grzeschik (4):
      PWM: imx: pwm-imx-tpm: Add driver support
      ARM: i.MX93: ele: make A0 firmware optional
      video: simple-panel: add regulator support
      ARM: i.MX93: allow board code to configure the bl33 loadaddr

Michiel Schelfhout (3):
      ARM: protonic-stm32mp1: Add support for Plymovent AMQ board
      ARM: protonic-stm32mp1: Add support for reading serial from BSEC
      ARM: protonic-stm32mp1: Add shift register support for board ID and revision

Oliver ROHE (1):
      partition: msdos: fix partuuid format

Renaud Barbier (1):
      nvme: add erase operation through sanitize command

Sascha Hauer (58):
      usb: gadget: dfu: detect devices when necessary
      ARM: k3: am625: fixup Linux device tree
      ARM: k3: am625: apply RTC i2327 erratum fixup
      dts: update to v6.14-rc1
      soc: k3: Add support for Texas Instruments K3 ESM driver
      mfd: tps65219: register regmap cdev
      dts: update to v6.14-rc2
      ARM: k3: Add function to enable 32k crystal
      ARM: k3: add function to detect eMMC boot
      ARM: k3: do not mount /boot when booting from eMMC
      fip: drop typedefs
      fip: use linux list implementation
      fip: use uuid_equal() and uuid_is_null()
      fiptool: do not typedef structs
      fip: add fip_ prefix
      fip: add fip_image_open()
      ARM: k3: r5: add USB DFU and eMMC boot support
      ARM: am625-sk: enable 32k crystal
      mci: am654: parse generic mmc node properties
      ARM: k3: limit eMMC frequency to 26MHz
      ARM: k3: add eMMC barebox update handler
      dts: update to v6.14-rc3
      ARM: am625-sk: put environment on eMMC when booting from it
      serial: omap: Use ttyS as Linux console name
      ARM: k3: remove beagleplay FIT image
      ARM: am625-sk: cleanup board entry
      ARM: beagleplay: cleanup board entry
      test: create K3 dummy firmware files
      ci: container: add python3-yaml for K3
      ddr: k3: fix includes
      ARM: k3: Add k3-r5_defconfig
      usb: dwc3: am62: Use HZ_PER_KHZ
      usb: dwc3: am62: set mode valid bit before probing children
      boot: fix systemd watchdog command line argument
      Merge branch 'for-next/allwinner'
      Merge branch 'for-next/bootm-override'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/imx-hab'
      Merge branch 'for-next/k3'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/of-partition'
      Merge branch 'for-next/rockchip'
      Merge branch 'for-next/stm32mp1'
      fip: Store image data in single buffer
      fip: add function to parse FIP from a buffer
      parted: add partition type msdos to help text
      ARM: i.MX6: Enable PBL_VERIFY_PIGGY with HABV4 support
      ARM: i.MX9: Enable PBL_VERIFY_PIGGY with non INSECURE
      bootm: let BOOTM_OPTIONAL_SIGNED_IMAGES depend on BOOTM
      firmware: export firmware directory
      ARM: k3r5: Honour CONFIG_EXTRA_FIRMWARE_DIR
      Revert "ci: add workflow for CodeQL analysis"
      watchdog: rti_wdt: return 0 even when not ready for ping
      net: am65-cpsw-nuss: remove unused variables
      ARM: am335x_mlo_defconfig: disable unnecessary options
      serial: omap: make Linux console name configurable
      Release v2025.03.0

Stefan Kerkmann (2):
      i.mx8: ocotp: add GPx_LOCK defines
      hab: lock GP5 on i.MX8MP socs

Steffen Trumtrar (1):
      ARM: Layerscape: LS1046a: select early i2c

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


