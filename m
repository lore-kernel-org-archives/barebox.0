Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnimY-0001UK-66
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 13:16:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 23 Jun 2020 15:15:53 +0200
Message-Id: <20200623131606.16316-8-s.hauer@pengutronix.de>
In-Reply-To: <20200623131606.16316-1-s.hauer@pengutronix.de>
References: <20200623131606.16316-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH 07/20] scripts: imx-image: rename dcdofs to ivtofs
To: Barebox List <barebox@lists.infradead.org>

This renames the dcdofs config option in the imx-image tool to ivtofs.  dcdofs
is a misnomer. The DCD (Device Configuration Data) is only one part of the data
linked into the IVT (Image Vector Table), but the meaning of the option is
really the latter, not the former.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/boards/imx.rst                                  | 2 +-
 .../advantech-mx6/flash-header-advantech-rom-7421.imxcfg      | 2 +-
 .../flash-header-nitrogen6dl-1g.imxcfg                        | 2 +-
 .../flash-header-nitrogen6dl-2g.imxcfg                        | 2 +-
 .../flash-header-nitrogen6q-1g.imxcfg                         | 2 +-
 .../flash-header-nitrogen6q-2g.imxcfg                         | 2 +-
 .../flash-header-nitrogen6qp-max.imxcfg                       | 2 +-
 arch/arm/boards/ccxmx51/flash-header.imxcfg                   | 2 +-
 .../arm/boards/ccxmx53/flash-header-imx53-ccxmx53_1gib.imxcfg | 2 +-
 .../boards/ccxmx53/flash-header-imx53-ccxmx53_512mb.imxcfg    | 2 +-
 arch/arm/boards/cm-fx6/flash-header-mx6-cm-fx6.imxcfg         | 2 +-
 arch/arm/boards/datamodul-edm-qmx6/flash-header.imxcfg        | 2 +-
 .../dfi-fs700-m60/flash-header-fs700-m60-6q-micron.imxcfg     | 2 +-
 .../dfi-fs700-m60/flash-header-fs700-m60-6q-nanya.imxcfg      | 2 +-
 .../arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6s.imxcfg | 2 +-
 .../flash-header-imx6ul-ccimx6ulsbcpro.imxcfg                 | 2 +-
 .../flash-header-imx51-genesi-efikasb.imxcfg                  | 2 +-
 arch/arm/boards/element14-warp7/flash-header-mx7-warp.imxcfg  | 2 +-
 .../boards/eltec-hipercam/flash-header-eltec-hipercam.imxcfg  | 2 +-
 arch/arm/boards/embedsky-e9/flash-header-e9.imxcfg            | 2 +-
 .../embest-marsboard/flash-header-embest-marsboard.imxcfg     | 2 +-
 .../embest-riotboard/flash-header-embest-riotboard.imxcfg     | 2 +-
 arch/arm/boards/eukrea_cpuimx25/flash-header.imxcfg           | 2 +-
 arch/arm/boards/eukrea_cpuimx35/flash-header.imxcfg           | 2 +-
 arch/arm/boards/eukrea_cpuimx51/flash-header.imxcfg           | 2 +-
 arch/arm/boards/freescale-mx25-3ds/flash-header.imxcfg        | 2 +-
 arch/arm/boards/freescale-mx35-3ds/flash-header.imxcfg        | 2 +-
 .../freescale-mx51-babbage/flash-header-imx51-babbage.imxcfg  | 2 +-
 .../boards/freescale-mx53-qsb/flash-header-imx53-loco.imxcfg  | 2 +-
 arch/arm/boards/freescale-mx53-smd/flash-header.imxcfg        | 2 +-
 .../freescale-mx53-vmx53/flash-header-imx53-vmx53.imxcfg      | 2 +-
 .../freescale-mx6-sabrelite/flash-header-mx6-sabrelite.imxcfg | 2 +-
 .../freescale-mx6-sabresd/flash-header-mx6-sabresd.imxcfg     | 2 +-
 .../flash-header-mx6sx-sabresdb.imxcfg                        | 2 +-
 .../freescale-mx7-sabresd/flash-header-mx7-sabresd.imxcfg     | 2 +-
 .../boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg  | 2 +-
 .../gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg  | 2 +-
 arch/arm/boards/gk802/flash-header.imxcfg                     | 2 +-
 arch/arm/boards/grinn-liteboard/flash-header-liteboard.h      | 2 +-
 arch/arm/boards/guf-santaro/flash-header.imxcfg               | 2 +-
 arch/arm/boards/guf-vincell/flash-header.imxcfg               | 2 +-
 arch/arm/boards/karo-tx25/flash-header-tx25.imxcfg            | 2 +-
 arch/arm/boards/karo-tx51/flash-header-karo-tx51.imxcfg       | 2 +-
 arch/arm/boards/karo-tx53/flash-header-tx53-rev1011.imxcfg    | 2 +-
 .../boards/karo-tx53/flash-header-tx53-revxx30-samsung.imxcfg | 2 +-
 arch/arm/boards/karo-tx53/flash-header-tx53-revxx30.imxcfg    | 2 +-
 arch/arm/boards/karo-tx6x/flash-header-tx6dl-1g.imxcfg        | 2 +-
 arch/arm/boards/karo-tx6x/flash-header-tx6dl-512m.imxcfg      | 2 +-
 arch/arm/boards/karo-tx6x/flash-header-tx6q-1g.imxcfg         | 2 +-
 arch/arm/boards/karo-tx6x/flash-header-tx6qp-2g.imxcfg        | 2 +-
 arch/arm/boards/kindle-mx50/flash-header-kindle-lpddr1.imxcfg | 2 +-
 arch/arm/boards/kindle-mx50/flash-header-kindle-lpddr2.imxcfg | 2 +-
 arch/arm/boards/kindle3/flash-header.imxcfg                   | 2 +-
 .../boards/kontron-samx6i/flash-header-samx6i-duallite.imxcfg | 2 +-
 .../arm/boards/kontron-samx6i/flash-header-samx6i-quad.imxcfg | 2 +-
 .../nxp-imx6ull-evk/flash-header-nxp-imx6ull-evk.imxcfg       | 2 +-
 arch/arm/boards/nxp-imx8mm-evk/flash-header-imx8mm-evk.imxcfg | 2 +-
 arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg | 2 +-
 arch/arm/boards/phytec-phycore-imx35/flash-header.imxcfg      | 2 +-
 .../flash-header-phytec-phycore-imx7.imxcfg                   | 2 +-
 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3.h | 2 +-
 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063.h  | 2 +-
 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058.h  | 2 +-
 .../arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl.h | 2 +-
 .../arm/boards/phytec-som-imx6/flash-header-phytec-pcm058qp.h | 2 +-
 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02.h  | 2 +-
 .../arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl.h | 2 +-
 .../phytec-som-imx8mq/flash-header-phycore-imx8mq.imxcfg      | 2 +-
 .../boards/solidrun-microsom/flash-header-microsom-i1.imxcfg  | 2 +-
 .../boards/solidrun-microsom/flash-header-microsom-i2.imxcfg  | 2 +-
 .../solidrun-microsom/flash-header-microsom-i2eX.imxcfg       | 2 +-
 .../boards/solidrun-microsom/flash-header-microsom-i4.imxcfg  | 2 +-
 .../flash-header-imx6ul-pico-hobbit-256.imxcfg                | 2 +-
 .../flash-header-imx6ul-pico-hobbit-512.imxcfg                | 2 +-
 .../flash-header-technexion-wandboard.imxcfg                  | 2 +-
 arch/arm/boards/tqma53/flash-header-tq-tqma53.h               | 2 +-
 arch/arm/boards/tqma53/flash-header.imxcfg                    | 2 +-
 arch/arm/boards/tqma6x/flash-header-tqma6dl.imxcfg            | 2 +-
 arch/arm/boards/tqma6x/flash-header-tqma6q.imxcfg             | 2 +-
 .../boards/udoo-neo/flash-header-mx6sx-udoo-neo_full.imxcfg   | 2 +-
 arch/arm/boards/udoo/flash-header-mx6-udoo.imxcfg             | 2 +-
 arch/arm/boards/variscite-mx6/flash-header-variscite.imxcfg   | 2 +-
 .../boards/zii-imx51-rdu1/flash-header-imx51-zii-rdu1.imxcfg  | 2 +-
 arch/arm/boards/zii-imx6q-rdu2/flash-header-rdu2.imxcfg       | 2 +-
 .../boards/zii-imx7d-dev/flash-header-zii-imx7d-dev.imxcfg    | 2 +-
 .../boards/zii-imx8mq-dev/flash-header-zii-imx8mq-dev.imxcfg  | 2 +-
 .../boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg    | 2 +-
 scripts/imx/README                                            | 2 +-
 scripts/imx/imx.c                                             | 2 +-
 scripts/regsubst.pl                                           | 4 ++--
 90 files changed, 91 insertions(+), 91 deletions(-)

