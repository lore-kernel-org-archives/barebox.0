Delivery-date: Mon, 27 Jun 2022 09:59:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o5jeT-00G7O1-JH
	for lore@lore.pengutronix.de; Mon, 27 Jun 2022 09:59:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o5jeV-0004pg-6S
	for lore@pengutronix.de; Mon, 27 Jun 2022 09:59:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:To:
	Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=P0xG+fu04/Ac0azlArCvblpAA2xDPNdn7+1V2ZaLPOw=; b=Wbn+tTLF2C53KE
	h14ruUrZ2kDjSz+LoKgNtdaBwvGPcuuPeomc1wlalJIsD11fv3kPwM+EEgKcFf6snPnI2tyy1/GhG
	1y1BqdUg/HTTVuXj1fTAPCji+RJODh4X9WR2TnAHc3qOyAJByD/568sKHzBB6n3Z90hY/8cJkAkwK
	8ez6jtdtBEuYCeSEddsNIuVt93Ru/KJIUf6+CyBraFIxRNWlSbdQRgZXQNik5zNOsCsabedAAUy8A
	j7mZmGYhq9F0cYGpOk9E3pF95fUT1RGV8HzQmRsyuO2QM/0EnF48JEDXkncvvzcRyrlmo7JA99QkQ
	FEoJZyaLAWFxsgyyDVIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5jcv-00GaJ8-Nc; Mon, 27 Jun 2022 07:57:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5jcq-00GaGn-93
	for barebox@lists.infradead.org; Mon, 27 Jun 2022 07:57:42 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o5jco-0004at-3e; Mon, 27 Jun 2022 09:57:38 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o5jcn-0005F0-RE; Mon, 27 Jun 2022 09:57:37 +0200
