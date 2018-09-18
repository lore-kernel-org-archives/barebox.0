Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g2OPB-0002BZ-N4
 for barebox@lists.infradead.org; Tue, 18 Sep 2018 22:23:39 +0000
Received: by mail-pf1-x443.google.com with SMTP id h69-v6so1682492pfd.4
 for <barebox@lists.infradead.org>; Tue, 18 Sep 2018 15:23:37 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 18 Sep 2018 15:23:01 -0700
Message-Id: <20180918222305.6834-8-andrew.smirnov@gmail.com>
In-Reply-To: <20180918222305.6834-1-andrew.smirnov@gmail.com>
References: <20180918222305.6834-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 07/11] dts: VFxxx: Add aliases for ESDHC controllers
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add aliases for ESDHC controllers in order to make their naming across
Vybrid and i.MX.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-vf610-dev/board.c |  5 +++--
 arch/arm/dts/vf610-twr.dts            |  1 +
 arch/arm/dts/vf610-zii-dev.dtsi       |  1 +
 arch/arm/dts/vf610.dtsi               | 12 ++++++++++++
 4 files changed, 17 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/dts/vf610.dtsi

diff --git a/arch/arm/boards/zii-vf610-dev/board.c b/arch/arm/boards/zii-vf610-dev/board.c
index 91c653804..42b5c59df 100644
--- a/arch/arm/boards/zii-vf610-dev/board.c
+++ b/arch/arm/boards/zii-vf610-dev/board.c
@@ -174,8 +174,9 @@ static int zii_vf610_spu3_register_bbu(void)
 	if (!of_machine_is_compatible("zii,vf610spu3-a"))
 		return 0;
 
-	ret = vf610_bbu_internal_mmc_register_handler("eMMC", "/dev/disk0",
-						      BBU_HANDLER_FLAG_DEFAULT);
+	ret = vf610_bbu_internal_mmcboot_register_handler("eMMC",
+					      "/dev/mmc0",
+					      BBU_HANDLER_FLAG_DEFAULT);
 	if (ret) {
 		pr_err("Failed to register eMMC BBU handler\n");
 		return ret;
diff --git a/arch/arm/dts/vf610-twr.dts b/arch/arm/dts/vf610-twr.dts
index 2456ade5f..ac2774979 100644
--- a/arch/arm/dts/vf610-twr.dts
+++ b/arch/arm/dts/vf610-twr.dts
@@ -8,6 +8,7 @@
  */
 
 #include <arm/vf610-twr.dts>
+#include "vf610.dtsi"
 #include "vf610-ddrmc.dtsi"
 
 &usbdev0 {
diff --git a/arch/arm/dts/vf610-zii-dev.dtsi b/arch/arm/dts/vf610-zii-dev.dtsi
index dc16280bc..b6db26202 100644
--- a/arch/arm/dts/vf610-zii-dev.dtsi
+++ b/arch/arm/dts/vf610-zii-dev.dtsi
@@ -42,6 +42,7 @@ n *     copy, modify, merge, publish, distribute, sublicense, and/or
  *     OTHER DEALINGS IN THE SOFTWARE.
 */
 
+#include "vf610.dtsi"
 #include "vf610-ddrmc.dtsi"
 
 / {
diff --git a/arch/arm/dts/vf610.dtsi b/arch/arm/dts/vf610.dtsi
new file mode 100644
index 000000000..3060031b8
--- /dev/null
+++ b/arch/arm/dts/vf610.dtsi
@@ -0,0 +1,12 @@
+/*
+ * Two aliases missing in upstream DT needed to make VFxxx's SD/MMC
+ * device naming scheme consistent with the rest of i.MX (which the
+ * following aliases from upstream.
+ */
+
+/ {
+	aliases {
+		mmc0 = &esdhc0;
+		mmc1 = &esdhc1;
+	};
+};	
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