diff --git a/Documentation/boards/imx.rst b/Documentation/boards/imx.rst
index 8fe0a2828d..887b45c708 100644
--- a/Documentation/boards/imx.rst
+++ b/Documentation/boards/imx.rst
@@ -252,7 +252,7 @@ Header:
 +--------------------+--------------------------------------------------------------+
 | ``loadaddr <adr>`` |     The address the binary is uploaded to                    |
 +--------------------+--------------------------------------------------------------+
-| ``dcdofs <ofs>``   | The offset of the image header in the image. This should be: |
+| ``ivtofs <ofs>``   | The offset of the image header in the image. This should be: |
 |                    |                                                              |
 |                    | * ``0x400``:  MMC/SD, NAND, serial ROM, PATA, SATA           |
 |                    | * ``0x1000``: NOR Flash                                      |
diff --git a/arch/arm/boards/advantech-mx6/flash-header-advantech-rom-7421.imxcfg b/arch/arm/boards/advantech-mx6/flash-header-advantech-rom-7421.imxcfg
index 996ecc708d..aefdf68e89 100644
--- a/arch/arm/boards/advantech-mx6/flash-header-advantech-rom-7421.imxcfg
+++ b/arch/arm/boards/advantech-mx6/flash-header-advantech-rom-7421.imxcfg
@@ -1,6 +1,6 @@
 soc imx6
 loadaddr 0x10000000
-dcdofs 0x400
+ivtofs 0x400
 
 wm 32 0x020e0774 0x000C0000
 wm 32 0x020e0754 0x00000000
diff --git a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-1g.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-1g.imxcfg
index 47b572db46..5da5fd9419 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-1g.imxcfg
+++ b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-1g.imxcfg
@@ -1,6 +1,6 @@
 soc imx6
 loadaddr 0x20000000
-dcdofs 0x400
+ivtofs 0x400
 
 #include <mach/imx6-ddr-regs.h>
 #include <mach/imx6dl-ddr-regs.h>
diff --git a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-2g.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-2g.imxcfg
index cf3716dbaa..3ccf7591c5 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-2g.imxcfg
+++ b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-2g.imxcfg
@@ -1,6 +1,6 @@
 soc imx6
 loadaddr 0x20000000
-dcdofs 0x400
+ivtofs 0x400
 
 #include <mach/imx6-ddr-regs.h>
 #include <mach/imx6dl-ddr-regs.h>
diff --git a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-1g.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-1g.imxcfg
index 8ed987daa8..7bdc0e736c 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-1g.imxcfg
+++ b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-1g.imxcfg
@@ -1,6 +1,6 @@
 soc imx6
 loadaddr 0x20000000
-dcdofs 0x400
+ivtofs 0x400
 
 #include <mach/imx6-ddr-regs.h>
 #include <mach/imx6q-ddr-regs.h>
diff --git a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-2g.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-2g.imxcfg
index e6d97d11c1..c6f5aa8484 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-2g.imxcfg
+++ b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-2g.imxcfg
@@ -1,6 +1,6 @@
 soc imx6
 loadaddr 0x20000000
-dcdofs 0x400
+ivtofs 0x400
 
 #include <mach/imx6-ddr-regs.h>
 #include <mach/imx6q-ddr-regs.h>
diff --git a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6qp-max.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6qp-max.imxcfg
index 50bbfc5bdd..797b9717e7 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6qp-max.imxcfg
+++ b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6qp-max.imxcfg
@@ -1,6 +1,6 @@
 soc imx6
 loadaddr 0x20000000
-dcdofs 0x400
+ivtofs 0x400
 
 #include <mach/imx6-ddr-regs.h>
 #include <mach/imx6q-ddr-regs.h>
diff --git a/arch/arm/boards/ccxmx51/flash-header.imxcfg b/arch/arm/boards/ccxmx51/flash-header.imxcfg
index 251c4c1b9b..3b1df11133 100644
--- a/arch/arm/boards/ccxmx51/flash-header.imxcfg
+++ b/arch/arm/boards/ccxmx51/flash-header.imxcfg
@@ -1,6 +1,6 @@
 soc imx51
 loadaddr 0x90000000
-dcdofs 0x400
+ivtofs 0x400
 wm 32 0x73fa88a0 0x00000200
 wm 32 0x73fa850c 0x000020c5
 wm 32 0x73fa8510 0x000020c5
diff --git a/arch/arm/boards/ccxmx53/flash-header-imx53-ccxmx53_1gib.imxcfg b/arch/arm/boards/ccxmx53/flash-header-imx53-ccxmx53_1gib.imxcfg
index 68d947c01d..390b75b4f2 100644
--- a/arch/arm/boards/ccxmx53/flash-header-imx53-ccxmx53_1gib.imxcfg
+++ b/arch/arm/boards/ccxmx53/flash-header-imx53-ccxmx53_1gib.imxcfg
@@ -1,6 +1,6 @@
 loadaddr 0x70000000
 soc imx53
-dcdofs 0x400
+ivtofs 0x400
 wm 32 0x53fa8554 0x00200000
 wm 32 0x53fa8558 0x00200040
 wm 32 0x53fa8560 0x00200000
diff --git a/arch/arm/boards/ccxmx53/flash-header-imx53-ccxmx53_512mb.imxcfg b/arch/arm/boards/ccxmx53/flash-header-imx53-ccxmx53_512mb.imxcfg
index b707dd64a6..c32ab9c162 100644
--- a/arch/arm/boards/ccxmx53/flash-header-imx53-ccxmx53_512mb.imxcfg
+++ b/arch/arm/boards/ccxmx53/flash-header-imx53-ccxmx53_512mb.imxcfg
@@ -1,6 +1,6 @@
 loadaddr 0x70000000
 soc imx53
-dcdofs 0x400
+ivtofs 0x400
 wm 32 0x53fa8554 0x00200000
 wm 32 0x53fa8558 0x00200040
 wm 32 0x53fa8560 0x00200000
diff --git a/arch/arm/boards/cm-fx6/flash-header-mx6-cm-fx6.imxcfg b/arch/arm/boards/cm-fx6/flash-header-mx6-cm-fx6.imxcfg
index 9e8dce5877..4bb615ebb0 100644
--- a/arch/arm/boards/cm-fx6/flash-header-mx6-cm-fx6.imxcfg
+++ b/arch/arm/boards/cm-fx6/flash-header-mx6-cm-fx6.imxcfg
@@ -1,4 +1,4 @@
 soc imx6
 loadaddr 0x00907000
 max_load_size 0x11000
-dcdofs 0x400
+ivtofs 0x400
diff --git a/arch/arm/boards/datamodul-edm-qmx6/flash-header.imxcfg b/arch/arm/boards/datamodul-edm-qmx6/flash-header.imxcfg
index 400a870154..14146bed22 100644
--- a/arch/arm/boards/datamodul-edm-qmx6/flash-header.imxcfg
+++ b/arch/arm/boards/datamodul-edm-qmx6/flash-header.imxcfg
@@ -1,3 +1,3 @@
 soc imx6
 loadaddr 0x00907000
-dcdofs 0x400
+ivtofs 0x400
diff --git a/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q-micron.imxcfg b/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q-micron.imxcfg
index 2be0210dd6..fe8bd8cbd6 100644
--- a/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q-micron.imxcfg
+++ b/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q-micron.imxcfg
@@ -1,6 +1,6 @@
 loadaddr 0x27800000
 soc imx6
