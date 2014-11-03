Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XlQOn-0006J8-QW
 for barebox@lists.infradead.org; Mon, 03 Nov 2014 22:46:59 +0000
Received: from tellur.intern.lynxeye.de (p57B5E6E1.dip0.t-ipconnect.de
 [87.181.230.225]) by lynxeye.de (Postfix) with ESMTPA id 8E62326C2007
 for <barebox@lists.infradead.org>; Mon,  3 Nov 2014 23:45:16 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon,  3 Nov 2014 23:52:19 +0100
Message-Id: <1415055144-6119-7-git-send-email-dev@lynxeye.de>
In-Reply-To: <1415055144-6119-1-git-send-email-dev@lynxeye.de>
References: <1415055144-6119-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 07/12] tegra: tegra124: add serial alias nodes
To: barebox@lists.infradead.org

They are missing in the upstream DT. Add them
locally for now.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/tegra124.dtsi | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm/dts/tegra124.dtsi b/arch/arm/dts/tegra124.dtsi
index 7d0fafa..c795811 100644
--- a/arch/arm/dts/tegra124.dtsi
+++ b/arch/arm/dts/tegra124.dtsi
@@ -1 +1,8 @@
-#include <arm/tegra124.dtsi>
+/ {
+	aliases {
+		serial0 = "/serial@0,70006000/";
+		serial1 = "/serial@0,70006040/";
+		serial2 = "/serial@0,70006200/";
+		serial3 = "/serial@0,70006300/";
+	};
+};
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
