Delivery-date: Fri, 11 Jun 2021 10:04:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrc92-0001to-Bo
	for lore@lore.pengutronix.de; Fri, 11 Jun 2021 10:04:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrc91-0007Tc-26
	for lore@pengutronix.de; Fri, 11 Jun 2021 10:04:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NG2gIfxLND3c59YeeKIyHI4ypMu57vHano1qHvt3i9U=; b=Z5F7BviQKBbgih
	xqgOk9HC15LJipoavv/AtspBaGwB43rGzlpcnJv2SwzzBt8U6B2f7P/Z6RNp08L7MGF9bGcYp5XX7
	nFt4G4PqINAeCdby/zKAMRbAlylV3HcrANOu+Gtlne5p15osKOkHLotitpWqE5AZVvDbjANRKDM8g
	iEubJOxVJL6iFNKnxfk59aXeWemrxMJQGyjf2pvXMwbdsHwtnM3VeykPAdAczwQuKBGKGtNSKgTrB
	ejZ31p1iEQjYVGfXFWMvDJGQh2hLgRSjicGf0kx1dODmlDhHASh5p/LgftYaCJCj31+LHlZ1DOzGa
	36kenOboV79HJ3CzqOkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrc7s-004HQ1-Kg; Fri, 11 Jun 2021 08:02:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrc7n-004HOD-FT
 for barebox@lists.infradead.org; Fri, 11 Jun 2021 08:02:45 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1lrc7k-0007OH-Gh
 for barebox@lists.infradead.org; Fri, 11 Jun 2021 10:02:40 +0200
Received: from str by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1lrc7k-0001e6-7x
 for barebox@lists.infradead.org; Fri, 11 Jun 2021 10:02:40 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 11 Jun 2021 10:02:33 +0200
Message-Id: <20210611080233.15141-1-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210611_010243_552281_6147E1A0 
X-CRM114-Status: GOOD (  10.95  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] scripts: socfpga_import_preloader: make sdk optional
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The commit a9b2e6089d82686564220013f14e9f0ffcc725e2 allowed generating
everything needed in one step. This was however a bit too ambitious.
The script now requires that the Altera Embedded SDK is always
installed. There are situations where this is unwanted.

Beef up the code a little bit to allow having the SDK as an optional
argument and make the other input parameters location independent.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 Documentation/boards/socfpga.rst |  2 +-
 scripts/socfpga_import_preloader | 88 ++++++++++++++++++++++++++++----
 2 files changed, 78 insertions(+), 12 deletions(-)

diff --git a/Documentation/boards/socfpga.rst b/Documentation/boards/socfpga.rst
index 19d606030003..7e7f0619ea01 100644
--- a/Documentation/boards/socfpga.rst
+++ b/Documentation/boards/socfpga.rst
@@ -121,7 +121,7 @@ Now run the command:
 
 .. code-block:: sh
 
-  scripts/socfpga_import_preloader <EMBEDDED_SDK> <ISW_HANDOFF> <BOARD_DIRECTORY>
+  scripts/socfpga_import_preloader -e <EMBEDDED_SDK> -i <ISW_HANDOFF> -b <BOARD_DIRECTORY>
 
 where `<SPL_GENERATED_DIR>` is the directory where the bsp-editor generated the files,
 `<ISW_HANDOFF>` is the directory where Quartus generated the handoff files, and
diff --git a/scripts/socfpga_import_preloader b/scripts/socfpga_import_preloader
index 23e3c380db12..2bec9f2d2173 100755
--- a/scripts/socfpga_import_preloader
+++ b/scripts/socfpga_import_preloader
@@ -1,16 +1,70 @@
 #!/usr/bin/env bash
 
-if [ "$#" -lt "2" ]
-then
-	echo "USAGE: $0 <EMBEDDED_SDK> <ISW_HANDOFF> <BOARD_DIRECTORY>"
-	echo "EXAMPLE: $0 ~/altera-embedded-sdk/ ~/cv_soc_devkit_ghrd/hps_isw_handoff/soc_system_hps_0/ arch/arm/boards/altera-socdk"
+usage() {
+	echo "USAGE: $0
+	parameters:
+	  -s|--spl-dir <SPL_GENERATED_DIR>
+	  -i|--isw-handoff <ISW_HANDOFF>
+	  -b|--board <BOARD_DIRECTORY>
+	optional:
+	  -e|--embedded-sdk <ALTERA_EMBEDDED_SDK>"
+	echo "EXAMPLE: $0 -i ~/cv_soc_devkit_ghrd/hps_isw_handoff/soc_system_hps_0/ -b arch/arm/boards/altera-socdk -e ~/altera-embedded-sdk/" 
 	exit 1
-fi
+}
+
+die() {
+	printf '%s\n' "$1" >&2
+	exit 1
+}
+
+generate=
+splroot=
+embeddedsw=
+handoff=
+boardroot=
+
+while :; do
+	case $1 in
+	-e|--embedded-sdk)
+		if [ "$2" ]; then
+			generate=1
+			splroot="$(mktemp -d)"
+			embeddedsw=${2}
+			shift
+		else
+			die 'ERROR: "--embedded-sdk" requires a non-empty option argument.'
+		fi
+		;;
+	-s|--spl-dir)
+		if [ "$2" ]; then
+			splroot="$2"
+			shift
+		else
+			die 'ERROR: "--spl-dir" requires a non-empty option argument.'
+		fi
+		;;
+	-i|--isw-handoff)
+		if [ "$2" ]; then
+			handoff="$2"
+			shift
+		else
+			die 'ERROR: "--isw-handoff" requires a non-empty option argument.'
+		fi
+		;;
+	-b|--board)
+		if [ "$2" ]; then
+			boardroot="$2"
+			shift
+		else
+			die 'ERROR: "--board" requires a non-empty option argument.'
+		fi
+		;;
+	*)
+		break
+	esac
+	shift
+done
 
-splroot="$(mktemp -d)"
-embeddedsw=$1
-handoff=$2
-boardroot=$3
 bareboxsrc=.
 
 cd ${bareboxsrc}
@@ -57,7 +111,17 @@ copy_source() {
 	sed -i 's/ $//g' $tgt
 }
 
-python2.7 ${embeddedsw}/embedded/ip/altera/preloader/scripts/iswgen.py -i ${handoff} -o ${splroot}/
+generate_spl() {
+	python2.7 ${embeddedsw}/embedded/ip/altera/preloader/scripts/iswgen.py -i ${handoff} -o ${splroot}/
+}
+
+if [ -z $splroot ] || [ -z $boardroot ] || [ -z $handoff ]; then
+	usage
+fi
+
+if [ $generate ]; then
+	generate_spl
+fi
 
 copy_source ${splroot}/iocsr_config_cyclone5.c ${boardroot}/iocsr_config_cyclone5.c
 copy_source ${splroot}/pinmux_config_cyclone5.c ${boardroot}/pinmux_config.c
@@ -69,6 +133,8 @@ copy_source ${handoff}/sequencer_auto_ac_init.c ${boardroot}/sequencer_auto_ac_i
 copy_source ${handoff}/sequencer_auto_inst_init.c ${boardroot}/sequencer_auto_inst_init.c
 copy_source ${handoff}/sequencer_defines.h ${boardroot}/sequencer_defines.h
 
-rm -r ${splroot}
+if [ $generate ]; then
+	rm -r ${splroot}
+fi
 
 echo "DONE"
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