-dcdofs 0x400
+ivtofs 0x400
 
 #include <mach/imx6-ddr-regs.h>
 #include <mach/imx6q-ddr-regs.h>
diff --git a/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q-nanya.imxcfg b/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q-nanya.imxcfg
index fb34903e27..6919bd8c3f 100644
--- a/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q-nanya.imxcfg
+++ b/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q-nanya.imxcfg
@@ -1,6 +1,6 @@
 loadaddr 0x27800000
 soc imx6
-dcdofs 0x400
+ivtofs 0x400
 
 #include <mach/imx6-ddr-regs.h>
 #include <mach/imx6q-ddr-regs.h>
diff --git a/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6s.imxcfg b/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6s.imxcfg
index 42e98d65d3..709c11974b 100644
--- a/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6s.imxcfg
+++ b/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6s.imxcfg
@@ -1,6 +1,6 @@
 loadaddr 0x17800000
 soc imx6
-dcdofs 0x400
+ivtofs 0x400
 
 #include <mach/imx6-ddr-regs.h>
 #include <mach/imx6dl-ddr-regs.h>
diff --git a/arch/arm/boards/digi-ccimx6ulsom/flash-header-imx6ul-ccimx6ulsbcpro.imxcfg b/arch/arm/boards/digi-ccimx6ulsom/flash-header-imx6ul-ccimx6ulsbcpro.imxcfg
index 36edad7a3e..7b2a198672 100644
--- a/arch/arm/boards/digi-ccimx6ulsom/flash-header-imx6ul-ccimx6ulsbcpro.imxcfg
+++ b/arch/arm/boards/digi-ccimx6ulsom/flash-header-imx6ul-ccimx6ulsbcpro.imxcfg
@@ -1,6 +1,6 @@
 loadaddr 0x80000000
 soc imx6
-dcdofs 0x400
+ivtofs 0x400
 
 /* Enable all clocks */
 wm 32 0x020c4068 0xffffffff
diff --git a/arch/arm/boards/efika-mx-smartbook/flash-header-imx51-genesi-efikasb.imxcfg b/arch/arm/boards/efika-mx-smartbook/flash-header-imx51-genesi-efikasb.imxcfg
index 53875ed319..60436e7e37 100644
--- a/arch/arm/boards/efika-mx-smartbook/flash-header-imx51-genesi-efikasb.imxcfg
+++ b/arch/arm/boards/efika-mx-smartbook/flash-header-imx51-genesi-efikasb.imxcfg
@@ -1,6 +1,6 @@
 soc imx51
 loadaddr 0x90000000
-dcdofs 0x400
+ivtofs 0x400
 wm 32 0x73fa88a0 0x00000000
 wm 32 0x73fa850c 0x000020c5
 wm 32 0x73fa8510 0x000020c5
diff --git a/arch/arm/boards/element14-warp7/flash-header-mx7-warp.imxcfg b/arch/arm/boards/element14-warp7/flash-header-mx7-warp.imxcfg
index 7aa5dd8d45..798f2cbcb0 100644
--- a/arch/arm/boards/element14-warp7/flash-header-mx7-warp.imxcfg
+++ b/arch/arm/boards/element14-warp7/flash-header-mx7-warp.imxcfg
@@ -11,7 +11,7 @@
 
 soc imx7
 loadaddr 0x80000000
-dcdofs 0x400
+ivtofs 0x400
 
 #include <mach/imx7-ddr-regs.h>
 
diff --git a/arch/arm/boards/eltec-hipercam/flash-header-eltec-hipercam.imxcfg b/arch/arm/boards/eltec-hipercam/flash-header-eltec-hipercam.imxcfg
index f04adf86a4..5b422a7867 100644
--- a/arch/arm/boards/eltec-hipercam/flash-header-eltec-hipercam.imxcfg
+++ b/arch/arm/boards/eltec-hipercam/flash-header-eltec-hipercam.imxcfg
@@ -1,6 +1,6 @@
 soc imx6
 loadaddr 0x10000000
-dcdofs 0x400
+ivtofs 0x400
 
 #include <mach/imx6-ddr-regs.h>
 #include <mach/imx6dl-ddr-regs.h>
diff --git a/arch/arm/boards/embedsky-e9/flash-header-e9.imxcfg b/arch/arm/boards/embedsky-e9/flash-header-e9.imxcfg
index 1139312da6..d51dc17a12 100644
--- a/arch/arm/boards/embedsky-e9/flash-header-e9.imxcfg
+++ b/arch/arm/boards/embedsky-e9/flash-header-e9.imxcfg
@@ -1,6 +1,6 @@
 loadaddr 0x27800000
 soc imx6
-dcdofs 0x400
+ivtofs 0x400
 
 #include <mach/imx6-ddr-regs.h>
 #include <mach/imx6q-ddr-regs.h>
diff --git a/arch/arm/boards/embest-marsboard/flash-header-embest-marsboard.imxcfg b/arch/arm/boards/embest-marsboard/flash-header-embest-marsboard.imxcfg
index bdaf60cb4a..afc95d9bd9 100644
--- a/arch/arm/boards/embest-marsboard/flash-header-embest-marsboard.imxcfg
+++ b/arch/arm/boards/embest-marsboard/flash-header-embest-marsboard.imxcfg
@@ -1,6 +1,6 @@
 soc imx6
 loadaddr 0x20000000
-dcdofs 0x400
+ivtofs 0x400
 
 wm 32 0x020e05a8 0x00000030
 wm 32 0x020e05b0 0x00000030
diff --git a/arch/arm/boards/embest-riotboard/flash-header-embest-riotboard.imxcfg b/arch/arm/boards/embest-riotboard/flash-header-embest-riotboard.imxcfg
index c9a8098f6d..bc30e4c387 100644
--- a/arch/arm/boards/embest-riotboard/flash-header-embest-riotboard.imxcfg
+++ b/arch/arm/boards/embest-riotboard/flash-header-embest-riotboard.imxcfg
@@ -1,6 +1,6 @@
 loadaddr 0x20000000
 soc imx6
-dcdofs 0x400
+ivtofs 0x400
 
 #include <mach/imx6-ddr-regs.h>
 #include <mach/imx6dl-ddr-regs.h>
diff --git a/arch/arm/boards/eukrea_cpuimx25/flash-header.imxcfg b/arch/arm/boards/eukrea_cpuimx25/flash-header.imxcfg
index b0c3b69b46..129498ca85 100644
--- a/arch/arm/boards/eukrea_cpuimx25/flash-header.imxcfg
+++ b/arch/arm/boards/eukrea_cpuimx25/flash-header.imxcfg
@@ -1,6 +1,6 @@
 soc imx25
 loadaddr 0x80000000
-dcdofs 0x400
+ivtofs 0x400
 
 wm 32 0xb8001008 0x00000000
 wm 32 0xb8001010 0x00000004
diff --git a/arch/arm/boards/eukrea_cpuimx35/flash-header.imxcfg b/arch/arm/boards/eukrea_cpuimx35/flash-header.imxcfg
index 85200bbb50..c1353e2904 100644
--- a/arch/arm/boards/eukrea_cpuimx35/flash-header.imxcfg
+++ b/arch/arm/boards/eukrea_cpuimx35/flash-header.imxcfg
@@ -1,6 +1,6 @@
 soc imx35
 loadaddr 0x80000000
-dcdofs 0x400
+ivtofs 0x400
 
 wm 32 0x53F80004 0x00821000
 wm 32 0x53F80004 0x00821000
diff --git a/arch/arm/boards/eukrea_cpuimx51/flash-header.imxcfg b/arch/arm/boards/eukrea_cpuimx51/flash-header.imxcfg
index 5b51106284..85c128c8fd 100644
--- a/arch/arm/boards/eukrea_cpuimx51/flash-header.imxcfg
+++ b/arch/arm/boards/eukrea_cpuimx51/flash-header.imxcfg
@@ -1,5 +1,5 @@
 soc imx51
-dcdofs 0x400
+ivtofs 0x400
 loadaddr 0x90000000
 wm 32 0x73fa88a0 0x00000200
 wm 32 0x73fa850c 0x000020c5
