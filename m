Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1edXha-0002fk-4H
 for barebox@lists.infradead.org; Mon, 22 Jan 2018 08:43:40 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1edXhN-0005X5-Ol
 for barebox@lists.infradead.org; Mon, 22 Jan 2018 09:43:25 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1edXhN-0000UJ-GI
 for barebox@lists.infradead.org; Mon, 22 Jan 2018 09:43:25 +0100
Date: Mon, 22 Jan 2018 09:43:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180122084325.4urt36e5fyo5bz2s@pengutronix.de>
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: v2018.01.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

We have the first Release for 2018: v2018.01.0

This release brings us some network bigger network changes. Network
devices no longer have to be selected manually but instead the correct
one is picked from the IP settings of the network devices. Also
/env/network/* is no longer needed and the IP parameters can now be set
through nv variables. Overall I think the code is not regression free
and it seems people only start to test when the release is out. Let's
see what happens and hope it doesn't hit us too hard.

Sascha

----------------------------------------------------------------
Alexander Kurz (1):
      spi: imx: make xchg_single timeout value compatible for older boards

Andrey Smirnov (11):
      boards/zii-vf610-dev: Do not keep 'SOC_SW_RSTN' low
      ARM: vybrid: zii: Make use of DT code from Linux kernel
      mdio_bus: Port of_mdio_find_bus() from Linux kernel
      net: phy: Port MDIO bus miltiplexer framework from Linux kernel
      net: phy: Port GPIO controlled MDIO multiplexer driver
      net: mdio-mux: Avoid probing multiplexed busses
      zii_vf610_dev_defconfig: Select MDIO bus GPIO multiplexer
      commands: miitool: Constify 'phydevname' in mdiobus_show()
      fs: Introduce devpath_to_name()
      i.MX: imu-bbu-internal: Make use of devpath_to_name()
      commands/miitool: Allow specifying PHY by their full path

Antony Pavlov (1):
      net: make struct bootp __packed to prevent unaligned store on MIPS

Bastian Stender (2):
      i2c: mv64xxx: add timeout waiting for bus ready
      Documentation: Bootchooser: fix typo

Cl=E9ment Leger (1):
      Bootm: remove uimage_close done later in bootm_boot

Daniel Schultz (1):
      ARM: boards: phytec-som-am335x: Revert unified MLO for 1GB

Ga=EBl PORTAY (1):
      readline_simple: use len instead of CONFIG_CBSIZE

Lucas Stach (2):
      clk: sp810: hardwire parent to 1MHz clock
      ARM: rdu2: build a single image for both Quad and QuadPlus variants

Oleksij Rempel (8):
      MIPS: provide HAS_NO_BOARD_HL_CODE
      watchdog: add ar9344-wdt driver
      MIPS: dts: ar9344: add watchdog node
      MIPS: dts: tl_wdr4300: enable watchdog node
      MIPS: ar9331: add watchdog support
      MIPS: ath79: ar9331: add generic RAM macro
      MIPS: ath79: ar9331: add ar9331_pbl_generic_start macro
      MIPS: add support for DPTechnics DPT-Module v1

Philipp Zabel (1):
      blspec: fix crash when trying to boot from loop mounts

Sascha Hauer (55):
      dts: update to v4.14-rc6
      dts: update to v4.14-rc7
      dts: update to v4.14-rc8
      globalvar: When a globalvar is created with a NULL value, use empty s=
tring
      nv: add device parameter overwrites to completion list
      nvvar: Initialze from underlying device parameter
      dts: update to v4.15-rc1
      Documentation: arm-qemu-vexpress: Fix too short underline
      Documentation: Change many code blocks to no highlight
      Documentation: socfpga: Fix numbered list
      Documentation: change default highlight language to shell
      Documentation: defaultenv-2: Change highlight to make
      Documentation: remove :numbered: from lower level toctrees
      ARM: psci command: Add to misc group
      detect command: Drop -e option
      driver: Add device_detect_all() function
      nvvar: when setting a nvvar to NULL just free the content
      net: use pr_* functions for messages
      net: Add and use IP_BROADCAST
      net: Make domainname and nameserver globalvars
      net: Add functions to get/set nameserver and domainname
      net: introduce global.net.server
      net: dhcp: Do not overwrite serverip if it is valid
      net: Use a single gateway
      net: allow udp connections on specified network device
      Documentation: state: mention SD/eMMC devices
      net: dhcp: Allow to specify network device
      net: dhcp: avoid unnecessary casts
      net: dhcp: Coding style fixes
      net: dhcp: rework
      net: Pick network device based on IP settings
      net: remove "current" network device
      net: ifup: Factor out a eth_discover function
      ifup: Use dhcp C API rather than running command
      net: Provide new way to configure network devices
      net: update network docs
      net: environment: remove ethx setup files
      net: environment: update automounts
      defaultenv: Add README for new network config
      net: Add linuxdevname property
      commands: Add ip_route_add command
      defaultenv-2: set bootargs correctly for network boot
      Merge branch 'for-next/doc'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/e1000'
      Merge branch 'for-next/i2c'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/mii'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/net'
      Merge branch 'for-next/wd'
      FIT: Fix error path
      state: Documentation: Fix typo
      Release v2018.01.0

Ulrich =D6lmann (5):
      Documentation: devicetree: m25p80: fix referenced filename
      mtd: spi-nor: mx25l3205d/mx25l6405d: append SECT_4K
      ARM: i.MX: bbu-internal: fix comment
      ARM: i.MX: bbu-internal: fix typos
      state: Documentation: fix typo

Uwe Kleine-K=F6nig (16):
      net/e1000: fix coding style at a few locations
      net/e1000: don't use the eeprom word size as timeout to get a semapho=
re
      net/e1000: reorder functions
      net/e1000: provide access to iNVM even if a flash is present
      net/e1000: fix size of invm device
      net/e1000: provide device for accessing emulated eeprom
      net/e1000: don't fail to bind on uninitialized flash
      net/e1000: log flash/invm status at probe time
      net/e1000: don't access the (simulated) eeprom when it is invalid
      net/e1000: indicate in error messages where the failure occured
      net/e1000: expand timeout for flash erasure
      net/e1000: implement protect and unprotect for attached flash
      net/e1000: add missing \n in error message
      net/e1000: indicate at boot time if flash is in secure mode
      net/e1000: fix driver probing in the presence of two e1000 devices
      commands/Kconfig: Fix tpyo

 =

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
