Delivery-date: Fri, 17 Apr 2026 15:43:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDjU8-00DDMz-2L
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 15:43:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDjU7-000820-Kf
	for lore@pengutronix.de; Fri, 17 Apr 2026 15:43:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+MxV3vx/Cazr0iA0pJPkH5YcS9F2VMXft2BZ9YDth2A=; b=XOtLqkO19H/ZFTb/phojdahxoP
	9oW3aVPdlYrFaAapSAGvZOXWPgRSQ/PtkrWjEqDiI6v0bYpU/K65v2GjtvJ3j9Kz4Vt9Gewidsa3n
	bHrjCI3KXnwOoe98wTn9IoRe2qUxKs1P7MfE0EFtl2m4j95f4c9GPzMAShZbqcYghWBLWn5bfbel1
	pJx2ll6VRd0LK8HPuxEROiTmuamDhkFSDaI56tZMVlvj+iZ0YDnoEQThfMrzFwn7Ax8nZjb7zaoya
	YRvKUKdrfqWe2qkmGyVX5kCRhVaquMSppGR0A5yL30JKc78MKgbjfXcFxuwUDxPAq9V6Gb5V/uKbt
	qv1Qs/OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDjTY-000000045vw-2gxH;
	Fri, 17 Apr 2026 13:43:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDjTV-000000045v9-3NoS
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 13:43:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wDjTU-0007qs-7X; Fri, 17 Apr 2026 15:43:12 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wDjTU-005rD7-0A;
	Fri, 17 Apr 2026 15:43:12 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wDjTT-0000000Fplt-4002;
	Fri, 17 Apr 2026 15:43:11 +0200
