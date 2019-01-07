Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ggQ61-0004D1-5P
 for barebox@lists.infradead.org; Mon, 07 Jan 2019 08:17:20 +0000
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 7 Jan 2019 09:17:09 +0100
Message-Id: <1546849029-47070-5-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1546849029-47070-1-git-send-email-t.remmet@phytec.de>
References: <1546849029-47070-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 4/4] arm: boards: phytec-som-am335x: Add bootchooser to
 bootsource
To: barebox@lists.infradead.org

From: Daniel Schultz <d.schultz@phytec.de>

Add bootchooser as primary boot source for NAND and eMMC.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 .../phytec-som-am335x/defaultenv-physom-am335x/init/bootsource    | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/init/bootsource b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/init/bootsource
index 61a0879bfb7f..75b5619218c5 100644
--- a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/init/bootsource
+++ b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/init/bootsource
@@ -11,13 +11,13 @@ else
 fi
 
 if [ $bootsource = mmc -a $bootsource_instance = 1 ]; then
-	global.boot.default="emmc mmc spi net"
+	global.boot.default="bootchooser emmc mmc spi net"
 elif [ $bootsource = mmc -a $bootsource_instance = 0 ]; then
 	global.boot.default="mmc $nvmem spi net"
 elif [ $bootsource = nand ]; then
-	global.boot.default="nand spi mmc net"
+	global.boot.default="bootchooser nand spi mmc net"
 elif [ $bootsource = spi ]; then
-	global.boot.default="spi $nvmem mmc net"
+	global.boot.default="spi bootchooser $nvmem mmc net"
 elif [ $bootsource = net ]; then
-	global.boot.default="net $nvmem spi mmc"
+	global.boot.default="net bootchooser $nvmem spi mmc"
 fi
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
