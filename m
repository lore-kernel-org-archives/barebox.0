Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XoSFP-0008UW-4D
 for barebox@lists.infradead.org; Wed, 12 Nov 2014 07:21:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Nov 2014 08:21:21 +0100
Message-Id: <1415776883-28870-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1415776883-28870-1-git-send-email-s.hauer@pengutronix.de>
References: <1415776883-28870-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] ARM: i.MX51: Add pwm aliases to device tree
To: barebox@lists.infradead.org

Needed for accessing the PWMs in barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx51-genesi-efika-sb.dts | 1 +
 arch/arm/dts/imx51.dtsi                | 6 ++++++
 2 files changed, 7 insertions(+)
 create mode 100644 arch/arm/dts/imx51.dtsi

diff --git a/arch/arm/dts/imx51-genesi-efika-sb.dts b/arch/arm/dts/imx51-genesi-efika-sb.dts
index 6d6ab81..26829d1 100644
--- a/arch/arm/dts/imx51-genesi-efika-sb.dts
+++ b/arch/arm/dts/imx51-genesi-efika-sb.dts
@@ -10,6 +10,7 @@
  */
 
 /dts-v1/;
+#include "imx51.dtsi"
 #include <arm/imx51.dtsi>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/irq.h>
diff --git a/arch/arm/dts/imx51.dtsi b/arch/arm/dts/imx51.dtsi
new file mode 100644
index 0000000..828a6c2
--- /dev/null
+++ b/arch/arm/dts/imx51.dtsi
@@ -0,0 +1,6 @@
+/{
+	aliases {
+		pwm0 = &pwm1;
+		pwm1 = &pwm2;
+	};
+};
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
