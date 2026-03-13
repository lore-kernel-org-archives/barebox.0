Delivery-date: Fri, 13 Mar 2026 15:57:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w13xK-000FFO-2G
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 15:57:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w13xJ-0001yT-F6
	for lore@pengutronix.de; Fri, 13 Mar 2026 15:57:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yRT2tiUj+eAId8wSCYg08jaf+cSt6fRd+CJQ8mrpLbk=; b=W0R+zPIdQeMzisZgSc/rYn+drk
	Ej830mGLUwugbUObcqHs+6lk6b5aYOSQsH+BOQPBVEJYCLtTECz+ct39QTvCpzkrAV0zuDIGNjzHu
	mOtlXa+FdT11gRg1aRz7HjUhnp129+YT71Lp+UucpNlp5kukvnkjOeI1Pl3PvR8MFICwEWJ7Q8tsr
	xWMcFD2/e0GsRLXaTpNOw7n1Cl7eVaMOBt1RG3b/Mae2g+xsLEuFwqZMmBZkbp1yGofDRBqmcyVe/
	KVkrAXusDSJj0U+wkKF4MzmuSBeoLxsEC2nQ3V5yfbG+GLRDGQ0/u8jdyZBEHzHtyQSDHrKOR+j2r
	Ol0Vi2Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w13wn-00000000U30-2gL5;
	Fri, 13 Mar 2026 14:57:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w13wm-00000000U2q-1Vwe
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 14:57:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=yRT2tiUj+eAId8wSCYg08jaf+cSt6fRd+CJQ8mrpLbk=; b=ZFAxuPnpOVQ2xnvtgghxLUYDV4
	5bCnnSlgp9t22ixaj0+5bpbVRP0nKx6zVGWV+wvsy49N01rDrxESdNHWM9ED+qgaf8U4RMWX4/sd+
	uVknGx2wNmiBL7eOZXCTzNl3MM8dbrdc5JmKkgnpTsHil0GhkFTZqq/i6Na5wazMw0g3fKD0ptgp3
	6W0YmNgkWhaQuu+t/GpUMiYFwPiWkbOeEvVxfv/eFj8wr+pRo1aQKfuFQgsvvSVOXgiVdzshWClNl
	pGW39eqjwP+Z43yzD9HO+Cnb6jFJpwyzrcMTgmKZpEGrDSm7JTIKx59sMRmiB6d5tF9dxVWvhlwBc
	OSDXAjWA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w13wh-00000003bWm-0uVr
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 14:57:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w13wf-0001nN-Cg; Fri, 13 Mar 2026 15:56:57 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w13wf-00063f-0d;
	Fri, 13 Mar 2026 15:56:57 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w13wf-000000011Mw-0Zt9;
	Fri, 13 Mar 2026 15:56:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
