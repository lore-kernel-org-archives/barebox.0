Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVySG-0000Tk-1N
 for barebox@lists.infradead.org; Wed, 29 May 2019 13:17:21 +0000
From: Roland Hieber <rhi@pengutronix.de>
Date: Wed, 29 May 2019 15:16:56 +0200
Message-Id: <20190529131656.21323-2-rhi@pengutronix.de>
In-Reply-To: <20190528054513.21313-1-andrew.smirnov@gmail.com>
References: <20190528054513.21313-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/3] fixup! Documentation: Add zii-imx7d-rpu2 board
 documentation
To: Barebox Mailing List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Roland Hieber <rhi@pengutronix.de>

Signed-off-by: Roland Hieber <rhi@pengutronix.de>

---
 .../boards/imx/zii-imx7d-rpu2/readme.rst        | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/Documentation/boards/imx/zii-imx7d-rpu2/readme.rst b/Documentation/boards/imx/zii-imx7d-rpu2/readme.rst
index 08d30c592d43..dd984ac17635 100644
--- a/Documentation/boards/imx/zii-imx7d-rpu2/readme.rst
+++ b/Documentation/boards/imx/zii-imx7d-rpu2/readme.rst
@@ -23,24 +23,25 @@ follows:
   cd barebox
   Documentation/boards/imx/zii-imx7d-rpu2/bootstrap.sh
 
-custom OpenOCD binary and options can be specified as follows:
+A custom OpenOCD binary and options can be specified as follows:
 
 .. code-block:: sh
 
-  OPENOCD="../openocd/src/openocd -s ../openocd/tcl " Documentation/boards/imx/zii-imx7d-rpu2/bootstrap.sh
+  OPENOCD="../openocd/src/openocd -s ../openocd/tcl " \
+    Documentation/boards/imx/zii-imx7d-rpu2/bootstrap.sh
 
 
 Disabling DSA in Embedeed Switch
 --------------------------------
 
-Booting Linux kernel that device ships with will re-configure on-board
-switch into DSA mode, which woudl make Ethernet connection unusable in
-Barebox. To undo that and re-configure switch into dumb/pass-through
-mode do the following:
+Booting the Linux kernel that the device ships with will re-configure the on-board
+switch into DSA mode, which would make the Ethernet connection unusable in
+Barebox. To undo that and re-configure the switch into dumb/pass-through
+mode, do the following:
 
 .. code-block:: sh
 
   memset -b -d /dev/switch-eeprom 0x00 0xff 4
 
-Once that doen, power cycling the device should force the switch to
-re-read EEPROM and reconfigure itself.
+Once that is done, power cycling the device should force the switch to
+re-read the EEPROM and reconfigure itself.
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