Date: Mon, 27 Jun 2022 09:57:37 +0200
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20220627075737.GE19026@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220627_005740_365026_CB6E2FB7 
X-CRM114-Status: GOOD (  17.76  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: v2022.06.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi All,

I am happy to announce barebox-2022.06.0. It's a rather small release,
but there are some interesting things. The i.MX8M RAM size detection has
been fixed by Ahmad and should now work for more (all?) i.MX8M SoC
variants and SDRAM combinations. The AHCI driver has been cleaned up a
lot, thanks Denis. The FIT image signature check no longer depends on
a valid key-name-hint, instead it can use all available keys to check
the signature of a FIT image which simplifies handling of multiple keys.

For a full list of changes see below.

Have Fun!
  Sascha

-----------------------------8<---------------------------

Ahmad Fatoum (20):
      ARM: cpu: board-dt-2nd: call arm_cpu_lowlevel_init
      ARM: rpi: don't warn about lack of videocore fdt
      ARM: rpi: remove outdated comment after stack setup rework
      ARM: configs: rpi: add and document single barebox-dt-2nd bootloader
      spi: Port SiFive SPI controller driver
      RISC-V: sifive: enable SPI Flash and SD in config
      common: add $global.serial_number with device tree fixup
      i2c: rockchip: fix transfer return value
      Documentation: boards: stm32mp: document USB bootstrap via DFU
      Documentation: user: usb: fix literal block :: when : is intended
      test: self: add basic testing for malloc()
      tlsf: fix internal overflow trying to allocate big buffers
      ARM: rpi: reinstate support for multiple variants with same DT
      PBL: fdt: fix /memory parsing when #address-cells != #size-cells
      ARM: cpu: don't clobber sp when booted in HYP mode
      ARM: i.MX8M: refactor to prepare i.MX8MN LPDDR4 support
      ARM: i.MX8M: esdctl: fix LPDDR4 size calculation for nano
      ARM: i.MX8M: esdctl: ignore ADDRMAP8 for non-DDR4
      ARM: i.MX8MQ: initialize ADDRMAP7
      ddr: imx8m: workaround old spreadsheets not initializing ADDRMAP7

Alexander Shiyan (12):
      video: omap-fb: Rework to enable COMPILE_TEST option
      serial: ns16550: Reuse 16550 serial for tegra UART
      arm: boards: Add support for MYIR MYD-AM335X Development Board
      ARM: omap: Cleanup omap4_revision
      ARM: optee-early: Fix 'memcpy' implicit declaration
      ata: ahci: Fix format string
      gui: image_renderer: Fix empty prototype for image_renderer_image()
      ARM: vexpress: Add missing "noreturn" attribute to restart function
      ARM: versatile: Add missing "noreturn" attribute to restart function
      lib: logo: Ignore more generated files
      mtd: nand: orion: Disallow driver compile for ARMv4T
      commands: Add CONSOLE dependency for EDIT command

Bastian Krause (1):
      crypto: skip make dependency for CONFIG_CRYPTO_RSA_KEY=__ENV__*

Denis Orlov (19):
      ata: disk_ata_drive: clean up code in ata_dump_id()
      ata: ahci: use abstract read/write functions uniformly
      ata: ahci: replace magic numbers with named constants
      ata: ahci: fix missing whitespace in ahci_add_host()
      ata: ahci: simplify fis structure creation
      ata: ahci: do not ignore dma handles
      ata: ahci: adjust debug messages in ahci_init_port()
      ata: ahci: correct named constants values and names
      ata: ahci: properly fill scatter/gather table
      ata: ahci: use named constants for capabilities bits
      ata: ahci: map buffers properly
      ata: ahci: use 64-bit addressing if available
      ata: ahci: make rx_fis field in ahci_port of type void*
      ata: ahci: add missing capability in ahci_print_info()
      ata: ahci: remove redundant cast in ahci_io()
      ata: ahci: register only implemented ports
      ata: ahci: allocate memory in one call in ahci_init_port()
      ata: ahci: use correct macro when calculating offsets in dma memory
      clk: fix clk_round_rate command description

Lucas Stach (2):
      of: address: treat absent dma-ranges as 1:1 translation
      arm: imx8mq: re-enable DDRC for Barebox

Matthias Fend (1):
      i2c: add Cadence i2c host controller support

Michael Riesch (2):
      phy: rockchip: align naneng-combphy clocks and resets with binding
      usb: dwc3: align dwc3 clocks with binding

Oleksij Rempel (9):
      net: dsa: wait until PHY aneg is done
      ARM: boards: protonic-imx6: make use of barebox_set_serial_number()
      of: add generic of_prepend_machine_compatible()
      ARM: boards: skov-imx6: make use of of_prepend_machine_compatible()
      ARM: boards: protonic-imx6: add HW revision specific machine compatible
      usb: dwc2: add support st,stm32mp15-fs/hsotg devices
      phy: stm32-usphyc: Add dummy driver for child node
      ARM: boards: protonic-stm32mp1: enable deep-probe support
      ARM: dts: stm32mp151-prtt1c: add DSA switch and MDIO nodes

Robin van der Gracht (1):
      mci: imx-esdhc-common: Don't clear unhandled status bits

Sascha Hauer (23):
      rsatoc: fix compiler warnings
      rsatoc: Add option to print dts output
      crypto: simplify $(srctree)/ handling and remove config_filename macro
      rsa: Collect keys on list
      rsa: Add iterator for rsa keys
      rsa: Add pr_fmt and use pr_debug
      rsa: Turn error messages into debug messages
      fit: try other keys as fallback
      dts: update to v5.18-rc4
      dts: update to v5.18-rc5
      dts: update to v5.18-rc6
      gpiolib: fix allocating dynamic gpio numbers.
      Merge branch 'for-next/ahci'
      Merge branch 'for-next/dsa'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/of-board'
      Merge branch 'for-next/rpi'
      Merge branch 'for-next/rsa'
      Merge branch 'for-next/stm32'
      power: reset: reboot-mode: Fix resetting to normal mode
      of: Add missing inline for stub function
      Release v2022.06.0

Teresa Remmet (1):
      arm: imx: mmdc_size: Increase row_max for imx8m

Uwe Kleine-König (2):
      of: address: fix printing of OF node name in error message
      ARM: i.MX8MN: Fix script to extract firmware blobs
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


