Delivery-date: Fri, 15 Mar 2024 09:18:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rl2mF-007WS0-0r
	for lore@lore.pengutronix.de;
	Fri, 15 Mar 2024 09:18:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rl2mE-0000EL-6F
	for lore@pengutronix.de; Fri, 15 Mar 2024 09:18:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=irxyMjTML6kYzDDNP+gD+UJq5klgYnZxP8/0IEi4o9Y=; b=JLeUuZraBGfPhrN8VLTLZYI1M/
	bMDtqFoMgXWfBIsYSDlZ+4IArXz554+K4mcLsXUDIkeKI0scvR4AXch7ad4ODYnvtnPa6vDYbwXBV
	MuI9sfDRKFTxp/f0oH9KzeDEMx771T8rk6lEopDqGNOkeeO6JJvV3fZBCUrVvI7a+tona8hclI2y2
	8lRY/Nj7V2EpVvALOxEnfB4OGUFbJSFgb7xuxMfQfSWqowB3YqMvqne/dsw1/V7CY84CwSW4pGnju
	lptjud9noHWejXoHSv16kaexAXUXuwxjHO3qsffqp3ZrUCYeysKyChblZCkA6HLLyijvHGWYvZyA7
	kRdkB8wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl2lb-0000000H7zT-1tKs;
	Fri, 15 Mar 2024 08:18:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl2lV-0000000H7w1-1w5O
	for barebox@lists.infradead.org;
	Fri, 15 Mar 2024 08:18:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rl2lS-0008Fc-7q; Fri, 15 Mar 2024 09:18:06 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rl2lR-006T8k-RV; Fri, 15 Mar 2024 09:18:05 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rl2lR-000zhB-2V;
	Fri, 15 Mar 2024 09:18:05 +0100
