Delivery-date: Mon, 17 May 2021 14:05:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lic0T-0002Oq-54
	for lore@lore.pengutronix.de; Mon, 17 May 2021 14:05:57 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lic0Q-0007zH-2R
	for lore@pengutronix.de; Mon, 17 May 2021 14:05:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:MIME-Version:Message-ID:Subject:To:Date:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZJXrP+lptG9sPlNanRWXNSWGHkJOmSakhwAN+n14nKU=; b=f9CjvqPGN9CdW1
	ybNVJwy0eCXjE0HY85rtVxxMjy3D9ohYIenzbYFOw5y9PoX/ZzD42LiowpUqk8ABAftdPPNoVnG3Z
	kx3b+poOh3IWmYdprTkq4ASvjASYpqZRYivLTcmPTTmZcbUGcpqoRQmKHdZy2AtESY6F6bhO/qT/2
	jCowXSZZ/h4G4/JVySaLSkVa+5Wmf15M4uZHzeATW4IVPnimk0ASx8UAeOy8BB+NXfvwIk2c6MHhy
	6vEHg9s5P70RZ8KvTOkzG2NXrkZKrBjhDSNcHJmDG6mEga+ydqmbw9oUVqIowbNjzZ6lgV6dQAnVE
	l13N5JjiGCsWcf3ILsHQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1libz1-00EpRt-65; Mon, 17 May 2021 12:04:27 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1libyg-00EpNL-5r
 for barebox@desiato.infradead.org; Mon, 17 May 2021 12:04:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:Content-Type:MIME-Version:
 Message-ID:Subject:To:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=zwiLqmSUsoQyQlGeGlyzvw7GC8RbFro6Uf+RRRu5E9s=; b=1JzRpSUB7K1yNN4nq4ihiwWplO
 MeKuKoC2SxGkuzdDLqqgIR7A44e4H15xJIDlMfT1la1F7RjAwUFAms6lQmGrKcVmnB5rwDkRIlgY1
 +tIrXGdGdFClM7aQ5x9tmKxTvRyMDDLRrfZNWJPFK4BW0/N5ZGvIiYmuoLCoidD949mrMAokx67xl
 3aBcV7Byds6vy3PexOAlPg2gNMM+EhUVRenAzmNmsqqwVU1s5LYd3UoVnt9SL1N17WgCHzNq0D6Bd
 Jrdx7Qoz7QJH+0EZpLrIdY/6jxOYKCEwLwE3o88GJoaXr/vzIgbOKFYDZUVihQSPO0ie9iGDKlLTu
 1dud/ecA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1libyb-00Djwo-Bz
 for barebox@lists.infradead.org; Mon, 17 May 2021 12:04:04 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1libyZ-0007ky-Pt; Mon, 17 May 2021 14:03:59 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1libyZ-0006E1-G1; Mon, 17 May 2021 14:03:59 +0200
Date: Mon, 17 May 2021 14:03:59 +0200
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20210517120359.GS19819@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:32:27 up 88 days, 14:56, 106 users,  load average: 0.12, 0.16,
 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_050401_436051_12A5FC57 
X-CRM114-Status: GOOD (  20.27  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: v2021.05.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi All,

I am happy to announce barebox-2021.05.0. Nothing really outstanding
has happened since the last release, there's just the usual flow of
fixes and driver updates.

One thing worth mentioning though is that we now have a public inbox instance
running at https://lore.barebox.org/barebox/. Besides of being a very
nice archive software many barebox patches now have a Link: tag pointing
to the patch and its discussion. Currently only the patches that I pick
from the mailing list have such a tag. That doesn't includ the patches I
have created myself, it seems I have to separate my Maintainer hat from
my submitter hat :). I'll work on that and I hope soon all patches get a
Link: tag.

Have Fun!
 Sascha

