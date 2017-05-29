Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.haslerrail.com ([212.103.73.117])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dFH4x-000436-Cp
 for barebox@lists.infradead.org; Mon, 29 May 2017 09:35:13 +0000
From: Joye Laurent <Laurent.Joye@haslerrail.com>
Date: Mon, 29 May 2017 09:34:43 +0000
Message-ID: <1496050483.2610.35.camel@haslerrail.com>
Content-Language: en-US
Content-ID: <46C1FD440C70E94580719F92510019F7@haslerrail.com>
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
Subject: Barebox State stored in DOS partition
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hello,

I'm trying to save my state variable set inside a DOS partition.
I'm working on a beaglebone black board.
I use the version v2017.05.0 of barebox.

I've just added the following code to the file
arch/arm/dts/am335x-boneblack.dts file:
	state: part2boot {
		/* <:-) */
		magic = <0x292D3A3C>;
		compatible = "barebox,state";
		backend-type = "dtb";
		backend = &mmc2, "partname:1";
		backend-stridesize = <512>;
		#address-cells = <0x1>;
		#size-cells = <0x1>;

		active {
			reg = <0x00 0x04>;
			type = "enum32";
			names = "rootfs1", "rootfs2";
			default = <0>;
		};

		state {
			reg = <0x04 0x04>;
			type = "enum32";
			names = "no_change", "new_image", "check_validity";
			default = <0>;
		};
	};
};

Note that the related emmc device (referred as mmc2 in the dts tree, and
as mmc1 by the barebox command devinfo) is already formatted (FAT32) on
its second partition (mmc1.1).
Note that the backend node is defined as suggested here
(https://www.spinics.net/lists/u-boot-v2/msg29515.html).

By starting barebox, I get the following:
barebox 2017.05.0-UNTAGGED_VERSION-dirty #1 Mon May 29 09:52:48 CEST
2017
Board: TI AM335x BeagleBone black
detected 'BeagleBone Black'
cpsw 4a100000.ethernet: detected phy mask 0x1
mdio_bus: miibus0: probed
eth0: got preset MAC address: 60:64:05:fe:de:67
cpsw 4a100000.ethernet: Failed to setup slave 1: I/O error
am335x-phy-driver 47401300.usb-phy: am_usbphy 8ffa7fbc enabled
am335x-phy-driver 47401b00.usb-phy: am_usbphy 8ffa92dc enabled
musb-hdrc: ConfigData=0xde (UTMI-8, dyn FIFOs, bulk combine, bulk split,
HB-ISO Rx, HB-ISO Tx, SoftConn)
musb-hdrc: MHDRC RTL version 2.0 
musb-hdrc: setup fifo_mode 4
musb-hdrc: 28/31 max ep, 16384/16384 memory
i2c-omap 44e0b000.i2c: bus 0 rev0.11 at 400 kHz
omap-hsmmc 48060000.mmc: registered as 48060000.mmc
mmc0: detected SD card version 2.0
mmc0: registered mmc0
omap-hsmmc 481d8000.mmc: registered as 481d8000.mmc
mmc1: detected MMC card version 4.5
mmc1: registered mmc1
part2boot: Cannot resolve "backend" phandle
state part2boot.6: probe failed: Invalid argument
omap_wdt 44e35000.wdt: OMAP Watchdog Timer Rev 0x01
netconsole: registered as netconsole-1
malloc space: 0x8fefef60 -> 0x9fdfdebf (size 255 MiB)
environment load /boot/barebox.env: No such file or directory
Maybe you have to create the partition.
running /env/bin/init...
HaslerRail initialization...
changing USB current limit to 1300 mA... done

Here is the output of the command of_dump /part2boot:
part2boot {
        magic = <0x292d3a3c>;
        compatible = "barebox,state";
        backend-type = "dtb";
        backend = "/ocp/mmc@481d8000", "partname:1";
        backend-stridesize = <0x200>;
        #address-cells = <0x1>;
        #size-cells = <0x1>;
        active {
                reg = <0x0 0x4>;
                type = "enum32";
                names = "rootfs1", "rootfs2";
                default = <0x0>;
        };
        state {
                reg = <0x4 0x4>;
                type = "enum32";
                names = "no_change", "new_image", "check_validity";
                default = <0x0>;
        };
};

Could you please help me to correctly describe my state variable set
inside the dts file?
Is it really possible to store a variable set inside a formatted FAT32
filesystem?

Many thanks in advance for your help

Laurent Joye
HaslerRail AG
Switzerland

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
