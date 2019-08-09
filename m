Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw452-0001U5-LM
 for barebox@lists.infradead.org; Fri, 09 Aug 2019 12:33:13 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  9 Aug 2019 14:33:09 +0200
Message-Id: <20190809123309.6977-1-a.fatoum@pengutronix.de>
In-Reply-To: <20190809122943.2185-2-a.fatoum@pengutronix.de>
References: <20190809122943.2185-2-a.fatoum@pengutronix.de>
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
Subject: [PATCH] fixup! Documentation: add imx6ull-evk boot mode documentation
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

To be pedantic, the RAM/Flash is on the compute module not the base
board. Correct this..
---
 Documentation/boards/imx/nxp-imx6ull-evk.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/boards/imx/nxp-imx6ull-evk.rst b/Documentation/boards/imx/nxp-imx6ull-evk.rst
index 04d35ba73f6d..702f55dff825 100644
--- a/Documentation/boards/imx/nxp-imx6ull-evk.rst
+++ b/Documentation/boards/imx/nxp-imx6ull-evk.rst
@@ -1,7 +1,7 @@
 NXP i.MX6ULL EVK Evaluation Board
 =================================
 
-Board comes with:
+Compute module comes with:
 
 * 512MiB of DDR3L SDRAM
 * 256 MB Quad SPI Flash
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
