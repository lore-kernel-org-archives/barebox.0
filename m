Delivery-date: Tue, 06 Aug 2024 12:45:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sbHhB-006nYl-2Z
	for lore@lore.pengutronix.de;
	Tue, 06 Aug 2024 12:45:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sbHhA-0003et-MY
	for lore@pengutronix.de; Tue, 06 Aug 2024 12:45:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=V81IhT9I/NrEs7iPUvhkAmQ4rHJwJ9wdg7gNwgjZzXo=; b=HF/I7o5N2taAnqrPtmBOWE6Q5n
	HvX8fupBbErzbqiZPYcbMIil5bEB7JFCBHU9vdUq83H6v8X/DDxb613BeUbg8amoGvxKaanm77NjH
	UwxKhgRUFiHS7bvIJRXLVRB6I7VJJaVL/wLwjC171yIFsM9v7Y2PTQYbgCIzdpzFs7Pz2AvHL/+jW
	7mfpPdVfbeqZiX/00SJ1fZMMVGFu91Y9obpRjaExc09eUmFzXDSxxgfnaGNN3lN0RnXKmEsF+i7Cs
	aZ5ZlbgupAenCkUO0uKnmjTl3Hf9OsB8XCeyBDg/s2xWNJ3JzA+kfkeSlVteg+Li83nrToBWq5jCh
	rnk3bykQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbHgS-00000001Fed-3Rt2;
	Tue, 06 Aug 2024 10:44:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbHg8-00000001Fax-3Yi8
	for barebox@lists.infradead.org;
	Tue, 06 Aug 2024 10:44:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1sbHg5-0003Wm-Gx; Tue, 06 Aug 2024 12:44:29 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1sbHg5-004vwR-3r; Tue, 06 Aug 2024 12:44:29 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1sbHg5-004z6E-05;
	Tue, 06 Aug 2024 12:44:29 +0200
