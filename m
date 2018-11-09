Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gL2J8-0002zq-N5
 for barebox@lists.infradead.org; Fri, 09 Nov 2018 08:38:28 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1gL2Is-0001pT-7q
 for barebox@lists.infradead.org; Fri, 09 Nov 2018 09:38:10 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1gL2Ir-0000UG-Vd
 for barebox@lists.infradead.org; Fri, 09 Nov 2018 09:38:09 +0100
Date: Fri, 9 Nov 2018 09:38:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181109083809.ovcdlvtklkfqpu7e@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: v2018.11.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

barebox-2018.11.0 is out. Compared to the October release we have
several fixes in the fs layer, so if you haven't updated already
to a stable release you should update now to this version. UBIFS is now
updated to Kernel version v4.19-rc6 (despite the commit message saying
v4.18-rc6) which brings us support for reading files from images
containing encrypted files (though not for reading actually encrypted
files). Also we have some new features for RATP which now has native
support for i2c and gpio. Other than that as usual many small additions
and fixes, see below.

Have fun
Sascha

----------------------------------------------------------------
Ahmad Fatoum (1):
      arm: at91: fix sdram controller init

Aleksander Morgado (7):
      ratp: implement i2c read/write support
      bbremote: implement i2c read/write support
      ratp: implement support for GPIO commands
      bbremote: implement support for GPIO operations
      ratp: use __packed instead of the full form
      ratp: use pr_ macros to print messages
      ratp: fix incorrect whitespaces in method calls

Andrey Smirnov (51):
      memtest: Adjust code for 64-bit architectures
      memtest: Make use of resource_size()
      ARM: i.MX: bbu: Add support for v1 header to MMC boot handler
      ARM: i.MX51: bbu: Add a handler for MMC boot partitions
      ARM: i.MX: bbu: Check retrun value of getenv()
      ARM: i.MX: bbu: Convert devicefile to device name
      ARM: i.MX: bbu: Detect MMC before reading current boot partition
      ARM: VFxxx: bbu: Add a handler for MMC boot partitions
      dts: VFxxx: Add aliases for ESDHC controllers
      ARM: zii-vf610-dev: Switch MMC BBU to use boot partitions
      ARM: rdu2: Switch MMC BBU to use boot partitions
      ARM: rdu1: Change BBU names to match RDU2
      ARM: rdu1: Switch MMC BBU to use boot partitions
      net: fec_imx: Drop extra indentation level by exiting early
      net: fec_imx: Don't check bd_status & FEC_RBD_ERR twice
      net: fec_imx: Read data_length only once
      net: fec_imx: Drop struct fec_frame
      net: fec_imx: Drop frame_length
      net: fec_imx: Make use of readx_poll_timeout() macros
      net: fec_imx: Do not use DMA coherent memory for Rx buffers
      ARM: i.MX: boot: Make use of FIELD_GET() in imx51_get_boot_source()
      ARM: i.MX: boot: Detect boot instance on i.MX51
      ARM: zii-vf610-dev: Convert CFU1 to use upstream DTS
      ARM: zii-vf610-dev: Convert SPU3 to use upstream DTS
      ARM: i.MX: Add ZII SCU2 Mezz Board
      ARM: i.MX: Add ZII SCU3 ESB board
      .gitignore: Add .bin.gen.S files found firmware/
      clk: i.MX8MQ: Bump refcounters of various important clocks
      ARM: i.MX8MQ: Add missing node for ECSPI1
      ARM: i.MX8MQ: Configure USDHC1,2 clocks
      ARM: i.MX8MQ: Configure FEC1 clocks
      ARM: nxp-imx8mq-evk: Add missing compatibility check
      ARM: nxp-imx8mq-evk: Add FEC's PHY configuration code
      ARM: i.MX: esdctl: Add memory size detection for i.MX8MQ
      ARM: nxp-imx8mq-evk: Make use of memory size detection code
      clk: i.MX8MQ: Add missing IMX8MQ_CLK_TMU_ROOT clock
      aiodev: Port Linux driver for i.MX8MQ CPU thermal sensor
      ARM: i.MX8MQ: Add node for CPU thermal sensor
      .gitignore: Add .bin.gen.S files found firmware/
      ARM: rdu2: Remove now redundant RAVE SP properties/nodes
      ARM: rdu1: Remove now redundant RAVE SP properties/nodes
      ARM: i.MX: esdctl: Add memory size detection for i.MX7D
      ARM: freescale-mx7-sabresd: Make use of imx7d_barebox_entry()
      i.MX7D: DCD: Create shared DDR configuration header
      ARM: i.MX7: bbu: Add MMC boot handler
      ARM: i.MX7: bbu: Add I2C and SPI handler
      i.MX: Add support for ZII's i.MX7D-based RPU2 board
      bbu: Expose bbu_find_handler_by_*() functions
      bbu: Add "handler" parameter to barebox_update()
      bbu: command: Make sure specified update handler exists
      bbu: Simplify bbu_find_handler_by_device()

