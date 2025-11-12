Delivery-date: Wed, 12 Nov 2025 09:46:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJ6V9-0007Az-35
	for lore@lore.pengutronix.de;
	Wed, 12 Nov 2025 09:46:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJ6V9-0002CO-0v
	for lore@pengutronix.de; Wed, 12 Nov 2025 09:46:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=L4nQKaXuwq/QnD1x9DGBJV5pVb0AHFfZIyoJj5ZjzaY=; b=rUC6D2sKjKD5WX1pabQ6LOol8L
	Tf15FDyMQvaK1LSXukmE5sXjHKsjguBgv0Nxs5ZkfYVzDRxo+h9/9tA6c0J/kDvJueOE2pS42YEPy
	Kpu28OY+/7RQ5SIplkVjkDPbmduQNXjqRsHBkhoiGAqRxNOrytxkyorb9V/XxxqFf0YX4kdQNmGeA
	kHQWnEPZfhy5lrtRpQlaj/zJ0ti99NWCppIEJbiqfQlAodhNzn21MKStIGdDDLXj++qwPui12ttk+
	1sBvFy+EWjJcYIeZyaOzN4KU61FtcwBEQQ+4HLbZy7OK/SyS9JHeYWXTrKp0g/CZogXsKxk9FkgHG
	7O1nIbOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJ6Uc-00000008Nd5-07p3;
	Wed, 12 Nov 2025 08:46:18 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJ6UX-00000008NbK-3UVL
	for barebox@lists.infradead.org;
	Wed, 12 Nov 2025 08:46:16 +0000
Received: by mail-pg1-x52b.google.com with SMTP id 41be03b00d2f7-bc0e89640b9so173392a12.1
        for <barebox@lists.infradead.org>; Wed, 12 Nov 2025 00:46:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762937173; x=1763541973; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L4nQKaXuwq/QnD1x9DGBJV5pVb0AHFfZIyoJj5ZjzaY=;
        b=mLj4Fr/seRMita8sJg1IXggIrmATYcczoH5/K6KhKYY9PpFXPcra1XSBw5K3KvHFuh
         dqJArI2CRMk5F9m5/bw4X2qqek6m9BrTOJsO/mez3OAp9uVsuTDT58H1d+DSuJvZOczG
         af+0myJXKVugIjtWhURy2zMUtw9LZHfVQ4BDkKU08PdD0H2smx+sxUDqrK3AEqFHJG8T
         A0E6qceW58F+qsZq9NUQHnLg2U8aT/Fx4ePkGEbT76WAEHTXoh5uTsBCLoCjFVUG93NV
         FcuAVEuWrmegsJ3Jcj6lhFUYn1HHAC7uzBWkU4UL+4eQ1BaG4B0JSc8RaOmYYrcoegrs
         IYXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762937173; x=1763541973;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=L4nQKaXuwq/QnD1x9DGBJV5pVb0AHFfZIyoJj5ZjzaY=;
        b=RB/FekivL7OoysEm5tcp/+pbOimlha8m2weynFb6uWJDSn7PmDWVxAPj5MIqEOzXsJ
         2rU4h6VVI101HGcEYCWdJhUz90jTs6KsKkXNrfB2Q2L4B0p1tRGnr9WZ0IM4TGNevYh9
         kpvi+sCGpWtX2qoPU2xKHSbXNzOdzYglKK+GG+19mi9/vUzq9BCdWkZBBE6LVB8ux5Lx
         7IJ+K7VzPkQako3OBK3rCOMFTNCYp+62k7pbnr0Uug07fbR4I/nFPRSBbCgbqejLoWwX
         6tM9jY+RwOPHxs21OYMks7JUrrp4TXsFHyDb4u8v3EpSaK9qlKbwe/8pSYw/5uLszK7O
         01pg==
X-Gm-Message-State: AOJu0YxpWC/uJGifs27GuB3tKkEv2rGbUUJQ3rwtn63bE7nCbgj86Vle
	zxcxx3DH7j1AUj0IAnaImOCaT5ign4nVlS0NT5gmE+9DYBCpsrK+LWJQPGKe+m+or8JqT3pjGCZ
	qwAGCDbTQkDe3F/ZKIXC7eX/3LVrc7Gg=
