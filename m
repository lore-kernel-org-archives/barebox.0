Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1botBu-0004Mp-Gf
 for barebox@lists.infradead.org; Tue, 27 Sep 2016 14:17:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Sep 2016 16:16:38 +0200
Message-Id: <20160927141639.27403-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] defaultenv: add defaultenv-1 in boards via
 defaultenv_append_directory()
To: Barebox List <barebox@lists.infradead.org>

Currently it's hardcoded for each board which defaultenv version is
used. This is unfortunate since some people like the other defaultenv
version better and may want to select it.

This patch removes the board specific environment path
CONFIG_DEFAULT_ENVIRONMENT_PATH and instead adds it via:

	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
		defaultenv_append_directory(defaultenv_<board>);

This way we can make sure that the defaultenv-1 board specific bits are
only compiled in when defaultenv-1 is actually in use.

The next step is to make the defaultenv version selection a user visible
choice.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/animeo_ip/Makefile                                    | 1 +
 arch/arm/boards/animeo_ip/{env => defaultenv-animeo_ip}/config        | 0
 arch/arm/boards/animeo_ip/init.c                                      | 4 ++++
 arch/arm/boards/at91rm9200ek/Makefile                                 | 1 +
 .../at91rm9200ek/{env => defaultenv-at91rm9200ek}/bin/init_board      | 0
 arch/arm/boards/at91rm9200ek/{env => defaultenv-at91rm9200ek}/config  | 0
 arch/arm/boards/at91rm9200ek/init.c                                   | 4 ++++
 arch/arm/boards/at91sam9260ek/Makefile                                | 1 +
 .../at91sam9260ek/{env => defaultenv-at91sam9260ek}/bin/init_board    | 0
 .../arm/boards/at91sam9260ek/{env => defaultenv-at91sam9260ek}/config | 0
 arch/arm/boards/at91sam9260ek/init.c                                  | 4 ++++
 arch/arm/boards/at91sam9261ek/Makefile                                | 1 +
 .../at91sam9261ek/{env => defaultenv-at91sam9261ek}/bin/init_board    | 0
 .../arm/boards/at91sam9261ek/{env => defaultenv-at91sam9261ek}/config | 0
 arch/arm/boards/at91sam9261ek/init.c                                  | 4 ++++
 arch/arm/boards/at91sam9263ek/Makefile                                | 1 +
 .../at91sam9263ek/{env => defaultenv-at91sam9263ek}/bin/init_board    | 0
 .../arm/boards/at91sam9263ek/{env => defaultenv-at91sam9263ek}/config | 0
 arch/arm/boards/at91sam9263ek/init.c                                  | 4 ++++
 arch/arm/boards/at91sam9m10g45ek/Makefile                             | 1 +
 .../{env => defaultenv-at91sam9m10g45ek}/bin/boot_board               | 0
 .../{env => defaultenv-at91sam9m10g45ek}/bin/menu_boot                | 0
 .../at91sam9m10g45ek/{env => defaultenv-at91sam9m10g45ek}/config      | 0
 arch/arm/boards/at91sam9m10g45ek/init.c                               | 4 ++++
 arch/arm/boards/at91sam9n12ek/Makefile                                | 1 +
 .../at91sam9n12ek/{env => defaultenv-at91sam9n12ek}/bin/init_board    | 0
 .../arm/boards/at91sam9n12ek/{env => defaultenv-at91sam9n12ek}/config | 0
 arch/arm/boards/at91sam9n12ek/init.c                                  | 4 ++++
 arch/arm/boards/at91sam9x5ek/Makefile                                 | 1 +
 .../at91sam9x5ek/{env => defaultenv-at91sam9x5ek}/bin/init_board      | 0
 arch/arm/boards/at91sam9x5ek/{env => defaultenv-at91sam9x5ek}/config  | 0
 arch/arm/boards/at91sam9x5ek/init.c                                   | 4 ++++
 arch/arm/boards/eukrea_cpuimx25/Makefile                              | 1 +
 .../{env => defaultenv-eukrea_cpuimx25}/bin/init_board                | 0
 .../boards/eukrea_cpuimx25/{env => defaultenv-eukrea_cpuimx25}/config | 0
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c                     | 4 ++++
 arch/arm/boards/eukrea_cpuimx35/Makefile                              | 1 +
 .../{env => defaultenv-eukrea_cpuimx35}/bin/init_board                | 0
 .../boards/eukrea_cpuimx35/{env => defaultenv-eukrea_cpuimx35}/config | 0
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c                     | 4 ++++
 arch/arm/boards/eukrea_cpuimx51/Makefile                              | 1 +
 .../{env => defaultenv-eukrea_cpuimx51}/bin/init_board                | 0
 .../boards/eukrea_cpuimx51/{env => defaultenv-eukrea_cpuimx51}/config | 0
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c                     | 4 ++++
 arch/arm/boards/freescale-mx25-3ds/3stack.c                           | 4 ++++
 arch/arm/boards/freescale-mx25-3ds/Makefile                           | 1 +
 .../{env => defaultenv-freescale-mx25-3ds}/bin/_update                | 0
 .../{env => defaultenv-freescale-mx25-3ds}/bin/boot                   | 0
 .../{env => defaultenv-freescale-mx25-3ds}/bin/init                   | 0
 .../{env => defaultenv-freescale-mx25-3ds}/bin/update_kernel          | 0
 .../{env => defaultenv-freescale-mx25-3ds}/bin/update_root            | 0
 .../freescale-mx25-3ds/{env => defaultenv-freescale-mx25-3ds}/config  | 0
 arch/arm/boards/freescale-mx35-3ds/3stack.c                           | 4 ++++
 arch/arm/boards/freescale-mx35-3ds/Makefile                           | 1 +
 .../freescale-mx35-3ds/{env => defaultenv-freescale-mx35-3ds}/config  | 0
 arch/arm/boards/freescale-mx53-smd/Makefile                           | 1 +
 arch/arm/boards/freescale-mx53-smd/board.c                            | 4 ++++
 .../freescale-mx53-smd/{env => defaultenv-freescale-mx53-smd}/config  | 0
 arch/arm/boards/friendlyarm-mini6410/Makefile                         | 1 +
 .../{env => defaultenv-friendlyarm-mini6410}/config                   | 0
 arch/arm/boards/friendlyarm-mini6410/mini6410.c                       | 4 ++++
 arch/arm/boards/friendlyarm-tiny6410/Makefile                         | 1 +
 .../{env => defaultenv-friendlyarm-tiny6410}/config                   | 0
 arch/arm/boards/guf-cupid/Makefile                                    | 1 +
 arch/arm/boards/guf-cupid/board.c                                     | 4 ++++
 arch/arm/boards/guf-cupid/{env => defaultenv-guf-cupid}/config        | 0
 arch/arm/boards/guf-neso/Makefile                                     | 1 +
 arch/arm/boards/guf-neso/board.c                                      | 4 ++++
 arch/arm/boards/guf-neso/{env => defaultenv-guf-neso}/config          | 0
 arch/arm/boards/haba-knx/Makefile                                     | 1 +
 arch/arm/boards/haba-knx/{env => defaultenv-haba-knx}/bin/init_board  | 0
 arch/arm/boards/haba-knx/{env => defaultenv-haba-knx}/config          | 0
 arch/arm/boards/haba-knx/init.c                                       | 4 ++++
 arch/arm/boards/highbank/Makefile                                     | 1 +
 .../boards/highbank/{env => defaultenv-highbank}/boot.d/010-ahci-boot | 0
 arch/arm/boards/highbank/{env => defaultenv-highbank}/boot.d/011-ahci | 0
 .../boards/highbank/{env => defaultenv-highbank}/boot.d/020-mmc-boot  | 0
 arch/arm/boards/highbank/{env => defaultenv-highbank}/boot.d/021-mmc  | 0
 arch/arm/boards/highbank/{env => defaultenv-highbank}/boot.d/030-net  | 0
 .../boards/highbank/{env => defaultenv-highbank}/boot.d/031-net-eth1  | 0
 arch/arm/boards/highbank/{env => defaultenv-highbank}/boot/ahci       | 0
 arch/arm/boards/highbank/{env => defaultenv-highbank}/boot/ahci-boot  | 0
 arch/arm/boards/highbank/{env => defaultenv-highbank}/boot/mmc        | 0
 arch/arm/boards/highbank/{env => defaultenv-highbank}/boot/mmc-boot   | 0
 arch/arm/boards/highbank/{env => defaultenv-highbank}/boot/net        | 0
 arch/arm/boards/highbank/{env => defaultenv-highbank}/boot/net-eth1   | 0
 arch/arm/boards/highbank/{env => defaultenv-highbank}/data/oftree     | 0
 .../boards/highbank/{env => defaultenv-highbank}/init/001-dtb-probe   | 0
 arch/arm/boards/highbank/{env => defaultenv-highbank}/init/automount  | 0
 arch/arm/boards/highbank/{env => defaultenv-highbank}/nv/boot.default | 0
 arch/arm/boards/highbank/{env => defaultenv-highbank}/nv/bootm.oftree | 0
 .../highbank/{env => defaultenv-highbank}/nv/linux.bootargs.console   | 0
 arch/arm/boards/highbank/init.c                                       | 4 ++++
 arch/arm/boards/nhk8815/Makefile                                      | 1 +
 arch/arm/boards/nhk8815/{env => defaultenv-nhk8815}/config            | 0
 arch/arm/boards/nhk8815/setup.c                                       | 4 ++++
 arch/arm/boards/phytec-phycard-omap4/Makefile                         | 1 +
 .../{env => defaultenv-phytec-phycard-omap4}/bin/nand_bootstrap       | 0
 .../{env => defaultenv-phytec-phycard-omap4}/config                   | 0
 arch/arm/boards/phytec-phycore-omap4460/Makefile                      | 1 +
 arch/arm/boards/phytec-phycore-omap4460/board.c                       | 4 ++++
 .../{env => defaultenv-phytec-phycore-omap4460}/bin/init_board        | 0
 .../{env => defaultenv-phytec-phycore-omap4460}/bin/nand_bootstrap    | 0
 .../{env => defaultenv-phytec-phycore-omap4460}/config                | 0
 arch/arm/boards/pm9261/Makefile                                       | 1 +
 arch/arm/boards/pm9261/{env => defaultenv-pm9261}/config              | 0
 arch/arm/boards/pm9261/init.c                                         | 4 ++++
 arch/arm/boards/pm9g45/Makefile                                       | 1 +
 arch/arm/boards/pm9g45/{env => defaultenv-pm9g45}/config              | 0
 arch/arm/boards/pm9g45/init.c                                         | 4 ++++
 arch/arm/boards/qemu-virt64/Makefile                                  | 1 +
 arch/arm/boards/qemu-virt64/{env => defaultenv-qemu-virt64}/config    | 0
 arch/arm/boards/qemu-virt64/init.c                                    | 4 ++++
 arch/arm/boards/qil-a926x/Makefile                                    | 1 +
 .../arm/boards/qil-a926x/{env => defaultenv-qil-a926x}/bin/init_board | 0
 arch/arm/boards/qil-a926x/{env => defaultenv-qil-a926x}/config        | 0
 arch/arm/boards/qil-a926x/init.c                                      | 4 ++++
 arch/arm/boards/sama5d3_xplained/Makefile                             | 1 +
 .../sama5d3_xplained/{env => defaultenv-sama5d3_xplained}/config      | 0
 arch/arm/boards/sama5d3_xplained/init.c                               | 4 ++++
 arch/arm/boards/sama5d3xek/Makefile                                   | 1 +
 .../boards/sama5d3xek/{env => defaultenv-sama5d3xek}/bin/init_board   | 0
 arch/arm/boards/sama5d3xek/{env => defaultenv-sama5d3xek}/config      | 0
 arch/arm/boards/sama5d3xek/init.c                                     | 4 ++++
 arch/arm/boards/scb9328/Makefile                                      | 1 +
 arch/arm/boards/scb9328/{env => defaultenv-scb9328}/config            | 0
 arch/arm/boards/scb9328/scb9328.c                                     | 4 ++++
 arch/arm/boards/tny-a926x/Makefile                                    | 1 +
 .../arm/boards/tny-a926x/{env => defaultenv-tny-a926x}/bin/init_board | 0
 arch/arm/boards/tny-a926x/{env => defaultenv-tny-a926x}/config        | 0
 arch/arm/boards/tny-a926x/init.c                                      | 4 ++++
 arch/arm/boards/usb-a926x/Makefile                                    | 1 +
 .../arm/boards/usb-a926x/{env => defaultenv-usb-a926x}/bin/init_board | 0
 arch/arm/boards/usb-a926x/{env => defaultenv-usb-a926x}/config        | 0
 arch/arm/boards/usb-a926x/init.c                                      | 4 ++++
 arch/arm/boards/vexpress/Makefile                                     | 1 +
 arch/arm/boards/vexpress/{env => defaultenv-vexpress}/config          | 0
 arch/arm/boards/vexpress/init.c                                       | 4 ++++
 arch/arm/configs/animeo_ip_defconfig                                  | 1 -
 arch/arm/configs/at91rm9200ek_defconfig                               | 1 -
 arch/arm/configs/at91sam9260ek_defconfig                              | 1 -
 arch/arm/configs/at91sam9261ek_defconfig                              | 1 -
 arch/arm/configs/at91sam9261ek_first_stage_defconfig                  | 1 -
 arch/arm/configs/at91sam9263ek_defconfig                              | 1 -
 arch/arm/configs/at91sam9g10ek_defconfig                              | 1 -
 arch/arm/configs/at91sam9g20ek_defconfig                              | 1 -
 arch/arm/configs/at91sam9m10g45ek_defconfig                           | 1 -
 arch/arm/configs/at91sam9n12ek_defconfig                              | 1 -
 arch/arm/configs/at91sam9x5ek_defconfig                               | 1 -
 arch/arm/configs/cupid_defconfig                                      | 1 -
 arch/arm/configs/eukrea_cpuimx25_defconfig                            | 1 -
 arch/arm/configs/eukrea_cpuimx35_defconfig                            | 1 -
 arch/arm/configs/eukrea_cpuimx51_defconfig                            | 1 -
 arch/arm/configs/freescale-mx25-3ds_defconfig                         | 1 -
 arch/arm/configs/freescale-mx35-3ds_defconfig                         | 1 -
 arch/arm/configs/freescale-mx53-smd_defconfig                         | 1 -
 arch/arm/configs/friendlyarm_mini6410_defconfig                       | 1 -
 arch/arm/configs/friendlyarm_tiny6410_defconfig                       | 1 -
 arch/arm/configs/haba_knx_lite_defconfig                              | 1 -
 arch/arm/configs/highbank_defconfig                                   | 1 -
 arch/arm/configs/neso_defconfig                                       | 1 -
 arch/arm/configs/nhk8815_defconfig                                    | 1 -
 arch/arm/configs/phytec-phycard-omap4_defconfig                       | 1 -
 arch/arm/configs/phytec-phycore-omap4460_defconfig                    | 1 -
 arch/arm/configs/pm9261_defconfig                                     | 1 -
 arch/arm/configs/pm9g45_defconfig                                     | 1 -
 arch/arm/configs/qemu_virt64_defconfig                                | 1 -
 arch/arm/configs/qil_a9260_128mib_defconfig                           | 1 -
 arch/arm/configs/qil_a9260_defconfig                                  | 1 -
 arch/arm/configs/qil_a9g20_128mib_defconfig                           | 1 -
 arch/arm/configs/qil_a9g20_defconfig                                  | 1 -
 arch/arm/configs/sama5d3_xplained_defconfig                           | 1 -
 arch/arm/configs/sama5d3xek_defconfig                                 | 1 -
 arch/arm/configs/scb9328_defconfig                                    | 1 -
 arch/arm/configs/tny_a9260_defconfig                                  | 1 -
 arch/arm/configs/tny_a9263_defconfig                                  | 1 -
 arch/arm/configs/tny_a9g20_defconfig                                  | 1 -
 arch/arm/configs/usb_a9260_defconfig                                  | 1 -
 arch/arm/configs/usb_a9263_128mib_defconfig                           | 1 -
 arch/arm/configs/usb_a9263_defconfig                                  | 1 -
 arch/arm/configs/usb_a9g20_128mib_defconfig                           | 1 -
 arch/arm/configs/usb_a9g20_defconfig                                  | 1 -
 arch/arm/configs/vexpress_ca9_defconfig                               | 1 -
 arch/arm/configs/vexpress_defconfig                                   | 1 -
 arch/nios2/boards/generic/Makefile                                    | 1 +
 arch/nios2/boards/generic/{env => defaultenv-generic}/config          | 0
 arch/nios2/boards/generic/generic.c                                   | 4 ++++
 arch/nios2/configs/generic_defconfig                                  | 1 -
 arch/ppc/boards/freescale-p1010rdb/Makefile                           | 3 ++-
 .../{env => defaultenv-freescale-p1010rdb}/bin/init                   | 0
 .../freescale-p1010rdb/{env => defaultenv-freescale-p1010rdb}/config  | 0
 arch/ppc/boards/freescale-p1010rdb/p1010rdb.c                         | 4 ++++
 arch/ppc/boards/freescale-p1022ds/Makefile                            | 1 +
 .../freescale-p1022ds/{env => defaultenv-freescale-p1022ds}/bin/init  | 0
 .../freescale-p1022ds/{env => defaultenv-freescale-p1022ds}/config    | 0
 arch/ppc/boards/freescale-p1022ds/p1022ds.c                           | 4 ++++
 arch/ppc/boards/freescale-p2020rdb/Makefile                           | 1 +
 .../{env => defaultenv-freescale-p2020rdb}/bin/init                   | 0
 .../freescale-p2020rdb/{env => defaultenv-freescale-p2020rdb}/config  | 0
 arch/ppc/boards/freescale-p2020rdb/p2020rdb.c                         | 4 ++++
 arch/ppc/boards/geip-da923rc/Makefile                                 | 1 +
 arch/ppc/boards/geip-da923rc/da923rc.c                                | 4 ++++
 .../ppc/boards/geip-da923rc/{env => defaultenv-geip-da923rc}/bin/boot | 0
 .../ppc/boards/geip-da923rc/{env => defaultenv-geip-da923rc}/bin/init | 0
 arch/ppc/boards/geip-da923rc/{env => defaultenv-geip-da923rc}/config  | 0
 arch/ppc/configs/da923rc_defconfig                                    | 1 -
 arch/ppc/configs/p1010rdb_defconfig                                   | 1 -
 arch/ppc/configs/p1022ds_defconfig                                    | 1 -
 arch/ppc/configs/p2020rdb_defconfig                                   | 1 -
 209 files changed, 183 insertions(+), 52 deletions(-)
 rename arch/arm/boards/animeo_ip/{env => defaultenv-animeo_ip}/config (100%)
 rename arch/arm/boards/at91rm9200ek/{env => defaultenv-at91rm9200ek}/bin/init_board (100%)
 rename arch/arm/boards/at91rm9200ek/{env => defaultenv-at91rm9200ek}/config (100%)
 rename arch/arm/boards/at91sam9260ek/{env => defaultenv-at91sam9260ek}/bin/init_board (100%)
 rename arch/arm/boards/at91sam9260ek/{env => defaultenv-at91sam9260ek}/config (100%)
 rename arch/arm/boards/at91sam9261ek/{env => defaultenv-at91sam9261ek}/bin/init_board (100%)
 rename arch/arm/boards/at91sam9261ek/{env => defaultenv-at91sam9261ek}/config (100%)
 rename arch/arm/boards/at91sam9263ek/{env => defaultenv-at91sam9263ek}/bin/init_board (100%)
 rename arch/arm/boards/at91sam9263ek/{env => defaultenv-at91sam9263ek}/config (100%)
 rename arch/arm/boards/at91sam9m10g45ek/{env => defaultenv-at91sam9m10g45ek}/bin/boot_board (100%)
 rename arch/arm/boards/at91sam9m10g45ek/{env => defaultenv-at91sam9m10g45ek}/bin/menu_boot (100%)
 rename arch/arm/boards/at91sam9m10g45ek/{env => defaultenv-at91sam9m10g45ek}/config (100%)
 rename arch/arm/boards/at91sam9n12ek/{env => defaultenv-at91sam9n12ek}/bin/init_board (100%)
 rename arch/arm/boards/at91sam9n12ek/{env => defaultenv-at91sam9n12ek}/config (100%)
 rename arch/arm/boards/at91sam9x5ek/{env => defaultenv-at91sam9x5ek}/bin/init_board (100%)
 rename arch/arm/boards/at91sam9x5ek/{env => defaultenv-at91sam9x5ek}/config (100%)
 rename arch/arm/boards/eukrea_cpuimx25/{env => defaultenv-eukrea_cpuimx25}/bin/init_board (100%)
 rename arch/arm/boards/eukrea_cpuimx25/{env => defaultenv-eukrea_cpuimx25}/config (100%)
 rename arch/arm/boards/eukrea_cpuimx35/{env => defaultenv-eukrea_cpuimx35}/bin/init_board (100%)
 rename arch/arm/boards/eukrea_cpuimx35/{env => defaultenv-eukrea_cpuimx35}/config (100%)
 rename arch/arm/boards/eukrea_cpuimx51/{env => defaultenv-eukrea_cpuimx51}/bin/init_board (100%)
 rename arch/arm/boards/eukrea_cpuimx51/{env => defaultenv-eukrea_cpuimx51}/config (100%)
 rename arch/arm/boards/freescale-mx25-3ds/{env => defaultenv-freescale-mx25-3ds}/bin/_update (100%)
 rename arch/arm/boards/freescale-mx25-3ds/{env => defaultenv-freescale-mx25-3ds}/bin/boot (100%)
 rename arch/arm/boards/freescale-mx25-3ds/{env => defaultenv-freescale-mx25-3ds}/bin/init (100%)
 rename arch/arm/boards/freescale-mx25-3ds/{env => defaultenv-freescale-mx25-3ds}/bin/update_kernel (100%)
 rename arch/arm/boards/freescale-mx25-3ds/{env => defaultenv-freescale-mx25-3ds}/bin/update_root (100%)
 rename arch/arm/boards/freescale-mx25-3ds/{env => defaultenv-freescale-mx25-3ds}/config (100%)
 rename arch/arm/boards/freescale-mx35-3ds/{env => defaultenv-freescale-mx35-3ds}/config (100%)
 rename arch/arm/boards/freescale-mx53-smd/{env => defaultenv-freescale-mx53-smd}/config (100%)
 rename arch/arm/boards/friendlyarm-mini6410/{env => defaultenv-friendlyarm-mini6410}/config (100%)
 rename arch/arm/boards/friendlyarm-tiny6410/{env => defaultenv-friendlyarm-tiny6410}/config (100%)
 rename arch/arm/boards/guf-cupid/{env => defaultenv-guf-cupid}/config (100%)
 rename arch/arm/boards/guf-neso/{env => defaultenv-guf-neso}/config (100%)
 rename arch/arm/boards/haba-knx/{env => defaultenv-haba-knx}/bin/init_board (100%)
 rename arch/arm/boards/haba-knx/{env => defaultenv-haba-knx}/config (100%)
 rename arch/arm/boards/highbank/{env => defaultenv-highbank}/boot.d/010-ahci-boot (100%)
 rename arch/arm/boards/highbank/{env => defaultenv-highbank}/boot.d/011-ahci (100%)
 rename arch/arm/boards/highbank/{env => defaultenv-highbank}/boot.d/020-mmc-boot (100%)
 rename arch/arm/boards/highbank/{env => defaultenv-highbank}/boot.d/021-mmc (100%)
 rename arch/arm/boards/highbank/{env => defaultenv-highbank}/boot.d/030-net (100%)
 rename arch/arm/boards/highbank/{env => defaultenv-highbank}/boot.d/031-net-eth1 (100%)
 rename arch/arm/boards/highbank/{env => defaultenv-highbank}/boot/ahci (100%)
 rename arch/arm/boards/highbank/{env => defaultenv-highbank}/boot/ahci-boot (100%)
 rename arch/arm/boards/highbank/{env => defaultenv-highbank}/boot/mmc (100%)
 rename arch/arm/boards/highbank/{env => defaultenv-highbank}/boot/mmc-boot (100%)
 rename arch/arm/boards/highbank/{env => defaultenv-highbank}/boot/net (100%)
 rename arch/arm/boards/highbank/{env => defaultenv-highbank}/boot/net-eth1 (100%)
 rename arch/arm/boards/highbank/{env => defaultenv-highbank}/data/oftree (100%)
 rename arch/arm/boards/highbank/{env => defaultenv-highbank}/init/001-dtb-probe (100%)
 rename arch/arm/boards/highbank/{env => defaultenv-highbank}/init/automount (100%)
 rename arch/arm/boards/highbank/{env => defaultenv-highbank}/nv/boot.default (100%)
 rename arch/arm/boards/highbank/{env => defaultenv-highbank}/nv/bootm.oftree (100%)
 rename arch/arm/boards/highbank/{env => defaultenv-highbank}/nv/linux.bootargs.console (100%)
 rename arch/arm/boards/nhk8815/{env => defaultenv-nhk8815}/config (100%)
 rename arch/arm/boards/phytec-phycard-omap4/{env => defaultenv-phytec-phycard-omap4}/bin/nand_bootstrap (100%)
 rename arch/arm/boards/phytec-phycard-omap4/{env => defaultenv-phytec-phycard-omap4}/config (100%)
 rename arch/arm/boards/phytec-phycore-omap4460/{env => defaultenv-phytec-phycore-omap4460}/bin/init_board (100%)
 rename arch/arm/boards/phytec-phycore-omap4460/{env => defaultenv-phytec-phycore-omap4460}/bin/nand_bootstrap (100%)
 rename arch/arm/boards/phytec-phycore-omap4460/{env => defaultenv-phytec-phycore-omap4460}/config (100%)
 rename arch/arm/boards/pm9261/{env => defaultenv-pm9261}/config (100%)
 rename arch/arm/boards/pm9g45/{env => defaultenv-pm9g45}/config (100%)
 rename arch/arm/boards/qemu-virt64/{env => defaultenv-qemu-virt64}/config (100%)
 rename arch/arm/boards/qil-a926x/{env => defaultenv-qil-a926x}/bin/init_board (100%)
 rename arch/arm/boards/qil-a926x/{env => defaultenv-qil-a926x}/config (100%)
 rename arch/arm/boards/sama5d3_xplained/{env => defaultenv-sama5d3_xplained}/config (100%)
 rename arch/arm/boards/sama5d3xek/{env => defaultenv-sama5d3xek}/bin/init_board (100%)
 rename arch/arm/boards/sama5d3xek/{env => defaultenv-sama5d3xek}/config (100%)
 rename arch/arm/boards/scb9328/{env => defaultenv-scb9328}/config (100%)
 rename arch/arm/boards/tny-a926x/{env => defaultenv-tny-a926x}/bin/init_board (100%)
 rename arch/arm/boards/tny-a926x/{env => defaultenv-tny-a926x}/config (100%)
 rename arch/arm/boards/usb-a926x/{env => defaultenv-usb-a926x}/bin/init_board (100%)
 rename arch/arm/boards/usb-a926x/{env => defaultenv-usb-a926x}/config (100%)
 rename arch/arm/boards/vexpress/{env => defaultenv-vexpress}/config (100%)
 rename arch/nios2/boards/generic/{env => defaultenv-generic}/config (100%)
 rename arch/ppc/boards/freescale-p1010rdb/{env => defaultenv-freescale-p1010rdb}/bin/init (100%)
 rename arch/ppc/boards/freescale-p1010rdb/{env => defaultenv-freescale-p1010rdb}/config (100%)
 rename arch/ppc/boards/freescale-p1022ds/{env => defaultenv-freescale-p1022ds}/bin/init (100%)
 rename arch/ppc/boards/freescale-p1022ds/{env => defaultenv-freescale-p1022ds}/config (100%)
 rename arch/ppc/boards/freescale-p2020rdb/{env => defaultenv-freescale-p2020rdb}/bin/init (100%)
 rename arch/ppc/boards/freescale-p2020rdb/{env => defaultenv-freescale-p2020rdb}/config (100%)
 rename arch/ppc/boards/geip-da923rc/{env => defaultenv-geip-da923rc}/bin/boot (100%)
 rename arch/ppc/boards/geip-da923rc/{env => defaultenv-geip-da923rc}/bin/init (100%)
 rename arch/ppc/boards/geip-da923rc/{env => defaultenv-geip-da923rc}/config (100%)

