Delivery-date: Wed, 18 May 2022 15:00:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nrJIM-000SYM-4t
	for lore@lore.pengutronix.de; Wed, 18 May 2022 15:00:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nrJIK-0003mQ-Dh
	for lore@pengutronix.de; Wed, 18 May 2022 15:00:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:MIME-Version:Message-ID:Subject:To
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gTb4e/fRKGKtQKwqwhaGcekfxyvI4bBBqdJ2rtDJtVY=; b=3sYd48y4y3w66C
	VN4+qnKgdjPm511g47EUUij2/+4q5+OVg0oRFzsL3aCzP9tO1S/rR1V1q/xPWowMpEBU0xUmVM4by
	qRnciOWQAdxdk0ssqPnxgegjSw263fPTfeh3+QflBxY7sQgvKGg1LZYcQaqG13YKiccfXhhlpo/oW
	fPp1u8eqyGPsR9mxV+AramspML0uzIVuaOJrbMb86vkF+VC5guDcY90ZkdZ+pjfPpT+PnQBLO07HH
	PAdFle4ee71jCsZPaC9Nz/W5Fu3bq2lCoobBcCBFWhy2hcUI8914yinwNF/5KmOpXpAmePQpaMRjI
	3qP/LKuCbNKNLtPPniSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nrJGa-002CEv-JG; Wed, 18 May 2022 12:59:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrJGU-002CDy-Tz
 for barebox@lists.infradead.org; Wed, 18 May 2022 12:59:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nrJGO-00032R-Ly; Wed, 18 May 2022 14:58:52 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nrJGO-0002cV-D8; Wed, 18 May 2022 14:58:52 +0200
Date: Wed, 18 May 2022 14:58:52 +0200
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20220518125852.GS25578@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:52:04 up 49 days,  1:21, 83 users,  load average: 0.17, 0.19, 0.21
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220518_055859_004849_1524910A 
X-CRM114-Status: GOOD (  19.14  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: v2022.05.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi All,

barebox-2022.05.0 is out.

With this version barebox now has initial DSA (Distributed Switch
Architecture) support. Thanks, Oleksij. While barebox is not famous for
its elaborated networking capabilities, DSA can be quite interesting
to allow networking on boards which have programmable switches attached
to their network ports. Without DSA it's often not possible to do any
networking on these boards as the default settings of the switch do not
pass through any packets.

Other than that we have the usual flow of smaller fixes and changes, see
below.

Have fun!
 Sascha

----------------------------------------------------------------
Ahmad Fatoum (20):
      ARM: dts: stm32mp: remove no-longer required DT override
      gpio: include header for BIT() used in <gpio.h>
      ARM: asm: setjmp: add missing .pop_section
      partitions: efi: print GPT offset in debug message
      scripts: constify write_full input buffer
      libfile: implement new pread_full
      scripts: remove non-existent bareboxstate binaries from .gitignore
      sandbox: board: add stickypage.bin into .gitignore
      mci: mci_spi: extend driver for device tree probing
      mtd: spi-nor: add support for ISSI IS25WP256
      video: ipuv3: combine two subsequent info prints into one
      ARM: asm: fix miscompilation of 32-bit ENTRY_FUNCTION_WITHSTACK
      clk: add BCM2835 auxiliary peripheral clock driver
      clocksource: assign non-zero priorities to all clocksources
      gpiolib: remove declaration of now unused variable
      Documentation: remote-control: be explicit about python2 requirement
      mci: stm32_sdmmc2: add STM32MP131 AMBA primecell peripheral ID
      Documentation: boards: stm32mp: elaborate on how to build
      ARM: rpi: fix CM3 breakage after multi-image rework
      ARM: i.MX7: esdctl: fix out-of-bounds read on memory size calculation

Alexander Shiyan (4):
      ARM: CCMX51: Remove excess assignment
      ARM: CCMX51: Add support for low-level debug
      ARM: CCMX51: Add support for 16-bit memory module variants
      GPIO: clps711x: Simplify initialization

Andrej Picej (1):
      ARM: pbab01: allow USB-OTG port runtime configuration

Bastian Krause (2):
      clk: handle NULL args in clk_set_parent()
      clk: handle NULL args in clk_{g,s}et_parent() v2

Denis Orlov (1):
      ata: ide-sff: fix integer overflow in ata_wait_busy()

Frank Wunderlich (2):
      ARM: Rockchip: Update DTS for BPI-R2Pro for new HW-Rev
      ARM: rockchip: fix iodomain for r2pro V1.0

Ian Abbott (1):
      ARM: fix GCC 11.x build failures for ARMv7

Juergen Borleis (3):
      ARM: webasto-ccbv2: consider the available memory size for optee
      ARM: webasto-marvel: add device tree shared with the kernel
      ARM: webasto-marvel: share the run-time setup with the ccbv2 variant

Jules Maselbas (1):
      net: dns: Generate and verify transaction ID

Lucas Stach (3):
      phy: freescale: imx8mq-usb: add support for i.MX8MP PHY
      usb: dwc3: of-simple: add i.MX8MP compatible
      ARM: imx: esdctl: fix LPDDR4 size calculation

Oleksij Rempel (21):
      ARM: boards: protonic-imx6: add board specific BBU SD handlers
      ARM: boards: protonic-imx6: properly configure RGMII direction for the FEC MAC
      ARM: boards: protonic-imx6: fix file system access warning
      net: designware: eqos: fix receive issue with external switch
      ARM: dts: at91-microchip-ksz9477-evb: start using kernel DT
      net: add RX preprocessor support
      net: add of_find_eth_device_by_node() function
      net: phy: export of_phy_register_fixed_link() function
      net: add DSA framework to support basic switch functionality
      driver: add dev_get_priv() helper
      net: port part of if_vlan header from kernel v5.17
      spi: port spi_sync_transfer() function from kernel v5.17
      net: mdio: add MDIO_DEVAD_NONE define
      net: phy: make sure MDIO bus is probed if we search for the PHY
      of_net: add rev-rmii support
      net: dsa: add support for SJA11xx switches
      net: dsa: add KSZ9477 switch SPI driver
      hexdump: provide support for dev_print_hex_dump()
      add ethlog command
      net: phy: do not call adjust_link() form phy_device_attach()
      net: phy: add TI DP83TD510E T1L PHY support

Rouven Czerwinski (1):
      net: designware: eqos: do not try to talk to not existing PHY

Sascha Hauer (17):
      dts: update to v5.17-rc8
      dts: update to v5.17
      gpio: allocate dynamic gpio numbers top down
      dts: update to v5.18-rc1
      dts: update to v5.18-rc2
      usb: xhci: Honor transfer timeouts
      dts: update to v5.18-rc3
      ARM: omap: Fix linker error with MTD disabled
      Merge branch 'for-next/dsa'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/stm32'
      clk: imx8mp: remove SYS PLL 1/2 clock gates
      Documentation: boards: i.MX8MP-EVK: Fix typo
      ARM: karo-tx6x: Fix DCD check operations
      Release v2022.05.0

Steffen Trumtrar (2):
      net: phy: mv88e6xxx: implement port_set_speed for mv88e6250
      net: phy: mv88e6xxx: add support for mv88e6250

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

