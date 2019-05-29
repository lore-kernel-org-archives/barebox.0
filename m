Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVySE-0000Tj-IR
 for barebox@lists.infradead.org; Wed, 29 May 2019 13:17:20 +0000
From: Roland Hieber <rhi@pengutronix.de>
Date: Wed, 29 May 2019 15:16:55 +0200
Message-Id: <20190529131656.21323-1-rhi@pengutronix.de>
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
Subject: [PATCH 1/3] fixup! Documentation: Add zii-vf610-dev board
 documentation
To: Barebox Mailing List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Roland Hieber <rhi@pengutronix.de>

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
Hi Sascha, Andrey,

Yay, documentation patches \o/

Here are three small fixups:
- Improve some typos and missing articles.
- Break long shell lines for better readability.
- Don't use <variable> syntax for placeholders in shell command lines,
  which could be misinterpreted as shell redirection operators.
---
 .../boards/imx/zii-vf610-dev/readme.rst         | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/Documentation/boards/imx/zii-vf610-dev/readme.rst b/Documentation/boards/imx/zii-vf610-dev/readme.rst
index 9418a3a278f0..08ae0e0e6760 100644
--- a/Documentation/boards/imx/zii-vf610-dev/readme.rst
+++ b/Documentation/boards/imx/zii-vf610-dev/readme.rst
@@ -23,11 +23,12 @@ follows:
   cd barebox
   Documentation/boards/imx/zii-vf610-dev/bootstrap.sh
 
-custom OpenOCD binary and options can be specified as follows:
+A custom OpenOCD binary and options can be specified as follows:
 
 .. code-block:: sh
 
-  OPENOCD="../openocd/src/openocd -s ../openocd/tcl " Documentation/boards/imx/zii-vf610-dev/bootstrap.sh
+  OPENOCD="../openocd/src/openocd -s ../openocd/tcl " \
+    Documentation/boards/imx/zii-vf610-dev/bootstrap.sh
 
 Writing Barebox to NVM
 ----------------------
@@ -37,14 +38,14 @@ come with eMMC. To permanently write Barebox to it do:
 
 .. code-block:: sh
 
-  barebox_update -t eMMC -y <barebox.img>
+  barebox_update -t eMMC -y barebox.img
 
-This should also automaticaly configure your board to boot that
-image. Note that original ZII stack's bootloader in eMMC should be
-left intact. Barebox is configured to be programmed to one of MMC boot
-partitions, whereas original bootloader is located in user partition.
+This should also automatically configure your board to boot that
+image. Note that the original ZII stack's bootloader in eMMC should be
+left intact. Barebox is configured to be programmed to one of the MMC boot
+partitions, whereas the original bootloader is located in user partition.
 
-To restore the board to booting using original bootloader do:
+To restore the board to booting using the original bootloader do:
 
 .. code-block:: sh
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
