Delivery-date: Wed, 12 Nov 2025 09:22:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJ67e-0006rv-0A
	for lore@lore.pengutronix.de;
	Wed, 12 Nov 2025 09:22:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJ67d-0007Z1-4t
	for lore@pengutronix.de; Wed, 12 Nov 2025 09:22:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0IbxKZjPiAIjN0LsMkpxPGJKE1Cn7xyLu3eWUZydYI8=; b=InJIHjLVq8+F8+kJUoLfgu5sXU
	6pNA1Vo68RamlQ/lfSh4W2pQsLY1WNSjp3c3mDe6jqpESQ+kwUZNVtx+N1bwhDwX0uQsbVmwNUr4c
	r2rQ3AnG9usmPv/WAqqbgr+otvdDXMsRsGlZP/W0GQc6dRRDVo0cyJvav32Z9yD0TKxZ87u60SRCF
	lhm1eYUtHVglcSM5F186ZC39bmZCA/oPEasnp0f7oKmZKFJIxRbFSFPPNbXogFVU0pdE7bOfwfQdv
	r1FIuQkFWaWZz3kuPtQjBDB7987YUpqDXIM473KRzJ9RALN5pSA5wL59ph8tuvLTzoG6CCOIFnbuw
	j0xV8kug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJ670-00000008KV1-2SUq;
	Wed, 12 Nov 2025 08:21:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJ66x-00000008KUf-0Cw0
	for barebox@lists.infradead.org;
	Wed, 12 Nov 2025 08:21:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vJ66v-0007SZ-Fn; Wed, 12 Nov 2025 09:21:49 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vJ66v-0003Ar-0y;
	Wed, 12 Nov 2025 09:21:49 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vJ66v-00GPjM-0f;
	Wed, 12 Nov 2025 09:21:49 +0100
