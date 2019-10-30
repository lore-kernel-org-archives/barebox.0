Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPlxx-00055k-Hc
 for barebox@lists.infradead.org; Wed, 30 Oct 2019 11:16:42 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1iPlxw-0004O5-3h
 for barebox@lists.infradead.org; Wed, 30 Oct 2019 12:16:40 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 30 Oct 2019 12:16:40 +0100
Message-Id: <20191030111640.12367-2-l.stach@pengutronix.de>
In-Reply-To: <20191030111640.12367-1-l.stach@pengutronix.de>
References: <20191030111640.12367-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: zii-imx8mq-dev: disable GPU and VPU power domain in
 DT
To: barebox@lists.infradead.org

In Barebox we don't have a driver for the PMIC powering those domains,
so we get a "probe permanently deferred" warning for those domains. As
they are not actually used in Barebox, we can just disable them to get
rid of the warning.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/dts/imx8mq-zii-ultra.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/dts/imx8mq-zii-ultra.dtsi b/arch/arm/dts/imx8mq-zii-ultra.dtsi
index 6180f21ab0a4..bde70901a331 100644
--- a/arch/arm/dts/imx8mq-zii-ultra.dtsi
+++ b/arch/arm/dts/imx8mq-zii-ultra.dtsi
@@ -56,6 +56,14 @@
 	};
 };
 
+&pgc_gpu {
+	status = "disabled";
+};
+
+&pgc_vpu {
+	status = "disabled";
+};
+
 &i210 {
 	nvmem-cells = <&mac_address_1>;
 	nvmem-cell-names = "mac-address";
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
