Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo3.mail-out.ovh.net ([87.98.165.232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YNxex-0008I7-Ok
 for barebox@lists.infradead.org; Wed, 18 Feb 2015 05:58:56 +0000
Received: from mail614.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 1FD42FFAB94
 for <barebox@lists.infradead.org>; Wed, 18 Feb 2015 06:58:30 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 18 Feb 2015 06:58:27 +0100
Message-Id: <1424239107-9598-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] imx6q-embedsky-e9: we use the i2c2 for hdmi
To: barebox@lists.infradead.org

with this the splash work

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/dts/imx6q-embedsky-e9.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/dts/imx6q-embedsky-e9.dtsi b/arch/arm/dts/imx6q-embedsky-e9.dtsi
index 060d103..f117cae 100644
--- a/arch/arm/dts/imx6q-embedsky-e9.dtsi
+++ b/arch/arm/dts/imx6q-embedsky-e9.dtsi
@@ -372,6 +372,7 @@
 
 &hdmi {
 	status = "okay";
+	ddc-i2c-bus = <&i2c2>;
 };
 
 &can1 {
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