diff --git a/arch/arm/boards/animeo_ip/Makefile b/arch/arm/boards/animeo_ip/Makefile
index eb072c0..510b142 100644
--- a/arch/arm/boards/animeo_ip/Makefile
+++ b/arch/arm/boards/animeo_ip/Makefile
@@ -1 +1,2 @@
 obj-y += init.o
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-animeo_ip
diff --git a/arch/arm/boards/animeo_ip/env/config b/arch/arm/boards/animeo_ip/defaultenv-animeo_ip/config
similarity index 100%
rename from arch/arm/boards/animeo_ip/env/config
rename to arch/arm/boards/animeo_ip/defaultenv-animeo_ip/config
diff --git a/arch/arm/boards/animeo_ip/init.c b/arch/arm/boards/animeo_ip/init.c
index 14b33dc..8474173 100644
--- a/arch/arm/boards/animeo_ip/init.c
+++ b/arch/arm/boards/animeo_ip/init.c
@@ -14,6 +14,7 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
+#include <envfs.h>
 #include <mach/hardware.h>
 #include <nand.h>
 #include <linux/sizes.h>
@@ -321,6 +322,9 @@ static int animeo_ip_devices_init(void)
 
 	animeo_ip_add_device_eth();
 
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
+		defaultenv_append_directory(defaultenv_animeo_ip);
+
 	return 0;
 }
 
