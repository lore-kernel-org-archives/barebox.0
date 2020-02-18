Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j43mG-0002em-9r
 for barebox@lists.infradead.org; Tue, 18 Feb 2020 14:23:09 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 18 Feb 2020 15:23:00 +0100
Message-Id: <20200218142305.26992-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200218142305.26992-1-a.fatoum@pengutronix.de>
References: <20200218142305.26992-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/6] ARM: dts: stm32mp: align barebox dtsi name with upstream
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Upstream has split stm32mp157c.dtsi into three files:

- stm32mp157.dtsi: GPU, DSI and stm32mp153.dtsi
- stm32mp153.dtsi: 2x CAN, 2nd Cortex-A7 and stm32mp151.dtsi
- stm32mp151.dtsi: everything else

Have our barebox specific fixup file follow the new naming scheme.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/{stm32mp157c.dtsi => stm32mp151.dtsi} | 0
 arch/arm/dts/stm32mp157a-dk1.dtsi                  | 2 +-
 2 files changed, 1 insertion(+), 1 deletion(-)
 rename arch/arm/dts/{stm32mp157c.dtsi => stm32mp151.dtsi} (100%)

diff --git a/arch/arm/dts/stm32mp157c.dtsi b/arch/arm/dts/stm32mp151.dtsi
similarity index 100%
rename from arch/arm/dts/stm32mp157c.dtsi
rename to arch/arm/dts/stm32mp151.dtsi
diff --git a/arch/arm/dts/stm32mp157a-dk1.dtsi b/arch/arm/dts/stm32mp157a-dk1.dtsi
index 6be208f32ef2..baaf60b18fa8 100644
--- a/arch/arm/dts/stm32mp157a-dk1.dtsi
+++ b/arch/arm/dts/stm32mp157a-dk1.dtsi
@@ -4,7 +4,7 @@
  * Author: Alexandre Torgue <alexandre.torgue@st.com>.
  */
 
-#include "stm32mp157c.dtsi"
+#include "stm32mp151.dtsi"
 #include <dt-bindings/gpio/gpio.h>
 
 / {
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