Date: Fri, 15 Mar 2024 09:18:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <ZfQEPTVj7rDW9_gy@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240315_011809_838873_B456F429 
X-CRM114-Status: GOOD (  17.65  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: v2024.03.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi All,

I am happy to announce barebox-2024.03.0.

This release brings us runtime partitioning support. We have a new command
that allows us to create new partition tables and to manipulate existing
partition tables. Also the partition tables are now reparsed when
partitions have changed.
Marco has ported the SoC framework from Linux and started using it with
i.MX8M. Ahmad has put some effort into the XHCI driver which resulted in
several bugfixes so that hopefully more corner cases are handled in the
driver. Other than that the i.MX93 support has continued to evolve with
several small bugfixes and improvements.

As usual, see below for a full list of changes that went into this
release.

Have Fun!
 Sascha

----------------------------------------------------------------
Ahmad Fatoum (46):
      ARM: at91: sama5d27-som1: autoping watchdog during barebox runtime
      ddr: imx8m: add missing DDR clock rates
      spi: atmel_spi: lower version log output from info to debug
      mci: atmel_mci: lower version log output from info to debug
      mci: atmel_mci: mark atmci_setup_data very verbose debug print
      partitions: dos: support root=PARTUUID= generation with zero NT signature
      driver: make CONFIG_DEBUG_PROBES more useful for removal
      drivers: drop simple bus remove in favor of common implementation
      firmware: arm_scmi: call device driver remove if defined
      clk: add dummy definitions for CLK_SET_RATE_GATE, CLK_SET_PARENT_GATE
      clk: define empty stub for clk_hw_unregister
      clk: at91: sync drivers with Linux
      ARM: Layerscape: TQMLS1046a: switch to upstream DT
      usb: core: replace calls to strerror with %pe format specifier
      usb: xhci: usb: xhci: avoid type conversion of void *
      usb: xhci: add various debugging prints
      usb: xhci: call xhci_flush_cache where appropriate
      usb: xhci: use macros for formatting values
      usb: xhci: Add missing endian conversions (cpu_to_leXX / leXX_to_cpu)
      usb: xhci: Add missing xhci_readl()
      usb: xhci: don't use xhci_writeq for normal SDRAM
      usb: xhci: support non-1:1 mapped xHCI
      usb: xhci: reset endpoint on USB stall
      usb: xhci: Fix root hub descriptor
      usb: xhci: Guard all calls to xhci_wait_for_event
      usb: xhci: Better error handling in abort_td()
      usb: xhci: Allow context state errors when halting an endpoint
      usb: xhci: Recover from halted bulk endpoints
      usb: xhci: Do not panic on event timeouts
      treewide: use dev_err_probe instead of comparisons against EPROBE_DEFER
      driver: refactor probe return value handling into switch statement
      deep-probe: treat any probe deferral as permanent
      deep-probe: use IS_ERR_OR_NULL() instead of opencoding
      deep-probe: return -EPROBE_DEFER when ensuring probe fails
      phy: freescale: imx8mq-usb: make i.MX8MP support more explicit
      ARM: i.MX8MP: dts: remove power domains referenced by media_blk_ctrl
      usb: xhci: fix reset endpoint on USB stall
      firmware: arm_scmi: pmdomain: restrict default y for driver
      optee: don't warn about missing OP-TEE header
      optee: check optee_verify_header argument for error pointers
      mtd: don't try to detect UBI in too small flash partitions
      ARM: rpi: fix regression booting without VideoCore DT
      optee: build common code depending on CONFIG_HAVE_OPTEE
      common: console_common: handle NULL dev gracefully in dev_printf
      ARM: i.MX8MQ: fix early boot hang
      pmdomain: imx: gpc2: ignore missing regulators

Christian Melki (1):
      barebox_imd: Add IMD sections to mpc-85xx.

Marc Kleine-Budde (3):
      habv4: convert comments to common coding style
      nvmem: ocotp: use tab for indention only
      nvmem: ocotp: mark data as const

Marco Felsch (5):
      Port SoC framework from Linux
      ARM: i.MX8M: convert the machine init to the soc driver
      filetype: add zstd support
      bootm: add support to boot ZSTD compressed images
      uncompress: add detected file type debug print

Pierre-Olivier Huard (4):
      serial: ns16550: add basic support for rs485
      serial: ns16550: add support for half duplex rs485
      ARM: dts: rpi4: add DT for CM4S
      mci: bcm2835: support 8bit bus width

Sascha Hauer (65):
      ARM: i.MX93: tqma9352-mba93xxca: use upstream device tree
      dts: update to v6.8-rc2
      vsprintf: add support for printing MAC addresses
      eth: replace ethaddr_to_string() with %pM
      dts: update to v6.8-rc3
      decompress: change length arguments to long
      nvmem: imx-ocotp-ele: provide machine_id
      i2c: lpi2c: determine clk rate during probe
      i2c: lpi2c: use udelay for timeout loops
      i2c: lpi2c: add PBL support
      pbl: eeprom: return error from eeprom_read()
      common: add TQ EEPROM support
      ARM: i.MX9: add i2c base address defines
      ARM: i.MX9: rename TQ i.MX93 board to TQMA93XX
      ARM: i.MX: tqma93xx: Add LGA board variant
      bbu: create a standard bbu handler for eMMC boot
      ARM: i.MX: bbu: fix i.MX9 eMMC boot bbu handler
      fs: move cdev open count to cdev_open()/cdev_close()
      common: partitions: efi: fix memory leak
      partition: allow to reparse a partition table
      block: reparse partition table when necessary
      fastboot: pass list to fb_addvar()
      fastboot: add function to free a list of fastboot variables
      fastboot: evaluate fastboot partitions when used
      hab: drop incomplete i.MX28 support
      hab: drop i.MX35
      hab: cleanup hab status printing during boot
      hab: pass flags to lockdown_device()
      ARM: i.MX: ele: implement more ELE operations
      hab: implement i.MX9 support
      dts: update to v6.8-rc5
      partitions: dos: save indention level
      partition: allocate struct partition_desc in parser
      partition: allocate struct partition in parser
      partition: efi: keep raw data
      uuid: implement random uuid/guid
      linux/sizes.h: add more defines
      partition: add PARTITION_LINUX_DATA_GUID define
      partitions: move parser.h to include/partitions.h
      partitions: implement partition manipulation support
      partitions: dos: implement partition manipulation support
      partitions: efi: implement partition manipulation support
      commands: add parted
      default environment: make string arguments const
      partitions: efi: Allow to create barebox environment partition
      ARM: i.MX: add barebox,bootsource-mmc aliases
      bootsource: add function to get device_node we booted from
      environment: use barebox environment from GPT partitions
      Merge branch 'for-next/at91'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/partitions'
      Merge branch 'for-next/usb-xhci'
      Merge branch 'for-next/zstd'
      ARM: i.MX: move barebox,bootsource-mmc aliases to chosen node
      serial: lpuart32: fix rx stall on FIFO overflow
      ARM: i.MX93: tqm93xx: add PMIC node
      i2c: i2c-imx-lpi2c: remove debugging leftover
      partitions: efi: change first partition number from 1 to 0
      partitions: dos: change first partition number from 1 to 0
      ARM: i.MX93: ele: start TRNG on i.MX93 rev a1
      nvmem: imx-ocotp-ele: fix fuse types on i.MX93
      ARM: i.MX93 ele: fix compilation
      Release v2024.03.0

Thaison Phan (1):
      ARM: bootm barebox: page align barebox start address


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