Date: Fri, 17 Apr 2026 15:43:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <aeI471ZfStpltaM6@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_064313_999600_86338B01 
X-CRM114-Status: GOOD (  21.27  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: v2026.04.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi All,

We have a release for April, v2026.04.0.

In this release Ahmad has reworked the bootm code. With this we can
inject arbitrary Kernels, device trees and initrds into the regular
boot, so you can boot your regular rootfs, but replace just the kernel,
initrd or device tree which makes it a great development feature. Worth
mentioning that this also works for FIT images, so you can replace just
components of them. See
https://www.barebox.org/doc/latest/user/devboot.html for details. For
this several cleanups were necessary so that the bootm code gets better
maintainable.

Other than that this release brings us several fixes for potential
buffer overflows in the networking code. While networking in barebox is
rather seen as a development feature which shouldn't be used in
production, it nevertheless should be safe against exploits. Also the
ext4 code got some more protection against crafted images.

Another nice thing is the support for RELR relocation on ARM which makes
for smaller binary images. Unfortunately the Rock3a board turned out to
not work properly with it, so we marked support for it to experimental
in the last minute.

Have Fun!
  Sascha

Migration notes for v2026.04.0
==============================

Boards
------

TQMA8MPxL
^^^^^^^^^

The config option has been renamed from ``CONFIG_MACH_TQ_MBA8MPXL`` to
``CONFIG_MACH_TQ_MBA8MPXX`` to accommodate the support for TQMA8MPxS
boards with the same binary.
The binary has been renamed from ``barebox-tqma8mpxl.img``
to ``barebox-tqma8mpxx.img``.

ZynqMP
^^^^^^

The Linux v7.0 device trees imported into this barebox release no
longer feature an unconditional `"linaro,optee-tz"` compatible OF node.

If OP-TEE use in barebox is desired, this node must be added back to the
barebox device tree.

HABv4-enablement
^^^^^^^^^^^^^^^^

When the SRK hash is written, the corresponding fuse bank is now locked automatically.
With that the ``IMX_SRK_HASH_WRITE_LOCK`` flag is removed.


TF-A v2.14 compatibility
------------------------

TF-A v2.14 has `broken compatibility <https://lists.trustedfirmware.org/archives/list/tf-a@lists.trustedfirmware.org/thread/LKJVRDGRH7F73FWSTZC46I7IT3BRYQXC/>`_
with SCMI consumers that implement only version 2.0 of the clock protocol.
This includes barebox v2026.03.1, but also Linux v6.6.

barebox v2026.04.0 is the first release that's compatible with both TF-A
releases older than v2.14 as well as v2.14 itself.

----------------------------------------------------------------
Ahmad Fatoum (43):
      ARM: add RELR relocation packing support
      mci: add support for eMMC v5.1b
      mci: treat unknown MMC version as greater than known versions
      mci: detect SD card v3
      ARM: cpu: setupc: relocate BSS in relocate_to_adr()
      FIT: handle hashed-nodes property not being in hashed nodes order
      tftp: skip memory allocation when seeking to current position
      tftp: warn when seek-heavy access wastes network bandwidth
      tftp: emulate backwards seek by reopening the file
      libfile: drop TFTP-specific hack in open_fdt()
      fs: fix relative path resolution when CWD is on a TFTP mount
      commands: bfetch: use 64-bit integer types for sizes
      ARM: mmu: make ARM_MMU_PERMISSIONS depend on MMU
      clk: scmi: clock: add compatibility for clock version 3.0
      x86: fix initjmp storing base pointer at wrong address
      ci: pytest: test against Debian 13.4.0 image
      bootm: require EFI boot when running as payload
      of: gracefully handle empty dummy DT
      lib: add lazy loadable infrastructure for deferred boot component loading
      bootm: split preparatory step from handler invocation
      boot: add bootm_boot wrapper that takes struct bootentry
      bootchooser: pass along struct bootentry
      bootm: switch plain file names case to loadable API
      uimage: add offset parameter to uimage_load
      bootm: uimage: switch to loadable API
      bootm: fit: switch to new loadable API
      bootm: stash initial OS address/entry in image_data
      bootm: support multiple entries for bootm.initrd
      bootm: implement plain and FIT bootm.image override
      bootm: overrides: add support for overlays
      test: py: add test for initrd concatenation
      defaultenv: base: add new devboot script
      Documentation: user: devboot: add section on forwarding build dirs
      libfile: remove file_to_sdram
      fs: guard against unset dentry in get_fsdevice_by_dentry
      ARM: i.MX8M: evk: mark PMIC barebox,allow-dummy-supply
      arch: make RELR depend on EXPERIMENTAL
      Documentation: migration-guide: fix TQMA8MPxL section
      Documentation: migration-guide: reinstate HABv4-enablement
      Documentation: migration-guide: mention TF-A v2.14 compatibility
      Documentation: migration-guide: add note about ZynqMP OP-TEE
      Documentation: migration-guides: mention possible FIT compat break
      ARM: dts: rk3588-rock-5b: fix SD card startup for Radxa ROCK 5B

David Picard (3):
      ARM: socfpga: Enclustra SA2: add defconfig options
      ARM: socfpga: Enclustra SA2: enable USB1 HS
      ARM: socfpga: xload: compress image with xz

Fabian Pflug (3):
      ARM: boards: tqma8mpxl: rename to tqma8mpxx
      ARM: boards: tqma8mpxl: extend with support for xs
      ARM: boards: tqma8mpxx: add no_ecc ram timings

Michael Grzeschik (1):
      video: simplefb-fixup: IORESOURCE_BUSY is deprecated use reserve_resource

Michael Tretter (6):
      ARM: rockchip: pass smaller device tree to OP-TEE
      scripts: rk-usb-loader: push header first
      arm: socfpga: mailbox_s10: make retry logic more visible
      arm: socfpga: mailbox_s10: cleanup send command
      arm: socfpga: mailbox_s10: add error messages for QSPI
      arm: socfpga: mailbox_s10: handle error 0x8f explicitly

Robin van der Gracht (12):
      aiodev: rockchip_saradc: Fix ADC resolution for RK3562
      phy: rockchip: naneng-combphy: Fix number of phys in the RK3562
      ARM: rockchip: RK3562: Add reset reason detection
      ARM: rockchip: Add missing LIBFDT dependency to ARCH_ROCKCHIP_ATF_PASS_FDT
      ARM: boards: Rename protonic-mecsbc to protonic-rk356x
      ARM: boards: protonic-rk356x: Remove VIN measurement
      ARM: boards: protonic-rk356x: Use devicetree alias for saradc
      ARM: boards: protonic-rk356x: Configure ADC and channels in model data
      ARM: boards: protonic-rk356x: Move mecsbc code to model init function
      ARM: boards: protonic-rk356x: Use rockchip_bbu_mmc_register
      ARM: boards: protonic-rk356x: Move bbu setup to device late init
      ARM: boards: protonic-rk356x: Read board serial and MAC address from eMMC

Sascha Hauer (66):
      ARM: rockchip: rk3568-qnap-ts433eu: Add missing include
      dts: update to v7.0-rc1
      dts: update to v7.0-rc2
      aiodev: Enable saradc for RK3588
      Add i.MX HAB fuse bank lock to migration guide
      tlv: check incoming TLV headers for size
      tee: optee: use RPMB probe capability to select enumeration path
      dts: update to v7.0-rc3
      ARM: setupc_32: remove relocation code from setup_c
      kbuild: make collect-policies lightweight with standalone Makefile.policy
      kbuild: policy: support out-of-tree builds for external policy files
      Merge branch 'for-next/arm'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/optee'
      Merge branch 'for-next/rockchip'
      Merge branch 'for-next/socfpga'
      Merge branch 'for-next/tlv'
      dts: update to v7.0-rc4
      ARM: setup_c: avoid clearing BSS twice
      mci: move optee_rpmb_detected() to where the card is detected
      ARM: ARMv5: make PTE_SMALL_AP_UNO_SRO work
      fs: ext4: validate log2_block_size from superblock at mount
      fs: ext4: reject superblocks with zero inodesz, gdsize or inodes_per_group
      fs: ext4: fix OOB read and infinite loop in ext_iterate()
      fs: ext4: reject dirents with too-small direntlen to prevent infinite loops
      fs: ext4: validate extent eh_entries against buffer capacity
      net: dns: fix packet buffer overflow from long hostnames
      net: dns: fix OOB read in dns_recv query type check
      dts: update to v7.0-rc5
      dts: update to v7.0-rc6
      dts: update to v7.0-rc7
      mci: register class device before card detection
      tee: drivers: rksecure: improve logging
      usb: gadget: Use put_unaligned_le16() from asm/unaligned.h
      efi: loader: fix integer overflow in PE virt_size calculation
      efi: loader: validate section raw data bounds against image size
      efi: loader: fix SizeOfBlock underflow in relocation processing
      efi: loader: bounds-check relocation offsets against image size
      Merge branch 'for-next/tftp'
      Merge branch 'for-next/boot'
      fs: Do not mntput() the root device parent
      dts: update to v7.0
      Merge branch 'for-next/dts'
      mci: add missing break
      net: add net_eth_to_udp() helper for validated UDP extraction
      fs: tftp: use net_eth_to_udp() for packet parsing
      net: dhcp: use net_eth_to_udp() for packet parsing
      fs: nfs: use net_eth_to_udp() for packet parsing
      net: dns: use net_eth_to_udp() for packet parsing
      net: sntp: use net_eth_to_udp() for packet parsing
      net: netconsole: use net_eth_to_udp() for packet parsing
      net: fastboot: use net_eth_to_udp() for packet parsing
      net: fastboot: stop using net_eth_to_udp_payload() for PACKET_SIZE
      net: remove unused net_eth_to_udp{hdr,_payload,len}() helpers
      net: dhcp: add bounds checking to DHCP option parsing
      net: dhcp: use xstrndup for bp_file to prevent read past field
      net: dhcp: cap DHCP option string length to 255 bytes
      fs: tftp: prevent packet buffer overflow from long filenames
      fs: tftp: fix OACK option parsing bounds check
      fs: tftp: reject OACK with blocksize of zero
      fs: tftp: use bounded format for TFTP error message debug print
      fs: nfs: fix stack and packet buffer overflows from long NFS paths
      fs: nfs: fix NULL dereference in nfs_read_req on truncated packets
      Release v2026.04.0

Steffen Trumtrar (1):
      filetype: fix unaligned access for x86_linux_bootimage

Ulrich Ölmann (1):
      i.MX: hab: always lock SRK hash after fusing

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