diff --git a/arch/arm/boards/at91rm9200ek/Makefile b/arch/arm/boards/at91rm9200ek/Makefile
index eb072c0..dec1c50 100644
--- a/arch/arm/boards/at91rm9200ek/Makefile
+++ b/arch/arm/boards/at91rm9200ek/Makefile
@@ -1 +1,2 @@
 obj-y += init.o
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-at91rm9200ek
diff --git a/arch/arm/boards/at91rm9200ek/env/bin/init_board b/arch/arm/boards/at91rm9200ek/defaultenv-at91rm9200ek/bin/init_board
similarity index 100%
rename from arch/arm/boards/at91rm9200ek/env/bin/init_board
rename to arch/arm/boards/at91rm9200ek/defaultenv-at91rm9200ek/bin/init_board
diff --git a/arch/arm/boards/at91rm9200ek/env/config b/arch/arm/boards/at91rm9200ek/defaultenv-at91rm9200ek/config
similarity index 100%
rename from arch/arm/boards/at91rm9200ek/env/config
rename to arch/arm/boards/at91rm9200ek/defaultenv-at91rm9200ek/config
diff --git a/arch/arm/boards/at91rm9200ek/init.c b/arch/arm/boards/at91rm9200ek/init.c
index 43c8b1b..7626786 100644
--- a/arch/arm/boards/at91rm9200ek/init.c
+++ b/arch/arm/boards/at91rm9200ek/init.c
@@ -25,6 +25,7 @@
 #include <gpio.h>
 #include <fcntl.h>
 #include <io.h>
+#include <envfs.h>
 #include <linux/sizes.h>
 #include <mach/hardware.h>
 #include <mach/at91_pmc.h>
@@ -177,6 +178,9 @@ static int at91rm9200ek_devices_init(void)
 
 	armlinux_set_architecture(MACH_TYPE_AT91RM9200EK);
 
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
+		defaultenv_append_directory(defaultenv_at91rm9200ek);
+
 	return 0;
 }
 device_initcall(at91rm9200ek_devices_init);
diff --git a/arch/arm/boards/at91sam9260ek/Makefile b/arch/arm/boards/at91sam9260ek/Makefile
index eb072c0..6e07f18 100644
--- a/arch/arm/boards/at91sam9260ek/Makefile
+++ b/arch/arm/boards/at91sam9260ek/Makefile
@@ -1 +1,2 @@
 obj-y += init.o
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-at91sam9260ek
diff --git a/arch/arm/boards/at91sam9260ek/env/bin/init_board b/arch/arm/boards/at91sam9260ek/defaultenv-at91sam9260ek/bin/init_board
similarity index 100%
rename from arch/arm/boards/at91sam9260ek/env/bin/init_board
rename to arch/arm/boards/at91sam9260ek/defaultenv-at91sam9260ek/bin/init_board
diff --git a/arch/arm/boards/at91sam9260ek/env/config b/arch/arm/boards/at91sam9260ek/defaultenv-at91sam9260ek/config
similarity index 100%
rename from arch/arm/boards/at91sam9260ek/env/config
rename to arch/arm/boards/at91sam9260ek/defaultenv-at91sam9260ek/config
diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
index 422feb2..5a21ac1 100644
--- a/arch/arm/boards/at91sam9260ek/init.c
+++ b/arch/arm/boards/at91sam9260ek/init.c
@@ -14,6 +14,7 @@
 
 #include <common.h>
 #include <init.h>
+#include <envfs.h>
 #include <environment.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
@@ -261,6 +262,9 @@ static int at91sam9260ek_devices_init(void)
 	devfs_add_partition("nand0", SZ_512K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw1");
 	dev_add_bb_dev("env_raw1", "env1");
 
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
+		defaultenv_append_directory(defaultenv_at91sam9260ek);
+
 	return 0;
 }
 device_initcall(at91sam9260ek_devices_init);
diff --git a/arch/arm/boards/at91sam9261ek/Makefile b/arch/arm/boards/at91sam9261ek/Makefile
index 1398c26..1764da9 100644
--- a/arch/arm/boards/at91sam9261ek/Makefile
+++ b/arch/arm/boards/at91sam9261ek/Makefile
@@ -1,3 +1,4 @@
 obj-y += init.o
 
 lwl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-at91sam9261ek
diff --git a/arch/arm/boards/at91sam9261ek/env/bin/init_board b/arch/arm/boards/at91sam9261ek/defaultenv-at91sam9261ek/bin/init_board
similarity index 100%
rename from arch/arm/boards/at91sam9261ek/env/bin/init_board
rename to arch/arm/boards/at91sam9261ek/defaultenv-at91sam9261ek/bin/init_board
diff --git a/arch/arm/boards/at91sam9261ek/env/config b/arch/arm/boards/at91sam9261ek/defaultenv-at91sam9261ek/config
similarity index 100%
rename from arch/arm/boards/at91sam9261ek/env/config
rename to arch/arm/boards/at91sam9261ek/defaultenv-at91sam9261ek/config
diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
index b9e4914..72716b8 100644
--- a/arch/arm/boards/at91sam9261ek/init.c
+++ b/arch/arm/boards/at91sam9261ek/init.c
@@ -17,6 +17,7 @@
 #include <common.h>
 #include <net.h>
 #include <init.h>
+#include <envfs.h>
 #include <environment.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
@@ -396,6 +397,9 @@ static int at91sam9261ek_devices_init(void)
 	else
 		armlinux_set_architecture(MACH_TYPE_AT91SAM9261EK);
 
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
+		defaultenv_append_directory(defaultenv_at91sam9261ek);
+
 	return 0;
 }
 
diff --git a/arch/arm/boards/at91sam9263ek/Makefile b/arch/arm/boards/at91sam9263ek/Makefile
index 1398c26..2072cd4 100644
--- a/arch/arm/boards/at91sam9263ek/Makefile
+++ b/arch/arm/boards/at91sam9263ek/Makefile
@@ -1,3 +1,4 @@
 obj-y += init.o
 
 lwl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-at91sam9263ek
diff --git a/arch/arm/boards/at91sam9263ek/env/bin/init_board b/arch/arm/boards/at91sam9263ek/defaultenv-at91sam9263ek/bin/init_board
similarity index 100%
rename from arch/arm/boards/at91sam9263ek/env/bin/init_board
rename to arch/arm/boards/at91sam9263ek/defaultenv-at91sam9263ek/bin/init_board
diff --git a/arch/arm/boards/at91sam9263ek/env/config b/arch/arm/boards/at91sam9263ek/defaultenv-at91sam9263ek/config
similarity index 100%
rename from arch/arm/boards/at91sam9263ek/env/config
rename to arch/arm/boards/at91sam9263ek/defaultenv-at91sam9263ek/config
diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
index 3bb2dda..682449b 100644
--- a/arch/arm/boards/at91sam9263ek/init.c
+++ b/arch/arm/boards/at91sam9263ek/init.c
@@ -19,6 +19,7 @@
 #include <common.h>
 #include <net.h>
 #include <init.h>
+#include <envfs.h>
 #include <environment.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
@@ -273,6 +274,9 @@ static int at91sam9263ek_devices_init(void)
 
 	armlinux_set_architecture(MACH_TYPE_AT91SAM9263EK);
 
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
+		defaultenv_append_directory(defaultenv_at91sam9263ek);
+
 	return 0;
 }
 
diff --git a/arch/arm/boards/at91sam9m10g45ek/Makefile b/arch/arm/boards/at91sam9m10g45ek/Makefile
index eb072c0..dd80521 100644
--- a/arch/arm/boards/at91sam9m10g45ek/Makefile
+++ b/arch/arm/boards/at91sam9m10g45ek/Makefile
@@ -1 +1,2 @@
 obj-y += init.o
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-at91sam9m10g45ek
diff --git a/arch/arm/boards/at91sam9m10g45ek/env/bin/boot_board b/arch/arm/boards/at91sam9m10g45ek/defaultenv-at91sam9m10g45ek/bin/boot_board
similarity index 100%
rename from arch/arm/boards/at91sam9m10g45ek/env/bin/boot_board
rename to arch/arm/boards/at91sam9m10g45ek/defaultenv-at91sam9m10g45ek/bin/boot_board
diff --git a/arch/arm/boards/at91sam9m10g45ek/env/bin/menu_boot b/arch/arm/boards/at91sam9m10g45ek/defaultenv-at91sam9m10g45ek/bin/menu_boot
similarity index 100%
rename from arch/arm/boards/at91sam9m10g45ek/env/bin/menu_boot
rename to arch/arm/boards/at91sam9m10g45ek/defaultenv-at91sam9m10g45ek/bin/menu_boot
diff --git a/arch/arm/boards/at91sam9m10g45ek/env/config b/arch/arm/boards/at91sam9m10g45ek/defaultenv-at91sam9m10g45ek/config
similarity index 100%
rename from arch/arm/boards/at91sam9m10g45ek/env/config
rename to arch/arm/boards/at91sam9m10g45ek/defaultenv-at91sam9m10g45ek/config
diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
index fb444d8..ee69263 100644
--- a/arch/arm/boards/at91sam9m10g45ek/init.c
+++ b/arch/arm/boards/at91sam9m10g45ek/init.c
@@ -21,6 +21,7 @@
 #include <mci.h>
 #include <init.h>
 #include <gpio.h>
+#include <envfs.h>
 #include <environment.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
@@ -321,6 +322,9 @@ static int at91sam9m10g45ek_devices_init(void)
 	armlinux_set_architecture(MACH_TYPE_AT91SAM9M10G45EK);
 	ek_set_board_revision();
 
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
+		defaultenv_append_directory(defaultenv_at91sam9m10g45ek);
+
 	return 0;
 }
 device_initcall(at91sam9m10g45ek_devices_init);
diff --git a/arch/arm/boards/at91sam9n12ek/Makefile b/arch/arm/boards/at91sam9n12ek/Makefile
index eb072c0..f5d125a 100644
--- a/arch/arm/boards/at91sam9n12ek/Makefile
+++ b/arch/arm/boards/at91sam9n12ek/Makefile
@@ -1 +1,2 @@
 obj-y += init.o
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-at91sam9n12ek
diff --git a/arch/arm/boards/at91sam9n12ek/env/bin/init_board b/arch/arm/boards/at91sam9n12ek/defaultenv-at91sam9n12ek/bin/init_board
similarity index 100%
rename from arch/arm/boards/at91sam9n12ek/env/bin/init_board
rename to arch/arm/boards/at91sam9n12ek/defaultenv-at91sam9n12ek/bin/init_board
diff --git a/arch/arm/boards/at91sam9n12ek/env/config b/arch/arm/boards/at91sam9n12ek/defaultenv-at91sam9n12ek/config
similarity index 100%
rename from arch/arm/boards/at91sam9n12ek/env/config
rename to arch/arm/boards/at91sam9n12ek/defaultenv-at91sam9n12ek/config
diff --git a/arch/arm/boards/at91sam9n12ek/init.c b/arch/arm/boards/at91sam9n12ek/init.c
index 2ed58c1..b9431b2 100644
--- a/arch/arm/boards/at91sam9n12ek/init.c
+++ b/arch/arm/boards/at91sam9n12ek/init.c
@@ -24,6 +24,7 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
+#include <envfs.h>
 #include <mach/hardware.h>
 #include <nand.h>
 #include <linux/sizes.h>
@@ -327,6 +328,9 @@ static int at91sam9n12ek_devices_init(void)
 	devfs_add_partition("nand0", SZ_512K + SZ_256K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw1");
 	dev_add_bb_dev("env_raw1", "env1");
 
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
+		defaultenv_append_directory(defaultenv_at91sam9n12ek);
+
 	return 0;
 }
 device_initcall(at91sam9n12ek_devices_init);
diff --git a/arch/arm/boards/at91sam9x5ek/Makefile b/arch/arm/boards/at91sam9x5ek/Makefile
index f2acf20..559df8f 100644
--- a/arch/arm/boards/at91sam9x5ek/Makefile
+++ b/arch/arm/boards/at91sam9x5ek/Makefile
@@ -1,2 +1,3 @@
 obj-y += init.o
 obj-y += hw_version.o
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-at91sam9x5ek
diff --git a/arch/arm/boards/at91sam9x5ek/env/bin/init_board b/arch/arm/boards/at91sam9x5ek/defaultenv-at91sam9x5ek/bin/init_board
similarity index 100%
rename from arch/arm/boards/at91sam9x5ek/env/bin/init_board
rename to arch/arm/boards/at91sam9x5ek/defaultenv-at91sam9x5ek/bin/init_board
diff --git a/arch/arm/boards/at91sam9x5ek/env/config b/arch/arm/boards/at91sam9x5ek/defaultenv-at91sam9x5ek/config
similarity index 100%
rename from arch/arm/boards/at91sam9x5ek/env/config
rename to arch/arm/boards/at91sam9x5ek/defaultenv-at91sam9x5ek/config
diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index 1ef3580..9fe117c 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -24,6 +24,7 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
+#include <envfs.h>
 #include <mach/hardware.h>
 #include <nand.h>
 #include <linux/sizes.h>
@@ -320,6 +321,9 @@ static int at91sam9x5ek_devices_init(void)
 	devfs_add_partition("nand0", SZ_512K + SZ_256K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw1");
 	dev_add_bb_dev("env_raw1", "env1");
 
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
+		defaultenv_append_directory(defaultenv_at91sam9x5ek);
+
 	return 0;
 }
 device_initcall(at91sam9x5ek_devices_init);
diff --git a/arch/arm/boards/eukrea_cpuimx25/Makefile b/arch/arm/boards/eukrea_cpuimx25/Makefile
index 4f08476..159701d 100644
--- a/arch/arm/boards/eukrea_cpuimx25/Makefile
+++ b/arch/arm/boards/eukrea_cpuimx25/Makefile
@@ -18,3 +18,4 @@
 
 obj-y += eukrea_cpuimx25.o
 lwl-y += lowlevel.o
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-eukrea_cpuimx25
diff --git a/arch/arm/boards/eukrea_cpuimx25/env/bin/init_board b/arch/arm/boards/eukrea_cpuimx25/defaultenv-eukrea_cpuimx25/bin/init_board
similarity index 100%
rename from arch/arm/boards/eukrea_cpuimx25/env/bin/init_board
rename to arch/arm/boards/eukrea_cpuimx25/defaultenv-eukrea_cpuimx25/bin/init_board
diff --git a/arch/arm/boards/eukrea_cpuimx25/env/config b/arch/arm/boards/eukrea_cpuimx25/defaultenv-eukrea_cpuimx25/config
similarity index 100%
rename from arch/arm/boards/eukrea_cpuimx25/env/config
rename to arch/arm/boards/eukrea_cpuimx25/defaultenv-eukrea_cpuimx25/config
diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index 9045191..25bf40c 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -30,6 +30,7 @@
 #include <io.h>
 #include <asm/mmu.h>
 #include <led.h>
+#include <envfs.h>
 
 #include <partition.h>
 #include <generated/mach-types.h>
@@ -216,6 +217,9 @@ static int eukrea_cpuimx25_devices_init(void)
 
 	armlinux_set_architecture(MACH_TYPE_EUKREA_CPUIMX25SD);
 
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
+		defaultenv_append_directory(defaultenv_eukrea_cpuimx25);
+
 	return 0;
 }
 