diff --git a/arch/arm/boards/freescale-mx25-3ds/flash-header.imxcfg b/arch/arm/boards/freescale-mx25-3ds/flash-header.imxcfg
index f195e8c002..8c1a257829 100644
--- a/arch/arm/boards/freescale-mx25-3ds/flash-header.imxcfg
+++ b/arch/arm/boards/freescale-mx25-3ds/flash-header.imxcfg
@@ -1,6 +1,6 @@
 soc imx25
 loadaddr 0x80000000
-dcdofs 0x400
+ivtofs 0x400
 wm 32 0xb8002050 0x0000d843
 wm 32 0xb8002054 0x22252521
 wm 32 0xb8002058 0x22220a00
diff --git a/arch/arm/boards/freescale-mx35-3ds/flash-header.imxcfg b/arch/arm/boards/freescale-mx35-3ds/flash-header.imxcfg
index 6eb8bc242c..ea1803b7de 100644
--- a/arch/arm/boards/freescale-mx35-3ds/flash-header.imxcfg
+++ b/arch/arm/boards/freescale-mx35-3ds/flash-header.imxcfg
@@ -1,6 +1,6 @@
 soc imx35
 loadaddr 0x80000000
-dcdofs 0x400
+ivtofs 0x400
 
 wm 32 0xb8002050 0x0000d843
 wm 32 0xb8002054 0x22252521
diff --git a/arch/arm/boards/freescale-mx51-babbage/flash-header-imx51-babbage.imxcfg b/arch/arm/boards/freescale-mx51-babbage/flash-header-imx51-babbage.imxcfg
index bac6816fee..b4e11fc227 100644
--- a/arch/arm/boards/freescale-mx51-babbage/flash-header-imx51-babbage.imxcfg
+++ b/arch/arm/boards/freescale-mx51-babbage/flash-header-imx51-babbage.imxcfg
@@ -1,6 +1,6 @@
 loadaddr 0x90000000
 soc imx51
-dcdofs 0x400
+ivtofs 0x400
 wm 32 0x73fa88a0 0x00000200
 wm 32 0x73fa850c 0x000020c5
 wm 32 0x73fa8510 0x000020c5
diff --git a/arch/arm/boards/freescale-mx53-qsb/flash-header-imx53-loco.imxcfg b/arch/arm/boards/freescale-mx53-qsb/flash-header-imx53-loco.imxcfg
index f43b484ee6..2025f5da08 100644
--- a/arch/arm/boards/freescale-mx53-qsb/flash-header-imx53-loco.imxcfg
+++ b/arch/arm/boards/freescale-mx53-qsb/flash-header-imx53-loco.imxcfg
@@ -1,6 +1,6 @@
 loadaddr 0x70000000
 soc imx53
-dcdofs 0x400
+ivtofs 0x400
 wm 32 0x53fa8554 0x00300000
 wm 32 0x53fa8558 0x00300040
 wm 32 0x53fa8560 0x00300000
diff --git a/arch/arm/boards/freescale-mx53-smd/flash-header.imxcfg b/arch/arm/boards/freescale-mx53-smd/flash-header.imxcfg
index 95bcd19805..fac4c29019 100644
--- a/arch/arm/boards/freescale-mx53-smd/flash-header.imxcfg
+++ b/arch/arm/boards/freescale-mx53-smd/flash-header.imxcfg
@@ -1,6 +1,6 @@
 loadaddr 0x70000000
 soc imx53
-dcdofs 0x400
+ivtofs 0x400
 wm 32 0x53fa8554 0x00300000
 wm 32 0x53fa8558 0x00300040
 wm 32 0x53fa8560 0x00300000
diff --git a/arch/arm/boards/freescale-mx53-vmx53/flash-header-imx53-vmx53.imxcfg b/arch/arm/boards/freescale-mx53-vmx53/flash-header-imx53-vmx53.imxcfg
index 3bf73b65aa..e6f73df30e 100644
--- a/arch/arm/boards/freescale-mx53-vmx53/flash-header-imx53-vmx53.imxcfg
+++ b/arch/arm/boards/freescale-mx53-vmx53/flash-header-imx53-vmx53.imxcfg
@@ -1,6 +1,6 @@
 loadaddr 0x70000000
 soc imx53
-dcdofs 0x400
+ivtofs 0x400
 wm 32 0x53fa8554 0x00300000
 wm 32 0x53fa8558 0x00300040
 wm 32 0x53fa8560 0x00300000
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/flash-header-mx6-sabrelite.imxcfg b/arch/arm/boards/freescale-mx6-sabrelite/flash-header-mx6-sabrelite.imxcfg
index 3ce8562f51..d635c8b948 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/flash-header-mx6-sabrelite.imxcfg
+++ b/arch/arm/boards/freescale-mx6-sabrelite/flash-header-mx6-sabrelite.imxcfg
@@ -1,6 +1,6 @@
 soc imx6
 loadaddr 0x20000000
-dcdofs 0x400
+ivtofs 0x400
 
 #include <mach/imx6-ddr-regs.h>
 #include <mach/imx6q-ddr-regs.h>
diff --git a/arch/arm/boards/freescale-mx6-sabresd/flash-header-mx6-sabresd.imxcfg b/arch/arm/boards/freescale-mx6-sabresd/flash-header-mx6-sabresd.imxcfg
index 21f217cdf3..133f499ab9 100644
--- a/arch/arm/boards/freescale-mx6-sabresd/flash-header-mx6-sabresd.imxcfg
+++ b/arch/arm/boards/freescale-mx6-sabresd/flash-header-mx6-sabresd.imxcfg
@@ -1,6 +1,6 @@
 loadaddr 0x10000000
 soc imx6
-dcdofs 0x400
+ivtofs 0x400
 wm 32 0x20e05a8 0x00000030
 wm 32 0x20e05b0 0x00000030
 wm 32 0x20e0524 0x00000030
diff --git a/arch/arm/boards/freescale-mx6sx-sabresdb/flash-header-mx6sx-sabresdb.imxcfg b/arch/arm/boards/freescale-mx6sx-sabresdb/flash-header-mx6sx-sabresdb.imxcfg
index a96b3e7154..5536f342b4 100644
--- a/arch/arm/boards/freescale-mx6sx-sabresdb/flash-header-mx6sx-sabresdb.imxcfg
+++ b/arch/arm/boards/freescale-mx6sx-sabresdb/flash-header-mx6sx-sabresdb.imxcfg
@@ -1,6 +1,6 @@
 loadaddr 0x80000000
 soc imx6
-dcdofs 0x400
+ivtofs 0x400
 
 wm 32 0x020c4068 0xffffffff
 wm 32 0x020c406c 0xffffffff
diff --git a/arch/arm/boards/freescale-mx7-sabresd/flash-header-mx7-sabresd.imxcfg b/arch/arm/boards/freescale-mx7-sabresd/flash-header-mx7-sabresd.imxcfg
index f4920bc133..41e0e9ca61 100644
--- a/arch/arm/boards/freescale-mx7-sabresd/flash-header-mx7-sabresd.imxcfg
+++ b/arch/arm/boards/freescale-mx7-sabresd/flash-header-mx7-sabresd.imxcfg
@@ -1,5 +1,5 @@
 soc imx7
 loadaddr 0x80000000
-dcdofs 0x400
+ivtofs 0x400
 
 #include <mach/flash-header/imx7d-ddr-sabresd.imxcfg>
\ No newline at end of file
diff --git a/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg b/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
index 71150802bf..bcef9921fa 100644
--- a/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
+++ b/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
@@ -1,6 +1,6 @@
 soc vf610
 loadaddr 0x80000000
-dcdofs 0x400
+ivtofs 0x400
 
 #include <mach/vf610-iomux-regs.h>
 #include <mach/vf610-ddrmc-regs.h>
diff --git a/arch/arm/boards/gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg b/arch/arm/boards/gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg
index b9a6fc12ff..98c7ae6095 100644
--- a/arch/arm/boards/gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg
+++ b/arch/arm/boards/gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg
@@ -1,6 +1,6 @@
 soc imx6
 loadaddr 0x20000000
-dcdofs 0x400
+ivtofs 0x400
 
 #include <mach/imx6-ddr-regs.h>
 #include <mach/imx6q-ddr-regs.h>
