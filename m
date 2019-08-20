Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-co1nam03on0601.outbound.protection.outlook.com
 ([2a01:111:f400:fe48::601]
 helo=NAM03-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0CRg-0000ma-MZ
 for barebox@lists.infradead.org; Tue, 20 Aug 2019 22:17:42 +0000
From: Cory Tusar <Cory.Tusar@zii.aero>
Date: Tue, 20 Aug 2019 22:17:36 +0000
Message-ID: <20190820221638.19492-1-cory.tusar@zii.aero>
Content-Language: en-US
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
Subject: [PATCH] Documentation: zii-vf610-dev: Fix 'halt' in openocd
 configuration script
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Cc: Chris Healy <Chris.Healy@zii.aero>

When attempting to use the existing configuration file to bootstrap
an SCU4 AIB board, openocd would consistently fail on the 'halt' command
with a "Target not examined yet" error.  Dumping target information
showed that vf610.cpu1 was the active target, rather that vf610.cpu0.

Adding a command prior to the halt to explicitly set the target core
resulted in proper operation.

Tested with openocd-0.10.0+dev-00924-g16496488 on a Zodiac SCU4 AIB.

Signed-off-by: Cory Tusar <cory.tusar@zii.aero>
---
 Documentation/boards/imx/zii-vf610-dev/openocd.cfg | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/boards/imx/zii-vf610-dev/openocd.cfg b/Documentation/boards/imx/zii-vf610-dev/openocd.cfg
index 222f48711..5127c7623 100644
--- a/Documentation/boards/imx/zii-vf610-dev/openocd.cfg
+++ b/Documentation/boards/imx/zii-vf610-dev/openocd.cfg
@@ -258,6 +258,7 @@ proc safe_reset {} {
 proc start_barebox { } {
 	set VF610_DDR_BASE_ADDR 0x80000000
 	echo "Bootstrap: Loading Barebox"
+	targets vf610.cpu0
 	halt
 	load_image images/barebox-zii-vf610-dev.img $VF610_DDR_BASE_ADDR bin
 	arm core_state arm
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