diff --git a/arch/arm/boards/eukrea_cpuimx35/Makefile b/arch/arm/boards/eukrea_cpuimx35/Makefile
index 060f3b1..3ef2c4e 100644
--- a/arch/arm/boards/eukrea_cpuimx35/Makefile
+++ b/arch/arm/boards/eukrea_cpuimx35/Makefile
@@ -18,3 +18,4 @@
 
 obj-y					+= eukrea_cpuimx35.o
 lwl-y					+= lowlevel.o
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-eukrea_cpuimx35
diff --git a/arch/arm/boards/eukrea_cpuimx35/env/bin/init_board b/arch/arm/boards/eukrea_cpuimx35/defaultenv-eukrea_cpuimx35/bin/init_board
similarity index 100%
rename from arch/arm/boards/eukrea_cpuimx35/env/bin/init_board
rename to arch/arm/boards/eukrea_cpuimx35/defaultenv-eukrea_cpuimx35/bin/init_board
diff --git a/arch/arm/boards/eukrea_cpuimx35/env/config b/arch/arm/boards/eukrea_cpuimx35/defaultenv-eukrea_cpuimx35/config
similarity index 100%
rename from arch/arm/boards/eukrea_cpuimx35/env/config
rename to arch/arm/boards/eukrea_cpuimx35/defaultenv-eukrea_cpuimx35/config
diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
index 04ef9b2..a107637 100644
--- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
@@ -34,6 +34,7 @@
 #include <net.h>
 #include <partition.h>
 #include <gpio.h>
+#include <envfs.h>
 
 #include <asm/armlinux.h>
 #include <io.h>
@@ -212,6 +213,9 @@ static int eukrea_cpuimx35_devices_init(void)
 #endif
 	armlinux_set_architecture(MACH_TYPE_EUKREA_CPUIMX35SD);
 
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
+		defaultenv_append_directory(defaultenv_eukrea_cpuimx35);
+
 	return 0;
 }
 
diff --git a/arch/arm/boards/eukrea_cpuimx51/Makefile b/arch/arm/boards/eukrea_cpuimx51/Makefile
index 96e26d0..e8c84fe 100644
--- a/arch/arm/boards/eukrea_cpuimx51/Makefile
+++ b/arch/arm/boards/eukrea_cpuimx51/Makefile
@@ -1,2 +1,3 @@
 obj-y += eukrea_cpuimx51.o
 lwl-y += lowlevel.o
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-eukrea_cpuimx51
diff --git a/arch/arm/boards/eukrea_cpuimx51/env/bin/init_board b/arch/arm/boards/eukrea_cpuimx51/defaultenv-eukrea_cpuimx51/bin/init_board
similarity index 100%
rename from arch/arm/boards/eukrea_cpuimx51/env/bin/init_board
rename to arch/arm/boards/eukrea_cpuimx51/defaultenv-eukrea_cpuimx51/bin/init_board
diff --git a/arch/arm/boards/eukrea_cpuimx51/env/config b/arch/arm/boards/eukrea_cpuimx51/defaultenv-eukrea_cpuimx51/config
similarity index 100%
rename from arch/arm/boards/eukrea_cpuimx51/env/config
rename to arch/arm/boards/eukrea_cpuimx51/defaultenv-eukrea_cpuimx51/config
diff --git a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
index fc57f6c..bb493d7 100644
--- a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
+++ b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
@@ -26,6 +26,7 @@
 #include <generated/mach-types.h>
 #include <partition.h>
 #include <fs.h>
+#include <envfs.h>
 #include <fcntl.h>
 #include <nand.h>
 #include <spi/spi.h>
@@ -122,6 +123,9 @@ static int eukrea_cpuimx51_devices_init(void)
 
 	armlinux_set_architecture(MACH_TYPE_EUKREA_CPUIMX51SD);
 
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
+		defaultenv_append_directory(defaultenv_eukrea_cpuimx51);
+
 	return 0;
 }
 
diff --git a/arch/arm/boards/freescale-mx25-3ds/3stack.c b/arch/arm/boards/freescale-mx25-3ds/3stack.c
index 36ad591..3ab8c4a 100644
--- a/arch/arm/boards/freescale-mx25-3ds/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3ds/3stack.c
@@ -27,6 +27,7 @@
 #include <asm/sections.h>
 #include <asm/barebox-arm.h>
 #include <io.h>
+#include <envfs.h>
 #include <partition.h>
 #include <generated/mach-types.h>
 #include <mach/imx-nand.h>
@@ -156,6 +157,9 @@ static int imx25_3ds_devices_init(void)
 	armlinux_set_architecture(MACH_TYPE_MX25_3DS);
 	armlinux_set_serial(imx_uid());
 
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
+		defaultenv_append_directory(defaultenv_freescale_mx25_3ds);
+
 	return 0;
 }
 
diff --git a/arch/arm/boards/freescale-mx25-3ds/Makefile b/arch/arm/boards/freescale-mx25-3ds/Makefile
index 52c416e..20787ef 100644
--- a/arch/arm/boards/freescale-mx25-3ds/Makefile
+++ b/arch/arm/boards/freescale-mx25-3ds/Makefile
@@ -18,3 +18,4 @@
 
 lwl-y += lowlevel_init.o
 obj-y += 3stack.o
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-freescale-mx25-3ds
diff --git a/arch/arm/boards/freescale-mx25-3ds/env/bin/_update b/arch/arm/boards/freescale-mx25-3ds/defaultenv-freescale-mx25-3ds/bin/_update
similarity index 100%
rename from arch/arm/boards/freescale-mx25-3ds/env/bin/_update
rename to arch/arm/boards/freescale-mx25-3ds/defaultenv-freescale-mx25-3ds/bin/_update
diff --git a/arch/arm/boards/freescale-mx25-3ds/env/bin/boot b/arch/arm/boards/freescale-mx25-3ds/defaultenv-freescale-mx25-3ds/bin/boot
similarity index 100%
rename from arch/arm/boards/freescale-mx25-3ds/env/bin/boot
rename to arch/arm/boards/freescale-mx25-3ds/defaultenv-freescale-mx25-3ds/bin/boot
diff --git a/arch/arm/boards/freescale-mx25-3ds/env/bin/init b/arch/arm/boards/freescale-mx25-3ds/defaultenv-freescale-mx25-3ds/bin/init
similarity index 100%
rename from arch/arm/boards/freescale-mx25-3ds/env/bin/init
rename to arch/arm/boards/freescale-mx25-3ds/defaultenv-freescale-mx25-3ds/bin/init
diff --git a/arch/arm/boards/freescale-mx25-3ds/env/bin/update_kernel b/arch/arm/boards/freescale-mx25-3ds/defaultenv-freescale-mx25-3ds/bin/update_kernel
similarity index 100%
rename from arch/arm/boards/freescale-mx25-3ds/env/bin/update_kernel
rename to arch/arm/boards/freescale-mx25-3ds/defaultenv-freescale-mx25-3ds/bin/update_kernel
diff --git a/arch/arm/boards/freescale-mx25-3ds/env/bin/update_root b/arch/arm/boards/freescale-mx25-3ds/defaultenv-freescale-mx25-3ds/bin/update_root
similarity index 100%
rename from arch/arm/boards/freescale-mx25-3ds/env/bin/update_root
rename to arch/arm/boards/freescale-mx25-3ds/defaultenv-freescale-mx25-3ds/bin/update_root
diff --git a/arch/arm/boards/freescale-mx25-3ds/env/config b/arch/arm/boards/freescale-mx25-3ds/defaultenv-freescale-mx25-3ds/config
similarity index 100%
rename from arch/arm/boards/freescale-mx25-3ds/env/config
rename to arch/arm/boards/freescale-mx25-3ds/defaultenv-freescale-mx25-3ds/config
diff --git a/arch/arm/boards/freescale-mx35-3ds/3stack.c b/arch/arm/boards/freescale-mx35-3ds/3stack.c
index caeb3f7..97a9968 100644
--- a/arch/arm/boards/freescale-mx35-3ds/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3ds/3stack.c
@@ -30,6 +30,7 @@
 #include <init.h>
 #include <nand.h>
 #include <net.h>
+#include <envfs.h>
 #include <linux/sizes.h>
 #include <partition.h>
 #include <gpio.h>
@@ -208,6 +209,9 @@ static int f3s_devices_init(void)
 
 	armlinux_set_architecture(MACH_TYPE_MX35_3DS);
 
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
+		defaultenv_append_directory(defaultenv_freescale_mx35_3ds);
+
 	return 0;
 }
 
diff --git a/arch/arm/boards/freescale-mx35-3ds/Makefile b/arch/arm/boards/freescale-mx35-3ds/Makefile
index c0de068..c192854 100644
--- a/arch/arm/boards/freescale-mx35-3ds/Makefile
+++ b/arch/arm/boards/freescale-mx35-3ds/Makefile
@@ -1,2 +1,3 @@
 obj-y					+= 3stack.o
 lwl-y					+= lowlevel_init.o
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-freescale-mx35-3ds
diff --git a/arch/arm/boards/freescale-mx35-3ds/env/config b/arch/arm/boards/freescale-mx35-3ds/defaultenv-freescale-mx35-3ds/config
similarity index 100%
rename from arch/arm/boards/freescale-mx35-3ds/env/config
rename to arch/arm/boards/freescale-mx35-3ds/defaultenv-freescale-mx35-3ds/config
diff --git a/arch/arm/boards/freescale-mx53-smd/Makefile b/arch/arm/boards/freescale-mx53-smd/Makefile
index 01c7a25..98ed275 100644
--- a/arch/arm/boards/freescale-mx53-smd/Makefile
+++ b/arch/arm/boards/freescale-mx53-smd/Makefile
@@ -1,2 +1,3 @@
 obj-y += board.o
 lwl-y += lowlevel.o
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-freescale-mx53-smd
diff --git a/arch/arm/boards/freescale-mx53-smd/board.c b/arch/arm/boards/freescale-mx53-smd/board.c
index 5dbeeb1..2b58f49 100644
--- a/arch/arm/boards/freescale-mx53-smd/board.c
+++ b/arch/arm/boards/freescale-mx53-smd/board.c
@@ -26,6 +26,7 @@
 #include <linux/sizes.h>
 #include <gpio.h>
 #include <mci.h>
+#include <envfs.h>
 
 #include <generated/mach-types.h>
 
@@ -135,6 +136,9 @@ static int smd_devices_init(void)
 
 	armlinux_set_architecture(MACH_TYPE_MX53_SMD);
 
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
+		defaultenv_append_directory(defaultenv_freescale_mx53_smd);
+
 	return 0;
 }
 device_initcall(smd_devices_init);
diff --git a/arch/arm/boards/freescale-mx53-smd/env/config b/arch/arm/boards/freescale-mx53-smd/defaultenv-freescale-mx53-smd/config
similarity index 100%
rename from arch/arm/boards/freescale-mx53-smd/env/config
rename to arch/arm/boards/freescale-mx53-smd/defaultenv-freescale-mx53-smd/config
diff --git a/arch/arm/boards/friendlyarm-mini6410/Makefile b/arch/arm/boards/friendlyarm-mini6410/Makefile
index 0710d39..c04150e 100644
--- a/arch/arm/boards/friendlyarm-mini6410/Makefile
+++ b/arch/arm/boards/friendlyarm-mini6410/Makefile
@@ -1,2 +1,3 @@
 obj-y += mini6410.o
 lwl-y += lowlevel.o
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-friendlyarm-mini6410
diff --git a/arch/arm/boards/friendlyarm-mini6410/env/config b/arch/arm/boards/friendlyarm-mini6410/defaultenv-friendlyarm-mini6410/config
similarity index 100%
rename from arch/arm/boards/friendlyarm-mini6410/env/config
rename to arch/arm/boards/friendlyarm-mini6410/defaultenv-friendlyarm-mini6410/config
diff --git a/arch/arm/boards/friendlyarm-mini6410/mini6410.c b/arch/arm/boards/friendlyarm-mini6410/mini6410.c
index a85b1bd..90fb3f5 100644
--- a/arch/arm/boards/friendlyarm-mini6410/mini6410.c
+++ b/arch/arm/boards/friendlyarm-mini6410/mini6410.c
@@ -16,6 +16,7 @@
 #include <init.h>
 #include <platform_data/eth-dm9000.h>
 #include <gpio.h>
+#include <envfs.h>
 #include <generated/mach-types.h>
 #include <asm/armlinux.h>
 #include <mach/s3c-iomap.h>
@@ -285,6 +286,9 @@ static int mini6410_devices_init(void)
 
 	armlinux_set_architecture(MACH_TYPE_MINI6410);
 
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
+		defaultenv_append_directory(defaultenv_friendlyarm_mini6410);
+
 	return 0;
 }
 
diff --git a/arch/arm/boards/friendlyarm-tiny6410/Makefile b/arch/arm/boards/friendlyarm-tiny6410/Makefile
index bf17eaa..ba3f336 100644
--- a/arch/arm/boards/friendlyarm-tiny6410/Makefile
+++ b/arch/arm/boards/friendlyarm-tiny6410/Makefile
@@ -1,3 +1,4 @@
 obj-y += tiny6410.o
 lwl-y += lowlevel.o
 lwl-$(CONFIG_MACH_TINY6410_FA) += development-board.o
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-friendlyarm-tiny6410
diff --git a/arch/arm/boards/friendlyarm-tiny6410/env/config b/arch/arm/boards/friendlyarm-tiny6410/defaultenv-friendlyarm-tiny6410/config
similarity index 100%
rename from arch/arm/boards/friendlyarm-tiny6410/env/config
rename to arch/arm/boards/friendlyarm-tiny6410/defaultenv-friendlyarm-tiny6410/config
diff --git a/arch/arm/boards/guf-cupid/Makefile b/arch/arm/boards/guf-cupid/Makefile
index b33952c..eaf2a4f 100644
--- a/arch/arm/boards/guf-cupid/Makefile
+++ b/arch/arm/boards/guf-cupid/Makefile
@@ -18,3 +18,4 @@
 
 lwl-y += lowlevel.o
 obj-y += board.o
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-guf-cupid
diff --git a/arch/arm/boards/guf-cupid/board.c b/arch/arm/boards/guf-cupid/board.c
index d1b285c..a02cecf 100644
--- a/arch/arm/boards/guf-cupid/board.c
+++ b/arch/arm/boards/guf-cupid/board.c
@@ -25,6 +25,7 @@
 #include <driver.h>
 #include <environment.h>
 #include <fs.h>
+#include <envfs.h>
 #include <mach/imx35-regs.h>
 #include <asm/armlinux.h>
 #include <io.h>
@@ -128,6 +129,9 @@ static int cupid_devices_init(void)
 
 	armlinux_set_architecture(MACH_TYPE_GUF_CUPID);
 
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
+		defaultenv_append_directory(defaultenv_guf_cupid);
+
 	return 0;
 }
 
diff --git a/arch/arm/boards/guf-cupid/env/config b/arch/arm/boards/guf-cupid/defaultenv-guf-cupid/config
similarity index 100%
rename from arch/arm/boards/guf-cupid/env/config
rename to arch/arm/boards/guf-cupid/defaultenv-guf-cupid/config
diff --git a/arch/arm/boards/guf-neso/Makefile b/arch/arm/boards/guf-neso/Makefile
index 81263cc..af90c36 100644
--- a/arch/arm/boards/guf-neso/Makefile
+++ b/arch/arm/boards/guf-neso/Makefile
@@ -1,3 +1,4 @@
 lwl-y += lowlevel.o
 obj-y += board.o
 obj-y += pll_init.o
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-guf-neso
diff --git a/arch/arm/boards/guf-neso/board.c b/arch/arm/boards/guf-neso/board.c
index 176d77e..e1cd909 100644
--- a/arch/arm/boards/guf-neso/board.c
+++ b/arch/arm/boards/guf-neso/board.c
@@ -23,6 +23,7 @@
 #include <partition.h>
 #include <gpio.h>
 #include <fs.h>
+#include <envfs.h>
 #include <fcntl.h>
 #include <nand.h>
 #include <command.h>
