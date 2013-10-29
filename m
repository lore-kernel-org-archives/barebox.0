Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp40.i.mail.ru ([94.100.177.100])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vb65Z-0005RC-7d
 for barebox@lists.infradead.org; Tue, 29 Oct 2013 09:59:55 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Tue, 29 Oct 2013 13:59:17 +0400
Message-Id: <1383040758-9696-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 1/2] USB: i.MX: Make DT dr_mode & phy_type parameters kernel
 compatible
To: barebox@lists.infradead.org

Since the mainline kernel now has its own dr_mode and phy_type DT-options
for setting modes of USB ports, do these kernel parameters compatible by
removing "barebox" prefix.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/dts/imx6q-gk802.dts            | 6 ++----
 arch/arm/dts/imx6q-tqma6x.dts           | 3 +--
 arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi | 8 ++++----
 arch/arm/dts/imx6qdl-mba6x.dtsi         | 5 ++---
 drivers/usb/core/of.c                   | 4 ++--
 5 files changed, 11 insertions(+), 15 deletions(-)

diff --git a/arch/arm/dts/imx6q-gk802.dts b/arch/arm/dts/imx6q-gk802.dts
index 16c0bad..b34a491 100644
--- a/arch/arm/dts/imx6q-gk802.dts
+++ b/arch/arm/dts/imx6q-gk802.dts
@@ -113,18 +113,16 @@
 
 /* External USB-A port (USBOTG) */
 &usbotg {
-	phy-mode = "utmi";
+	phy_type = "utmi";
 	dr_mode = "host";
-	barebox,phy_type = "utmi";
 	disable-over-current;
 	status = "okay";
 };
 
 /* Internal USB port (USBH1), connected to RTL8192CU */
 &usbh1 {
-	phy-mode = "utmi";
+	phy_type = "utmi";
 	dr_mode = "host";
-	barebox,phy_type = "utmi";
 	disable-over-current;
 	status = "okay";
 };
diff --git a/arch/arm/dts/imx6q-tqma6x.dts b/arch/arm/dts/imx6q-tqma6x.dts
index 639c181..597388e 100644
--- a/arch/arm/dts/imx6q-tqma6x.dts
+++ b/arch/arm/dts/imx6q-tqma6x.dts
@@ -294,8 +294,7 @@
 &usbotg {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_usbotg_1>;
-	barebox,phy_type = "utmi";
-	barebox,dr_mode = "peripheral";
+	phy_type = "utmi";
 	dr_mode = "host";
 	disable-over-current;
 	otg_id_pin_select_change;
diff --git a/arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi b/arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi
index c5c9a48..04bb213 100644
--- a/arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi
+++ b/arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi
@@ -79,8 +79,8 @@
 };
 
 &usbh1 {
-	barebox,phy_type = "utmi";
-	barebox,dr_mode = "host";
+	phy_type = "utmi";
+	dr_mode = "host";
 	status = "okay";
 };
 
@@ -89,8 +89,8 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_usbotg_2>;
 	disable-over-current;
-	barebox,phy_type = "utmi";
-	barebox,dr_mode = "host";
+	phy_type = "utmi";
+	dr_mode = "host";
 	status = "okay";
 };
 
diff --git a/arch/arm/dts/imx6qdl-mba6x.dtsi b/arch/arm/dts/imx6qdl-mba6x.dtsi
index 4621112..ec002c6 100644
--- a/arch/arm/dts/imx6qdl-mba6x.dtsi
+++ b/arch/arm/dts/imx6qdl-mba6x.dtsi
@@ -166,15 +166,14 @@
 
 &usbh1 {
 	status = "okay";
-	barebox,phy_type = "utmi";
+	phy_type = "utmi";
 	disable-over-current;
 };
 
 &usbotg {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_usbotg_1>;
-	barebox,phy_type = "utmi";
-	barebox,dr_mode = "peripheral";
+	phy_type = "utmi";
 	dr_mode = "host";
 	disable-over-current;
 	otg_id_pin_select_change;
diff --git a/drivers/usb/core/of.c b/drivers/usb/core/of.c
index 222b760..1ddbdaa 100644
--- a/drivers/usb/core/of.c
+++ b/drivers/usb/core/of.c
@@ -39,7 +39,7 @@ enum usb_dr_mode of_usb_get_dr_mode(struct device_node *np,
 	int err, i;
 
 	if (!propname)
-		propname = "barebox,dr_mode";
+		propname = "dr_mode";
 
 	err = of_property_read_string(np, propname, &dr_mode);
 	if (err < 0)
@@ -76,7 +76,7 @@ enum usb_phy_interface of_usb_get_phy_mode(struct device_node *np,
 	int err, i;
 
 	if (!propname)
-		propname = "barebox,phy_type";
+		propname = "phy_type";
 
 	err = of_property_read_string(np, propname, &phy_type);
 	if (err < 0)
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
