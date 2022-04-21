Delivery-date: Thu, 21 Apr 2022 10:19:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nhS2d-009w5R-7j
	for lore@lore.pengutronix.de; Thu, 21 Apr 2022 10:19:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nhS2a-0007J9-8E
	for lore@pengutronix.de; Thu, 21 Apr 2022 10:19:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:MIME-Version:Message-ID:Subject:To
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FrIWVfFmdIehHa1IJ1/En4iLkikF8+dqju23xMyRI2k=; b=c/zsbwgrJDp4nM
	M8NRk6hVILprWfJB2k3vi9eUMKzVPbMj/Brx+Ad9iLqKZV0tkW7aXvW6tJQD4JqwqOTIubv8Ji5qf
	sRitLlVlmAS8Cr3fIJBd8hdvGNNlyd1mmEwn4EJeMD/IY2qA9JBqT4radmPw0OdZ0nx3+T/B8KDHw
	Xp+H4G355mqoxsUFT5CVgp8AXYluJV+PS+Y4ZjJF/is6hQ5VIlfjpD0UkEH0iGpmhEh/ij1ohTcVu
	rMvS1gnP6r2qTW+/NQ4S0AXrk8R64NBU7rU/rz4q4kAsMoLOGpvkQ4sqXIrepdFN4KSUXUPe2OfuD
	fbG38PblYBe0GV9ja3hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhS12-00CODk-7R; Thu, 21 Apr 2022 08:18:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhS0d-00COAy-DE
 for barebox@lists.infradead.org; Thu, 21 Apr 2022 08:17:54 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nhS0b-00077S-KU; Thu, 21 Apr 2022 10:17:49 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nhS0b-0002pj-C1; Thu, 21 Apr 2022 10:17:49 +0200
Date: Thu, 21 Apr 2022 10:17:49 +0200
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20220421081749.GX4012@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:57:06 up 21 days, 20:26, 73 users,  load average: 0.10, 0.09, 0.08
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220421_011751_535541_B28049AF 
X-CRM114-Status: GOOD (  20.39  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: v2022.04.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi All,

barebox-2022.04.0 is out. This release brings us a new stm32mp1 board
support for the PHYTEC phyCORE stm32mp1. Ahmad has invested some effort
to get initial driver support for the ARM System Control and Management
Interface (SCMI), we might see becoming this more widely adopted in the
future, right now we can use it on the st32mp1. Also we have a
last-minute fix to fix booting on OMAP platforms. These failed when the
NAND/NOR was already partitioned in the device tree when the xload code
created a conflicting partition to read the barebox image from.

Other than that the usual cleanup patches, see below.

Have Fun!
  Sascha

----------------------------------------------------------------
Ahmad Fatoum (39):
      PBL: fdt: factor reg property parsing into helper
      pinctrl: stm32: use gpio-ranges instead of alias
      ARM: stm32mp: simplify with build_stm32mp_image macro
      ARM: stm32mp: change stm32image extension to .stm32
      filetype: detect TF-A Firmware Image Packages (FIP)
      scripts: add tool to adjust bl33 load address in existing FIP
      ARM: stm32mp: build extra barebox-stm32mp-generic-bl33.img
      ARM: stm32mp: ddrctrl: fix wrong register field widths
      reset: stm32: drop stm32mp1_reset_ops indirection
      reset: move stm32 reset code to drivers/power/reset
      ARM: smccc: sync header with upstream
      firmware: import Linux v5.13 SCMI support
      reset: add SCMI support
      clk: add SCMI clock driver
      regulator: add SCMI regulator driver
      clk: accept const arguments in clk_to_clk_hw/clk_hw_to_clk
      serial: stm32: bail if clock_get_rate returns zero
      clk: implement of_clk_hw_{onecell,simple}_get
      commands: tutorial: adjust command description
      ARM: i.MX: factor out AIPS configuration into helper function
      ARM: i.MX6: configure AIPS3 for i.MX6ULL/i.MX6SX
      RISC-V: virt: riscvemu: add interactive tutorial
      of: deep-probe: replace BUG() with more verbose panic()
      watchdog: wdat: fix mixed spaces/tabs in alignment
      compiler: add support for fallthrough attribute
      reset: add support for reset_control_status
      clk: stm32mp1: sync with Linux v5.17-rc1
      regulator: core: fall back to node name if no regulator-name property
      ARM: dts: stm32mp: remove regulator-name override in stm32mp151.dtsi
      ARM: stm32mp: enable more config options
      ARM: stm32mp: ddrctl: add STM32MP131 RAM size querying support
      ARM: stm32mp: add board support for STM32MP135F-DK
      ARM: stm32mp: ddrctl: add STM32MP131 RAM size querying support
      usb: gadget: implement and use system_partitions_get_null
      usb: gadget: don't register UMS with empty function
      usb: gadget: mass-storage: fix clean up of file descriptors
      usb: gadget: mass-storage: reference count allocations used in bthread
      usb: gadget: multi: fix broken handling of USB function bind error
      usb: gadget: multi: free UMS instance at multi_unbind time

Andrej Picej (1):
      regulator: fix memory leak

Bastian Krause (1):
      arch: arm: mach-imx: document field return in CSF template

Daniel Br=E1t (1):
      phy: core: Make 'phy_optional_get' return NULL when not implemented

Denis Orlov (1):
      usb: host: ehci: reorder code in ehci_probe()

Joacim Zetterling (7):
      ARM: imx: Add imx8 support for 18 bit SDRAM row size handle
      ARM: imx: Add imx8 support for SDRAM with two or more bank groups
      ARM: imx: Correct mem size calculation for 4/8/16/32 bit bus width
      ARM: imx: Correct bit count function
      driver: mtd: spi-nor: Add Micron MT25QU256A 1V8 SPI flash
      ARM: imx: spi: Add NXP IMX8 Flex SPI/QSPI support
      ARM: arch: dts: qspi: Add QSPI config to the NXP IMX8MN-EVK board

Michael Riesch (1):
      net: designware: rockchip: improve support for multiple gmac instances

Rouven Czerwinski (2):
      Kbuild: use printf for as-instr
      kbuild: dtc: use env to resolve echo

Sascha Hauer (27):
      dts: update to v5.17-rc3
      dts: update to v5.17-rc4
      dts: update to v5.17-rc5
      regulator: fix memory leak #2
      dts: update to v5.17-rc6
      clk: Enable clk_bulk_* functions only with CONFIG_COMMON_CLK
      dts: update to v5.17-rc7
      of: platform: return early when deep probe is not supported
      clk: imx6: Add hdmi_isfr clk
      clk: imx6: fix axi_sels
      clk: imx6: Fix periph_clk2_sel and periph2_clk2_sel clocks
      clk: imx6: emi_sel clock muxing
      clk: imx6: fix cko1_sels
      clk: imx6: do pfd workaround unconditionally
      ARM: i.MX: Remove duplicate PFD workaround
      of: rename of_find_node_by_name() to of_find_node_by_name_address()
      of: Add of_find_node_by_name() with Linux semantics
      of: platform: Change of_devices_ensure_probed_by_property() return va=
lue
      of: platform: Ensure timers are probed early
      Merge branch 'for-next/dts'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/of-deep-probe'
      Merge branch 'for-next/stm32'
      mtd: peb: Add mtd_peb_read_file()
      ARM: omap: xload: read from unpartitioned device
      Release v2022.04.0

Steffen Trumtrar (1):
      ARM: stm32: add support for PHYTEC phyCORE stm32mp1

Uwe Kleine-K=F6nig (1):
      crypto: Followup to crypto symbol renaming for algo registration
-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

