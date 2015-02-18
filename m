Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo1.mail-out.ovh.net ([46.105.60.232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YNsd0-0008If-7P
 for barebox@lists.infradead.org; Wed, 18 Feb 2015 00:36:35 +0000
Received: from mail434.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 77751FF880F
 for <barebox@lists.infradead.org>; Wed, 18 Feb 2015 01:26:31 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 18 Feb 2015 01:26:25 +0100
Message-Id: <1424219186-10289-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/3] imx6q-embedsky-e9: the debug port is on uart1 not uart4
To: barebox@lists.infradead.org

the uart4 is on the extention header

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/dts/imx6q-embedsky-e9.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/dts/imx6q-embedsky-e9.dts b/arch/arm/dts/imx6q-embedsky-e9.dts
index 53665cf..ab70d05 100644
--- a/arch/arm/dts/imx6q-embedsky-e9.dts
+++ b/arch/arm/dts/imx6q-embedsky-e9.dts
@@ -17,7 +17,7 @@
 
 / {
 	chosen {
-		linux,stdout-path = &uart4;
+		linux,stdout-path = &uart1;
 
 		environment-mmc1 {
 			compatible = "barebox,environment";
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