@@ -282,6 +283,9 @@ static int neso_devices_init(void)
 
 	armlinux_set_architecture(MACH_TYPE_NESO);
 
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
+		defaultenv_append_directory(defaultenv_guf_neso);
+
 	return 0;
 }
 
diff --git a/arch/arm/boards/guf-neso/env/config b/arch/arm/boards/guf-neso/defaultenv-guf-neso/config
similarity index 100%
rename from arch/arm/boards/guf-neso/env/config
rename to arch/arm/boards/guf-neso/defaultenv-guf-neso/config
diff --git a/arch/arm/boards/haba-knx/Makefile b/arch/arm/boards/haba-knx/Makefile
index eb072c0..d9db6ab 100644
--- a/arch/arm/boards/haba-knx/Makefile
+++ b/arch/arm/boards/haba-knx/Makefile
@@ -1 +1,2 @@
 obj-y += init.o
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-haba-knx
diff --git a/arch/arm/boards/haba-knx/env/bin/init_board b/arch/arm/boards/haba-knx/defaultenv-haba-knx/bin/init_board
similarity index 100%
rename from arch/arm/boards/haba-knx/env/bin/init_board
rename to arch/arm/boards/haba-knx/defaultenv-haba-knx/bin/init_board
diff --git a/arch/arm/boards/haba-knx/env/config b/arch/arm/boards/haba-knx/defaultenv-haba-knx/config
similarity index 100%
rename from arch/arm/boards/haba-knx/env/config
rename to arch/arm/boards/haba-knx/defaultenv-haba-knx/config
diff --git a/arch/arm/boards/haba-knx/init.c b/arch/arm/boards/haba-knx/init.c
index f9d8f0f..36f1e8b 100644
--- a/arch/arm/boards/haba-knx/init.c
+++ b/arch/arm/boards/haba-knx/init.c
@@ -25,6 +25,7 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
+#include <envfs.h>
 #include <mach/hardware.h>
 #include <nand.h>
 #include <linux/sizes.h>
@@ -323,6 +324,9 @@ static int haba_knx_devices_init(void)
 
 	devfs_create_partitions("nand0", haba_knx_nand0_partitions);
 
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
+		defaultenv_append_directory(defaultenv_haba_knx);
+
 	return 0;
 }
 device_initcall(haba_knx_devices_init);
diff --git a/arch/arm/boards/highbank/Makefile b/arch/arm/boards/highbank/Makefile
index e11fd5b..e5e4536 100644
--- a/arch/arm/boards/highbank/Makefile
+++ b/arch/arm/boards/highbank/Makefile
@@ -1,3 +1,4 @@
 obj-y += init.o
 
 lwl-y += lowlevel.o
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-highbank
diff --git a/arch/arm/boards/highbank/env/boot.d/010-ahci-boot b/arch/arm/boards/highbank/defaultenv-highbank/boot.d/010-ahci-boot
similarity index 100%
rename from arch/arm/boards/highbank/env/boot.d/010-ahci-boot
rename to arch/arm/boards/highbank/defaultenv-highbank/boot.d/010-ahci-boot
diff --git a/arch/arm/boards/highbank/env/boot.d/011-ahci b/arch/arm/boards/highbank/defaultenv-highbank/boot.d/011-ahci
similarity index 100%
rename from arch/arm/boards/highbank/env/boot.d/011-ahci
rename to arch/arm/boards/highbank/defaultenv-highbank/boot.d/011-ahci
diff --git a/arch/arm/boards/highbank/env/boot.d/020-mmc-boot b/arch/arm/boards/highbank/defaultenv-highbank/boot.d/020-mmc-boot
similarity index 100%
rename from arch/arm/boards/highbank/env/boot.d/020-mmc-boot
rename to arch/arm/boards/highbank/defaultenv-highbank/boot.d/020-mmc-boot
diff --git a/arch/arm/boards/highbank/env/boot.d/021-mmc b/arch/arm/boards/highbank/defaultenv-highbank/boot.d/021-mmc
similarity index 100%
rename from arch/arm/boards/highbank/env/boot.d/021-mmc
rename to arch/arm/boards/highbank/defaultenv-highbank/boot.d/021-mmc
diff --git a/arch/arm/boards/highbank/env/boot.d/030-net b/arch/arm/boards/highbank/defaultenv-highbank/boot.d/030-net
similarity index 100%
rename from arch/arm/boards/highbank/env/boot.d/030-net
rename to arch/arm/boards/highbank/defaultenv-highbank/boot.d/030-net
diff --git a/arch/arm/boards/highbank/env/boot.d/031-net-eth1 b/arch/arm/boards/highbank/defaultenv-highbank/boot.d/031-net-eth1
similarity index 100%
rename from arch/arm/boards/highbank/env/boot.d/031-net-eth1
rename to arch/arm/boards/highbank/defaultenv-highbank/boot.d/031-net-eth1
diff --git a/arch/arm/boards/highbank/env/boot/ahci b/arch/arm/boards/highbank/defaultenv-highbank/boot/ahci
similarity index 100%
rename from arch/arm/boards/highbank/env/boot/ahci
rename to arch/arm/boards/highbank/defaultenv-highbank/boot/ahci
diff --git a/arch/arm/boards/highbank/env/boot/ahci-boot b/arch/arm/boards/highbank/defaultenv-highbank/boot/ahci-boot
similarity index 100%
rename from arch/arm/boards/highbank/env/boot/ahci-boot
rename to arch/arm/boards/highbank/defaultenv-highbank/boot/ahci-boot
diff --git a/arch/arm/boards/highbank/env/boot/mmc b/arch/arm/boards/highbank/defaultenv-highbank/boot/mmc
similarity index 100%
rename from arch/arm/boards/highbank/env/boot/mmc
rename to arch/arm/boards/highbank/defaultenv-highbank/boot/mmc
diff --git a/arch/arm/boards/highbank/env/boot/mmc-boot b/arch/arm/boards/highbank/defaultenv-highbank/boot/mmc-boot
similarity index 100%
rename from arch/arm/boards/highbank/env/boot/mmc-boot
rename to arch/arm/boards/highbank/defaultenv-highbank/boot/mmc-boot
diff --git a/arch/arm/boards/highbank/env/boot/net b/arch/arm/boards/highbank/defaultenv-highbank/boot/net
similarity index 100%
rename from arch/arm/boards/highbank/env/boot/net
rename to arch/arm/boards/highbank/defaultenv-highbank/boot/net
diff --git a/arch/arm/boards/highbank/env/boot/net-eth1 b/arch/arm/boards/highbank/defaultenv-highbank/boot/net-eth1
similarity index 100%
rename from arch/arm/boards/highbank/env/boot/net-eth1
rename to arch/arm/boards/highbank/defaultenv-highbank/boot/net-eth1
diff --git a/arch/arm/boards/highbank/env/data/oftree b/arch/arm/boards/highbank/defaultenv-highbank/data/oftree
similarity index 100%
rename from arch/arm/boards/highbank/env/data/oftree
rename to arch/arm/boards/highbank/defaultenv-highbank/data/oftree
diff --git a/arch/arm/boards/highbank/env/init/001-dtb-probe b/arch/arm/boards/highbank/defaultenv-highbank/init/001-dtb-probe
similarity index 100%
rename from arch/arm/boards/highbank/env/init/001-dtb-probe
rename to arch/arm/boards/highbank/defaultenv-highbank/init/001-dtb-probe
diff --git a/arch/arm/boards/highbank/env/init/automount b/arch/arm/boards/highbank/defaultenv-highbank/init/automount
similarity index 100%
rename from arch/arm/boards/highbank/env/init/automount
rename to arch/arm/boards/highbank/defaultenv-highbank/init/automount
diff --git a/arch/arm/boards/highbank/env/nv/boot.default b/arch/arm/boards/highbank/defaultenv-highbank/nv/boot.default
similarity index 100%
rename from arch/arm/boards/highbank/env/nv/boot.default
rename to arch/arm/boards/highbank/defaultenv-highbank/nv/boot.default
diff --git a/arch/arm/boards/highbank/env/nv/bootm.oftree b/arch/arm/boards/highbank/defaultenv-highbank/nv/bootm.oftree
similarity index 100%
rename from arch/arm/boards/highbank/env/nv/bootm.oftree
rename to arch/arm/boards/highbank/defaultenv-highbank/nv/bootm.oftree
diff --git a/arch/arm/boards/highbank/env/nv/linux.bootargs.console b/arch/arm/boards/highbank/defaultenv-highbank/nv/linux.bootargs.console
similarity index 100%
rename from arch/arm/boards/highbank/env/nv/linux.bootargs.console
rename to arch/arm/boards/highbank/defaultenv-highbank/nv/linux.bootargs.console
diff --git a/arch/arm/boards/highbank/init.c b/arch/arm/boards/highbank/init.c
index 295d475..577ccc0 100644
--- a/arch/arm/boards/highbank/init.c
+++ b/arch/arm/boards/highbank/init.c
@@ -17,6 +17,7 @@
 #include <linux/sizes.h>
 #include <io.h>
 #include <of.h>
+#include <envfs.h>
 
 #define FIRMWARE_DTB_BASE	0x1000
 
@@ -126,6 +127,9 @@ static int highbank_devices_init(void)
 
 	devfs_add_partition("nvram", 0x00000, SZ_16K, DEVFS_PARTITION_FIXED, "env0");
 
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
+		defaultenv_append_directory(defaultenv_highbank);
+
 	return 0;
 }
 device_initcall(highbank_devices_init);
diff --git a/arch/arm/boards/nhk8815/Makefile b/arch/arm/boards/nhk8815/Makefile
index f429852..56f2013 100644
--- a/arch/arm/boards/nhk8815/Makefile
+++ b/arch/arm/boards/nhk8815/Makefile
@@ -1,2 +1,3 @@
 obj-y += setup.o
 lwl-y += lowlevel.o
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-nhk8815
diff --git a/arch/arm/boards/nhk8815/env/config b/arch/arm/boards/nhk8815/defaultenv-nhk8815/config
similarity index 100%
rename from arch/arm/boards/nhk8815/env/config
rename to arch/arm/boards/nhk8815/defaultenv-nhk8815/config
diff --git a/arch/arm/boards/nhk8815/setup.c b/arch/arm/boards/nhk8815/setup.c
index aaf9cd7..0b69010 100644
--- a/arch/arm/boards/nhk8815/setup.c
+++ b/arch/arm/boards/nhk8815/setup.c
@@ -23,6 +23,7 @@
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <io.h>
+#include <envfs.h>
 
 #include <mach/hardware.h>
 #include <mach/board.h>
@@ -106,6 +107,9 @@ static int nhk8815_devices_init(void)
 	devfs_add_partition("nand0", 0x7FE0000, 0x020000, DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
+		defaultenv_append_directory(defaultenv_nhk8815);
+
 	return 0;
 }
 device_initcall(nhk8815_devices_init);
diff --git a/arch/arm/boards/phytec-phycard-omap4/Makefile b/arch/arm/boards/phytec-phycard-omap4/Makefile
index 64782e0..0fec0c7 100644
--- a/arch/arm/boards/phytec-phycard-omap4/Makefile
+++ b/arch/arm/boards/phytec-phycard-omap4/Makefile
@@ -15,3 +15,4 @@
 #
 obj-y += pca-a-xl2.o
 lwl-y += mux.o lowlevel.o
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-phytec-phycard-omap4
diff --git a/arch/arm/boards/phytec-phycard-omap4/env/bin/nand_bootstrap b/arch/arm/boards/phytec-phycard-omap4/defaultenv-phytec-phycard-omap4/bin/nand_bootstrap
similarity index 100%
rename from arch/arm/boards/phytec-phycard-omap4/env/bin/nand_bootstrap
rename to arch/arm/boards/phytec-phycard-omap4/defaultenv-phytec-phycard-omap4/bin/nand_bootstrap
diff --git a/arch/arm/boards/phytec-phycard-omap4/env/config b/arch/arm/boards/phytec-phycard-omap4/defaultenv-phytec-phycard-omap4/config
similarity index 100%
rename from arch/arm/boards/phytec-phycard-omap4/env/config
rename to arch/arm/boards/phytec-phycard-omap4/defaultenv-phytec-phycard-omap4/config
diff --git a/arch/arm/boards/phytec-phycore-omap4460/Makefile b/arch/arm/boards/phytec-phycore-omap4460/Makefile
index 5d4eb10..5e78e11 100644
--- a/arch/arm/boards/phytec-phycore-omap4460/Makefile
+++ b/arch/arm/boards/phytec-phycore-omap4460/Makefile
@@ -1,2 +1,3 @@
 obj-y += board.o
 lwl-y += lowlevel.o mux.o
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-phytec-phycore-omap4460
diff --git a/arch/arm/boards/phytec-phycore-omap4460/board.c b/arch/arm/boards/phytec-phycore-omap4460/board.c
index 807cdd6..b7aeeca 100644
--- a/arch/arm/boards/phytec-phycore-omap4460/board.c
+++ b/arch/arm/boards/phytec-phycore-omap4460/board.c
@@ -20,6 +20,7 @@
 #include <driver.h>
 #include <gpio.h>
 #include <io.h>
+#include <envfs.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <mach/omap4-silicon.h>
@@ -307,6 +308,9 @@ static int pcm049_devices_init(void)
 	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_OMAP))
 		omap_add_display(&pcm049_fb_data);
 
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
+		defaultenv_append_directory(defaultenv_phytec_phycore_omap4460);
+
 	return 0;
 }
 device_initcall(pcm049_devices_init);
diff --git a/arch/arm/boards/phytec-phycore-omap4460/env/bin/init_board b/arch/arm/boards/phytec-phycore-omap4460/defaultenv-phytec-phycore-omap4460/bin/init_board
similarity index 100%
rename from arch/arm/boards/phytec-phycore-omap4460/env/bin/init_board
rename to arch/arm/boards/phytec-phycore-omap4460/defaultenv-phytec-phycore-omap4460/bin/init_board
diff --git a/arch/arm/boards/phytec-phycore-omap4460/env/bin/nand_bootstrap b/arch/arm/boards/phytec-phycore-omap4460/defaultenv-phytec-phycore-omap4460/bin/nand_bootstrap
similarity index 100%
rename from arch/arm/boards/phytec-phycore-omap4460/env/bin/nand_bootstrap
rename to arch/arm/boards/phytec-phycore-omap4460/defaultenv-phytec-phycore-omap4460/bin/nand_bootstrap
diff --git a/arch/arm/boards/phytec-phycore-omap4460/env/config b/arch/arm/boards/phytec-phycore-omap4460/defaultenv-phytec-phycore-omap4460/config
similarity index 100%
rename from arch/arm/boards/phytec-phycore-omap4460/env/config
rename to arch/arm/boards/phytec-phycore-omap4460/defaultenv-phytec-phycore-omap4460/config
diff --git a/arch/arm/boards/pm9261/Makefile b/arch/arm/boards/pm9261/Makefile
index 1398c26..bff467b 100644
--- a/arch/arm/boards/pm9261/Makefile
+++ b/arch/arm/boards/pm9261/Makefile
@@ -1,3 +1,4 @@
 obj-y += init.o
 
 lwl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-pm9261
