Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSp4y-0002OI-6U
 for barebox@lists.infradead.org; Thu, 07 Nov 2019 21:12:36 +0000
Received: from astat.fritz.box (a89-183-53-44.net-htp.de [89.183.53.44])
 by lynxeye.de (Postfix) with ESMTPA id C1EAFE74269
 for <barebox@lists.infradead.org>; Thu,  7 Nov 2019 22:11:26 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu,  7 Nov 2019 22:11:12 +0100
Message-Id: <20191107211119.68064-12-dev@lynxeye.de>
In-Reply-To: <20191107211119.68064-1-dev@lynxeye.de>
References: <20191107211119.68064-1-dev@lynxeye.de>
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
Subject: [PATCH 11/18] ARM: zynq: fixup SLCR ranges
To: barebox@lists.infradead.org

Linux uses some kind of MFD scheme for the devices in the SLCR register
range, which involves adding the parent register base address to the
register offset of the child devices, as described in DT. This needs
non-standard code in each of those child device drivers.

Instead of replicating this weird driver code, fix up the SLCR parent
device DT ranges to do the translation.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/zynq-7000.dtsi | 4 ++++
 arch/arm/dts/zynq-zed.dts   | 1 +
 2 files changed, 5 insertions(+)
 create mode 100644 arch/arm/dts/zynq-7000.dtsi

diff --git a/arch/arm/dts/zynq-7000.dtsi b/arch/arm/dts/zynq-7000.dtsi
new file mode 100644
index 000000000000..a4555a7a1b6c
--- /dev/null
+++ b/arch/arm/dts/zynq-7000.dtsi
@@ -0,0 +1,4 @@
+
+&slcr {
+	ranges = <0x0 0xf8000000 0x1000>;
+};
diff --git a/arch/arm/dts/zynq-zed.dts b/arch/arm/dts/zynq-zed.dts
index 52d68332499a..9839d810b616 100644
--- a/arch/arm/dts/zynq-zed.dts
+++ b/arch/arm/dts/zynq-zed.dts
@@ -1,4 +1,5 @@
 #include <arm/zynq-zed.dts>
+#include "zynq-7000.dtsi"
 
 / {
 	chosen {
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