diff --git a/arch/arm/boards/gk802/flash-header.imxcfg b/arch/arm/boards/gk802/flash-header.imxcfg
index f26fe77b03..acc7a36785 100644
--- a/arch/arm/boards/gk802/flash-header.imxcfg
+++ b/arch/arm/boards/gk802/flash-header.imxcfg
@@ -1,6 +1,6 @@
 loadaddr 0x10000000
 soc imx6
-dcdofs 0x400
+ivtofs 0x400
 
 #include <mach/imx6-ddr-regs.h>
 #include <mach/imx6q-ddr-regs.h>
diff --git a/arch/arm/boards/grinn-liteboard/flash-header-liteboard.h b/arch/arm/boards/grinn-liteboard/flash-header-liteboard.h
index 60a39f524b..82f5c627a3 100644
--- a/arch/arm/boards/grinn-liteboard/flash-header-liteboard.h
+++ b/arch/arm/boards/grinn-liteboard/flash-header-liteboard.h
@@ -1,7 +1,7 @@
 
 loadaddr 0x80000000
 soc imx6
-dcdofs 0x400
+ivtofs 0x400
 
 wm 32 0x020c4068 0xffffffff
 wm 32 0x020c406c 0xffffffff
diff --git a/arch/arm/boards/guf-santaro/flash-header.imxcfg b/arch/arm/boards/guf-santaro/flash-header.imxcfg
index 2e85e13ba9..4505d81ea1 100644
--- a/arch/arm/boards/guf-santaro/flash-header.imxcfg
+++ b/arch/arm/boards/guf-santaro/flash-header.imxcfg
@@ -1,6 +1,6 @@
 loadaddr 0x10000000
 soc imx6
-dcdofs 0x400
+ivtofs 0x400
 
 #include <mach/imx6-ddr-regs.h>
 #include <mach/imx6q-ddr-regs.h>
diff --git a/arch/arm/boards/guf-vincell/flash-header.imxcfg b/arch/arm/boards/guf-vincell/flash-header.imxcfg
index 8bfb5d0508..c17dcbab6e 100644
--- a/arch/arm/boards/guf-vincell/flash-header.imxcfg
+++ b/arch/arm/boards/guf-vincell/flash-header.imxcfg
@@ -1,6 +1,6 @@
 loadaddr 0x71000000
 soc imx53
-dcdofs 0x400
+ivtofs 0x400
 
 //=============================================================================
 //init script for i.MX53 DDR3
diff --git a/arch/arm/boards/karo-tx25/flash-header-tx25.imxcfg b/arch/arm/boards/karo-tx25/flash-header-tx25.imxcfg
index 2345f18e93..6f8eaf0fc5 100644
--- a/arch/arm/boards/karo-tx25/flash-header-tx25.imxcfg
+++ b/arch/arm/boards/karo-tx25/flash-header-tx25.imxcfg
@@ -4,7 +4,7 @@
 #
 soc imx25
 loadaddr 0x80000000
-dcdofs 0x400
+ivtofs 0x400
 wm 32 0xb8001010 0x00000002
 wm 32 0xb8001004 0x00095728
 wm 32 0xb8001000 0x92116480
diff --git a/arch/arm/boards/karo-tx51/flash-header-karo-tx51.imxcfg b/arch/arm/boards/karo-tx51/flash-header-karo-tx51.imxcfg
index ebb7c4f396..4aaa75a0ea 100644
--- a/arch/arm/boards/karo-tx51/flash-header-karo-tx51.imxcfg
+++ b/arch/arm/boards/karo-tx51/flash-header-karo-tx51.imxcfg
@@ -1,6 +1,6 @@
 soc imx51
 loadaddr 0x90000000
-dcdofs 0x400
+ivtofs 0x400
 wm 32 0x83fd9000 0x80000000
 wm 32 0x83fd9014 0x04008008
 wm 32 0x83fd9014 0x00008010
diff --git a/arch/arm/boards/karo-tx53/flash-header-tx53-rev1011.imxcfg b/arch/arm/boards/karo-tx53/flash-header-tx53-rev1011.imxcfg
index d5e6454b88..4bcb3b8b5e 100644
--- a/arch/arm/boards/karo-tx53/flash-header-tx53-rev1011.imxcfg
+++ b/arch/arm/boards/karo-tx53/flash-header-tx53-rev1011.imxcfg
@@ -1,6 +1,6 @@
 loadaddr 0x71000000
 soc imx53
-dcdofs 0x400
+ivtofs 0x400
 
 wm 32 0x53fd406c 0xffffffff
 wm 32 0x53fd4070 0xffffffff
diff --git a/arch/arm/boards/karo-tx53/flash-header-tx53-revxx30-samsung.imxcfg b/arch/arm/boards/karo-tx53/flash-header-tx53-revxx30-samsung.imxcfg
index 6962abd5e6..a4e3fab9a3 100644
--- a/arch/arm/boards/karo-tx53/flash-header-tx53-revxx30-samsung.imxcfg
+++ b/arch/arm/boards/karo-tx53/flash-header-tx53-revxx30-samsung.imxcfg
@@ -1,6 +1,6 @@
 loadaddr 0x71000000
 soc imx53
-dcdofs 0x400
+ivtofs 0x400
 
 wm 32 0x53fa8004 0x00194005 /* set LDO to 1.3V */
 
diff --git a/arch/arm/boards/karo-tx53/flash-header-tx53-revxx30.imxcfg b/arch/arm/boards/karo-tx53/flash-header-tx53-revxx30.imxcfg
index 2b47d63bd4..5b6b79f705 100644
--- a/arch/arm/boards/karo-tx53/flash-header-tx53-revxx30.imxcfg
+++ b/arch/arm/boards/karo-tx53/flash-header-tx53-revxx30.imxcfg
@@ -1,6 +1,6 @@
 loadaddr 0x71000000
 soc imx53
-dcdofs 0x400
+ivtofs 0x400
 wm 32 0x53fd4068 0xffcc0fff
 wm 32 0x53fd406c 0x000fffc3
 wm 32 0x53fd4070 0x0f3c0000
diff --git a/arch/arm/boards/karo-tx6x/flash-header-tx6dl-1g.imxcfg b/arch/arm/boards/karo-tx6x/flash-header-tx6dl-1g.imxcfg
index b7a914fba5..7d77f54f00 100644
--- a/arch/arm/boards/karo-tx6x/flash-header-tx6dl-1g.imxcfg
+++ b/arch/arm/boards/karo-tx6x/flash-header-tx6dl-1g.imxcfg
@@ -1,6 +1,6 @@
 soc imx6
 loadaddr 0x20000000
-dcdofs 0x400
+ivtofs 0x400
 
 #include <mach/imx6-ddr-regs.h>
 #include <mach/imx6dl-ddr-regs.h>
diff --git a/arch/arm/boards/karo-tx6x/flash-header-tx6dl-512m.imxcfg b/arch/arm/boards/karo-tx6x/flash-header-tx6dl-512m.imxcfg
index 3f6578e19c..eb63fa34d3 100644
--- a/arch/arm/boards/karo-tx6x/flash-header-tx6dl-512m.imxcfg
+++ b/arch/arm/boards/karo-tx6x/flash-header-tx6dl-512m.imxcfg
@@ -1,6 +1,6 @@
 soc imx6
 loadaddr 0x20000000
-dcdofs 0x400
+ivtofs 0x400
 
 #include <mach/imx6-ddr-regs.h>
 #include <mach/imx6dl-ddr-regs.h>
diff --git a/arch/arm/boards/karo-tx6x/flash-header-tx6q-1g.imxcfg b/arch/arm/boards/karo-tx6x/flash-header-tx6q-1g.imxcfg
index 165b69fb19..e5a1ed2331 100644
--- a/arch/arm/boards/karo-tx6x/flash-header-tx6q-1g.imxcfg
+++ b/arch/arm/boards/karo-tx6x/flash-header-tx6q-1g.imxcfg
@@ -1,6 +1,6 @@
 soc imx6
 loadaddr 0x20000000
-dcdofs 0x400
+ivtofs 0x400
 
 #include <mach/imx6-ddr-regs.h>
 #include <mach/imx6q-ddr-regs.h>
