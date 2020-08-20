Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8f69-0004mu-S6
 for barebox@lists.infradead.org; Thu, 20 Aug 2020 07:35:03 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu, 20 Aug 2020 09:34:54 +0200
Message-Id: <20200820073454.17500-13-o.rempel@pengutronix.de>
In-Reply-To: <20200820073454.17500-1-o.rempel@pengutronix.de>
References: <20200820073454.17500-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v5 12/12] ARM: dts: protonic: lanmcu: add uart-has-rtscts to
 enable rs485 functionality
To: barebox@lists.infradead.org, david@protonic.nl
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Without this flag the kernel was ignoring linux,rs485-enabled-at-boot-time
property.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/dts/imx6dl-lanmcu.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/dts/imx6dl-lanmcu.dts b/arch/arm/dts/imx6dl-lanmcu.dts
index 67139930f9..12fa816ca4 100644
--- a/arch/arm/dts/imx6dl-lanmcu.dts
+++ b/arch/arm/dts/imx6dl-lanmcu.dts
@@ -333,6 +333,7 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart2>;
 	linux,rs485-enabled-at-boot-time;
+	uart-has-rtscts;
 	status = "okay";
 };
 
@@ -340,6 +341,7 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart3>;
 	linux,rs485-enabled-at-boot-time;
+	uart-has-rtscts;
 	status = "okay";
 };
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
