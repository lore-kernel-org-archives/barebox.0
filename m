Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic9Ak-0000IT-1C
 for barebox@lists.infradead.org; Tue, 03 Dec 2019 14:29:03 +0000
From: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Tue, 3 Dec 2019 15:28:59 +0100
Message-Id: <1575383339-231689-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: [PATCH] ARM: boards: phytec-som-imx6: Replace spi by spi-nor in
 bootsource script
To: barebox@lists.infradead.org

Commit 7802c6f891b7 ("ARM: i.MX6: boot: Return BOOTSOURCE_SPI_NOR, not
BOOTSOURCE_SPI") changed the returned boot source for SPI NOR on i.MX 6
from SPI to SPI_NOR. This needs to be accounted for in the bootsource
scripts.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 .../phytec-som-imx6/defaultenv-physom-imx6-phycore/init/bootsource      | 2 +-
 arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/init/bootsource  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-phycore/init/bootsource b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-phycore/init/bootsource
index 515613b04161..fa5f7f26c5a7 100644
--- a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-phycore/init/bootsource
+++ b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-phycore/init/bootsource
@@ -12,7 +12,7 @@ if [ $bootsource = mmc ]; then
 	fi
 elif [ $bootsource = nand ]; then
 	global.boot.default="nand spi emmc mmc net"
-elif [ $bootsource = spi ]; then
+elif [ $bootsource = spi-nor ]; then
 	global.boot.default="spi nand emmc mmc net"
 elif [ $bootsource = net ]; then
 	global.boot.default="net nand spi emmc mmc"
diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/init/bootsource b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/init/bootsource
index 3f2ff4bcc836..9c9f0ec3810f 100644
--- a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/init/bootsource
+++ b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/init/bootsource
@@ -8,7 +8,7 @@ if [ $bootsource = mmc ]; then
 	global.boot.default="mmc nand spi net"
 elif [ $bootsource = nand ]; then
 	global.boot.default="nand spi mmc net"
-elif [ $bootsource = spi ]; then
+elif [ $bootsource = spi-nor ]; then
 	global.boot.default="spi nand mmc net"
 elif [ $bootsource = net ]; then
 	global.boot.default="net nand spi mmc"
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