diff --git a/arch/arm/boards/karo-tx6x/flash-header-tx6qp-2g.imxcfg b/arch/arm/boards/karo-tx6x/flash-header-tx6qp-2g.imxcfg
index fc00de957c..889416b849 100644
--- a/arch/arm/boards/karo-tx6x/flash-header-tx6qp-2g.imxcfg
+++ b/arch/arm/boards/karo-tx6x/flash-header-tx6qp-2g.imxcfg
@@ -1,6 +1,6 @@
 soc imx6
 loadaddr 0x20000000
-dcdofs 0x400
+ivtofs 0x400
 
 #include <mach/imx6-ddr-regs.h>
 #include <mach/imx6q-ddr-regs.h>
diff --git a/arch/arm/boards/kindle-mx50/flash-header-kindle-lpddr1.imxcfg b/arch/arm/boards/kindle-mx50/flash-header-kindle-lpddr1.imxcfg
index fae10423c5..b8a4e824ef 100644
--- a/arch/arm/boards/kindle-mx50/flash-header-kindle-lpddr1.imxcfg
+++ b/arch/arm/boards/kindle-mx50/flash-header-kindle-lpddr1.imxcfg
@@ -7,7 +7,7 @@
 
 soc imx50
 loadaddr 0x70020000
-dcdofs 0x400
+ivtofs 0x400
 
 # Switch pll1_sw_clk to step_clk
 wm 32 0x53fd400c 0x00000004
diff --git a/arch/arm/boards/kindle-mx50/flash-header-kindle-lpddr2.imxcfg b/arch/arm/boards/kindle-mx50/flash-header-kindle-lpddr2.imxcfg
index 94436a7b54..527d91dc78 100644
--- a/arch/arm/boards/kindle-mx50/flash-header-kindle-lpddr2.imxcfg
+++ b/arch/arm/boards/kindle-mx50/flash-header-kindle-lpddr2.imxcfg
@@ -8,7 +8,7 @@
 soc imx50
 loadaddr 0x70020000
 
-dcdofs 0x400
+ivtofs 0x400
 
 # Switch pll1_sw_clk to step_clk
 wm 32 0x53fd400c 0x00000004
diff --git a/arch/arm/boards/kindle3/flash-header.imxcfg b/arch/arm/boards/kindle3/flash-header.imxcfg
index cb56acf9cd..74b65d6a5c 100644
--- a/arch/arm/boards/kindle3/flash-header.imxcfg
+++ b/arch/arm/boards/kindle3/flash-header.imxcfg
@@ -1,6 +1,6 @@
 soc imx35
 loadaddr 0x87eff400
-dcdofs 0x400
+ivtofs 0x400
 
 wm 32 0x53f80004 0x00821000
 wm 32 0x53f80004 0x00821000
diff --git a/arch/arm/boards/kontron-samx6i/flash-header-samx6i-duallite.imxcfg b/arch/arm/boards/kontron-samx6i/flash-header-samx6i-duallite.imxcfg
index 9906617083..db1698d272 100644
--- a/arch/arm/boards/kontron-samx6i/flash-header-samx6i-duallite.imxcfg
+++ b/arch/arm/boards/kontron-samx6i/flash-header-samx6i-duallite.imxcfg
@@ -1,6 +1,6 @@
 soc imx6
 loadaddr 0x10000000
-dcdofs 0x400
+ivtofs 0x400
 
 wm 32 0x020e0774 0x000c0000
 wm 32 0x020e0754 0x00000000
diff --git a/arch/arm/boards/kontron-samx6i/flash-header-samx6i-quad.imxcfg b/arch/arm/boards/kontron-samx6i/flash-header-samx6i-quad.imxcfg
index 7e6ffd7983..99608d0fe8 100644
--- a/arch/arm/boards/kontron-samx6i/flash-header-samx6i-quad.imxcfg
+++ b/arch/arm/boards/kontron-samx6i/flash-header-samx6i-quad.imxcfg
@@ -1,6 +1,6 @@
 soc imx6
 loadaddr 0x10000000
-dcdofs 0x400
+ivtofs 0x400
 
 wm 32 0x020e05a8 0x00000030
 wm 32 0x020e05b0 0x00000030
diff --git a/arch/arm/boards/nxp-imx6ull-evk/flash-header-nxp-imx6ull-evk.imxcfg b/arch/arm/boards/nxp-imx6ull-evk/flash-header-nxp-imx6ull-evk.imxcfg
index a507ab3e24..2538caea8a 100644
--- a/arch/arm/boards/nxp-imx6ull-evk/flash-header-nxp-imx6ull-evk.imxcfg
+++ b/arch/arm/boards/nxp-imx6ull-evk/flash-header-nxp-imx6ull-evk.imxcfg
@@ -9,7 +9,7 @@
 
 loadaddr 0x80000000
 soc imx6
-dcdofs 0x400
+ivtofs 0x400
 
 /* Enable all clocks */
 wm 32 0x020c4068 0xffffffff
diff --git a/arch/arm/boards/nxp-imx8mm-evk/flash-header-imx8mm-evk.imxcfg b/arch/arm/boards/nxp-imx8mm-evk/flash-header-imx8mm-evk.imxcfg
index 727439db7c..b013173113 100644
--- a/arch/arm/boards/nxp-imx8mm-evk/flash-header-imx8mm-evk.imxcfg
+++ b/arch/arm/boards/nxp-imx8mm-evk/flash-header-imx8mm-evk.imxcfg
@@ -2,4 +2,4 @@ soc imx8mm
 
 loadaddr 0x007e1000
 max_load_size 0x3f000
-dcdofs 0x400
+ivtofs 0x400
diff --git a/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg b/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
index 11463fe850..80ce03e22c 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
+++ b/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
@@ -2,5 +2,5 @@ soc imx8mq
 
 loadaddr 0x007E1000
 max_load_size 0x3F000
-dcdofs 0x400
+ivtofs 0x400
 #include <mach/habv4-imx8-gencsf.h>
diff --git a/arch/arm/boards/phytec-phycore-imx35/flash-header.imxcfg b/arch/arm/boards/phytec-phycore-imx35/flash-header.imxcfg
index 36b68cd7ee..d3049369d9 100644
--- a/arch/arm/boards/phytec-phycore-imx35/flash-header.imxcfg
+++ b/arch/arm/boards/phytec-phycore-imx35/flash-header.imxcfg
@@ -1,5 +1,5 @@
 soc imx35
-dcdofs 0x400
+ivtofs 0x400
 loadaddr 0x80000000
 wm 32 0x53f80004 0x00821000
 wm 32 0x53f80004 0x00821000
diff --git a/arch/arm/boards/phytec-phycore-imx7/flash-header-phytec-phycore-imx7.imxcfg b/arch/arm/boards/phytec-phycore-imx7/flash-header-phytec-phycore-imx7.imxcfg
index 6e08b6c1b1..a18f3dbed1 100644
--- a/arch/arm/boards/phytec-phycore-imx7/flash-header-phytec-phycore-imx7.imxcfg
+++ b/arch/arm/boards/phytec-phycore-imx7/flash-header-phytec-phycore-imx7.imxcfg
@@ -11,7 +11,7 @@
 
 soc imx7
 loadaddr 0x80000000
-dcdofs 0x400
+ivtofs 0x400
 
 #include <mach/imx7-ddr-regs.h>
 
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3.h b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3.h
index 06ba308fb8..1876a5aa9d 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3.h
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3.h
@@ -1,6 +1,6 @@
 soc imx6
 loadaddr 0x10000000
-dcdofs 0x400
+ivtofs 0x400
 
 #include <mach/imx6-ddr-regs.h>
 #include <mach/imx6q-ddr-regs.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063.h b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063.h
index 5401e4243e..9a8f5f18e1 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063.h
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063.h
@@ -1,7 +1,7 @@
 
 loadaddr 0x80000000
 soc imx6
-dcdofs 0x400
+ivtofs 0x400
 
 wm 32 0x020c4068 0xffffffff
 wm 32 0x020c406c 0xffffffff
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058.h b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058.h
index 8b83aeae63..d32ee836a8 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058.h
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058.h
@@ -1,6 +1,6 @@
 soc imx6
 loadaddr 0x10000000
