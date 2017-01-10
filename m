Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp133.dfw.emailsrvr.com ([67.192.241.133])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cQysA-0001Hw-CN
 for barebox@lists.infradead.org; Tue, 10 Jan 2017 16:02:12 +0000
Received: from smtp17.relay.dfw1a.emailsrvr.com (localhost [127.0.0.1])
 by smtp17.relay.dfw1a.emailsrvr.com (SMTP Server) with ESMTP id 2C2002009A
 for <barebox@lists.infradead.org>; Tue, 10 Jan 2017 11:01:42 -0500 (EST)
Received: by smtp17.relay.dfw1a.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id D99602015A
 for <barebox@lists.infradead.org>; Tue, 10 Jan 2017 11:01:41 -0500 (EST)
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <12b302f6-75ae-bf83-370b-abaf0aef9d29@mev.co.uk>
Date: Tue, 10 Jan 2017 16:01:40 +0000
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Problem loading environment from spi-nor flash partition since
 barebox 2017.01.0
To: barebox@lists.infradead.org

Hi!

I thought I'd try updating my custom SoCFPGA-based board from barebox 
2016.11.0 to 2017.01.0, and have only run into one problem, which is 
that it is no longer loading the barebox environment during boot:

---------------------------------------------------------
barebox 2017.01.0 #1 Tue Jan 10 14:01:57 GMT 2017


Board: Belltech dbPod SoCFPGA
designware_eth ff702000.ethernet: user ID: 0x10, Synopsys ID: 0x37
mdio_bus: miibus0: probed
flash@0: s25fl256s1 (32768 Kbytes)
cadence_qspi ff705000.spi: Cadence QSPI NOR flash driver
malloc space: 0x0ff7dd00 -> 0x1fefb9ff (size 255.5 MiB)
barebox-environment environment.5: probe failed: No such device
environment load /dev/env0: No such file or directory
Maybe you have to create the partition.
---------------------------------------------------------


After a bit of poking around, I discovered that it is failing in 
__of_find_path() at these lines:

	if (!dev->driver)
		return -ENODEV;

Those lines were added by commit 
82eb3dff10ae0c0436e0fcd5ff0c9cd2a2caab3c ("of_path: handle no driver for 
device").

I'm not sure which bit of code is responsible for setting dev->driver 
(or whether it is appropriate in this case), but if I remove that test, 
the environment loads OK.

Here is the barebox DTS I am compiling for my board (sorry about any 
line-wrapping):

---------------------------------------------------------
#include <arm/socfpga_cyclone5.dtsi>
#include "socfpga.dtsi"

/ {
	model = "Belltech dbPod SoCFPGA";
	compatible = "belltech,dbpod", "altr,socfpga-cyclone5", "altr,socfpga";

	chosen {

		environment@0 {
			compatible = "barebox,environment";
			device-path = &flash, "partname:barebox-environment";
			/delete-property/file-path;
		};
	};

	aliases {
		ethernet0 = &gmac1;
		/delete-property/ethernet1;
	};

	memory {
		name = "memory";
		device_type = "memory";
		reg = <0x0 0x20000000>; /* 512GB */
	};
};

&gmac1 {
	phy-mode = "rgmii";
	status = "okay";
};

&gpio0 {
	status = "okay";
};

&i2c0 {
	status = "okay";
};

&qspi {
	status = "okay";

	flash: flash@0 {
		#address-cells = <1>;
		#size-cells = <1>;
		compatible = "n25q00";
		reg = <0>;
		spi-max-frequency = <100000000>;
		m25p,fast-read;
		cdns,page-size = <256>;
		cdns,block-size = <16>;
		cdns,read-delay = <4>;
		cdns,tshsl-ns = <50>;
		cdns,tsd2d-ns = <50>;
		cdns,tchsh-ns = <4>;
		cdns,tslch-ns = <4>;

		partition@0 {
			label = "prebootloader0";
			reg = <0x00000 0x10000>;
		};

		partition@10000 {
			label = "prebootloader1";
			reg = <0x10000 0x10000>;
		};

		partition@20000 {
			label = "prebootloader2";
			reg = <0x20000 0x10000>;
		};

		partition@30000 {
			label = "prebootloader3";
			reg = <0x30000 0x10000>;
		};

		partition@40000 {
			label = "barebox";
			reg = <0x40000 0x80000>;
		};

		partition@c0000 {
			label = "barebox-environment";
			reg = <0xc0000 0x20000>;
		};

		partition@e0000 {
			label = "barebox-state";
			reg = <0xe0000 0x20000>;
		};

		partition@100000 {
			label = "ubi";
			reg = <0x100000 0x0>;
		};
	};
};
---------------------------------------------------------

Best regards,
Ian Abbott.

-- 
-=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
-=(                          Web: http://www.mev.co.uk/  )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
