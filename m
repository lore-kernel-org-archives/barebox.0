Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiYw7-00068u-DA
 for barebox@lists.infradead.org; Wed, 03 Jul 2019 06:40:13 +0000
Received: from unicorn.hi.pengutronix.de
 ([2001:67c:670:100:a61f:72ff:fe69:16d] helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1hiYw2-0004Hp-Fp
 for barebox@lists.infradead.org; Wed, 03 Jul 2019 08:40:06 +0200
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1hiYw2-0006J9-5C
 for barebox@lists.infradead.org; Wed, 03 Jul 2019 08:40:06 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed,  3 Jul 2019 08:40:04 +0200
Message-Id: <20190703064004.24169-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH] scripts: socfgpa_import_preloader: simplify procedure
To: Barebox List <barebox@lists.infradead.org>

Instead of jumping through hoops using the bsp-editor gui, just use the
underlying python script for importing.
---
 Documentation/boards/socfpga.rst |  9 +--------
 scripts/socfpga_import_preloader | 11 ++++++++---
 2 files changed, 9 insertions(+), 11 deletions(-)

diff --git a/Documentation/boards/socfpga.rst b/Documentation/boards/socfpga.rst
index d73237491d77..19d606030003 100644
--- a/Documentation/boards/socfpga.rst
+++ b/Documentation/boards/socfpga.rst
@@ -116,19 +116,12 @@ To update the handoff files, the following procedure is necessary:
 
 1. Regenerate the project with Qsys
 2. Load up your project in Quartus II and assemble the design
-3. Go to the SoCEDS installation and run
-   ``./embedded_command_shell.sh``
-4. Now run ``bsp-editor``
-5. Create a new BSP
-6. Select the directory `hps_isw_handoff/soc_system_hps_0` under the
-   preloader settings directory
-7. Click ``Ok`` than ``Generate``
 
 Now run the command:
 
 .. code-block:: sh
 
-  scripts/socfpga_import_preloader <SPL_GENERATED_DIR> <ISW_HANDOFF> <BOARD_DIRECTORY>
+  scripts/socfpga_import_preloader <EMBEDDED_SDK> <ISW_HANDOFF> <BOARD_DIRECTORY>
 
 where `<SPL_GENERATED_DIR>` is the directory where the bsp-editor generated the files,
 `<ISW_HANDOFF>` is the directory where Quartus generated the handoff files, and
diff --git a/scripts/socfpga_import_preloader b/scripts/socfpga_import_preloader
index 63ff30ec2a21..6c748fadb814 100755
--- a/scripts/socfpga_import_preloader
+++ b/scripts/socfpga_import_preloader
@@ -2,12 +2,13 @@
 
 if [ "$#" -lt "2" ]
 then
-	echo "USAGE: $0 <SPL_GENERATED_DIR> <ISW_HANDOFF> <BOARD_DIRECTORY>"
-	echo "EXAMPLE: $0 ~/cv_soc_devkit_ghrd/software/spl_bsp/generated ~/cv_soc_devkit_ghrd/hps_isw_handoff/soc_system_hps_0/ arch/arm/boards/altera-socdk"
+	echo "USAGE: $0 <EMBEDDED_SDK> <ISW_HANDOFF> <BOARD_DIRECTORY>"
+	echo "EXAMPLE: $0 ~/altera-embedded-sdk/ ~/cv_soc_devkit_ghrd/hps_isw_handoff/soc_system_hps_0/ arch/arm/boards/altera-socdk"
 	exit 1
 fi
 
-splroot=$1
+splroot="$(mktemp -d)"
+embeddedsw=$1
 handoff=$2
 boardroot=$3
 bareboxsrc=.
@@ -56,6 +57,8 @@ copy_source() {
 	sed -i 's/ $//g' $tgt
 }
 
+python2.7 ${embeddedsw}/embedded/ip/altera/preloader/scripts/iswgen.py -i ${handoff} -o ${splroot}/
+
 copy_source ${splroot}/iocsr_config_cyclone5.c ${boardroot}/iocsr_config_cyclone5.c
 copy_source ${splroot}/pinmux_config_cyclone5.c ${boardroot}/pinmux_config.c
 copy_source ${splroot}/pll_config.h ${boardroot}/pll_config.h
@@ -66,4 +69,6 @@ copy_source ${handoff}/sequencer_auto_ac_init.c ${boardroot}/sequencer_auto_ac_i
 copy_source ${handoff}/sequencer_auto_inst_init.c ${boardroot}/sequencer_auto_inst_init.c
 copy_source ${handoff}/sequencer_defines.h ${boardroot}/sequencer_defines.h
 
+rm -r ${splroot}
+
 echo "DONE"
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