X-Gm-Gg: ASbGncvAkUKEHgkBLT5WQ/EGReonwmnDeKwalwW+YQW9Zxh2K8N4jFXr3oNaosuBYUB
	mQyJfHgDcFtfTuyLqQu2r+n/7CP7k0IfyIF2vr5X3YVK0CJGwDF52x2ZReogP2cn1FcukgsFOO4
	16LC0g8L56+IFje1TjjgrCEYtJFh0HrQwx99dkeebKksfuHwfhe8DAbGJ/k3C2f9Eo/TBUhZQea
	7sa0Kmj6nFtIJYApAVksGmUlMJbx7sYCxXwp6h3DCe7GyTaxmaHu/QnH0y1
X-Google-Smtp-Source: AGHT+IGF0NmzDnR8pYdFJnWHQCt2rU7YpNhu0jhM2PQFMIoSle2711wNOw5WXk2k+ZaeVIE3P7Ld1WAN0cB5OV+siIs=
X-Received: by 2002:a17:903:3d10:b0:274:777b:ca6d with SMTP id
 d9443c01a7336-2984ee02648mr27422455ad.43.1762937172722; Wed, 12 Nov 2025
 00:46:12 -0800 (PST)
MIME-Version: 1.0
References: <aRRDnV7rhE1VUgez@pengutronix.de>
In-Reply-To: <aRRDnV7rhE1VUgez@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 12 Nov 2025 11:46:01 +0300
X-Gm-Features: AWmQ_blTbRQ_iLn_cxwzsE_IwxEi7F3cX4paNpv4pD3mSbzCSwmdVsY-0QuGxI4
Message-ID: <CAP1tNvQb3J2DN8WT0BFJ9TxDijw9f58gcda4+JkqKknf-KoJeQ@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251112_004613_877270_5003E576 
X-CRM114-Status: GOOD (  32.08  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: v2025.11.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha.

Seems, It seems you forgot "[PATCH v2] clk: rockchip rk3588: configure
CPLL in driver" patch.

=D1=81=D1=80, 12 =D0=BD=D0=BE=D1=8F=D0=B1. 2025=E2=80=AF=D0=B3. =D0=B2 11:2=
2, Sascha Hauer <s.hauer@pengutronix.de>:
>
> Hi All,
>
> barebox 2025.11.0 is released.
>
> This is one of the smaller releases this time. We have support for two
> new boards, the i.MX93 FRDM board and the Enclustra Mercury+ SA2 board.
>
> The NFS code does much better checking of the data coming from the
> network so that memory overflows on corrupted NFS packets are avoided.
>
> The parted command is now able to create a partition up to the end of
> the device which simplifies scripting.
>
> See below for the migration guide and a full list of patches that went
> into this release.
>
> Have Fun!
>  Sascha
>
> Migration notes for v2025.11.0
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
>
> i.MX GPIOs
> ----------
>
> Reading output GPIOs now returns the configured output level instead
> of reading back the input register. This aligns us with what Linux
> is doing, but may falsify readings of single-ended GPIOs that have
> the SION bit configured.
>
> Board support
> -------------
>
> Karo TX6X
> ^^^^^^^^^
>
> The barebox update handler for this SoM no longer unconditionally updates
> /dev/mmc3.boot0, but instead it now updates the inactive boot partition
> on /dev/mmc3 and then sets it as active allowing for power-fail safety.
>
> ----------------------------------------------------------------
> Ahmad Fatoum (39):
>       efi: payload: split out payload Kconfig symbols
>       fs: factor out final file open logic out of openat()
>       fs: allocate inodes for O_TMPFILE-created files
>       tlsf: move kasan_poison_shadow into tlsf_add_pool
>       efi: payload: bootm: add support for fit image
>       efi: payload: make selectable without COMPILE_TEST
>       tlsf: use compiler's static_assert implementation
>       fs: make dpath always panic on OOM
>       fs: add filepath helper
>       test: self: malloc: fix double free after expect_alloc_fail
>       test: py: fit: don't remove generated FIT again from testfs
>       FIT: compare key name hint with streq_ptr for clarity
>       sandbox: cut down on if clauses using SANDBOX_LIBS-y
>       commands: devinfo: print Deep Probe status for top-level machine de=
vice
>       devinfo: print / as device tree node for the root node
>       test: self: malloc: fix false positive when malloc store is registe=
red
>       efi: payload: do not check for heap addresses in efi_load_image
>       test: py: dm: skip test if veritysetup command is disabled
>       test: py: network: skip test if tftp command is missing
>       test: py: fix pycodestyle warnings
>       test: fit: power cycle after tests in booted barebox
>       Documentation: gen_commands.py: escape special characters
>       Documentation: gen_commands.py: align whitespace with coding style
>       Documentation: gen_commands.py: rework if statements for compactnes=
s
>       Documentation: gen_commands.py: use literal block for help text
>       Documentation: gen_commands.py: escape name in title
>       kbuild: add make check target
>       range: fix corner cases when exclusive end is zero
>       test: self: add range.h test
>       ARM: i.MX8M: romapi: skip zero_page_access() if MMU is disabled
>       ARM: mmu: have zero_page_remappable() check MMU status
>       serial: ns16550: add UART compatible after upstream compatibility b=
reak
>       ARM: mmu: fix hang when reserved memory at start of RAM
>       efi: payload: drop unreferenced efi_do_execute_image()
>       filetype: introduce separate filetype_x86_efi_linux_image
>       efi: payload: handover: fix filetype match
>       efi: payload: reinstate error message when booting non-EFI stubbed =
kernel
>       efi: payload: align kernel boot status messages
>       migration-guides: add notes for v2024.09.0 to v2025.04.0
>
> Chali Anis (6):
>       tlsf: support on-demand requesting memory from external store
>       efi: payload: add support for EFI initrd media protocol
>       efi: payload: earlymem: allocate only the barebox needs in term of =
memory
>       efi: payload: split image handling from legacy handover boot and ad=
d linux x86 image filetype
>       efi: payload: bootm: add support for efi stub boot
>       ARM: efi: add a generic defconfig for v8 efi payload
>
> David Picard (2):
>       ARM: SoCFPGA: Enclustra-SA2: Add handoff files
>       ARM: SoCFPGA: Add Enclustra Mercury+ SA2 module
>
> Fabian Pfitzner (1):
>       ARM: i.MX: karo-tx6: use mmcboot handler
>
> Fabian Pflug (2):
>       common: deep-probe: include of for of_device_id
>       ARM: boards: i.MX93: Add NXP FRDM i.MX93 support
>
> Jonas Rebmann (10):
>       virtio: Stop spamming debug buffer
>       test: when testfs feature is available, always enable it
>       test: provide testfs via fixture
>       test: move dm-verity testdata generation to fixture
>       test: move fitimage testdata generation to fixture and drop script
>       test: py: test_bootchooser: remove dead code
>       commands: tlv: clarify error opening tlv
>       configs: enable tlv command for multi_v7 and multi_v8
>       test: py: add TLV integration tests
>       public-keys: fix key->size for ECDSA keys
>
> Marco Felsch (1):
>       aiodev: add missing headers
>
> Maud Spierings (5):
>       ARM: i.MX8m: add ddr3 ram support
>       ARM: i.MX: Fix the iomux DSE defines for imx8mp
>       gpio: i.MX: make _get_value() able to read output pin state
>       Documentation: migration-2025.11.0: add note about new gpio behavio=
ur
>       parted: add max option to mkpart <end>
>
> Sascha Hauer (29):
>       dts: update to v6.17
>       ARM: dts: am62lx: add SD reboot mode
>       fs: remove redundant dev argument from fs_driver operations
>       fs: move fs_driver operations to struct file_operations
>       dts: update to v6.18-rc1
>       ARM: i.MX: enable new boards in defconfigs
>       dts: update to v6.18-rc2
>       commands: parted: Do not align partition end
>       ci: container: upgrade after update
>       public-keys: ecdsa: remove list in ecdsa keys
>       public-keys: move list out of struct public_key
>       public-keys: rsa: allow struct public_key to be const
>       public-keys: rsa: remove unused functions
>       public-keys: make const
>       ARM: dts: k3-am62l: Set cpsw3g status to disabled by default
>       Merge branch 'for-next/dts'
>       Merge branch 'for-next/efi'
>       Merge branch 'for-next/fs'
>       Merge branch 'for-next/imx'
>       Merge branch 'for-next/k3'
>       Merge branch 'for-next/misc'
>       Merge branch 'for-next/socfpga'
>       Merge branch 'for-next/tlv'
>       mtd: peb: mtd_peb_read(): move error message to caller
>       fs: nfs: drop PROG_NFS special casing
>       fs: nfs: do not read past packets
>       fs: nfs: use dev_* for messages
>       fs: nfs: reduce unwanted message to debug level
>       Release v2025.11.0
>
> Steffen Trumtrar (1):
>       mci: add cadence sdhci host
>
> Thorsten Scherer (1):
>       usb: dwc3: am62: Fix name of driver struct
>
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


