Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw41k-0007kU-66
 for barebox@lists.infradead.org; Fri, 09 Aug 2019 12:29:50 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  9 Aug 2019 14:29:43 +0200
Message-Id: <20190809122943.2185-2-a.fatoum@pengutronix.de>
In-Reply-To: <20190809122943.2185-1-a.fatoum@pengutronix.de>
References: <20190809122943.2185-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/2] Documentation: add imx6ull-evk boot mode documentation
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The compute module on the 6ULL-EVK has two DIP switches for choosing the
boot mode. Instead of looking them up in the vendor documentation[1] each
time, document them here.

[1]: https://media.digikey.com/pdf/Data%20Sheets/Freescale%20Semi/i.MX_6UL_EVK_QSG.pdf

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/imx/nxp-imx6ull-evk.rst | 62 ++++++++++++++++++++
 1 file changed, 62 insertions(+)
 create mode 100644 Documentation/boards/imx/nxp-imx6ull-evk.rst

diff --git a/Documentation/boards/imx/nxp-imx6ull-evk.rst b/Documentation/boards/imx/nxp-imx6ull-evk.rst
new file mode 100644
index 000000000000..04d35ba73f6d
--- /dev/null
+++ b/Documentation/boards/imx/nxp-imx6ull-evk.rst
@@ -0,0 +1,62 @@
+NXP i.MX6ULL EVK Evaluation Board
+=================================
+
+Board comes with:
+
+* 512MiB of DDR3L SDRAM
+* 256 MB Quad SPI Flash
+
+
+Boot Configuration
+==================
+
+The NXP i.MX6ULL EVK Evaluation Board has two switches responsible for
+configuring bootsource/boot mode:
+
+ * SW602 for selecting appropriate BOOT_MODE
+ * SW601 for selecting appropriate boot medium
+
+In order to select internal boot set SW602 as follows::
+
+  +-----+
+  |     |
+  | O | | <--- on = high level
+  | | | |
+  | | O | <--- off = low level
+  |     |
+  | 1 2 |
+  +-----+
+
+Bootsource is the QSPI::
+
+  +---------+
+  |         |
+  | | | | | |
+  | | | | | |  <---- QSPI
+  | O O O O |
+  |         |
+  | 1 2 3 4 |
+  +---------+
+
+Bootsource is the MicroSD::
+
+  +---------+
+  |         |
+  | | | O | |
+  | | | | | |  <---- MicroSD
+  | O O | O |
+  |         |
+  | 1 2 3 4 |
+  +---------+
+
+
+Serial boot SW602 setting needed for ``imx-usb-loader`` is as follows::
+
+  +-----+
+  |     |
+  | | O | <--- on = high level
+  | | | |
+  | O | | <--- off = low level
+  |     |
+  | 1 2 |
+  +-----+
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
