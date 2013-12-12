Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ve0-x22d.google.com ([2607:f8b0:400c:c01::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VrBR6-0006Ew-0U
 for barebox@lists.infradead.org; Thu, 12 Dec 2013 18:56:36 +0000
Received: by mail-ve0-f173.google.com with SMTP id oz11so633945veb.18
 for <barebox@lists.infradead.org>; Thu, 12 Dec 2013 10:56:14 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CAJyuEefmcqQVKKszuvmGZx4NqaK+j79+-g4gD-ruq9vMO85Wug@mail.gmail.com>
References: <CAJyuEeeO5KpoZpmoSFj8AOOPJ+1o-iWjmQVBZS9FCj2Z7d38kA@mail.gmail.com>
 <20131212080359.GE24559@pengutronix.de>
 <CAJyuEefmcqQVKKszuvmGZx4NqaK+j79+-g4gD-ruq9vMO85Wug@mail.gmail.com>
Date: Thu, 12 Dec 2013 13:56:14 -0500
Message-ID: <CAJyuEedGuDU7yX29MeM3894xQ3c3FuZgp1h_ahFXvzLr2_0fdQ@mail.gmail.com>
From: Michael Burkey <mdburkey@gmail.com>
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
Subject: Porting barebox (devicetree) to Variscite iMX6 SOM
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Additionally, here are the dts and dtsi files I added for the Variscite part:

---------------------------------
arch/arm/dts/imx6q-var-custom.dts
---------------------------------
/*
 * Copyright 2013 Michael Burkey
 * Based on code written by Christian Hemp, Phytec Messtechnik GmbH
 *
 * The code contained herein is licensed under the GNU General Public
 * License. You may obtain a copy of the GNU General Public License
 * Version 2 or later at the following locations:
 *
 * http://www.opensource.org/licenses/gpl-license.html
 * http://www.gnu.org/copyleft/gpl.html
 */

/dts-v1/;
#include "imx6q-var-som.dtsi"

/ {
	model = "Variscite i.MX6 Quad Custom Carrier-Board";
	compatible = "variscite,imx6q-custom", "variscite,imx6q-som", "fsl,imx6q";

	chosen {
		linux,stdout-path = &uart1;

		environment@0 {
			compatible = "barebox,environment";
			device-path = &gpmi, "partname:barebox-environment";
		};
	};
};

&uart1 {
	status = "okay";
};

&usdhc2 {
	status = "okay";
};

&usbh1 {
	status = "okay";
	disable-over-current;
};

&i2c1 {
	status = "okay";
	clock-frequency = <100000>;
	pinctrl-names = "default";
	pinctrl-0 = <&pinctrl_i2c1_2>;
};

-------------------------------
arch/arm/dts/imx6q-var-som-dtsi
-------------------------------
/*
 * Copyright 2013 Michael Burkey
 * Based on code written by Christian Hemp, Phytec Messtechnik GmbH
 *
 * The code contained herein is licensed under the GNU General Public
 * License. You may obtain a copy of the GNU General Public License
 * Version 2 or later at the following locations:
 *
 * http://www.opensource.org/licenses/gpl-license.html
 * http://www.gnu.org/copyleft/gpl.html
 */

#include "imx6q.dtsi"

/ {
	model = "Variscite i.MX6 Quad SOM";
	compatible = "variscite,imx6q-som", "fsl,imx6q";

	memory {
		reg = <0x10000000 0x40000000>;
	};
};

&gpmi {
	pinctrl-names = "default";
	pinctrl-0 = <&pinctrl_gpmi_nand_1>;
	nand-on-flash-bbt;
	status = "okay";
	#address-cells = <1>;
	#size-cells = <1>;

	partition@0 {
		label = "barebox";
		reg = <0x0 0x200000>;
	};

	partition@1 {
		label = "barebox-environment";
		reg = <0x200000 0x10000>;
	};

	partition@2 {
		label = "kernel";
		reg = <0x210000 0x600000>;
	};

	partition@3 {
		label = "rootfs";
		reg = <0x860000 0x18000000>;
	};

	partition@4 {
		label = "profilefs";
		reg = <0x18860000 0x400000>;
	};
};

&usdhc2 {
	pinctrl-names = "default";
	pinctrl-0 = <&pinctrl_usdhc2_2>;
	cd-gpios = <&gpio3 29 0>;
	status = "disabled";
};

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
