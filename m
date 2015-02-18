Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo1.mail-out.ovh.net ([178.32.228.1])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YNsd0-0008Ie-7t
 for barebox@lists.infradead.org; Wed, 18 Feb 2015 00:36:35 +0000
Received: from mail434.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 7E62EFF8817
 for <barebox@lists.infradead.org>; Wed, 18 Feb 2015 01:26:31 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 18 Feb 2015 01:26:26 +0100
Message-Id: <1424219186-10289-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1424219186-10289-1-git-send-email-plagnioj@jcrosoft.com>
References: <1424219186-10289-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/3] imx6q-embedsky-e9: there is not PCIe on this hardware
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/dts/imx6q-embedsky-e9.dtsi | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/dts/imx6q-embedsky-e9.dtsi b/arch/arm/dts/imx6q-embedsky-e9.dtsi
index a29de9f..060d103 100644
--- a/arch/arm/dts/imx6q-embedsky-e9.dtsi
+++ b/arch/arm/dts/imx6q-embedsky-e9.dtsi
@@ -374,10 +374,6 @@
 	status = "okay";
 };
 
-&pcie {
-	status = "okay";
-};
-
 &can1 {
 	status = "okay";
 };
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