diff --git a/arch/arm/boards/pm9261/env/config b/arch/arm/boards/pm9261/defaultenv-pm9261/config
similarity index 100%
rename from arch/arm/boards/pm9261/env/config
rename to arch/arm/boards/pm9261/defaultenv-pm9261/config
diff --git a/arch/arm/boards/pm9261/init.c b/arch/arm/boards/pm9261/init.c
index 177355b..b0377d0 100644
--- a/arch/arm/boards/pm9261/init.c
+++ b/arch/arm/boards/pm9261/init.c
@@ -27,6 +27,7 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
+#include <envfs.h>
 #include <mach/hardware.h>
 #include <nand.h>
 #include <linux/mtd/nand.h>
@@ -152,6 +153,9 @@ static int pm9261_devices_init(void)
 
 	armlinux_set_architecture(MACH_TYPE_PM9261);
 
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
+		defaultenv_append_directory(defaultenv_pm9261);
+
 	return 0;
 }
 device_initcall(pm9261_devices_init);
diff --git a/arch/arm/boards/pm9g45/Makefile b/arch/arm/boards/pm9g45/Makefile
index eb072c0..d81b188 100644
--- a/arch/arm/boards/pm9g45/Makefile
+++ b/arch/arm/boards/pm9g45/Makefile
@@ -1 +1,2 @@
 obj-y += init.o
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-pm9g45
diff --git a/arch/arm/boards/pm9g45/env/config b/arch/arm/boards/pm9g45/defaultenv-pm9g45/config
similarity index 100%
rename from arch/arm/boards/pm9g45/env/config
rename to arch/arm/boards/pm9g45/defaultenv-pm9g45/config
diff --git a/arch/arm/boards/pm9g45/init.c b/arch/arm/boards/pm9g45/init.c
index 524fe53..efa5dc0 100644
--- a/arch/arm/boards/pm9g45/init.c
+++ b/arch/arm/boards/pm9g45/init.c
@@ -27,6 +27,7 @@
 #include <fcntl.h>
 #include <gpio.h>
 #include <io.h>
+#include <envfs.h>
 #include <mach/hardware.h>
 #include <nand.h>
 #include <linux/mtd/nand.h>
@@ -164,6 +165,9 @@ static int pm9g45_devices_init(void)
 
 	armlinux_set_architecture(MACH_TYPE_PM9G45);
 
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
+		defaultenv_append_directory(defaultenv_pm9g45);
+
 	return 0;
 }
 device_initcall(pm9g45_devices_init);
diff --git a/arch/arm/boards/qemu-virt64/Makefile b/arch/arm/boards/qemu-virt64/Makefile
index 2da0494..e354607 100644
--- a/arch/arm/boards/qemu-virt64/Makefile
+++ b/arch/arm/boards/qemu-virt64/Makefile
@@ -1,2 +1,3 @@
 obj-y += init.o
 lwl-y += lowlevel.o
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-qemu-virt64
diff --git a/arch/arm/boards/qemu-virt64/env/config b/arch/arm/boards/qemu-virt64/defaultenv-qemu-virt64/config
similarity index 100%
rename from arch/arm/boards/qemu-virt64/env/config
rename to arch/arm/boards/qemu-virt64/defaultenv-qemu-virt64/config
diff --git a/arch/arm/boards/qemu-virt64/init.c b/arch/arm/boards/qemu-virt64/init.c
index 58dba0f..a85bd84 100644
--- a/arch/arm/boards/qemu-virt64/init.c
+++ b/arch/arm/boards/qemu-virt64/init.c
@@ -12,6 +12,7 @@
 #include <environment.h>
 #include <linux/sizes.h>
 #include <io.h>
+#include <envfs.h>
 #include <globalvar.h>
 #include <asm/mmu.h>
 
@@ -30,6 +31,9 @@ static int virt_env_init(void)
 	devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self0");
 	devfs_add_partition("nor0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
 
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
+		defaultenv_append_directory(defaultenv_qemu_virt64);
+
 	return 0;
 }
 device_initcall(virt_env_init);
diff --git a/arch/arm/boards/qil-a926x/Makefile b/arch/arm/boards/qil-a926x/Makefile
index eb072c0..0c7bc3f 100644
--- a/arch/arm/boards/qil-a926x/Makefile
+++ b/arch/arm/boards/qil-a926x/Makefile
@@ -1 +1,2 @@
 obj-y += init.o
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-qil-a926x
diff --git a/arch/arm/boards/qil-a926x/env/bin/init_board b/arch/arm/boards/qil-a926x/defaultenv-qil-a926x/bin/init_board
similarity index 100%
rename from arch/arm/boards/qil-a926x/env/bin/init_board
rename to arch/arm/boards/qil-a926x/defaultenv-qil-a926x/bin/init_board
diff --git a/arch/arm/boards/qil-a926x/env/config b/arch/arm/boards/qil-a926x/defaultenv-qil-a926x/config
similarity index 100%
rename from arch/arm/boards/qil-a926x/env/config
rename to arch/arm/boards/qil-a926x/defaultenv-qil-a926x/config
diff --git a/arch/arm/boards/qil-a926x/init.c b/arch/arm/boards/qil-a926x/init.c
index 8727437..3ef9872 100644
--- a/arch/arm/boards/qil-a926x/init.c
+++ b/arch/arm/boards/qil-a926x/init.c
@@ -15,6 +15,7 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
+#include <envfs.h>
 #include <mach/hardware.h>
 #include <nand.h>
 #include <linux/sizes.h>
@@ -215,6 +216,9 @@ static int qil_a9260_devices_init(void)
 	devfs_add_partition("nand0", SZ_512K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw1");
 	dev_add_bb_dev("env_raw1", "env1");
 
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
+		defaultenv_append_directory(defaultenv_qil_a926x);
+
 	return 0;
 }
 device_initcall(qil_a9260_devices_init);
diff --git a/arch/arm/boards/sama5d3_xplained/Makefile b/arch/arm/boards/sama5d3_xplained/Makefile
index eb072c0..3c301cb 100644
--- a/arch/arm/boards/sama5d3_xplained/Makefile
+++ b/arch/arm/boards/sama5d3_xplained/Makefile
@@ -1 +1,2 @@
 obj-y += init.o
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-sama5d3_xplained
diff --git a/arch/arm/boards/sama5d3_xplained/env/config b/arch/arm/boards/sama5d3_xplained/defaultenv-sama5d3_xplained/config
similarity index 100%
rename from arch/arm/boards/sama5d3_xplained/env/config
rename to arch/arm/boards/sama5d3_xplained/defaultenv-sama5d3_xplained/config
diff --git a/arch/arm/boards/sama5d3_xplained/init.c b/arch/arm/boards/sama5d3_xplained/init.c
index 373ab81..fda4c56 100644
--- a/arch/arm/boards/sama5d3_xplained/init.c
+++ b/arch/arm/boards/sama5d3_xplained/init.c
@@ -22,6 +22,7 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
+#include <envfs.h>
 #include <mach/hardware.h>
 #include <nand.h>
 #include <linux/sizes.h>
@@ -224,6 +225,9 @@ static int sama5d3_xplained_devices_init(void)
 
 	devfs_create_partitions("nand0", sama5d3_xplained_nand0_partitions);
 
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
+		defaultenv_append_directory(defaultenv_sama5d3_xplained);
+
 	return 0;
 }
 device_initcall(sama5d3_xplained_devices_init);
diff --git a/arch/arm/boards/sama5d3xek/Makefile b/arch/arm/boards/sama5d3xek/Makefile
index db021ee..32dcb42 100644
--- a/arch/arm/boards/sama5d3xek/Makefile
+++ b/arch/arm/boards/sama5d3xek/Makefile
@@ -1,2 +1,3 @@
 obj-y += init.o
 obj-$(CONFIG_W1) += hw_version.o
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-sama5d3xek
diff --git a/arch/arm/boards/sama5d3xek/env/bin/init_board b/arch/arm/boards/sama5d3xek/defaultenv-sama5d3xek/bin/init_board
similarity index 100%
rename from arch/arm/boards/sama5d3xek/env/bin/init_board
rename to arch/arm/boards/sama5d3xek/defaultenv-sama5d3xek/bin/init_board
diff --git a/arch/arm/boards/sama5d3xek/env/config b/arch/arm/boards/sama5d3xek/defaultenv-sama5d3xek/config
similarity index 100%
rename from arch/arm/boards/sama5d3xek/env/config
rename to arch/arm/boards/sama5d3xek/defaultenv-sama5d3xek/config
diff --git a/arch/arm/boards/sama5d3xek/init.c b/arch/arm/boards/sama5d3xek/init.c
index 7504bf8..b35bdb5 100644
--- a/arch/arm/boards/sama5d3xek/init.c
+++ b/arch/arm/boards/sama5d3xek/init.c
@@ -24,6 +24,7 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
+#include <envfs.h>
 #include <mach/hardware.h>
 #include <nand.h>
 #include <linux/sizes.h>
@@ -463,6 +464,9 @@ static int at91sama5d3xek_devices_init(void)
 
 	devfs_create_partitions("nand0", at91sama5d3xek_nand0_partitions);
 
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
+		defaultenv_append_directory(defaultenv_sama5d3xek);
+
 	return 0;
 }
 device_initcall(at91sama5d3xek_devices_init);
diff --git a/arch/arm/boards/scb9328/Makefile b/arch/arm/boards/scb9328/Makefile
index 002f218..7ef6c3f 100644
--- a/arch/arm/boards/scb9328/Makefile
+++ b/arch/arm/boards/scb9328/Makefile
@@ -1,3 +1,4 @@
 
 lwl-y += lowlevel_init.o
 obj-y += scb9328.o
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-scb9328
diff --git a/arch/arm/boards/scb9328/env/config b/arch/arm/boards/scb9328/defaultenv-scb9328/config
similarity index 100%
rename from arch/arm/boards/scb9328/env/config
rename to arch/arm/boards/scb9328/defaultenv-scb9328/config
diff --git a/arch/arm/boards/scb9328/scb9328.c b/arch/arm/boards/scb9328/scb9328.c
index fda3b14..697ed4b 100644
--- a/arch/arm/boards/scb9328/scb9328.c
+++ b/arch/arm/boards/scb9328/scb9328.c
@@ -25,6 +25,7 @@
 #include <io.h>
 #include <partition.h>
 #include <fs.h>
+#include <envfs.h>
 #include <fcntl.h>
 #include <platform_data/eth-dm9000.h>
 #include <led.h>
@@ -79,6 +80,9 @@ static int scb9328_devices_init(void)
 
 	armlinux_set_architecture(MACH_TYPE_SCB9328);
 
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
+		defaultenv_append_directory(defaultenv_scb9328);
+
 	return 0;
 }
 
diff --git a/arch/arm/boards/tny-a926x/Makefile b/arch/arm/boards/tny-a926x/Makefile
index 45b10ec..dba2f8c 100644
--- a/arch/arm/boards/tny-a926x/Makefile
+++ b/arch/arm/boards/tny-a926x/Makefile
@@ -6,3 +6,4 @@ obj-$(CONFIG_AT91_BOOTSTRAP) += $(bootstrap-y)
 lowlevel_init-$(CONFIG_MACH_TNY_A9263) = tny_a9263_lowlevel_init.o
 
 lwl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += $(lowlevel_init-y)
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-tny-a926x
diff --git a/arch/arm/boards/tny-a926x/env/bin/init_board b/arch/arm/boards/tny-a926x/defaultenv-tny-a926x/bin/init_board
similarity index 100%
rename from arch/arm/boards/tny-a926x/env/bin/init_board
rename to arch/arm/boards/tny-a926x/defaultenv-tny-a926x/bin/init_board
diff --git a/arch/arm/boards/tny-a926x/env/config b/arch/arm/boards/tny-a926x/defaultenv-tny-a926x/config
similarity index 100%
rename from arch/arm/boards/tny-a926x/env/config
rename to arch/arm/boards/tny-a926x/defaultenv-tny-a926x/config
diff --git a/arch/arm/boards/tny-a926x/init.c b/arch/arm/boards/tny-a926x/init.c
index 3ebd8aa..3b83c9f 100644
--- a/arch/arm/boards/tny-a926x/init.c
+++ b/arch/arm/boards/tny-a926x/init.c
@@ -24,6 +24,7 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
+#include <envfs.h>
 #include <mach/hardware.h>
 #include <nand.h>
 #include <linux/sizes.h>
@@ -241,6 +242,9 @@ static int tny_a9260_devices_init(void)
 	devfs_add_partition("nand0", SZ_512K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw1");
 	dev_add_bb_dev("env_raw1", "env1");
 
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
+		defaultenv_append_directory(defaultenv_tny_a926x);
+
 	return 0;
 }
 device_initcall(tny_a9260_devices_init);
diff --git a/arch/arm/boards/usb-a926x/Makefile b/arch/arm/boards/usb-a926x/Makefile
index f1370a4..4f09581 100644
--- a/arch/arm/boards/usb-a926x/Makefile
+++ b/arch/arm/boards/usb-a926x/Makefile
@@ -6,3 +6,4 @@ obj-$(CONFIG_AT91_BOOTSTRAP) += $(bootstrap-y)
 lowlevel_init-$(CONFIG_MACH_USB_A9263) = usb_a9263_lowlevel_init.o
 
 lwl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += $(lowlevel_init-y)
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-usb-a926x
diff --git a/arch/arm/boards/usb-a926x/env/bin/init_board b/arch/arm/boards/usb-a926x/defaultenv-usb-a926x/bin/init_board
similarity index 100%
rename from arch/arm/boards/usb-a926x/env/bin/init_board
rename to arch/arm/boards/usb-a926x/defaultenv-usb-a926x/bin/init_board
diff --git a/arch/arm/boards/usb-a926x/env/config b/arch/arm/boards/usb-a926x/defaultenv-usb-a926x/config
similarity index 100%
rename from arch/arm/boards/usb-a926x/env/config
rename to arch/arm/boards/usb-a926x/defaultenv-usb-a926x/config
diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index a9a0549..12e8f4e 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -24,6 +24,7 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
+#include <envfs.h>
 #include <mach/hardware.h>
 #include <nand.h>
 #include <linux/sizes.h>
@@ -416,6 +417,9 @@ static int usb_a9260_devices_init(void)
 	devfs_add_partition("nand0", SZ_512K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw1");
 	dev_add_bb_dev("env_raw1", "env1");
 
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
+		defaultenv_append_directory(defaultenv_usb_a926x);
+
 	return 0;
 }
 device_initcall(usb_a9260_devices_init);
diff --git a/arch/arm/boards/vexpress/Makefile b/arch/arm/boards/vexpress/Makefile
index e11fd5b..c89d7bf 100644
--- a/arch/arm/boards/vexpress/Makefile
+++ b/arch/arm/boards/vexpress/Makefile
@@ -1,3 +1,4 @@
 obj-y += init.o
 
 lwl-y += lowlevel.o
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-vexpress
diff --git a/arch/arm/boards/vexpress/env/config b/arch/arm/boards/vexpress/defaultenv-vexpress/config
similarity index 100%
rename from arch/arm/boards/vexpress/env/config
rename to arch/arm/boards/vexpress/defaultenv-vexpress/config
diff --git a/arch/arm/boards/vexpress/init.c b/arch/arm/boards/vexpress/init.c
index 5b2035b..f89dff9 100644
--- a/arch/arm/boards/vexpress/init.c
+++ b/arch/arm/boards/vexpress/init.c
@@ -14,6 +14,7 @@
 #include <partition.h>
 #include <linux/sizes.h>
 #include <io.h>
