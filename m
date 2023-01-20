Delivery-date: Fri, 20 Jan 2023 09:04:20 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pImNo-00HLb1-Sh
	for lore@lore.pengutronix.de; Fri, 20 Jan 2023 09:04:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pImNm-0007Do-Dy
	for lore@pengutronix.de; Fri, 20 Jan 2023 09:04:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:To:
	Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6ahFeizQ8SNCHVsRrxwmqWeG33hKJUnGQMuVdULC8ts=; b=wDPFQre+XKnXEN
	Ati5Lo56ipxUaaGPRklJj6uLeHXUzqRdkgx8HJAJIfPQcFnjqOxS6pC4DmUAYtsW9PBroOmcxFWQu
	g5DQLy2bG6SRVdKgi4Os69V/R65SDHJVj89JQNlC5+pS6bBk5QhydkI0gTrJVZN5vtDdlE3z30LmB
	9O/t5NcjEuxqS4pJnChts/NrSHnXJ01RikL7+IoKYlToeq6RIZ2BZ46iYCwrpsSldVmsFLbaps0vE
	zLbLfenvop1zVLcbY9VfyfNVMosQn/iNmuaWIp8EDDcZ/H6+0av8Ml2zxjcUwMIJDJ0SfAve48K9i
	AznAJV4bxAmhxjY+prRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pImMS-008vMB-2C; Fri, 20 Jan 2023 08:02:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pImMM-008vKe-KN
	for barebox@lists.infradead.org; Fri, 20 Jan 2023 08:02:52 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pImML-00072d-3r; Fri, 20 Jan 2023 09:02:49 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pImMK-0000Xi-Sj; Fri, 20 Jan 2023 09:02:48 +0100
Date: Fri, 20 Jan 2023 09:02:48 +0100
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230120080248.GK24755@pengutronix.de>
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
X-CRM114-CacheID: sfid-20230120_000250_704872_A1266EC1 
X-CRM114-Status: GOOD (  13.59  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: v2023.01.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


Hi All,

barebox-2023.01.0 is out. There are some new features that help with
debugging this time. First of all on ARM debugging output now starts
earlier when CONFIG_DEBUG_INITCALLS is enabled, we'll get the output
of arch/arm/cpu/start.c also then. For the i.MX NAND boot support we
now have a 'fcb' command that displays the contents of the Flash control
blocks that the i.MX ROM reads from NAND. On i.MX8M there is the new
'bootrom' command that displays information about how the ROM actually
came to booting the board. Finally the i.MX7 now supports two staged
NAND loading which allows us to configure the SDRAM from C code.

For the remaining changes see below.

Have Fun!
 Sascha


----------------------------------------------------------------
Ahmad Fatoum (24):
      ARM: i.MX: xload-gpmi-nand: refactor for more SoC support
      ARM: asm: set aside new arm_mem_scratch space
      ARM: i.MX8M: esdctl: export imx8m_barebox_earlymem_size
      ARM: i.MX8M: define imx8mX_scratch_space() helper
      ARM: i.MX8M: support saving BootROM event log before clobbering OCRAM
      regulator: core: don't call of_regulator_get with NULL argument
      i2c: bcm283x: fix use of unregistered device in debug print
      ddr: imx8m: warn about unsupported frequencies
      ddr: imx8m: use pr_warn instead of plain prints
      treewide: rename CONFIG_HAS_ARCH_SJLJ to CONFIG_ARCH_HAS_SJLJ
      of: have of_property_match_string accept pointer to const device_node
      of: platform: port Linux of_dma_is_coherent
      common: boards: qemu-virt: fix env path for QEMU RISC-V
      ARM: i.MX8M: implement bootrom log viewing command
      include: soc: switch to SPDX-License-Identifier
      bootsource: export bootsource_to_string()
      ARM: start: print debugging info when CONFIG_DEBUG_INITCALLS
      KASan: test_kasan: silence warning with newer GCC
      KASan: fix handling of devices with MMIO above SDRAM memory region
      driver: have dev_name(unregistered device) behave as expected
      efi: acpi: add SDT resource before registering device
      reset: core: support deep probe with resets registered in CLK_OF_DECLARE
      i2c: imx: increase timeout in i2c_fsl_poll_status from 1 to 5ms
      nvmem: ocotp: decouple featctrl from barebox,provide-mac-address

Denis Orlov (2):
      ddr_spd: use unsigned type for crc bytes in DDR3/4 SPD check
      net: e1000: read EEPROM through EERD register on 8257x adapters

Johannes Zink (1):
      mfd: axp20x: support AXP313A PMIC

Marcin Niestroj (1):
      ARM: rpi: parse memory from vc fdt

Sascha Hauer (26):
      mtd: nand: nand-mxs: Move register definitions to separate file
      ARM: i.MX: xload nand: Use common register defines
      ARM: i.MX: xload nand: add common readid
      dma: apbh-dma: Simplify code
      dma: apbh-dma: unify register defines
      imx-bbu-nand-fcb: pull printing debug info out of get_fcb()
      ARM: i.MX: xload nand: Pull ECC status checking out of read page
      ARM: i.MX: xload nand: Use final page layout from FCB
      imx-bbu-nand-fcb: Fix reading FCB information from BCH registers
      ARM: i.MX: xload nand: reset NAND before accessing it
      ARM: i.MX: xload nand: Move mxs_nand_mode_fcb_62bit() to header file
      ARM: i.MX: xload nand: Implement i.MX7 support
      Remove unused struct partition
      dts: update to v6.1-rc5
      dts: update to v6.1-rc6
      dts: update to v6.1-rc7
      dts: update to v6.1-rc8
      imx-bbu-nand-fcb: Drop ifdeffery
      imx-bbu-nand-fcb: Add fcb command
      Merge branch 'for-next/bootrom-log'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/imx7-nand-xload'
      Merge branch 'for-next/misc'
      arm: avnet zedboard: Use compressed DTB
      arm: zync: Use XZ for image compression
      Release v2023.01.0

Uwe Kleine-König (1):
      kvx,openrisc,riscv,sandbox/dts: harmonize clean-files definition
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


