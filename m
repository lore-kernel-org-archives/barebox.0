Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cBHYy-0005ZR-Vl
 for barebox@lists.infradead.org; Mon, 28 Nov 2016 08:45:26 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 3EFFDA00432
 for <barebox@lists.infradead.org>; Mon, 28 Nov 2016 09:45:44 +0100 (CET)
From: Stefan Lengfeld <s.lengfeld@phytec.de>
Date: Mon, 28 Nov 2016 09:45:00 +0100
Message-Id: <1480322700-3529-3-git-send-email-s.lengfeld@phytec.de>
In-Reply-To: <1480322700-3529-1-git-send-email-s.lengfeld@phytec.de>
References: <1480322700-3529-1-git-send-email-s.lengfeld@phytec.de>
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
Subject: [PATCH 3/3] ARM: dts: phycore-imx6: remove unnecessary include
To: barebox@lists.infradead.org

The file 'imx6qdl.dtsi' is already included by DualLite/Solo and
Dual/Quad specific files 'imx6dl.dtsi' and 'imx6q.dtsi'. So the include
is not needed here.

Signed-off-by: Stefan Lengfeld <s.lengfeld@phytec.de>
---
 arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
index 76777e8..1e04ce1 100644
--- a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -9,7 +9,6 @@
  * http://www.gnu.org/copyleft/gpl.html
  */
 
-#include "imx6qdl.dtsi"
 #include <dt-bindings/gpio/gpio.h>
 
 / {
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