Message-Id: <177341381713.243468.17833281027220950179.b4-ty@pengutronix.de>
Date: Fri, 13 Mar 2026 15:56:57 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_145700_390507_45232554 
X-CRM114-Status: GOOD (  12.09  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2025.09.y 00/58] Backports for v2025.09.1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 13 Mar 2026 14:24:44 +0100, Ahmad Fatoum wrote:
> Yocto Whinlatter still has a month to go until EOL.
> 
> Let's backport some fixes accrued in master in the meantime.
> 
> Ahmad Fatoum (35):
>   drivers: don't propagate of_alias_get_id's -ENODEV out of probe
>   bug: add support for CONFIG_DEBUG_BUGVERBOSE
>   sandbox: fix make dependency for sandbox
>   ARM: cpu: common: skip R_ARM_NONE relocations
>   virtio: ring: fix stale data in queue after reset
>   scripts: Makefile.lib: suppress graph_port warnings for overlays
>   ARM: Rockchip: rk3576-prtpuk: suppress video graph warning
>   kbuild: fold rmdirs into rmfiles
>   FIT: fix double free issue with >1 reference count
>   net: phy: mdio_bus: fix freeing of cdev name before devfs_remove
>   bootm: fix bootm override saving/restoring
>   common: tlv: fix link error when CONFIG_NET is disabled
>   include: array_size.h: make header self-contained
>   of: overlay: propagate error unflattening DTBO
>   efi: fix potential NULL dereference
>   FIT: fix potential underflow of stack array
>   of: fdt: fix double free in fdt_ensure_space
>   of: overlay: initialize ret to fix garbage return value
>   firmware: xilinx-fpga: fix double free in probe error path
>   driver: fix missing va_end in dev_add_alias error path
>   net: eth: avoid overlapping memcpy in eth_set_ethaddr
>   pmdomain: fix dereference before NULL check in genpd_get_from_provider
>   net: phy: add NULL check for phy driver in page accessors
>   open: add missing mode argument to O_CREAT calls
>   hush: add NULL check for gl_pathv after do_glob_in_argv
>   i2c: rk3x: fix NULL pointer dereference on repeated NACK
>   mci: imx-esdhc: remove misleading NULL check for cmd pointer
>   mci: spi: initialize r1 to fix garbage return value
>   virtio: fix variable shadowing in virtqueue_add_sgs input scatter loop
>   video: mode-helpers: preserve sync polarity in fb_videomode conversion
>   scripts: include: break dependency of list.h on kernel.h
>   jwt: fix buffer overflow and double-free in jwt_part_parse
>   of: fdt: fix heap-buffer-overflow in fdt_machine_is_compatible
>   powerpc: fix initjmp storing function pointer at wrong offset
>   of: fdt: refuse / in property and node names
> 
> [...]

Applied, thanks!

[01/58] clk: clkdev: fix format security.
        https://git.pengutronix.de/cgit/barebox/commit/?id=23b684a70989 (link may not be stable)
[02/58] scripts: imx: fix string in further auth block
        https://git.pengutronix.de/cgit/barebox/commit/?id=ae678588fa65 (link may not be stable)
[03/58] scripts: imx-image: support DCD_WRITE on closed dev
        https://git.pengutronix.de/cgit/barebox/commit/?id=e2fa44f2c247 (link may not be stable)
[04/58] mci: am654-sdhci: Wait for transfer complete interrupt with MMC_RSP_BUSY cmd
        https://git.pengutronix.de/cgit/barebox/commit/?id=6d8ed233601c (link may not be stable)
[05/58] video: simplefb-client: switch to dev_get_resource
        https://git.pengutronix.de/cgit/barebox/commit/?id=1ccad7130118 (link may not be stable)
[06/58] MIPS: qemu-malta_defconfig: Use largest possible relocation table
        https://git.pengutronix.de/cgit/barebox/commit/?id=ac30473fdb47 (link may not be stable)
[07/58] firmware: handle firmware files being links correctly
        https://git.pengutronix.de/cgit/barebox/commit/?id=b24cb4e63754 (link may not be stable)
[08/58] drivers: don't propagate of_alias_get_id's -ENODEV out of probe
        https://git.pengutronix.de/cgit/barebox/commit/?id=b25ee6c49dcd (link may not be stable)
[09/58] ARM: socfpga: arria10-reset-manager: release UART0
        https://git.pengutronix.de/cgit/barebox/commit/?id=8258724fc487 (link may not be stable)
[10/58] bug: add support for CONFIG_DEBUG_BUGVERBOSE
        https://git.pengutronix.de/cgit/barebox/commit/?id=d1da24c36384 (link may not be stable)
[11/58] driver: implement get_free_deviceid_from()
        https://git.pengutronix.de/cgit/barebox/commit/?id=6eb262c5b83c (link may not be stable)
[12/58] sandbox: fix make dependency for sandbox
        https://git.pengutronix.de/cgit/barebox/commit/?id=80e53714c987 (link may not be stable)
[13/58] gpio: Fix GPIOD_ASIS flag
        https://git.pengutronix.de/cgit/barebox/commit/?id=dbb7385b599f (link may not be stable)
[14/58] i.MX: HAB: fix field return unlock fuse uid
        https://git.pengutronix.de/cgit/barebox/commit/?id=9326a0c475e6 (link may not be stable)