+#include <envfs.h>
 #include <globalvar.h>
 #include <linux/amba/sp804.h>
 #include <mci.h>
@@ -109,6 +110,9 @@ static int vexpress_devices_init(void)
 	devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self");
 	devfs_add_partition("nor0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
 
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
+		defaultenv_append_directory(defaultenv_vexpress);
+
 	return 0;
 }
 device_initcall(vexpress_devices_init);
diff --git a/arch/arm/configs/animeo_ip_defconfig b/arch/arm/configs/animeo_ip_defconfig
index d4fbfef..0f2e3a0 100644
--- a/arch/arm/configs/animeo_ip_defconfig
+++ b/arch/arm/configs/animeo_ip_defconfig
@@ -17,7 +17,6 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/animeo_ip/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/at91rm9200ek_defconfig b/arch/arm/configs/at91rm9200ek_defconfig
index cca69b8..c82fe09 100644
--- a/arch/arm/configs/at91rm9200ek_defconfig
+++ b/arch/arm/configs/at91rm9200ek_defconfig
@@ -13,7 +13,6 @@ CONFIG_MENU=y
 # CONFIG_CONSOLE_ACTIVATE_FIRST is not set
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/at91rm9200ek/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/at91sam9260ek_defconfig b/arch/arm/configs/at91sam9260ek_defconfig
index 5190b19..10a735d 100644
--- a/arch/arm/configs/at91sam9260ek_defconfig
+++ b/arch/arm/configs/at91sam9260ek_defconfig
@@ -17,7 +17,6 @@ CONFIG_AUTO_COMPLETE=y
 # CONFIG_CONSOLE_ACTIVATE_FIRST is not set
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/at91sam9260ek/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/at91sam9261ek_defconfig b/arch/arm/configs/at91sam9261ek_defconfig
index 2febff0..ad262e9 100644
--- a/arch/arm/configs/at91sam9261ek_defconfig
+++ b/arch/arm/configs/at91sam9261ek_defconfig
@@ -17,7 +17,6 @@ CONFIG_MENU=y
 # CONFIG_CONSOLE_ACTIVATE_FIRST is not set
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/at91sam9261ek/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/at91sam9261ek_first_stage_defconfig b/arch/arm/configs/at91sam9261ek_first_stage_defconfig
index 36b2dad..e3b6e5f 100644
--- a/arch/arm/configs/at91sam9261ek_first_stage_defconfig
+++ b/arch/arm/configs/at91sam9261ek_first_stage_defconfig
@@ -18,7 +18,6 @@ CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/at91sam9261ek/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/at91sam9263ek_defconfig b/arch/arm/configs/at91sam9263ek_defconfig
index 5154c78..5f98cd6 100644
--- a/arch/arm/configs/at91sam9263ek_defconfig
+++ b/arch/arm/configs/at91sam9263ek_defconfig
@@ -15,7 +15,6 @@ CONFIG_AUTO_COMPLETE=y
 # CONFIG_CONSOLE_ACTIVATE_FIRST is not set
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/at91sam9263ek/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/at91sam9g10ek_defconfig b/arch/arm/configs/at91sam9g10ek_defconfig
index 1c913c0..40b4b9a 100644
--- a/arch/arm/configs/at91sam9g10ek_defconfig
+++ b/arch/arm/configs/at91sam9g10ek_defconfig
@@ -17,7 +17,6 @@ CONFIG_MENU=y
 # CONFIG_CONSOLE_ACTIVATE_FIRST is not set
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/at91sam9261ek/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/at91sam9g20ek_defconfig b/arch/arm/configs/at91sam9g20ek_defconfig
index 2f22328..a501ec5 100644
--- a/arch/arm/configs/at91sam9g20ek_defconfig
+++ b/arch/arm/configs/at91sam9g20ek_defconfig
@@ -17,7 +17,6 @@ CONFIG_AUTO_COMPLETE=y
 # CONFIG_CONSOLE_ACTIVATE_FIRST is not set
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/at91sam9260ek/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/at91sam9m10g45ek_defconfig b/arch/arm/configs/at91sam9m10g45ek_defconfig
index 1ba7a9c..3985072 100644
--- a/arch/arm/configs/at91sam9m10g45ek_defconfig
+++ b/arch/arm/configs/at91sam9m10g45ek_defconfig
@@ -18,7 +18,6 @@ CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 CONFIG_PASSWD_SUM_SHA1=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/at91sam9m10g45ek/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/at91sam9n12ek_defconfig b/arch/arm/configs/at91sam9n12ek_defconfig
index 8d1216e..e73e383 100644
--- a/arch/arm/configs/at91sam9n12ek_defconfig
+++ b/arch/arm/configs/at91sam9n12ek_defconfig
@@ -18,7 +18,6 @@ CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/at91sam9n12ek/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/at91sam9x5ek_defconfig b/arch/arm/configs/at91sam9x5ek_defconfig
index 22ad72f..1af5ec6 100644
--- a/arch/arm/configs/at91sam9x5ek_defconfig
+++ b/arch/arm/configs/at91sam9x5ek_defconfig
@@ -18,7 +18,6 @@ CONFIG_AUTO_COMPLETE=y
 # CONFIG_CONSOLE_ACTIVATE_FIRST is not set
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/at91sam9x5ek/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/cupid_defconfig b/arch/arm/configs/cupid_defconfig
index 4b90556..a1776d2 100644
--- a/arch/arm/configs/cupid_defconfig
+++ b/arch/arm/configs/cupid_defconfig
@@ -18,7 +18,6 @@ CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/guf-cupid/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/eukrea_cpuimx25_defconfig b/arch/arm/configs/eukrea_cpuimx25_defconfig
index 0080dcf..feebb13 100644
--- a/arch/arm/configs/eukrea_cpuimx25_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx25_defconfig
@@ -19,7 +19,6 @@ CONFIG_AUTO_COMPLETE=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_COMPRESSION_LZO=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/eukrea_cpuimx25/env"
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
diff --git a/arch/arm/configs/eukrea_cpuimx35_defconfig b/arch/arm/configs/eukrea_cpuimx35_defconfig
index 5882530..edc5b9c 100644
--- a/arch/arm/configs/eukrea_cpuimx35_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx35_defconfig
@@ -19,7 +19,6 @@ CONFIG_AUTO_COMPLETE=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_COMPRESSION_LZO=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/eukrea_cpuimx35/env"
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_IMD=y
diff --git a/arch/arm/configs/eukrea_cpuimx51_defconfig b/arch/arm/configs/eukrea_cpuimx51_defconfig
index 8e8fd94..e1b011b 100644
--- a/arch/arm/configs/eukrea_cpuimx51_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx51_defconfig
@@ -14,7 +14,6 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/eukrea_cpuimx51/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/freescale-mx25-3ds_defconfig b/arch/arm/configs/freescale-mx25-3ds_defconfig
index 8d2a200..1fd8be2 100644
--- a/arch/arm/configs/freescale-mx25-3ds_defconfig
+++ b/arch/arm/configs/freescale-mx25-3ds_defconfig
@@ -17,7 +17,6 @@ CONFIG_AUTO_COMPLETE=y
 # CONFIG_ERRNO_MESSAGES is not set
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/freescale-mx25-3ds/env/"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/freescale-mx35-3ds_defconfig b/arch/arm/configs/freescale-mx35-3ds_defconfig
index f45750f..816dc78 100644
--- a/arch/arm/configs/freescale-mx35-3ds_defconfig
+++ b/arch/arm/configs/freescale-mx35-3ds_defconfig
@@ -15,7 +15,6 @@ CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/freescale-mx35-3ds/env/"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/freescale-mx53-smd_defconfig b/arch/arm/configs/freescale-mx53-smd_defconfig
index b055dc8..c7f2191 100644
--- a/arch/arm/configs/freescale-mx53-smd_defconfig
+++ b/arch/arm/configs/freescale-mx53-smd_defconfig
@@ -17,7 +17,6 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/freescale-mx53-smd/env/"
 CONFIG_DEBUG_INFO=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
diff --git a/arch/arm/configs/friendlyarm_mini6410_defconfig b/arch/arm/configs/friendlyarm_mini6410_defconfig
index 7d21633..1789374 100644
--- a/arch/arm/configs/friendlyarm_mini6410_defconfig
+++ b/arch/arm/configs/friendlyarm_mini6410_defconfig
@@ -10,7 +10,6 @@ CONFIG_AUTO_COMPLETE=y
 CONFIG_PARTITION=y
 CONFIG_PARTITION_DISK=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/friendlyarm-mini6410/env"
 CONFIG_DEBUG_INFO=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
diff --git a/arch/arm/configs/friendlyarm_tiny6410_defconfig b/arch/arm/configs/friendlyarm_tiny6410_defconfig
index 3342cf8..90208c3 100644
--- a/arch/arm/configs/friendlyarm_tiny6410_defconfig
+++ b/arch/arm/configs/friendlyarm_tiny6410_defconfig
@@ -11,7 +11,6 @@ CONFIG_AUTO_COMPLETE=y
 CONFIG_PARTITION=y
 CONFIG_PARTITION_DISK=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/friendlyarm-tiny6410/env"
 CONFIG_DEBUG_INFO=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
diff --git a/arch/arm/configs/haba_knx_lite_defconfig b/arch/arm/configs/haba_knx_lite_defconfig
index d33d440..d01c412 100644
--- a/arch/arm/configs/haba_knx_lite_defconfig
+++ b/arch/arm/configs/haba_knx_lite_defconfig
@@ -17,7 +17,6 @@ CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/haba-knx/env"
 # CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_LONGHELP=y
 CONFIG_CMD_MEMINFO=y
diff --git a/arch/arm/configs/highbank_defconfig b/arch/arm/configs/highbank_defconfig
index 3e3619d..01b17bc 100644
--- a/arch/arm/configs/highbank_defconfig
+++ b/arch/arm/configs/highbank_defconfig
@@ -13,7 +13,6 @@ CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/highbank/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/neso_defconfig b/arch/arm/configs/neso_defconfig
index 209396e..3015663 100644
--- a/arch/arm/configs/neso_defconfig
+++ b/arch/arm/configs/neso_defconfig
@@ -17,7 +17,6 @@ CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/guf-neso/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/nhk8815_defconfig b/arch/arm/configs/nhk8815_defconfig
index 02eddcc..1526d79 100644
--- a/arch/arm/configs/nhk8815_defconfig
+++ b/arch/arm/configs/nhk8815_defconfig
@@ -11,7 +11,6 @@ CONFIG_MENU=y
 CONFIG_PASSWD_SUM_SHA1=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/nhk8815/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/phytec-phycard-omap4_defconfig b/arch/arm/configs/phytec-phycard-omap4_defconfig
index cd9310e..d9c89bb 100644
--- a/arch/arm/configs/phytec-phycard-omap4_defconfig
+++ b/arch/arm/configs/phytec-phycard-omap4_defconfig
@@ -17,7 +17,6 @@ CONFIG_AUTO_COMPLETE=y
 # CONFIG_TIMESTAMP is not set
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/phytec-phycard-omap4/env/"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/phytec-phycore-omap4460_defconfig b/arch/arm/configs/phytec-phycore-omap4460_defconfig
index ce5d75d..54d7722 100644
--- a/arch/arm/configs/phytec-phycore-omap4460_defconfig
+++ b/arch/arm/configs/phytec-phycore-omap4460_defconfig
@@ -16,7 +16,6 @@ CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 # CONFIG_TIMESTAMP is not set
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/phytec-phycore-omap4460/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/pm9261_defconfig b/arch/arm/configs/pm9261_defconfig
index c3cecb2..4455d9c 100644
--- a/arch/arm/configs/pm9261_defconfig
+++ b/arch/arm/configs/pm9261_defconfig
@@ -10,7 +10,6 @@ CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/pm9261/env/"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/pm9g45_defconfig b/arch/arm/configs/pm9g45_defconfig
index a5b54ff..7bb3b9e 100644
--- a/arch/arm/configs/pm9g45_defconfig
+++ b/arch/arm/configs/pm9g45_defconfig
@@ -14,7 +14,6 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/pm9g45/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_EXPORT=y
diff --git a/arch/arm/configs/qemu_virt64_defconfig b/arch/arm/configs/qemu_virt64_defconfig
index ed5abef..f8128aa 100644
--- a/arch/arm/configs/qemu_virt64_defconfig
+++ b/arch/arm/configs/qemu_virt64_defconfig
@@ -14,7 +14,6 @@ CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/qemu-virt64/env"
 CONFIG_DEBUG_INFO=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_MEMINFO=y
