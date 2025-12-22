Delivery-date: Mon, 22 Dec 2025 11:16:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vXcxf-00ECpE-1S
	for lore@lore.pengutronix.de;
	Mon, 22 Dec 2025 11:16:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vXcxe-0004PS-QD
	for lore@pengutronix.de; Mon, 22 Dec 2025 11:16:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rH05YnVXBOtafOV/ybMP3EedVbssi8ZfSw5rPTeK340=; b=Cpvc9wITIyC5lBWOuFT6APPDrK
	+SymbLOFlfSUdUbC4cE6eXXREQS4htneES6lsYRTvBdMNOhlhTBlkp1BWWNkOFLUSvuj2RBI+1RlL
	JBkBX6/3UTiVGQblvuQ6M+iCfjzxvE5ANQ1NCoQ6mFcTq0DqQwiBImvDqV8m4oa0JYhfW8k2OE3Qq
	YcFiDmRvEmkqa6sb9BtO3YiA9rwWQ2Nfx4dBkraMNK1cIeKSA6PcApXovlhOzqWchglU8gaMHJIG7
	JmGBZ1IuGI5di9MN15lfDy5rRSN/mXS2MglPRnG07piRRNzvOt3osY/gpbwuGMF77J/TXLoYZ0dZD
	gqUVtpaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXcx4-0000000Dbc2-3Lqa;
	Mon, 22 Dec 2025 10:15:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXcx2-0000000DbbE-0kCF
	for barebox@lists.infradead.org;
	Mon, 22 Dec 2025 10:15:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vXcx0-0004KT-15; Mon, 22 Dec 2025 11:15:38 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vXcwz-006v5V-03;
	Mon, 22 Dec 2025 11:15:37 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vXcwy-004ThH-2s;
	Mon, 22 Dec 2025 11:15:36 +0100
Date: Mon, 22 Dec 2025 11:15:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <aUkaSKDePHF8__LB@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251222_021540_287483_6A7620FD 
X-CRM114-Status: GOOD (  15.00  )
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
Subject: v2025.09.1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi All,

I just created a stable update for barebox-2025.09.0. Background is that
we want to create stable releases to provide stable updates for the YOCTO
barebox recipes. This stable release is specifically targeted at
whinlatter which is currently at v2025.09.0

Sascha

Ahmad Fatoum (20):
      scripts: rockchip: rkimage: reinstate OpenSSL 1.1 compatibility
      range: fix corner cases when exclusive end is zero
      state: guard against empty variable set in DT
      ARM: i.MX8M: romapi: skip zero_page_access() if MMU is disabled
      ARM: mmu: have zero_page_remappable() check MMU status
      ARM: mmu: fix hang when reserved memory at start of RAM
      poller: activate POLLER_WARN_OVERTIME only on third strike
      bootm: fix boot override inheritance
      fs: qemu_fw_cfg: make use of the automount
      fs: qemu_fw_cfg: handle non-existent opt/org.barebox.env key gracefully
      boards: qemu-virt: drop fitimage-pubkey.dts
      sandbox: fix race with .old_version removal
      mci: am654-sdhci: correctly configure SLOTTYPE_EMBEDDED
      net: arp: collect context into new struct pending_arp
      net: reset pending ARP state when request is done
      test: populate qemu_bin, even if missing features
      test: exit directly when invoking QEMU states on non-QEMU targets
      param: make setting a parameter to the same string value a no-op
      i2c: omap: fix probe on am335x
      net: 9p: fix variable name in BAREBOX_MAGICVAR

Alexander Shiyan (4):
      clk: rockchip: rk3588: Add PLL rate for 1500 MHz
      ARM: dts: rockchip: Set initial CPU frequencies for RK3588
      ARM: dts: rockchip: Set CPLL frequency for RK3588
      commands: truncate: fix multiple file handling with relative sizes

Chali Anis (1):
      pci: pci-tegra: fix null pointer assignation.

Jonas Rebmann (3):
      virtio: Stop spamming debug buffer
      tlv: register_device() error handling
      lib: base64: Fix out-of-bounds potential by respecting dst_len

Maud Spierings (6):
      ARM: i.MX: Fix the iomux DSE defines for imx8mp
      net: designware-imx: don't set txclk when mode is (r)mii
      scripts: imx: Makefile.mingw64: add _GNU_SOURCE
      scripts: imx: add pread implementation for mingw target
      ARM: i.MX8M: Fix the RAM size calculation for DDR3
      pmdomain: fix collision in names when registering

Michael Grzeschik (1):
      clk: clk_set_parent: skip any operation if current and new parents are equal

Philipp Zabel (1):
      ARM: i.MX6: configure AIPS registers only if trusted

Sascha Hauer (15):
      mci: sdhci: am654: Use sdhci_wait_idle()
      ARM: dts: am62lx: fix secondary core startup
      mtd: peb: mtd_peb_read(): move error message to caller
      fs: nfs: drop PROG_NFS special casing
      fs: nfs: do not read past packets
      clk: rockchip rk3588: configure CPLL in driver
      fs: fix automount when last filename component is a automountpoint
      ARM: K3: am62l: don't put sysfwdata into 1st stage image
      ARM: k3: make some firmware files SoC specific
      ARM: k3: am62l: Add dedicated config option for OP-TEE
      ARM: k3: am62l: fix dependencies on k3img input files
      i2c: implement i2c_unregister_device()
      eeprom: at24: unregister devices in error path
      ARM: i.MX8MN-EVK: Fix maximum load size
      Release v2025.09.1

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