[15/58] ARM: cpu: common: skip R_ARM_NONE relocations
        https://git.pengutronix.de/cgit/barebox/commit/?id=e5eb57a73979 (link may not be stable)
[16/58] mmc: resolve conflict between MMC_CAP_NONREMOVABLE and MMC_CAP_1_8V_DDR
        https://git.pengutronix.de/cgit/barebox/commit/?id=8fe29887b161 (link may not be stable)
[17/58] virtio: ring: fix stale data in queue after reset
        https://git.pengutronix.de/cgit/barebox/commit/?id=5822aacb75b6 (link may not be stable)
[18/58] scripts: Makefile.lib: suppress graph_port warnings for overlays
        https://git.pengutronix.de/cgit/barebox/commit/?id=3bf5c487105a (link may not be stable)
[19/58] ARM: Rockchip: rk3576-prtpuk: suppress video graph warning
        https://git.pengutronix.de/cgit/barebox/commit/?id=6d5c9e44b11e (link may not be stable)
[20/58] kbuild: fold rmdirs into rmfiles
        https://git.pengutronix.de/cgit/barebox/commit/?id=e5e34be553b1 (link may not be stable)
[21/58] mtd: nand: mxc_nand: use clk_get_optional for clock handling
        https://git.pengutronix.de/cgit/barebox/commit/?id=5245ca36ddd8 (link may not be stable)
[22/58] FIT: fix double free issue with >1 reference count
        https://git.pengutronix.de/cgit/barebox/commit/?id=3e60a007c676 (link may not be stable)
[23/58] net: phy: mdio_bus: fix freeing of cdev name before devfs_remove
        https://git.pengutronix.de/cgit/barebox/commit/?id=55709075703f (link may not be stable)
[24/58] bootm: fix bootm override saving/restoring
        https://git.pengutronix.de/cgit/barebox/commit/?id=5e9f709b2b56 (link may not be stable)
[25/58] common: tlv: Correct eth address list fixup
        https://git.pengutronix.de/cgit/barebox/commit/?id=815862ac498e (link may not be stable)
[26/58] common: tlv: fix link error when CONFIG_NET is disabled
        https://git.pengutronix.de/cgit/barebox/commit/?id=174540be3743 (link may not be stable)
[27/58] include: array_size.h: make header self-contained
        https://git.pengutronix.de/cgit/barebox/commit/?id=c40fa04cccb1 (link may not be stable)
[28/58] RISC-V: dts: fix generation of dtbs-list
        https://git.pengutronix.de/cgit/barebox/commit/?id=34e1e79a8853 (link may not be stable)
[29/58] of: overlay: propagate error unflattening DTBO
        https://git.pengutronix.de/cgit/barebox/commit/?id=f511abc156b8 (link may not be stable)
[30/58] efi: fix potential NULL dereference
        https://git.pengutronix.de/cgit/barebox/commit/?id=9b3ffc1f6f18 (link may not be stable)
[31/58] FIT: fix potential underflow of stack array
        https://git.pengutronix.de/cgit/barebox/commit/?id=807ea7cde594 (link may not be stable)
[32/58] of: fdt: fix double free in fdt_ensure_space
        https://git.pengutronix.de/cgit/barebox/commit/?id=deb677d79fad (link may not be stable)
[33/58] of: overlay: initialize ret to fix garbage return value
        https://git.pengutronix.de/cgit/barebox/commit/?id=b3290dbd8a74 (link may not be stable)
[34/58] firmware: xilinx-fpga: fix double free in probe error path
        https://git.pengutronix.de/cgit/barebox/commit/?id=b99e16c02227 (link may not be stable)
[35/58] driver: fix missing va_end in dev_add_alias error path
        https://git.pengutronix.de/cgit/barebox/commit/?id=fb673c396fa8 (link may not be stable)
[36/58] net: eth: avoid overlapping memcpy in eth_set_ethaddr
        https://git.pengutronix.de/cgit/barebox/commit/?id=2d7427591555 (link may not be stable)