-dcdofs 0x400
+ivtofs 0x400
 
 #include <mach/imx6-ddr-regs.h>
 #include <mach/imx6q-ddr-regs.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl.h b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl.h
index da4708e4e3..e820cbf86b 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl.h
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl.h
@@ -1,6 +1,6 @@
 soc imx6
 loadaddr 0x10000000
-dcdofs 0x400
+ivtofs 0x400
 
 #include <mach/imx6-ddr-regs.h>
 #include <mach/imx6dl-ddr-regs.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058qp.h b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058qp.h
index 6e7b740a6f..f3174f9bb7 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058qp.h
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058qp.h
@@ -1,6 +1,6 @@
 soc imx6
 loadaddr 0x10000000
-dcdofs 0x400
+ivtofs 0x400
 
 /* NOC setup */
 wm 32 0x00bb0008 0x00000000
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02.h b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02.h
index c5ed9b759f..4a9b179f59 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02.h
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02.h
@@ -1,6 +1,6 @@
 soc imx6
 loadaddr 0x10000000
-dcdofs 0x400
+ivtofs 0x400
 
 #include <mach/imx6-ddr-regs.h>
 #include <mach/imx6q-ddr-regs.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl.h b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl.h
index b0f3faa0b7..be4084c161 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl.h
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl.h
@@ -1,6 +1,6 @@
 soc imx6
 loadaddr 0x10000000
-dcdofs 0x400
+ivtofs 0x400
 
 #include <mach/imx6-ddr-regs.h>
 #include <mach/imx6dl-ddr-regs.h>
diff --git a/arch/arm/boards/phytec-som-imx8mq/flash-header-phycore-imx8mq.imxcfg b/arch/arm/boards/phytec-som-imx8mq/flash-header-phycore-imx8mq.imxcfg
index aff8321b9a..8921f32110 100644
--- a/arch/arm/boards/phytec-som-imx8mq/flash-header-phycore-imx8mq.imxcfg
+++ b/arch/arm/boards/phytec-som-imx8mq/flash-header-phycore-imx8mq.imxcfg
@@ -2,4 +2,4 @@ soc imx8mq
 
 loadaddr 0x007E1000
 max_load_size 0x3F000
-dcdofs 0x400
+ivtofs 0x400
diff --git a/arch/arm/boards/solidrun-microsom/flash-header-microsom-i1.imxcfg b/arch/arm/boards/solidrun-microsom/flash-header-microsom-i1.imxcfg
index eb7bc8486d..2c6a32eed4 100644
--- a/arch/arm/boards/solidrun-microsom/flash-header-microsom-i1.imxcfg
+++ b/arch/arm/boards/solidrun-microsom/flash-header-microsom-i1.imxcfg
@@ -1,6 +1,6 @@
 loadaddr 0x10000000
 soc imx6
-dcdofs 0x400
+ivtofs 0x400
 
 #include <mach/imx6-ddr-regs.h>
 #include <mach/imx6dl-ddr-regs.h>
diff --git a/arch/arm/boards/solidrun-microsom/flash-header-microsom-i2.imxcfg b/arch/arm/boards/solidrun-microsom/flash-header-microsom-i2.imxcfg
index 8930012885..7f9b2a3988 100644
--- a/arch/arm/boards/solidrun-microsom/flash-header-microsom-i2.imxcfg
+++ b/arch/arm/boards/solidrun-microsom/flash-header-microsom-i2.imxcfg
@@ -1,6 +1,6 @@
 loadaddr 0x10000000
 soc imx6
-dcdofs 0x400
+ivtofs 0x400
 
 #include <mach/imx6-ddr-regs.h>
 #include <mach/imx6dl-ddr-regs.h>
diff --git a/arch/arm/boards/solidrun-microsom/flash-header-microsom-i2eX.imxcfg b/arch/arm/boards/solidrun-microsom/flash-header-microsom-i2eX.imxcfg
index 4eb937a717..7f75a17a35 100644
--- a/arch/arm/boards/solidrun-microsom/flash-header-microsom-i2eX.imxcfg
+++ b/arch/arm/boards/solidrun-microsom/flash-header-microsom-i2eX.imxcfg
@@ -1,6 +1,6 @@
 loadaddr 0x10000000
 soc imx6
-dcdofs 0x400
+ivtofs 0x400
 
 #include <mach/imx6-ddr-regs.h>
 #include <mach/imx6q-ddr-regs.h>
diff --git a/arch/arm/boards/solidrun-microsom/flash-header-microsom-i4.imxcfg b/arch/arm/boards/solidrun-microsom/flash-header-microsom-i4.imxcfg
index 438bd8ea4d..9d5bc03c96 100644
--- a/arch/arm/boards/solidrun-microsom/flash-header-microsom-i4.imxcfg
+++ b/arch/arm/boards/solidrun-microsom/flash-header-microsom-i4.imxcfg
@@ -1,6 +1,6 @@
 loadaddr 0x10000000
 soc imx6
-dcdofs 0x400
+ivtofs 0x400
 
 #include <mach/imx6-ddr-regs.h>
 #include <mach/imx6q-ddr-regs.h>
diff --git a/arch/arm/boards/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-256.imxcfg b/arch/arm/boards/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-256.imxcfg
index 12cda04e60..6d2d37de59 100644
--- a/arch/arm/boards/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-256.imxcfg
+++ b/arch/arm/boards/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-256.imxcfg
@@ -1,6 +1,6 @@
 loadaddr 0x80000000
 soc imx6
-dcdofs 0x400
+ivtofs 0x400
 
 wm 32 0x020c4068 0xffffffff
 wm 32 0x020c406c 0xffffffff
diff --git a/arch/arm/boards/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-512.imxcfg b/arch/arm/boards/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-512.imxcfg
index 0a1915b982..201493e6a3 100644
--- a/arch/arm/boards/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-512.imxcfg
+++ b/arch/arm/boards/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-512.imxcfg
@@ -1,6 +1,6 @@
 loadaddr 0x80000000
 soc imx6
-dcdofs 0x400
+ivtofs 0x400
 
 wm 32 0x020c4068 0xffffffff
 wm 32 0x020c406c 0xffffffff
diff --git a/arch/arm/boards/technexion-wandboard/flash-header-technexion-wandboard.imxcfg b/arch/arm/boards/technexion-wandboard/flash-header-technexion-wandboard.imxcfg
index 68cb08e200..5f91bed6f3 100644
--- a/arch/arm/boards/technexion-wandboard/flash-header-technexion-wandboard.imxcfg
+++ b/arch/arm/boards/technexion-wandboard/flash-header-technexion-wandboard.imxcfg
@@ -1,4 +1,4 @@
 loadaddr 0x00907000
 soc imx6
 max_load_size 0x11000
-dcdofs 0x400
+ivtofs 0x400
diff --git a/arch/arm/boards/tqma53/flash-header-tq-tqma53.h b/arch/arm/boards/tqma53/flash-header-tq-tqma53.h
index 4d16b0667a..b9492bbcb3 100644
--- a/arch/arm/boards/tqma53/flash-header-tq-tqma53.h
+++ b/arch/arm/boards/tqma53/flash-header-tq-tqma53.h
@@ -1,6 +1,6 @@
 soc imx53
 loadaddr 0x70000000
-dcdofs 0x400
+ivtofs 0x400
 
 /* IOMUX */
 wm 32 0x53fa8554 0x00300000
diff --git a/arch/arm/boards/tqma53/flash-header.imxcfg b/arch/arm/boards/tqma53/flash-header.imxcfg
index 3d52ff1dec..bbe2300ece 100644
--- a/arch/arm/boards/tqma53/flash-header.imxcfg
+++ b/arch/arm/boards/tqma53/flash-header.imxcfg
@@ -1,6 +1,6 @@
 soc imx53
 loadaddr 0x70000000
-dcdofs 0x400
+ivtofs 0x400
 
 /* IOMUX */
 wm 32 0x53fa8554 0x00300000
