Delivery-date: Sat, 20 Dec 2025 23:01:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vX51L-00Dg2f-35
	for lore@lore.pengutronix.de;
	Sat, 20 Dec 2025 23:01:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vX51L-0006M1-6w
	for lore@pengutronix.de; Sat, 20 Dec 2025 23:01:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WVGV6TZrBLTJY6IQSu/n0r62MLtDQY8ZAoRxImjKFzU=; b=nltzZN9Ti7j9G+znI1lMsQDyHc
	u5zOVkHYzMRYGpNUUpA6oG+y9fhQSH2h1IA/u2mW+HNNSF+YSc8VwtCR9Uvze+E+xg+y5XGBqImWy
	BfB/sK6laxVgh63rdZKa75HF9bJLlXiCe1j7PeuhDbftjVs0F6bki176Df7qVR0gvSAAHazVcWzEE
	PeviDhvPDRJ6kml+yWQaRkab8ziSOxlVQkC3wbEoVJTNpkHdSC6sBv8zN3FyvDAr7VG217Pho1Nsp
	QpFSis1ocfmLtWUTDm6Nrbw08Pfx5Mh24BYEj9AuDTE9WDGheDYjfdTm5nsU7BN2DAUdSftC+mI47
	Y4Bzz7fA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vX50U-0000000BvpY-1WAO;
	Sat, 20 Dec 2025 22:00:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vX50L-0000000Bvnr-1VNW
	for barebox@lists.infradead.org;
	Sat, 20 Dec 2025 22:00:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vX50I-0006Cf-Nx; Sat, 20 Dec 2025 23:00:46 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vX50H-006fzQ-23;
	Sat, 20 Dec 2025 23:00:45 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vX50H-00000007sSo-2NQB;
	Sat, 20 Dec 2025 23:00:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
References: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
Message-Id: <176626804555.1877494.13857499330679782140.b4-ty@pengutronix.de>
Date: Sat, 20 Dec 2025 23:00:45 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251220_140049_405643_1103D4B9 
X-CRM114-Status: GOOD (  14.31  )
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
Subject: Re: [PATCH v2025.09.y 00/49] Backports for v2025.09.1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 19 Dec 2025 10:20:36 +0100, Ahmad Fatoum wrote:
> We intend to maintain v2025.09.y upstream until Yocto Whinlatter becomes
> EOL in April 2026.
> 
> All fixes included in this series are backports from master and have
> mostly been part of newer releases.
> 
> Ahmad Fatoum (20):
>   scripts: rockchip: rkimage: reinstate OpenSSL 1.1 compatibility
>   range: fix corner cases when exclusive end is zero
>   state: guard against empty variable set in DT
>   ARM: i.MX8M: romapi: skip zero_page_access() if MMU is disabled
>   ARM: mmu: have zero_page_remappable() check MMU status
>   ARM: mmu: fix hang when reserved memory at start of RAM
>   poller: activate POLLER_WARN_OVERTIME only on third strike
>   bootm: fix boot override inheritance
>   fs: qemu_fw_cfg: make use of the automount
>   fs: qemu_fw_cfg: handle non-existent opt/org.barebox.env key
>     gracefully
>   boards: qemu-virt: drop fitimage-pubkey.dts
>   sandbox: fix race with .old_version removal
>   mci: am654-sdhci: correctly configure SLOTTYPE_EMBEDDED
>   net: arp: collect context into new struct pending_arp
>   net: reset pending ARP state when request is done
>   test: populate qemu_bin, even if missing features
>   test: exit directly when invoking QEMU states on non-QEMU targets
>   param: make setting a parameter to the same string value a no-op
>   i2c: omap: fix probe on am335x
>   net: 9p: fix variable name in BAREBOX_MAGICVAR
> 
> [...]

Applied, thanks!

[01/49] mci: sdhci: am654: Use sdhci_wait_idle()
        (no commit info)
[02/49] clk: rockchip: rk3588: Add PLL rate for 1500 MHz
        (no commit info)
[03/49] ARM: i.MX6: configure AIPS registers only if trusted
        (no commit info)
[04/49] ARM: dts: rockchip: Set initial CPU frequencies for RK3588
        (no commit info)
[05/49] ARM: dts: rockchip: Set CPLL frequency for RK3588
        (no commit info)