[37/58] pmdomain: fix dereference before NULL check in genpd_get_from_provider
        https://git.pengutronix.de/cgit/barebox/commit/?id=167672b110b2 (link may not be stable)
[38/58] net: phy: add NULL check for phy driver in page accessors
        https://git.pengutronix.de/cgit/barebox/commit/?id=d4d047b05f18 (link may not be stable)
[39/58] open: add missing mode argument to O_CREAT calls
        https://git.pengutronix.de/cgit/barebox/commit/?id=e91e5fa2d4ac (link may not be stable)
[40/58] hush: add NULL check for gl_pathv after do_glob_in_argv
        https://git.pengutronix.de/cgit/barebox/commit/?id=28233485b104 (link may not be stable)
[41/58] i2c: rk3x: fix NULL pointer dereference on repeated NACK
        https://git.pengutronix.de/cgit/barebox/commit/?id=017a73ac6ae7 (link may not be stable)
[42/58] mci: imx-esdhc: remove misleading NULL check for cmd pointer
        https://git.pengutronix.de/cgit/barebox/commit/?id=6d0e9f159d8c (link may not be stable)
[43/58] mci: spi: initialize r1 to fix garbage return value
        https://git.pengutronix.de/cgit/barebox/commit/?id=f0fc6ca923e7 (link may not be stable)
[44/58] virtio: fix variable shadowing in virtqueue_add_sgs input scatter loop
        https://git.pengutronix.de/cgit/barebox/commit/?id=ff0c2ac858f3 (link may not be stable)
[45/58] video: mode-helpers: preserve sync polarity in fb_videomode conversion
        https://git.pengutronix.de/cgit/barebox/commit/?id=0faf083d8c26 (link may not be stable)
[46/58] ARM: rockchip: dmc: use define instead of hardcoded value
        https://git.pengutronix.de/cgit/barebox/commit/?id=6e5bf8107858 (link may not be stable)
[47/58] ARM: rockchip: atf: Fix memend
        https://git.pengutronix.de/cgit/barebox/commit/?id=dbc07f2c0dcd (link may not be stable)
[48/58] regulator: fix handling of off_on_delay
        https://git.pengutronix.de/cgit/barebox/commit/?id=7d77fc780984 (link may not be stable)
[49/58] regulator: fixed: handle startup-delay-us property
        https://git.pengutronix.de/cgit/barebox/commit/?id=e55420747c4c (link may not be stable)
[50/58] scripts: include: break dependency of list.h on kernel.h
        https://git.pengutronix.de/cgit/barebox/commit/?id=388f1a4ed209 (link may not be stable)
[51/58] Makefile: include scripts/ in compile_commands.json
        https://git.pengutronix.de/cgit/barebox/commit/?id=6114e1696ce0 (link may not be stable)
[52/58] jwt: fix buffer overflow and double-free in jwt_part_parse
        https://git.pengutronix.de/cgit/barebox/commit/?id=887336a3893f (link may not be stable)
[53/58] of: fdt: fix heap-buffer-overflow in fdt_machine_is_compatible
        https://git.pengutronix.de/cgit/barebox/commit/?id=a93be0c08571 (link may not be stable)
[54/58] powerpc: fix initjmp storing function pointer at wrong offset
        https://git.pengutronix.de/cgit/barebox/commit/?id=9ef982408a17 (link may not be stable)
[55/58] net: r8169: drain RX descriptor ring
        https://git.pengutronix.de/cgit/barebox/commit/?id=61cd0e6d1130 (link may not be stable)
[56/58] of: fdt: refuse / in property and node names
        https://git.pengutronix.de/cgit/barebox/commit/?id=3565bfaa21e6 (link may not be stable)
[57/58] FIT: reconstruct hashed-nodes property during verification
        https://git.pengutronix.de/cgit/barebox/commit/?id=3e37da7f6ec9 (link may not be stable)
[58/58] scripts: fix build failure with glibc 2.43
        https://git.pengutronix.de/cgit/barebox/commit/?id=ad5a62c12de7 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



