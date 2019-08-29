Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-by2nam03on0619.outbound.protection.outlook.com
 ([2a01:111:f400:fe4a::619]
 helo=NAM03-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3PoV-0004DL-4C
 for barebox@lists.infradead.org; Thu, 29 Aug 2019 19:10:32 +0000
From: Cory Tusar <Cory.Tusar@zii.aero>
Date: Thu, 29 Aug 2019 19:10:25 +0000
Message-ID: <20190829191007.13644-1-cory.tusar@zii.aero>
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
Subject: [PATCH] Documentation: zii-imx7d-dev: Fix errors with openocd
 configuration script
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Chris Healy <Chris.Healy@zii.aero>

When attempting to use the existing configuration file to bootstrap an
RMU2 board, openocd would consistently fail in the 'safe_reset' function
with a number of errors.

Disabling the internal reset handling (similar to what's done on the
i.MX7 Sabre boards) allowed barebox to download and run successfully.

Tested with openocd-0.10.0+dev-00924-g16496488 on a Zodiac RMU2.

Signed-off-by: Cory Tusar <cory.tusar@zii.aero>
Tested-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 Documentation/boards/imx/zii-imx7d-dev/openocd.cfg | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/boards/imx/zii-imx7d-dev/openocd.cfg b/Documentation/boards/imx/zii-imx7d-dev/openocd.cfg
index f971c3fb2..6056b8957 100644
--- a/Documentation/boards/imx/zii-imx7d-dev/openocd.cfg
+++ b/Documentation/boards/imx/zii-imx7d-dev/openocd.cfg
@@ -138,6 +138,12 @@ proc start_barebox { } {
 	resume $MX7_DDR_BASE_ADDR
 }
 
+# disable internal reset-assert handling to
+# allow reset-init to work
+$_TARGETNAME.0 configure -event reset-assert ""
+$_TARGETNAME.1 configure -event reset-assert ""
+$_TARGETNAME_2 configure -event reset-assert ""
+
 # hook the init function into the reset-init event
 ${_TARGETNAME}.0 configure -event reset-init { board_init }
 
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