[06/49] scripts: rockchip: rkimage: reinstate OpenSSL 1.1 compatibility
        (no commit info)
[07/49] ARM: dts: am62lx: fix secondary core startup
        (no commit info)
[08/49] ARM: i.MX: Fix the iomux DSE defines for imx8mp
        (no commit info)
[09/49] virtio: Stop spamming debug buffer
        (no commit info)
[10/49] clk: clk_set_parent: skip any operation if current and new parents are equal
        (no commit info)
[11/49] range: fix corner cases when exclusive end is zero
        (no commit info)
[12/49] mtd: peb: mtd_peb_read(): move error message to caller
        (no commit info)
[13/49] state: guard against empty variable set in DT
        (no commit info)
[14/49] fs: nfs: drop PROG_NFS special casing
        (no commit info)
[15/49] fs: nfs: do not read past packets
        (no commit info)
[16/49] ARM: i.MX8M: romapi: skip zero_page_access() if MMU is disabled
        (no commit info)
[17/49] ARM: mmu: have zero_page_remappable() check MMU status
        (no commit info)
[18/49] ARM: mmu: fix hang when reserved memory at start of RAM
        (no commit info)
[19/49] clk: rockchip rk3588: configure CPLL in driver
        (no commit info)
[20/49] poller: activate POLLER_WARN_OVERTIME only on third strike
        (no commit info)
[21/49] bootm: fix boot override inheritance
        (no commit info)
[22/49] commands: truncate: fix multiple file handling with relative sizes
        (no commit info)
[23/49] fs: qemu_fw_cfg: make use of the automount
        (no commit info)
[24/49] fs: qemu_fw_cfg: handle non-existent opt/org.barebox.env key gracefully
        (no commit info)
[25/49] boards: qemu-virt: drop fitimage-pubkey.dts
        (no commit info)
[26/49] pci: pci-tegra: fix null pointer assignation.
        (no commit info)
[27/49] sandbox: fix race with .old_version removal
        (no commit info)
[28/49] net: designware-imx: don't set txclk when mode is (r)mii
        (no commit info)
[29/49] mci: am654-sdhci: correctly configure SLOTTYPE_EMBEDDED
        (no commit info)
[30/49] scripts: imx: Makefile.mingw64: add _GNU_SOURCE
        (no commit info)
[31/49] scripts: imx: add pread implementation for mingw target
        (no commit info)
[32/49] net: arp: collect context into new struct pending_arp
        (no commit info)
[33/49] net: reset pending ARP state when request is done
        (no commit info)
[34/49] test: populate qemu_bin, even if missing features
        (no commit info)
[35/49] ARM: i.MX8M: Fix the RAM size calculation for DDR3
        (no commit info)
[36/49] test: exit directly when invoking QEMU states on non-QEMU targets
        (no commit info)
[37/49] tlv: register_device() error handling
        (no commit info)
[38/49] fs: fix automount when last filename component is a automountpoint
        (no commit info)
[39/49] ARM: K3: am62l: don't put sysfwdata into 1st stage image
        (no commit info)
[40/49] ARM: k3: make some firmware files SoC specific
        (no commit info)
[41/49] ARM: k3: am62l: Add dedicated config option for OP-TEE
        (no commit info)
[42/49] ARM: k3: am62l: fix dependencies on k3img input files
        (no commit info)
[43/49] lib: base64: Fix out-of-bounds potential by respecting dst_len
        (no commit info)
[44/49] param: make setting a parameter to the same string value a no-op
        https://git.pengutronix.de/cgit/barebox/commit/?id=c8cfce813f2f (link may not be stable)
[45/49] i2c: omap: fix probe on am335x
        https://git.pengutronix.de/cgit/barebox/commit/?id=b3c4f9a12b8c (link may not be stable)
[46/49] net: 9p: fix variable name in BAREBOX_MAGICVAR
        https://git.pengutronix.de/cgit/barebox/commit/?id=370f8098d2ab (link may not be stable)
[47/49] pmdomain: fix collision in names when registering
        https://git.pengutronix.de/cgit/barebox/commit/?id=e2d7e0322811 (link may not be stable)
[48/49] i2c: implement i2c_unregister_device()
        (no commit info)
[49/49] eeprom: at24: unregister devices in error path
        (no commit info)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