Date: Wed, 12 Nov 2025 09:21:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <aRRDnV7rhE1VUgez@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251112_002151_247871_50D77643 
X-CRM114-Status: GOOD (  20.44  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: v2025.11.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi All,

barebox 2025.11.0 is released.

This is one of the smaller releases this time. We have support for two
new boards, the i.MX93 FRDM board and the Enclustra Mercury+ SA2 board.

The NFS code does much better checking of the data coming from the
network so that memory overflows on corrupted NFS packets are avoided.

The parted command is now able to create a partition up to the end of
the device which simplifies scripting.

See below for the migration guide and a full list of patches that went
into this release.

Have Fun!
 Sascha

Migration notes for v2025.11.0
==============================

i.MX GPIOs
----------

Reading output GPIOs now returns the configured output level instead
of reading back the input register. This aligns us with what Linux
is doing, but may falsify readings of single-ended GPIOs that have
the SION bit configured.

Board support
-------------

Karo TX6X
^^^^^^^^^

The barebox update handler for this SoM no longer unconditionally updates
/dev/mmc3.boot0, but instead it now updates the inactive boot partition
on /dev/mmc3 and then sets it as active allowing for power-fail safety.

----------------------------------------------------------------
Ahmad Fatoum (39):
      efi: payload: split out payload Kconfig symbols
      fs: factor out final file open logic out of openat()
      fs: allocate inodes for O_TMPFILE-created files
      tlsf: move kasan_poison_shadow into tlsf_add_pool
      efi: payload: bootm: add support for fit image
      efi: payload: make selectable without COMPILE_TEST
      tlsf: use compiler's static_assert implementation
      fs: make dpath always panic on OOM
      fs: add filepath helper
      test: self: malloc: fix double free after expect_alloc_fail
      test: py: fit: don't remove generated FIT again from testfs
      FIT: compare key name hint with streq_ptr for clarity
      sandbox: cut down on if clauses using SANDBOX_LIBS-y
      commands: devinfo: print Deep Probe status for top-level machine device
      devinfo: print / as device tree node for the root node
      test: self: malloc: fix false positive when malloc store is registered
      efi: payload: do not check for heap addresses in efi_load_image
      test: py: dm: skip test if veritysetup command is disabled
      test: py: network: skip test if tftp command is missing
      test: py: fix pycodestyle warnings
      test: fit: power cycle after tests in booted barebox
      Documentation: gen_commands.py: escape special characters
      Documentation: gen_commands.py: align whitespace with coding style
      Documentation: gen_commands.py: rework if statements for compactness
      Documentation: gen_commands.py: use literal block for help text
      Documentation: gen_commands.py: escape name in title
      kbuild: add make check target
      range: fix corner cases when exclusive end is zero
      test: self: add range.h test
      ARM: i.MX8M: romapi: skip zero_page_access() if MMU is disabled
      ARM: mmu: have zero_page_remappable() check MMU status
      serial: ns16550: add UART compatible after upstream compatibility break
      ARM: mmu: fix hang when reserved memory at start of RAM
      efi: payload: drop unreferenced efi_do_execute_image()
      filetype: introduce separate filetype_x86_efi_linux_image
      efi: payload: handover: fix filetype match
      efi: payload: reinstate error message when booting non-EFI stubbed kernel
      efi: payload: align kernel boot status messages
      migration-guides: add notes for v2024.09.0 to v2025.04.0

Chali Anis (6):
      tlsf: support on-demand requesting memory from external store
      efi: payload: add support for EFI initrd media protocol
      efi: payload: earlymem: allocate only the barebox needs in term of memory
      efi: payload: split image handling from legacy handover boot and add linux x86 image filetype
      efi: payload: bootm: add support for efi stub boot
      ARM: efi: add a generic defconfig for v8 efi payload

David Picard (2):
      ARM: SoCFPGA: Enclustra-SA2: Add handoff files
      ARM: SoCFPGA: Add Enclustra Mercury+ SA2 module

Fabian Pfitzner (1):
      ARM: i.MX: karo-tx6: use mmcboot handler

Fabian Pflug (2):
      common: deep-probe: include of for of_device_id
      ARM: boards: i.MX93: Add NXP FRDM i.MX93 support

Jonas Rebmann (10):
      virtio: Stop spamming debug buffer
      test: when testfs feature is available, always enable it
      test: provide testfs via fixture
      test: move dm-verity testdata generation to fixture
      test: move fitimage testdata generation to fixture and drop script
      test: py: test_bootchooser: remove dead code
      commands: tlv: clarify error opening tlv
      configs: enable tlv command for multi_v7 and multi_v8
      test: py: add TLV integration tests
      public-keys: fix key->size for ECDSA keys

Marco Felsch (1):
      aiodev: add missing headers

Maud Spierings (5):
      ARM: i.MX8m: add ddr3 ram support
      ARM: i.MX: Fix the iomux DSE defines for imx8mp
      gpio: i.MX: make _get_value() able to read output pin state
      Documentation: migration-2025.11.0: add note about new gpio behaviour
      parted: add max option to mkpart <end>

Sascha Hauer (29):
      dts: update to v6.17
      ARM: dts: am62lx: add SD reboot mode
      fs: remove redundant dev argument from fs_driver operations
      fs: move fs_driver operations to struct file_operations
      dts: update to v6.18-rc1
      ARM: i.MX: enable new boards in defconfigs
      dts: update to v6.18-rc2
      commands: parted: Do not align partition end
      ci: container: upgrade after update
      public-keys: ecdsa: remove list in ecdsa keys
      public-keys: move list out of struct public_key
      public-keys: rsa: allow struct public_key to be const
      public-keys: rsa: remove unused functions
      public-keys: make const
      ARM: dts: k3-am62l: Set cpsw3g status to disabled by default
      Merge branch 'for-next/dts'
      Merge branch 'for-next/efi'
      Merge branch 'for-next/fs'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/k3'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/socfpga'
      Merge branch 'for-next/tlv'
      mtd: peb: mtd_peb_read(): move error message to caller
      fs: nfs: drop PROG_NFS special casing
      fs: nfs: do not read past packets
      fs: nfs: use dev_* for messages
      fs: nfs: reduce unwanted message to debug level
      Release v2025.11.0

Steffen Trumtrar (1):
      mci: add cadence sdhci host

Thorsten Scherer (1):
      usb: dwc3: am62: Fix name of driver struct


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