Ahmad Fatoum (33):
      common: drop done TODO about 4G partitions
      x86: drop legacy (PC BIOS) boot in favor of EFI
      doc: fix note about disassembling PBL
      net: phy: at803x: fix incorrect use of FIELD_PREP
      clk: imx: clk-pllv1: fix wrong PLL recalc on i.MX1/i.MX21
      kbuild: add -Wtype-limits to compile flags
      mtd: fix possible overflow during mtd size multiplication
      input: console: skip unmappable keys
      gpiolib: add Linux-like gpiod_get() helper
      sound: gpio-beeper: simplify using new gpiod_get helper
      power: reset: add GPIO poweroff driver
      common: add option for shipping KCONFIG_CONFIG as /env/data/config
      power: reset: add GPIO restart driver
      watchdog: add GPIO watchdog driver
      video: bochs: pci: fix unterminated PCI device table
      virtio: pci: fix 64-bit incompatibility
      virtio: pci: remove inaccurate comment on 64-bit bar addr incompatibility
      gpio: pl061: implement gpio_ops::get_direction
      edit: don't change terminal mode if sedit would fail to read file
      resource: enable use of iomem command on EFI systems
      ARM: i.MX7/8M: reliably detect serial boot
      sandbox: env: set nv.autoboot=abort to drop to shell
      sandbox: state: reword warning about initial state errors
      ARM: pbl: uncompress: add comment explaining order of operations
      RISC-V: boot: uncompress: determine piggy data bounds before relocation
      input: add virtio input driver
      input: virtio_input: add sound support
      Documentation: virtio: Fix virtio reference
      Documentation: reboot-mode: fix headings
      Documentation: reference reboot-mode Documentation
      Documentation: add barebox porter's guide
      sandbox: watchdog: don't return positive values from set_timeout
      Documentation: user: watchdog: sync with current state

Denis Osterland-Heim (1):
      scripts: imx: add support for additional hab Blocks

Juergen Borleis (1):
      ARM: i.MX: Add support for Skov i.MX6 boards

Jules Maselbas (6):
      clock: Change cyc2ns return type to uint64_t
      clock: Update cs->cycle_last when switching clock
      clock: Remove time_beginning
      common: common_console: Rework log_print
      Documentation: kvx: Fix broken link
      fs: Fix link_path_walk to return -ENOENT on empty path

Lars Pedersen (1):
      ARM: i.MX: Kamstrup mx7 concentrator board support

Lucas Stach (1):
      ARM: i.MX: demote reset reason print to debug level

Roland Hieber (1):
      README: advertise lore.barebox.org instead of mail-archive.com

Sam Ravnborg (3):
      atmel_lcdfb: fix atmel,lcd-wiring-mode; BGR => BRG
      pwm: add pwm-atmel from Linux kernel 4.14
      ARM: AT91: Add skov-arm9cpu board support

Sascha Hauer (18):
      mtd: nand: mxs-nand: set oob layout earlier
      clk: divider: fix divider setting with CLK_SET_RATE_PARENT
      ARM: i.MX: convert early gpio value accessors to static inline functions
      ARM: i.MX: Add missing __iomem annotation
      bareboximd: Use mmap when possibly
      Merge branch 'for-next/clk'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/gpio'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/virtio'
      ARM: i.MX: Skov: Add missing files
      Revert "mtd: nand_bbt: Skip bad blocks when searching for the BBT in NAND"
      usb: dwc2: Fix wait for mode timeout
      readline_simple: Fix compiler warning
      ARM: at91: boot_test_cmd: Fix compiler warning
      mci: atmel-sdhci: FIx compiler warning
      Release v2021.05.0

Stafford Horne (1):
      Documentation: Add qemu instructions for OpenRISC

Stefan Riedmueller (2):
      net: eth: of_fixup_node: Use reproducible node name for fixup
      mtd: nand_bbt: Skip bad blocks when searching for the BBT in NAND

Vivien Didelot (1):
      Documentation: fix sucessfuly -> successfully typo

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