diff --git a/arch/arm/boards/tqma6x/flash-header-tqma6dl.imxcfg b/arch/arm/boards/tqma6x/flash-header-tqma6dl.imxcfg
index 192ebda743..4f557d5db5 100644
--- a/arch/arm/boards/tqma6x/flash-header-tqma6dl.imxcfg
+++ b/arch/arm/boards/tqma6x/flash-header-tqma6dl.imxcfg
@@ -1,6 +1,6 @@
 soc imx6
 loadaddr 0x20000000
-dcdofs 0x400
+ivtofs 0x400
 
 #include <mach/imx6-ddr-regs.h>
 #include <mach/imx6dl-ddr-regs.h>
diff --git a/arch/arm/boards/tqma6x/flash-header-tqma6q.imxcfg b/arch/arm/boards/tqma6x/flash-header-tqma6q.imxcfg
index 1fd75a24b2..deda53b464 100644
--- a/arch/arm/boards/tqma6x/flash-header-tqma6q.imxcfg
+++ b/arch/arm/boards/tqma6x/flash-header-tqma6q.imxcfg
@@ -1,6 +1,6 @@
 soc imx6
 loadaddr 0x20000000
-dcdofs 0x400
+ivtofs 0x400
 
 #include <mach/imx6-ddr-regs.h>
 #include <mach/imx6q-ddr-regs.h>
diff --git a/arch/arm/boards/udoo-neo/flash-header-mx6sx-udoo-neo_full.imxcfg b/arch/arm/boards/udoo-neo/flash-header-mx6sx-udoo-neo_full.imxcfg
index 39f2a8a221..a349b1022b 100644
--- a/arch/arm/boards/udoo-neo/flash-header-mx6sx-udoo-neo_full.imxcfg
+++ b/arch/arm/boards/udoo-neo/flash-header-mx6sx-udoo-neo_full.imxcfg
@@ -7,7 +7,7 @@
 
 loadaddr 0x80000000
 soc imx6
-dcdofs 0x400
+ivtofs 0x400
 
 /* Enable all clocks */
 wm 32 0x020c4068 0xffffffff
diff --git a/arch/arm/boards/udoo/flash-header-mx6-udoo.imxcfg b/arch/arm/boards/udoo/flash-header-mx6-udoo.imxcfg
index a0647a71a8..fc88a0b8b4 100644
--- a/arch/arm/boards/udoo/flash-header-mx6-udoo.imxcfg
+++ b/arch/arm/boards/udoo/flash-header-mx6-udoo.imxcfg
@@ -1,6 +1,6 @@
 soc imx6
 loadaddr 0x20000000
-dcdofs 0x400
+ivtofs 0x400
 
 #include <mach/imx6-ddr-regs.h>
 #include <mach/imx6q-ddr-regs.h>
diff --git a/arch/arm/boards/variscite-mx6/flash-header-variscite.imxcfg b/arch/arm/boards/variscite-mx6/flash-header-variscite.imxcfg
index 2c82f2316f..50968d7940 100644
--- a/arch/arm/boards/variscite-mx6/flash-header-variscite.imxcfg
+++ b/arch/arm/boards/variscite-mx6/flash-header-variscite.imxcfg
@@ -1,6 +1,6 @@
 loadaddr 0x10000000
 soc imx6
-dcdofs 0x400
+ivtofs 0x400
 
 #include <mach/imx6-ddr-regs.h>
 #include <mach/imx6q-ddr-regs.h>
diff --git a/arch/arm/boards/zii-imx51-rdu1/flash-header-imx51-zii-rdu1.imxcfg b/arch/arm/boards/zii-imx51-rdu1/flash-header-imx51-zii-rdu1.imxcfg
index 76f4c6b59b..5674e7a6e1 100644
--- a/arch/arm/boards/zii-imx51-rdu1/flash-header-imx51-zii-rdu1.imxcfg
+++ b/arch/arm/boards/zii-imx51-rdu1/flash-header-imx51-zii-rdu1.imxcfg
@@ -1,6 +1,6 @@
 soc imx51
 loadaddr 0x90000000
-dcdofs 0x400
+ivtofs 0x400
 
 wm 32 0x73fa88a0 0x00000200
 wm 32 0x73fa850c 0x000020c5
diff --git a/arch/arm/boards/zii-imx6q-rdu2/flash-header-rdu2.imxcfg b/arch/arm/boards/zii-imx6q-rdu2/flash-header-rdu2.imxcfg
index a4abe197e4..fcfef9c234 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/flash-header-rdu2.imxcfg
+++ b/arch/arm/boards/zii-imx6q-rdu2/flash-header-rdu2.imxcfg
@@ -1,4 +1,4 @@
 soc imx6
 loadaddr 0x00907000
 max_load_size 0x31000
-dcdofs 0x400
+ivtofs 0x400
diff --git a/arch/arm/boards/zii-imx7d-dev/flash-header-zii-imx7d-dev.imxcfg b/arch/arm/boards/zii-imx7d-dev/flash-header-zii-imx7d-dev.imxcfg
index 46f3d95048..022f9711b2 100644
--- a/arch/arm/boards/zii-imx7d-dev/flash-header-zii-imx7d-dev.imxcfg
+++ b/arch/arm/boards/zii-imx7d-dev/flash-header-zii-imx7d-dev.imxcfg
@@ -1,6 +1,6 @@
 soc imx7
 loadaddr 0x80000000
-dcdofs 0x400
+ivtofs 0x400
 
 #include <mach/flash-header/imx7d-ddr-sabresd.imxcfg>
 
diff --git a/arch/arm/boards/zii-imx8mq-dev/flash-header-zii-imx8mq-dev.imxcfg b/arch/arm/boards/zii-imx8mq-dev/flash-header-zii-imx8mq-dev.imxcfg
index aff8321b9a..8921f32110 100644
--- a/arch/arm/boards/zii-imx8mq-dev/flash-header-zii-imx8mq-dev.imxcfg
+++ b/arch/arm/boards/zii-imx8mq-dev/flash-header-zii-imx8mq-dev.imxcfg
@@ -2,4 +2,4 @@ soc imx8mq
 
 loadaddr 0x007E1000
 max_load_size 0x3F000
-dcdofs 0x400
+ivtofs 0x400
diff --git a/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg b/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
index 7076a6431f..4b73da4c19 100644
--- a/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
+++ b/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
@@ -1,6 +1,6 @@
 soc vf610
 loadaddr 0x80000000
-dcdofs 0x400
+ivtofs 0x400
 
 #include <mach/vf610-iomux-regs.h>
 #include <mach/vf610-ddrmc-regs.h>
diff --git a/scripts/imx/README b/scripts/imx/README
index d573d3a6be..99155af013 100644
--- a/scripts/imx/README
+++ b/scripts/imx/README
@@ -22,7 +22,7 @@ end up at 0x80001000 from where it is then executed.
 Example config file, suitable for an Eukra cpuimx35:
 
 soc imx35
-dcdofs 0x400
+ivtofs 0x400
 loadaddr 0x80000000
 wm 32 0x53F80004 0x00821000
 wm 32 0x53F80004 0x00821000
diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index f10c71e08a..5eacfdf76b 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -585,7 +585,7 @@ struct command cmds[] = {
 		.name = "loadaddr",
 		.parse = do_loadaddr,
 	}, {
-		.name = "dcdofs",
+		.name = "ivtofs",
 		.parse = do_ivt_offset,
 	}, {
 		.name = "soc",
diff --git a/scripts/regsubst.pl b/scripts/regsubst.pl
index 3b6b8aa2e9..026c4eed2f 100755
--- a/scripts/regsubst.pl
+++ b/scripts/regsubst.pl
@@ -45,7 +45,7 @@ First you have to add the right #include directives to your file:
  $ cat flash-header-myboard.imxcfg
  soc imx6
  loadaddr 0x20000000
- dcdofs 0x400
+ ivtofs 0x400
  
  #include <mach/imx6-ddr-regs.h>
  #include <mach/imx6dl-ddr-regs.h>
@@ -59,7 +59,7 @@ Then you can process the file with B<regsubst.pl>:
  $ scripts/regsubst.pl -I arch/arm/mach-imx/include flash-header-myboard.imxcfg
  soc imx6
  loadaddr 0x20000000
- dcdofs 0x400
+ ivtofs 0x400
  
  #include <mach/imx6-ddr-regs.h>
  #include <mach/imx6dl-ddr-regs.h>
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