Antony Pavlov (2):
      checkpatch: don't check TODO file presence
      net: make routing work after dhcp command

Bastian Krause (1):
      mtd: nand_denali: update compatible

Enrico Jorns (5):
      dts: achilles: add state for bootchooser
      barebox: move mmc partitions to partitions subnode
      ARM: socfpga: achilles: move partitions to free disk space
      ARM: socfpga: achilles: bitstream will not exceed 32M
      ARM: socfpga: achilles: let bootchooser boot from system0 initially

Ladislav Michl (1):
      environment: Fix overlapping partitions error message

Marc Kleine-Budde (1):
      scripts: imx-usb-loader: list_imx_device_types(): move variable declaration out of for() loop

Marcin Niestroj (1):
      fs: improve ramfs_truncate speed

Sascha Hauer (55):
      usb: gadget: fastboot: detect device if not present
      kfifo: roundup fifo size to next power of two
      mtd: mtdraw: Simplify error path
      mtd: mtdraw: use dev_* for printing
      mtd: mtdraw: do not write empty buffers
      mtd: mtdraw: pass mtdraw around
      environment: Allow default env path to be NULL
      mtd: mtdraw: add raw page size to private data
      mtd: mtdraw: fail when writing fails
      mtd: mtdraw: replace "block" with "page"
      mtd: mtdraw: fix wrong alignment check
      imx-bbu-nand-fcb: Improve error message
      imx-bbu-nand-fcb: Workaround ROM not being able to handle bad blocks properly
      imx-bbu-nand-fcb: Workaround ROM checking fingerprint before correcting bitflips
      environment: Do not use environment when overlapping with other partitions
      fs: ramfs: make chunk counting in truncate() better readable
      usb: gadget: fastboot: fix downloading files of wMaxPacketSize bytes
      ARM: socfpga: Add missing inline to noop functions
      Add linux/slab.h
      Add kmemdup
      Add more mutex no-ops
      fs: let dir_emit_dots return int
      fs: Add fscrypt no-op headers
      fs: Add SB_* flags
      fs: implement file_inode
      fs: implement iget_locked and iget_failed
      fs: implement clear_nlink and set_nlink
      fs: ubifs: remove not needed code
      compiler: Update to v4.19-rc6
      vsprintf: implement %pV
      ubifs: Update to v4.18-rc6
      fs: ubifs: optionally allow to mount UBIFS images with encrypted files
      mtd: do not attach already attached UBI
      digest.h: Sync hash_algo values with kernel
      dts: update to v4.19-rc3
      dts: update to v4.19-rc5
      dts: update to v4.19-rc6
      dts: update to v4.19-rc7
      Merge branch 'for-next/bbu'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/fs'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mtd'
      Merge branch 'for-next/net-imx-fec'
      Merge branch 'for-next/ratp'
      Merge branch 'for-next/socfpga'
      Merge branch 'for-next/ubifs'
      environment: bypass overlap check for mtd devices
      fs: implement d_revalidate
      fs: devfs: implement d_revalidate hook
      of: unflatten: access property properly
      usb: gadget: fastboot: remove unused variable
      kconfig: Avoid format overflow warning from GCC 8.1
      Release v2018.11.0

Steffen Trumtrar (1):
      ARM: dts: socfpga: achilles: enable second ethernet port
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
