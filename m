Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aqxZV-0004xS-Ox
 for barebox@lists.infradead.org; Fri, 15 Apr 2016 06:49:44 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1aqxZA-0008DJ-6e
 for barebox@lists.infradead.org; Fri, 15 Apr 2016 08:49:20 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.86_2)
 (envelope-from <sha@pengutronix.de>) id 1aqxZ9-0007dO-RK
 for barebox@lists.infradead.org; Fri, 15 Apr 2016 08:49:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 15 Apr 2016 08:49:09 +0200
Message-Id: <1460702958-4012-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] move platform_data to include/platform_data
To: Barebox List <barebox@lists.infradead.org>

platform_data for several devices lies around directly in include/. Move
it to include/platform_data to clean up include/ a bit.

Sascha

----------------------------------------------------------------
Sascha Hauer (9):
      include: Move ep93xx eth platform_data to include/platform_data
      include: Move smc91111 eth platform_data to include/platform_data
      include: Move designware eth platform_data to include/platform_data
      include: Move davinci emac platform_data to include/platform_data
      include: Move fec eth platform_data to include/platform_data
      include: Move ns16550 serial platform_data to include/platform_data
      include: Move dm9000 eth platform_data to include/platform_data
      include: Move smc911x eth platform_data to include/platform_data
      include: Move ide platform_data to include/platform_data

 arch/arm/boards/animeo_ip/init.c                                 | 1 -
 arch/arm/boards/archosg9/board.c                                 | 1 -
 arch/arm/boards/at91sam9261ek/init.c                             | 2 +-
 arch/arm/boards/at91sam9n12ek/init.c                             | 1 -
 arch/arm/boards/at91sam9x5ek/init.c                              | 1 -
 arch/arm/boards/beagle/board.c                                   | 1 -
 arch/arm/boards/ccxmx51/ccxmx51.c                                | 2 +-
 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c                 | 1 -
 arch/arm/boards/datamodul-edm-qmx6/board.c                       | 1 -
 arch/arm/boards/dss11/init.c                                     | 1 -
 arch/arm/boards/edb93xx/edb93xx.c                                | 2 +-
 arch/arm/boards/embedsky-e9/board.c                              | 1 -
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c                | 2 +-
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c                | 3 +--
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c                | 2 +-
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c                | 2 +-
 arch/arm/boards/freescale-mx25-3ds/3stack.c                      | 2 +-
 arch/arm/boards/freescale-mx27-ads/imx27ads.c                    | 2 +-
 arch/arm/boards/freescale-mx28-evk/mx28-evk.c                    | 2 +-
 arch/arm/boards/freescale-mx35-3ds/3stack.c                      | 2 +-
 arch/arm/boards/freescale-mx51-babbage/board.c                   | 1 -
 arch/arm/boards/freescale-mx53-smd/board.c                       | 2 +-
 arch/arm/boards/freescale-mx6-sabrelite/board.c                  | 1 -
 arch/arm/boards/freescale-mx6-sabresd/board.c                    | 1 -
 arch/arm/boards/friendlyarm-mini2440/mini2440.c                  | 2 +-
 arch/arm/boards/friendlyarm-mini6410/mini6410.c                  | 2 +-
 arch/arm/boards/friendlyarm-tiny210/tiny210.c                    | 1 -
 arch/arm/boards/friendlyarm-tiny6410/development-board.c         | 2 +-
 arch/arm/boards/guf-cupid/board.c                                | 2 +-
 arch/arm/boards/guf-neso/board.c                                 | 2 +-
 arch/arm/boards/karo-tx28/tx28-stk5.c                            | 2 +-
 arch/arm/boards/karo-tx51/tx51.c                                 | 2 +-
 arch/arm/boards/karo-tx53/board.c                                | 2 +-
 arch/arm/boards/lubbock/board.c                                  | 2 +-
 arch/arm/boards/mainstone/board.c                                | 2 +-
 arch/arm/boards/mmccpu/init.c                                    | 1 -
 arch/arm/boards/omap343xdsp/board.c                              | 1 -
 arch/arm/boards/omap3evm/board.c                                 | 1 -
 arch/arm/boards/panda/board.c                                    | 1 -
 arch/arm/boards/phytec-phycard-imx27/pca100.c                    | 1 -
 arch/arm/boards/phytec-phycard-omap3/pca-a-l1.c                  | 1 -
 arch/arm/boards/phytec-phycard-omap4/pca-a-xl2.c                 | 1 -
 arch/arm/boards/phytec-phycore-imx27/pcm970.c                    | 2 +-
 arch/arm/boards/phytec-phycore-imx31/pcm037.c                    | 2 +-
 arch/arm/boards/phytec-phycore-imx35/pcm043.c                    | 1 -
 arch/arm/boards/phytec-phycore-omap4460/board.c                  | 1 -
 arch/arm/boards/phytec-som-imx6/board.c                          | 3 ++-
 arch/arm/boards/pm9261/init.c                                    | 2 +-
 arch/arm/boards/pm9263/init.c                                    | 1 -
 arch/arm/boards/scb9328/scb9328.c                                | 2 +-
 arch/arm/boards/tqma6x/board.c                                   | 1 -
 arch/arm/boards/udoo/board.c                                     | 1 -
 arch/arm/boards/versatile/versatilepb.c                          | 2 +-
 arch/arm/boards/zylonite/board.c                                 | 2 +-
 arch/arm/mach-imx/include/mach/devices.h                         | 2 +-
 arch/arm/mach-omap/omap_devices.c                                | 2 +-
 arch/arm/mach-socfpga/generic.c                                  | 1 -
 arch/arm/mach-socfpga/xload.c                                    | 2 +-
 arch/arm/mach-tegra/tegra20.c                                    | 1 -
 arch/blackfin/boards/ipe337/ipe337.c                             | 2 +-
 arch/efi/efi/efi.c                                               | 2 +-
 arch/mips/mach-ar231x/ar231x.c                                   | 2 +-
 arch/ppc/boards/freescale-p1010rdb/p1010rdb.c                    | 2 +-
 arch/ppc/boards/freescale-p1022ds/p1022ds.c                      | 2 +-
 arch/ppc/boards/freescale-p2020rdb/p2020rdb.c                    | 2 +-
 arch/ppc/boards/geip-da923rc/da923rc.c                           | 2 +-
 arch/ppc/boards/pcm030/pcm030.c                                  | 2 +-
 arch/x86/boards/x86_generic/intf_platform_ide.c                  | 2 +-
 arch/x86/boards/x86_generic/serial_ns16550.c                     | 2 +-
 drivers/ata/intf_platform_ide.c                                  | 2 +-
 drivers/ata/pata-imx.c                                           | 2 +-
 drivers/net/davinci_emac.c                                       | 2 +-
 drivers/net/designware.c                                         | 2 +-
 drivers/net/dm9k.c                                               | 2 +-
 drivers/net/ep93xx.c                                             | 2 +-
 drivers/net/fec_imx.c                                            | 2 +-
 drivers/net/fec_mpc5200.c                                        | 2 +-
 drivers/net/smc91111.c                                           | 2 +-
 drivers/net/smc911x.c                                            | 2 +-
 drivers/serial/serial_ns16550.c                                  | 2 +-
 include/{net/davinci_emac.h => platform_data/eth-davinci-emac.h} | 0
 include/{net/designware.h => platform_data/eth-designware.h}     | 0
 include/{dm9000.h => platform_data/eth-dm9000.h}                 | 0
 include/{net/ep93xx_eth.h => platform_data/eth-ep93xx.h}         | 0
 include/{fec.h => platform_data/eth-fec.h}                       | 0
 include/{net/smc91111.h => platform_data/eth-smc91111.h}         | 0
 include/{smc911x.h => platform_data/eth-smc911x.h}               | 0
 include/{platform_ide.h => platform_data/ide.h}                  | 0
 include/{ns16550.h => platform_data/serial-ns16550.h}            | 0
 89 files changed, 54 insertions(+), 81 deletions(-)
 rename include/{net/davinci_emac.h => platform_data/eth-davinci-emac.h} (100%)
 rename include/{net/designware.h => platform_data/eth-designware.h} (100%)
 rename include/{dm9000.h => platform_data/eth-dm9000.h} (100%)
 rename include/{net/ep93xx_eth.h => platform_data/eth-ep93xx.h} (100%)
 rename include/{fec.h => platform_data/eth-fec.h} (100%)
 rename include/{net/smc91111.h => platform_data/eth-smc91111.h} (100%)
 rename include/{smc911x.h => platform_data/eth-smc911x.h} (100%)
 rename include/{platform_ide.h => platform_data/ide.h} (100%)
 rename include/{ns16550.h => platform_data/serial-ns16550.h} (100%)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