Date: Tue, 6 Aug 2024 12:44:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <ZrH-jXQ3FN6rQaAH@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240806_034433_077269_0E490F5B 
X-CRM114-Status: GOOD (  20.68  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: v2024.08.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi All,

I just released barebox-2024.08.0. Some notable changes include that
barebox now has class devices. The user visible change is that there
now is a 'class' command which shows the registered classes along with
the devices registered on this class. This is useful to have a single
simple command to show which network, watchdog and RTC devices are
present.
Also Ahmad added a 'watch' command which like its Linux pendant
periodically calls a command and makes it easy to catch changes in the
output.
Stefan has made the MMC/SD info like manufacturing date and product name
more accessible to scripts. Instead of only printing them on devinfo
we now have device parameters as well.
For other changes see below for a full list of patches.

Have Fun!
 Sascha

----------------------------------------------------------------
Ahmad Fatoum (54):
      string: inline isempty
      string: add nonempty helper
      Documentation: state: add real-world example for stride size calculation
      ARM: stm32mp: remove unused hardcoded MMIO address constants
      ARM: lib32: semihosting: prepare for more general use
      firmware: semihosting: add ARMv8-A semihosting support
      firmware: semihosting: don't return error code from writec/write0
      firmware: semihosting: translate return values in wrappers
      ARM: semihosting: add DEBUG_LL implementation
      serial: add semihosting console
      watchdog: bcm2835: add support for powering off SoC
      test: arm: describe Qemu Raspberry Pi 3b labgrid environment
      serial: replace all clk_get with clk_get_for_console
      misc: add /dev/port device for I/O ports
      mci: core: remove dev_add_param_bool error paths
      mci: core: don't add broken_cd parameter for eMMCs
      of: platform: early exit on error
      e1000: mtd: remove needless error checking for device parameter
      PWM: core: remove needless error checking for device parameter
      fpga: bridge: remove needless error checking for device parameter
      pinctrl: import <linux/pinctrl/pinconf-generic.h> header
      pinctrl: rockchip: make use of pinconf-generic.h
      pinctrl: rockchip: use of_property_read_bool()
      pinctrl: rockchip: add support for configuring schmitt trigger
      pinctrl: rockchip: add support for bias-pull-pin-default
      rtc: register RTC class to collect devices
      gpiolib: implement of_gpio_get_chip_by_alias
      pinctrl: rockchip: add support for configuring GPIO direction
      include: gfp: move flags into <linux/gfp.h>
      include: common.h: move barebox version/info declarations to new header
      mci: core: drop unused parameter members from struct mci
      fs: pstore: ram_core: use pr_err, not pr_info, for errors
      rtc: add PCF85063 RTC and NVMEM support
      efi: payload: inform users on attempt to boot non EFI-stubbed kernel
      bbu: command: update via TFTP if no image given
      commands: edit: factor out getwinsize and export it for reuse
      lib: strtox: implement new simple_strtofract
      commands: watch: add new command
      ARM: dts: imx8mp-skov: describe RTC
      usb: Use well-known descriptor sizes when parsing configuration
      globalvar: align parameter names in prototype with definition
      misc: port: bump down debugging print from notice
      environment: don't leak environment path buffer
      partition: fix use of uninitialized variable in error message
      of: fdt: harden against corrupted reserve map entries
      resource: return NULL for error in request_barebox_region
      ARM: i.MX8M: scratch: fix initcall return code on request_barebox_region error
      RISC-V: cpu: fix initcall return code on request_barebox_region error
      ARM: i.MX8MP: tqma8mpxl: fix eMMC barebox update handler
      dma: debug: fix compiler warning about pointer u64 cast
      usb: gadget: fsl_udc: dma_map buffers instead of using dma_sync
      of: fdt: fix overflows when parsing sizes
      optee: include linux/limits.h to define U64_MAX
      usb: xhci: fix erroneous USB_DT_CONFIG descriptor size

Alexander Shiyan (4):
      scripts/rk-usb-loader: Add support for rk3588
      mfd: rk808: Abstracting childs from the interface being used
      regulator: Add Fairchild FAN53555 driver
      commands: cpuinfo: Add Cortex-A55 information

Antony Pavlov (5):
      MIPS: don't pass fdt_size into main_entry()
      MIPS: pbl_main_entry(): inline barebox_uncompress()
      MIPS: rename pbl_main_entry() -> barebox_pbl_start()
      gitignore: ignore *.dtbo and *.dtbo.*
      Documentation: boards: stm32mp: fix DK-1/DK-2 DIP switch formatting

David Jander (4):
      spi: stm32: avoid enabling SPI in setup to allow register configuration
      arm: boards: Add support for Protonic MECIO1 board
      arm: boards: Add support for Protonic MECT1S board
      net: phy: dp83tg720: wake up PHYs in managed mode

Denis Orlov (1):
      MIPS: use more consistent type for memory size values

Jules Maselbas (3):
      mci: core: clarify why write_bl_len is the same as read_bl_len
      mci: core: clarify comment on MMC version detection
      mci: core: fix typos

Marco Felsch (3):
      ARM: aarch64: align scr_el3 register setup with U-Boot
      ARM: i.MX8M: add support to handle ROM SError ERR050350
      i.MX: HABv4: fix SRK_LOCK for i.MX8M devices

Oleksij Rempel (10):
      gpiolib: extend support for non-zero offset GPIO banks
      pinctrl: stm32: extract and set GPIO offset from devicetree
      phy: avoid adjust_link call if link remains down
      ARM: dts: stm32mp151-prtt1c: sync with the kernel dts
      net: sja1105: split adjust_link into reusable functions
      net: sja1105: add function to configure CPU port
      of: add sanity check for machine compatible string
      net: phy: Add support for PHY-specific link polling interval and randomization
      net: phy: dp83tg720: Decouple PHY reset frequency from link polling interval
      spi: atmel_spi: Fix GPIO-based chip select handling to support multiple valid entries

Richard Weinberger (1):
      ext4: Fix integer overflow in ext4fs_read_symlink()

Sascha Hauer (41):
      net: cs8900: simplify buffer read loop
      net: cs8900: do not read past the receive buffer
      net: ks8851_mll: do not read past the receive buffer
      net: liteeth: do not read past the receive buffer
      net: liteeth: do not set len to 0 before printing it
      net: smc911x: Fix amount of words read from RX FIFO
      dts: update to v6.10-rc1
      net: smc911x: do not read past the receive buffer
      net: ks8851_mll: drop return value from ks8851_rx_frame()
      net: let net rx hook return void
      clk: imx27: sync with kernel
      ARM: Phytec-phyCARD-imx27: switch to deep probe
      ARM: Phytec-phyCARD-imx27: register USB from device tree
      usb: ulpi: add more ulpi ids
      dts: update to v6.10-rc2
      dts: update to v6.10-rc3
      net: virtio-net: allow to set current MAC address
      net: ifup: use accessor to set network device ip/netmask
      net: add edev argument to net_set_gateway()
      net: establish single code path for setting edev parameters
      net: host command: move to commands/
      net: use for_each_netdev()
      base: add class device support
      net: register eth class
      watchdog: register watchdog class
      dts: update to v6.10-rc4
      dts: update to v6.10-rc5
      dts: update to v6.10-rc6
      Merge branch 'for-next/arria10'
      Merge branch 'for-next/class'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mmc'
      Merge branch 'for-next/net'
      Merge branch 'for-next/semihosting'
      mtd: rawnand: Ensure ECC configuration is propagated to upper layers
      mtd: nand: mxc_nand: always copy_spare() for page write
      optee: ioctl takes unsigned int argument
      Release v2024.08.0

Stefan Kerkmann (9):
      mci: core: rename mtd to mdt
      mci: core: add cbx extraction function
      mci: core: add product name extraction function
      mci: core: add manufacturing date extraction function
      mci: core: parse cid into parameters
      mci: core: fix extract_prv and write to string buffer
      mci: core: add CBX field as parameter and print it
      mci: core: fix extract_oid and write to string buffer
      mci: core: add missing slice range for extract_psn function

Stefano Manni (1):
      habv4: ignore engine failure due to RNG self-test in

Steffen Trumtrar (14):
      ARM: arria10: system-manager: add handoff registers
      ARM: Arria10: reset manager: document reset source
      ARM: socfpga: Arria10: PE1: remove arm_cpu_lowlevel_init
      ARM: arria10: reset-manager: don't touch l4 wdog
      ARM: Arria10: xload: rework __arria10_load_fpga
      ARM: arria10: xload: fix __arria10_load_fpga
      ARM: Arria10: xload: kick watchdog
      ARM: Arria10: PE1: disable l4wd0 in bringup
      ARM: arria10: mark image in OCRAM as valid
      ARM: Arria10: arria10_finish_io: remove unused param
      ARM: Arria10: xload: remove useless writel
      ARM: Arria10: xload: refactor wait loops
      ARM: Arria10: xload: reduce timeout on condone
      ARM: arria10-xload: rework broken bitstream handling

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


