Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dYD2G-00054t-Fl
 for barebox@lists.infradead.org; Thu, 20 Jul 2017 15:06:43 +0000
Date: Thu, 20 Jul 2017 17:06:14 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170720150614.GA29320@ravnborg.org>
References: <a4ee1a13786643a29c3ae0c998da3511@itk-engineering.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a4ee1a13786643a29c3ae0c998da3511@itk-engineering.de>
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
Subject: Re: Barebox state on am335x-phytec-phycore-som
To: Martin Hollingsworth <Martin.Hollingsworth@itk-engineering.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Martin.

On Thu, Jul 20, 2017 at 01:09:54PM +0000, Martin Hollingsworth wrote:
> Hi,
> I am trying to enable the barebox state framework and use it to
> store the bootchooser variables on the am335x-phytec-phycore-som
> board. I want to do that, so that the variables can be stored
> in EEPROM rather than in NAND (due to write/erase cycles).
> 
> I am following the steps from the documentation and from
> the mailing list from 2016
> (http://lists.infradead.org/pipermail/barebox/2016-October/028312.html).
> However, all entries I try to add to the DTS/DTSI files fail
> to compile with a syntax error, even the example dtsi entry
> from the documentation.
> 
> Has anyone running a similar configuration and could help
> with some advice what has to be adapted?
> Can anyone recommend a good example code of the barebox state placed on EEPROM?

The following builds. Maybe this is a small step in the right direction.
Just added from state-example.dts and from the documentation.

	Sam

diff --git a/arch/arm/dts/am335x-phytec-phycore-som.dts b/arch/arm/dts/am335x-phytec-phycore-som.dts
index f13e0d6bd..f62620be0 100644
--- a/arch/arm/dts/am335x-phytec-phycore-som.dts
+++ b/arch/arm/dts/am335x-phytec-phycore-som.dts
@@ -13,12 +13,41 @@
 / {
 	model = "Phytec phyCORE AM335x";
 	compatible = "phytec,phycore-am335x-som", "phytec,am335x-som", "ti,am33xx";
+
+	state: state {
+		magic = <0x27031977>;
+		compatible = "barebox,state";
+		backend-type = "raw";
+		backend = <&backend_state_eeprom>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		foo {
+			reg = <0x00 0x4>;
+			type = "uint32";
+			default = <0x0>;
+		};
+
+		bar {
+			reg = <0x10 0x4>;
+			type = "enum32";
+			names = "baz", "qux";
+			default = <1>;
+		};
+	};
 };
 
 &spi0 {
 	status = "okay";
 };
-
 &eeprom {
 	status = "okay";
+		partitions {
+			compatible = "fixed-partitions";
+			#size-cells = <1>;
+			#address-cells = <1>;
+			backend_state_eeprom: state@400 {
+				reg = <0x400 0x400>;
+				label = "state-eeprom";
+			};
+		};
 };

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