diff --git a/arch/arm/configs/qil_a9260_128mib_defconfig b/arch/arm/configs/qil_a9260_128mib_defconfig
index b92847f..7b6c352 100644
--- a/arch/arm/configs/qil_a9260_128mib_defconfig
+++ b/arch/arm/configs/qil_a9260_128mib_defconfig
@@ -19,7 +19,6 @@ CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/qil-a926x/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/qil_a9260_defconfig b/arch/arm/configs/qil_a9260_defconfig
index 72db60b..6918abb 100644
--- a/arch/arm/configs/qil_a9260_defconfig
+++ b/arch/arm/configs/qil_a9260_defconfig
@@ -18,7 +18,6 @@ CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/qil-a926x/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/qil_a9g20_128mib_defconfig b/arch/arm/configs/qil_a9g20_128mib_defconfig
index 3e30a07..7546a5b 100644
--- a/arch/arm/configs/qil_a9g20_128mib_defconfig
+++ b/arch/arm/configs/qil_a9g20_128mib_defconfig
@@ -19,7 +19,6 @@ CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/qil-a926x/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/qil_a9g20_defconfig b/arch/arm/configs/qil_a9g20_defconfig
index 6294692..bf9e8bb 100644
--- a/arch/arm/configs/qil_a9g20_defconfig
+++ b/arch/arm/configs/qil_a9g20_defconfig
@@ -18,7 +18,6 @@ CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/qil-a926x/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/sama5d3_xplained_defconfig b/arch/arm/configs/sama5d3_xplained_defconfig
index 156f032..773223e 100644
--- a/arch/arm/configs/sama5d3_xplained_defconfig
+++ b/arch/arm/configs/sama5d3_xplained_defconfig
@@ -19,7 +19,6 @@ CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/sama5d3_xplained/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/sama5d3xek_defconfig b/arch/arm/configs/sama5d3xek_defconfig
index 9e2d41e..48535e5 100644
--- a/arch/arm/configs/sama5d3xek_defconfig
+++ b/arch/arm/configs/sama5d3xek_defconfig
@@ -18,7 +18,6 @@ CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/sama5d3xek/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/scb9328_defconfig b/arch/arm/configs/scb9328_defconfig
index 09767aa..a707732 100644
--- a/arch/arm/configs/scb9328_defconfig
+++ b/arch/arm/configs/scb9328_defconfig
@@ -12,7 +12,6 @@ CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/scb9328/env/"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/tny_a9260_defconfig b/arch/arm/configs/tny_a9260_defconfig
index d9395fa..f288387 100644
--- a/arch/arm/configs/tny_a9260_defconfig
+++ b/arch/arm/configs/tny_a9260_defconfig
@@ -20,7 +20,6 @@ CONFIG_MENU=y
 # CONFIG_CONSOLE_ACTIVATE_FIRST is not set
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/tny-a926x/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/tny_a9263_defconfig b/arch/arm/configs/tny_a9263_defconfig
index e250ab3..cd955f7 100644
--- a/arch/arm/configs/tny_a9263_defconfig
+++ b/arch/arm/configs/tny_a9263_defconfig
@@ -20,7 +20,6 @@ CONFIG_MENU=y
 # CONFIG_CONSOLE_ACTIVATE_FIRST is not set
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/tny-a926x/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/tny_a9g20_defconfig b/arch/arm/configs/tny_a9g20_defconfig
index 4a8da59..dc3c13a 100644
--- a/arch/arm/configs/tny_a9g20_defconfig
+++ b/arch/arm/configs/tny_a9g20_defconfig
@@ -20,7 +20,6 @@ CONFIG_MENU=y
 # CONFIG_CONSOLE_ACTIVATE_FIRST is not set
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/tny-a926x/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/usb_a9260_defconfig b/arch/arm/configs/usb_a9260_defconfig
index a5785aa..2a8d1a6 100644
--- a/arch/arm/configs/usb_a9260_defconfig
+++ b/arch/arm/configs/usb_a9260_defconfig
@@ -20,7 +20,6 @@ CONFIG_MENU=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/usb-a926x/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/usb_a9263_128mib_defconfig b/arch/arm/configs/usb_a9263_128mib_defconfig
index f84743b..c091a97 100644
--- a/arch/arm/configs/usb_a9263_128mib_defconfig
+++ b/arch/arm/configs/usb_a9263_128mib_defconfig
@@ -21,7 +21,6 @@ CONFIG_MENU=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/usb-a926x/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/usb_a9263_defconfig b/arch/arm/configs/usb_a9263_defconfig
index 41d8284..51234cd 100644
--- a/arch/arm/configs/usb_a9263_defconfig
+++ b/arch/arm/configs/usb_a9263_defconfig
@@ -20,7 +20,6 @@ CONFIG_MENU=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/usb-a926x/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/usb_a9g20_128mib_defconfig b/arch/arm/configs/usb_a9g20_128mib_defconfig
index d5e8e5e..7890776 100644
--- a/arch/arm/configs/usb_a9g20_128mib_defconfig
+++ b/arch/arm/configs/usb_a9g20_128mib_defconfig
@@ -21,7 +21,6 @@ CONFIG_MENU=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/usb-a926x/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/usb_a9g20_defconfig b/arch/arm/configs/usb_a9g20_defconfig
index 6e59cf5..0953aaf 100644
--- a/arch/arm/configs/usb_a9g20_defconfig
+++ b/arch/arm/configs/usb_a9g20_defconfig
@@ -20,7 +20,6 @@ CONFIG_MENU=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/usb-a926x/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/vexpress_ca9_defconfig b/arch/arm/configs/vexpress_ca9_defconfig
index c24c0ea..fb40567 100644
--- a/arch/arm/configs/vexpress_ca9_defconfig
+++ b/arch/arm/configs/vexpress_ca9_defconfig
@@ -13,7 +13,6 @@ CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/vexpress/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/vexpress_defconfig b/arch/arm/configs/vexpress_defconfig
index 241889b..9e74bb4 100644
--- a/arch/arm/configs/vexpress_defconfig
+++ b/arch/arm/configs/vexpress_defconfig
@@ -12,7 +12,6 @@ CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/vexpress/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/nios2/boards/generic/Makefile b/arch/nios2/boards/generic/Makefile
index d8a3d7f..f262838 100644
--- a/arch/nios2/boards/generic/Makefile
+++ b/arch/nios2/boards/generic/Makefile
@@ -1 +1,2 @@
 obj-y += generic.o
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-generic
diff --git a/arch/nios2/boards/generic/env/config b/arch/nios2/boards/generic/defaultenv-generic/config
similarity index 100%
rename from arch/nios2/boards/generic/env/config
rename to arch/nios2/boards/generic/defaultenv-generic/config
diff --git a/arch/nios2/boards/generic/generic.c b/arch/nios2/boards/generic/generic.c
index 61b60b6..0c2c67c 100644
--- a/arch/nios2/boards/generic/generic.c
+++ b/arch/nios2/boards/generic/generic.c
@@ -4,6 +4,7 @@
 #include <partition.h>
 #include <fs.h>
 #include <memory.h>
+#include <envfs.h>
 
 static int phy_address = 1;
 
@@ -52,6 +53,9 @@ static int generic_devices_init(void)
 
 	protect_file("/dev/env0", 1);
 
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
+		defaultenv_append_directory(defaultenv_generic);
+
 	return 0;
 }
 
diff --git a/arch/nios2/configs/generic_defconfig b/arch/nios2/configs/generic_defconfig
index 39f41dd..91d364f 100644
--- a/arch/nios2/configs/generic_defconfig
+++ b/arch/nios2/configs/generic_defconfig
@@ -6,7 +6,6 @@ CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/nios2/boards/generic/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/ppc/boards/freescale-p1010rdb/Makefile b/arch/ppc/boards/freescale-p1010rdb/Makefile
index 2a51091..a7b64ee 100644
--- a/arch/ppc/boards/freescale-p1010rdb/Makefile
+++ b/arch/ppc/boards/freescale-p1010rdb/Makefile
@@ -1,4 +1,5 @@
 obj-y	+= p1010rdb.o
 obj-y	+= law.o
 obj-y	+= tlb.o
-obj-y	+= ddr.o
\ No newline at end of file
+obj-y	+= ddr.o
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-freescale-p1010rdb
diff --git a/arch/ppc/boards/freescale-p1010rdb/env/bin/init b/arch/ppc/boards/freescale-p1010rdb/defaultenv-freescale-p1010rdb/bin/init
similarity index 100%
rename from arch/ppc/boards/freescale-p1010rdb/env/bin/init
rename to arch/ppc/boards/freescale-p1010rdb/defaultenv-freescale-p1010rdb/bin/init
diff --git a/arch/ppc/boards/freescale-p1010rdb/env/config b/arch/ppc/boards/freescale-p1010rdb/defaultenv-freescale-p1010rdb/config
similarity index 100%
rename from arch/ppc/boards/freescale-p1010rdb/env/config
rename to arch/ppc/boards/freescale-p1010rdb/defaultenv-freescale-p1010rdb/config
diff --git a/arch/ppc/boards/freescale-p1010rdb/p1010rdb.c b/arch/ppc/boards/freescale-p1010rdb/p1010rdb.c
index eab3aba..b163327 100644
--- a/arch/ppc/boards/freescale-p1010rdb/p1010rdb.c
+++ b/arch/ppc/boards/freescale-p1010rdb/p1010rdb.c
@@ -22,6 +22,7 @@
 #include <types.h>
 #include <i2c/i2c.h>
 #include <gpio.h>
+#include <envfs.h>
 #include <partition.h>
 #include <memory.h>
 #include <asm/cache.h>
@@ -121,6 +122,9 @@ static int p1010rdb_devices_init(void)
 			IORESOURCE_MEM, &i2cplat[1]);
 	board_eth_init();
 
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
+		defaultenv_append_directory(defaultenv_freescale_p1010rdb);
+
 	return 0;
 }
 
diff --git a/arch/ppc/boards/freescale-p1022ds/Makefile b/arch/ppc/boards/freescale-p1022ds/Makefile
index e9b59d5..48867fa 100644
--- a/arch/ppc/boards/freescale-p1022ds/Makefile
+++ b/arch/ppc/boards/freescale-p1022ds/Makefile
@@ -3,3 +3,4 @@ obj-y	+= law.o
 obj-y	+= tlb.o
 obj-y	+= ddr.o
 obj-y	+= ics307_clk.o
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-freescale-p1022ds
diff --git a/arch/ppc/boards/freescale-p1022ds/env/bin/init b/arch/ppc/boards/freescale-p1022ds/defaultenv-freescale-p1022ds/bin/init
similarity index 100%
rename from arch/ppc/boards/freescale-p1022ds/env/bin/init
rename to arch/ppc/boards/freescale-p1022ds/defaultenv-freescale-p1022ds/bin/init
diff --git a/arch/ppc/boards/freescale-p1022ds/env/config b/arch/ppc/boards/freescale-p1022ds/defaultenv-freescale-p1022ds/config
similarity index 100%
rename from arch/ppc/boards/freescale-p1022ds/env/config
rename to arch/ppc/boards/freescale-p1022ds/defaultenv-freescale-p1022ds/config
diff --git a/arch/ppc/boards/freescale-p1022ds/p1022ds.c b/arch/ppc/boards/freescale-p1022ds/p1022ds.c
index 95a7234..d80c234 100644
--- a/arch/ppc/boards/freescale-p1022ds/p1022ds.c
+++ b/arch/ppc/boards/freescale-p1022ds/p1022ds.c
@@ -23,6 +23,7 @@
 #include <i2c/i2c.h>
 #include <partition.h>
 #include <memory.h>
+#include <envfs.h>
 #include <asm/cache.h>
 #include <asm/fsl_ddr_sdram.h>
 #include <asm/fsl_law.h>
@@ -113,6 +114,9 @@ static int p1022ds_devices_init(void)
 
 	board_eth_init();
 
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
+		defaultenv_append_directory(defaultenv_freescale_p1022ds);
+
 	return 0;
 }
 
diff --git a/arch/ppc/boards/freescale-p2020rdb/Makefile b/arch/ppc/boards/freescale-p2020rdb/Makefile
index dbd2af6..b2497f6 100644
--- a/arch/ppc/boards/freescale-p2020rdb/Makefile
+++ b/arch/ppc/boards/freescale-p2020rdb/Makefile
@@ -1,3 +1,4 @@
 obj-y	+= p2020rdb.o
 obj-y	+= law.o
 obj-y	+= tlb.o
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-freescale-p2020rdb
diff --git a/arch/ppc/boards/freescale-p2020rdb/env/bin/init b/arch/ppc/boards/freescale-p2020rdb/defaultenv-freescale-p2020rdb/bin/init
similarity index 100%
rename from arch/ppc/boards/freescale-p2020rdb/env/bin/init
rename to arch/ppc/boards/freescale-p2020rdb/defaultenv-freescale-p2020rdb/bin/init
diff --git a/arch/ppc/boards/freescale-p2020rdb/env/config b/arch/ppc/boards/freescale-p2020rdb/defaultenv-freescale-p2020rdb/config
similarity index 100%
rename from arch/ppc/boards/freescale-p2020rdb/env/config
rename to arch/ppc/boards/freescale-p2020rdb/defaultenv-freescale-p2020rdb/config
diff --git a/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c b/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
index b03d791..5559765 100644
--- a/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
+++ b/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
@@ -25,6 +25,7 @@
 #include <i2c/i2c.h>
 #include <partition.h>
 #include <memory.h>
+#include <envfs.h>
 #include <asm/cache.h>
 #include <asm/fsl_ddr_sdram.h>
 #include <asm/fsl_law.h>
@@ -95,6 +96,9 @@ static int devices_init(void)
 	fsl_eth_init(2, &gfar_info[0]);
 	fsl_eth_init(3, &gfar_info[1]);
 
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
+		defaultenv_append_directory(defaultenv_freescale_p2020rdb);
+
 	return 0;
 }
 
diff --git a/arch/ppc/boards/geip-da923rc/Makefile b/arch/ppc/boards/geip-da923rc/Makefile
index 3abc6c6..7177bfa 100644
--- a/arch/ppc/boards/geip-da923rc/Makefile
+++ b/arch/ppc/boards/geip-da923rc/Makefile
@@ -4,3 +4,4 @@ obj-y += law.o
 obj-y += ddr.o
 obj-y += nand.o
 obj-y += product_data.o
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-geip-da923rc
diff --git a/arch/ppc/boards/geip-da923rc/da923rc.c b/arch/ppc/boards/geip-da923rc/da923rc.c
index 85c9747..6ec4ee2 100644
--- a/arch/ppc/boards/geip-da923rc/da923rc.c
+++ b/arch/ppc/boards/geip-da923rc/da923rc.c
@@ -22,6 +22,7 @@
 #include <asm/io.h>
 #include <net.h>
 #include <gpio.h>
+#include <envfs.h>
 #include <platform_data/serial-ns16550.h>
 #include <partition.h>
 #include <environment.h>
@@ -96,6 +97,9 @@ static int da923rc_devices_init(void)
 
 	board_eth_init();
 
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
+		defaultenv_append_directory(defaultenv_geip_da923rc);
+
 	return 0;
 }
 
diff --git a/arch/ppc/boards/geip-da923rc/env/bin/boot b/arch/ppc/boards/geip-da923rc/defaultenv-geip-da923rc/bin/boot
similarity index 100%
rename from arch/ppc/boards/geip-da923rc/env/bin/boot
rename to arch/ppc/boards/geip-da923rc/defaultenv-geip-da923rc/bin/boot
diff --git a/arch/ppc/boards/geip-da923rc/env/bin/init b/arch/ppc/boards/geip-da923rc/defaultenv-geip-da923rc/bin/init
similarity index 100%
rename from arch/ppc/boards/geip-da923rc/env/bin/init
rename to arch/ppc/boards/geip-da923rc/defaultenv-geip-da923rc/bin/init
diff --git a/arch/ppc/boards/geip-da923rc/env/config b/arch/ppc/boards/geip-da923rc/defaultenv-geip-da923rc/config
similarity index 100%
rename from arch/ppc/boards/geip-da923rc/env/config
rename to arch/ppc/boards/geip-da923rc/defaultenv-geip-da923rc/config
diff --git a/arch/ppc/configs/da923rc_defconfig b/arch/ppc/configs/da923rc_defconfig
index a6d38fd..f873eb5 100644
--- a/arch/ppc/configs/da923rc_defconfig
+++ b/arch/ppc/configs/da923rc_defconfig
@@ -18,7 +18,6 @@ CONFIG_CMD_EXPORT=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_GO=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=n
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/ppc/boards/geip-da923rc/env/"
 CONFIG_CMD_LOADENV=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/ppc/configs/p1010rdb_defconfig b/arch/ppc/configs/p1010rdb_defconfig
index a891a6c..b1f1002 100644
--- a/arch/ppc/configs/p1010rdb_defconfig
+++ b/arch/ppc/configs/p1010rdb_defconfig
@@ -18,7 +18,6 @@ CONFIG_CMD_RESET=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_GO=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=n
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/ppc/boards/freescale-p1010rdb/env/"
 CONFIG_CMD_LOADENV=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/ppc/configs/p1022ds_defconfig b/arch/ppc/configs/p1022ds_defconfig
index 4d0fe99..f517708 100644
--- a/arch/ppc/configs/p1022ds_defconfig
+++ b/arch/ppc/configs/p1022ds_defconfig
@@ -16,7 +16,6 @@ CONFIG_CMD_FLASH=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=n
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/ppc/boards/freescale-p1022ds/env/"
 CONFIG_CMD_LOADENV=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/ppc/configs/p2020rdb_defconfig b/arch/ppc/configs/p2020rdb_defconfig
index 817c9a0..d0b11b4 100644
--- a/arch/ppc/configs/p2020rdb_defconfig
+++ b/arch/ppc/configs/p2020rdb_defconfig
@@ -17,7 +17,6 @@ CONFIG_CMD_FLASH=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=n
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/ppc/boards/freescale-p2020rdb/env/"
 CONFIG_CMD_LOADENV=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_SAVEENV=y
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
