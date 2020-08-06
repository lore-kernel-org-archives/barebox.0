Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout10.rmx.de ([94.199.88.75])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k3gtX-0004DJ-Bo
 for barebox@lists.infradead.org; Thu, 06 Aug 2020 14:29:26 +0000
Received: from kdin02.retarus.com (kdin02.dmz1.retloc [172.19.17.49])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mailout10.rmx.de (Postfix) with ESMTPS id 4BMrTm0Vrgz30YX
 for <barebox@lists.infradead.org>; Thu,  6 Aug 2020 16:29:16 +0200 (CEST)
Received: from mta.arri.de (unknown [217.111.95.66])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by kdin02.retarus.com (Postfix) with ESMTPS id 4BMrTl1z0dz2TTMW
 for <barebox@lists.infradead.org>; Thu,  6 Aug 2020 16:29:15 +0200 (CEST)
From: Christian Eggers <ceggers@arri.de>
Date: Thu, 6 Aug 2020 16:29:13 +0200
Message-ID: <5183365.pEXpNOHncD@n95hx1g2>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="nextPart2913838.NhbFuguAqk"
Content-Transfer-Encoding: 7Bit
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Some USB memory sticks not (fully) recognized
To: barebox@lists.infradead.org

--nextPart2913838.NhbFuguAqk
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Barebox version: 2020.07.0
Hardware: i.MX6 ULL with external Microchip USB Hub attached

I got a bug report that some newer USB memory sticks do not work with
barebox. While with barebox-2020.01 these devices are not recognized at all, in
barebox-2020.07 I get at least some warnings:

# usb
> usb: USB: scanning bus for devices...
> usb1: Bus 001 Device 001: ID 0000:0000 EHCI Host Controller
> usb1-0: Bus 001 Device 002: ID 0424:4916 USB4916
> ERROR: usb1-0-4: unable to get descriptor, error 80000000
> usb1-0-4: Bus 001 Device 003: ID 0424:2240 
> usb1-0-6: Bus 001 Device 004: ID 0424:494a USB2 Controller Hub
> ERROR: usb1-0-0: unable to get descriptor, error 80000000
> usb1-0-0: Bus 001 Device 005: ID 090c:3267 
> usb: 5 USB Device(s) found

Beside the USB memory stick, also one of the hub's internal 
devices is not recognized correctly. The full log output with
global.loglevel=7 is attached. The first error seems to appear
in line 233. The USB device descriptor cannot be read:

> usb1-0-4: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x100 index 0x0 length 0x12
> imx-usb 2184200.usb@2184200.of: pipe=8c000483, buffer=8ffca7c0, length=18, req=8ff57580
> imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=256 (0x100), index=0
> imx-usb 2184200.usb@2184200.of: dev=4, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0


Under Linux (on the same device), the USB drives work without any noticeable problems:

Linux messages (v5.4):
> [  111.458582] 000: usb 1-1.1: new high-speed USB device number 5 using ci_hdrc
> [  111.613740] 000: usb 1-1.1: New USB device found, idVendor=090c, idProduct=3267, bcdDevice=11.00
> [  111.613763] 000: usb 1-1.1: New USB device strings: Mfr=1, Product=2, SerialNumber=0
> [  111.613777] 000: usb 1-1.1: Product: Flash Disk
> [  111.613784] 000: usb 1-1.1: Manufacturer: USB
> [  111.615642] 000: usb-storage 1-1.1:1.0: USB Mass Storage device detected

An usbmon capture for Linux is also attached (USB memory stick is plugged in at
about packet 99).

Any hints how I can debug this problem. I've almost now knowledge about USB...

regards
Christian

--nextPart2913838.NhbFuguAqk
Content-Disposition: attachment; filename="barebox-output.txt"
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="UTF-8"; name="barebox-output.txt"

barebox@Orbiter-i.MX6ULL:/ usb
getopt: optindex: 1 nonopts: 0 optind: 1
usb: USB: scanning bus for devices...
usb1: set address 1
usb1: usb_control_msg: request: 0x5, requesttype: 0x0, value 0x1 index 0x0 length 0x0
imx-usb 2184200.usb@2184200.of: req=5 (0x5), type=0 (0x0), value=1, index=0
imx-usb 2184200.usb@2184200.of: USB_REQ_SET_ADDRESS
imx-usb 2184200.usb@2184200.of: Len is 0
usb1: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x100 index 0x0 length 0x12
imx-usb 2184200.usb@2184200.of: req=6 (0x6), type=128 (0x80), value=256, index=0
imx-usb 2184200.usb@2184200.of: USB_DT_DEVICE request
usb1: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x200 index 0x0 length 0x9
imx-usb 2184200.usb@2184200.of: req=6 (0x6), type=128 (0x80), value=512, index=0
imx-usb 2184200.usb@2184200.of: USB_DT_CONFIG config
usb1: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x200 index 0x0 length 0x19
imx-usb 2184200.usb@2184200.of: req=6 (0x6), type=128 (0x80), value=512, index=0
imx-usb 2184200.usb@2184200.of: USB_DT_CONFIG config
usb1: get_conf_no 0 Result 25, wLength 25
usb1: if 0, ep 0
usb1: ##EP epmaxpacketin[1] = 2
usb1: set configuration 1
usb1: usb_control_msg: request: 0x9, requesttype: 0x0, value 0x1 index 0x0 length 0x0
imx-usb 2184200.usb@2184200.of: req=9 (0x9), type=0 (0x0), value=1, index=0
imx-usb 2184200.usb@2184200.of: USB_REQ_SET_CONFIGURATION
imx-usb 2184200.usb@2184200.of: Len is 0
usb1: new device: Mfr=1, Product=2, SerialNumber=0
usb1: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x300 index 0x0 length 0xFF
imx-usb 2184200.usb@2184200.of: req=6 (0x6), type=128 (0x80), value=768, index=0
imx-usb 2184200.usb@2184200.of: USB_DT_STRING config
usb1: USB device number 1 default language ID 0x1
usb1: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x301 index 0x1 length 0xFF
imx-usb 2184200.usb@2184200.of: req=6 (0x6), type=128 (0x80), value=769, index=1
imx-usb 2184200.usb@2184200.of: USB_DT_STRING config
usb1: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x302 index 0x1 length 0xFF
imx-usb 2184200.usb@2184200.of: req=6 (0x6), type=128 (0x80), value=770, index=1
imx-usb 2184200.usb@2184200.of: USB_DT_STRING config
usb1: Bus 001 Device 001: ID 0000:0000 EHCI Host Controller
register_device: usb1
usb: matching: 0x0000 0x0000
usb: match: 0x0000 0x0000
usb-hub usb1: usb_control_msg: request: 0x6, requesttype: 0xA0, value 0x2900 index 0x0 length 0x4
imx-usb 2184200.usb@2184200.of: req=6 (0x6), type=160 (0xa0), value=10496, index=0
imx-usb 2184200.usb@2184200.of: USB_DT_HUB config
usb-hub usb1: usb_control_msg: request: 0x6, requesttype: 0xA0, value 0x2900 index 0x0 length 0x9
imx-usb 2184200.usb@2184200.of: req=6 (0x6), type=160 (0xa0), value=10496, index=0
imx-usb 2184200.usb@2184200.of: USB_DT_HUB config
usb-hub usb1: 1 ports detected
usb-hub usb1: individual port power switching
usb-hub usb1: standalone hub
usb-hub usb1: global over-current protection
usb-hub usb1: Single TT
usb-hub usb1: TT requires at most 8 FS bit times (666 ns)
usb-hub usb1: power on to power good time: 20ms
usb-hub usb1: hub controller current requirement: 0mA
usb-hub usb1: port 1 is removable
usb-hub usb1: usb_control_msg: request: 0x0, requesttype: 0xA0, value 0x0 index 0x0 length 0x4
imx-usb 2184200.usb@2184200.of: req=0 (0x0), type=160 (0xa0), value=0, index=0
usb-hub usb1: get_hub_status returned status 1, change 8101
usb-hub usb1: local power source is lost (inactive)
usb-hub usb1: no over-current condition exists
usb-hub usb1: enabling power on all ports
usb-hub usb1: usb_control_msg: request: 0x3, requesttype: 0x23, value 0x8 index 0x1 length 0x0
imx-usb 2184200.usb@2184200.of: req=3 (0x3), type=35 (0x23), value=8, index=1
imx-usb 2184200.usb@2184200.of: Len is 0
usb-hub usb1: port1: usb_set_port_feature returns 0x00000000
usb-hub usb1: devnum=1 poweron: query_delay=100 connect_timeout=1100
usb-hub usb1: usb_control_msg: request: 0x0, requesttype: 0xA3, value 0x0 index 0x1 length 0x4
imx-usb 2184200.usb@2184200.of: req=0 (0x0), type=163 (0xa3), value=0, index=1
usb-hub usb1: port1: Status 0x0101 Change 0x0001
usb-hub usb1: port1: USB dev found
usb-hub usb1: usb_control_msg: request: 0x1, requesttype: 0x23, value 0x10 index 0x1 length 0x0
imx-usb 2184200.usb@2184200.of: req=1 (0x1), type=35 (0x23), value=16, index=1
imx-usb 2184200.usb@2184200.of: Len is 0
usb-hub usb1: port1: resetting...
usb-hub usb1: usb_control_msg: request: 0x3, requesttype: 0x23, value 0x4 index 0x1 length 0x0
imx-usb 2184200.usb@2184200.of: req=3 (0x3), type=35 (0x23), value=4, index=1
imx-usb 2184200.usb@2184200.of: Len is 0
usb-hub usb1: usb_control_msg: request: 0x0, requesttype: 0xA3, value 0x0 index 0x1 length 0x4
imx-usb 2184200.usb@2184200.of: req=0 (0x0), type=163 (0xa3), value=0, index=1
usb-hub usb1: port1: status 0x0503, change 0x0010, 480 Mb/s
usb-hub usb1: port1: STAT_C_CONNECTION = 0 STAT_CONNECTION = 1  USB_PORT_STAT_ENABLE 1
usb-hub usb1: usb_control_msg: request: 0x1, requesttype: 0x23, value 0x14 index 0x1 length 0x0
imx-usb 2184200.usb@2184200.of: req=1 (0x1), type=35 (0x23), value=20, index=1
imx-usb 2184200.usb@2184200.of: Len is 0
usb1-0: set address 2
usb1-0: usb_control_msg: request: 0x5, requesttype: 0x0, value 0x2 index 0x0 length 0x0
imx-usb 2184200.usb@2184200.of: pipe=8c000000, buffer=00000000, length=0, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=5 (0x5), type=0 (0x0), value=2 (0x2), index=0
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008d00
usb1-0: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x100 index 0x0 length 0x12
imx-usb 2184200.usb@2184200.of: pipe=8c000283, buffer=8ffc89c0, length=18, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=256 (0x100), index=0
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008c00
usb1-0: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x200 index 0x0 length 0x9
imx-usb 2184200.usb@2184200.of: pipe=8c000283, buffer=8ffca240, length=9, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=512 (0x200), index=0
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008c00
usb1-0: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x200 index 0x0 length 0x29
imx-usb 2184200.usb@2184200.of: pipe=8c000283, buffer=8ffca240, length=41, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=512 (0x200), index=0
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008c00
usb1-0: get_conf_no 0 Result 41, wLength 41
usb1-0: if 0, ep 0
usb1-0: if 0, ep 1
usb1-0: ##EP epmaxpacketin[1] = 1
usb1-0: set configuration 1
usb1-0: usb_control_msg: request: 0x9, requesttype: 0x0, value 0x1 index 0x0 length 0x0
imx-usb 2184200.usb@2184200.of: pipe=8c000203, buffer=00000000, length=0, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=9 (0x9), type=0 (0x0), value=1 (0x1), index=0
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008d00
usb1-0: new device: Mfr=1, Product=2, SerialNumber=0
usb1-0: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x300 index 0x0 length 0xFF
imx-usb 2184200.usb@2184200.of: pipe=8c000283, buffer=9ffefa58, length=255, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=768 (0x300), index=0
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008c00
usb1-0: USB device number 2 default language ID 0x409
usb1-0: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x301 index 0x409 length 0xFF
imx-usb 2184200.usb@2184200.of: pipe=8c000283, buffer=9ffefa58, length=255, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=769 (0x301), index=1033
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008c00
usb1-0: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x302 index 0x409 length 0xFF
imx-usb 2184200.usb@2184200.of: pipe=8c000283, buffer=9ffefa58, length=255, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=770 (0x302), index=1033
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008c00
usb1-0: Bus 001 Device 002: ID 0424:4916 USB4916
register_device: usb1-0
usb: matching: 0x0424 0x4916
usb: match: 0x0000 0x0000
usb-hub usb1-0: usb_control_msg: request: 0x6, requesttype: 0xA0, value 0x2900 index 0x0 length 0x4
imx-usb 2184200.usb@2184200.of: pipe=8c000283, buffer=9ffefa28, length=4, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=160 (0xa0), value=10496 (0x2900), index=0
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008c00
usb-hub usb1-0: usb_control_msg: request: 0x6, requesttype: 0xA0, value 0x2900 index 0x0 length 0x9
imx-usb 2184200.usb@2184200.of: pipe=8c000283, buffer=9ffefa28, length=9, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=160 (0xa0), value=10496 (0x2900), index=0
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008c00
usb-hub usb1-0: 7 ports detected
usb-hub usb1-0: individual port power switching
usb-hub usb1-0: part of a compound device
usb-hub usb1-0: individual port over-current protection
usb-hub usb1-0: usb_control_msg: request: 0xB, requesttype: 0x1, value 0x1 index 0x0 length 0x0
imx-usb 2184200.usb@2184200.of: pipe=8c000203, buffer=00000000, length=0, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=11 (0xb), type=1 (0x1), value=1 (0x1), index=0
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008d00
usb-hub usb1-0: TT per port
usb-hub usb1-0: TT requires at most 8 FS bit times (666 ns)
usb-hub usb1-0: power on to power good time: 510ms
usb-hub usb1-0: hub controller current requirement: 0mA
usb-hub usb1-0: port 1 is removable
usb-hub usb1-0: port 2 is removable
usb-hub usb1-0: port 3 is removable
usb-hub usb1-0: port 4 is removable
usb-hub usb1-0: port 5 is not removable
usb-hub usb1-0: port 6 is not removable
usb-hub usb1-0: port 7 is not removable
usb-hub usb1-0: usb_control_msg: request: 0x0, requesttype: 0xA0, value 0x0 index 0x0 length 0x4
imx-usb 2184200.usb@2184200.of: pipe=8c000283, buffer=9ffefa28, length=4, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=0 (0x0), type=160 (0xa0), value=0 (0x0), index=0
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008c00
usb-hub usb1-0: get_hub_status returned status 0, change 0
usb-hub usb1-0: local power source is good
usb-hub usb1-0: no over-current condition exists
usb-hub usb1-0: enabling power on all ports
usb-hub usb1-0: usb_control_msg: request: 0x3, requesttype: 0x23, value 0x8 index 0x1 length 0x0
imx-usb 2184200.usb@2184200.of: pipe=8c000203, buffer=00000000, length=0, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=3 (0x3), type=35 (0x23), value=8 (0x8), index=1
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008d00
usb-hub usb1-0: port1: usb_set_port_feature returns 0x00000000
usb-hub usb1-0: usb_control_msg: request: 0x3, requesttype: 0x23, value 0x8 index 0x2 length 0x0
imx-usb 2184200.usb@2184200.of: pipe=8c000203, buffer=00000000, length=0, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=3 (0x3), type=35 (0x23), value=8 (0x8), index=2
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008d00
usb-hub usb1-0: port2: usb_set_port_feature returns 0x00000000
usb-hub usb1-0: usb_control_msg: request: 0x3, requesttype: 0x23, value 0x8 index 0x3 length 0x0
imx-usb 2184200.usb@2184200.of: pipe=8c000203, buffer=00000000, length=0, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=3 (0x3), type=35 (0x23), value=8 (0x8), index=3
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008d00
usb-hub usb1-0: port3: usb_set_port_feature returns 0x00000000
usb-hub usb1-0: usb_control_msg: request: 0x3, requesttype: 0x23, value 0x8 index 0x4 length 0x0
imx-usb 2184200.usb@2184200.of: pipe=8c000203, buffer=00000000, length=0, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=3 (0x3), type=35 (0x23), value=8 (0x8), index=4
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008d00
usb-hub usb1-0: port4: usb_set_port_feature returns 0x00000000
usb-hub usb1-0: usb_control_msg: request: 0x3, requesttype: 0x23, value 0x8 index 0x5 length 0x0
imx-usb 2184200.usb@2184200.of: pipe=8c000203, buffer=00000000, length=0, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=3 (0x3), type=35 (0x23), value=8 (0x8), index=5
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008d00
usb-hub usb1-0: port5: usb_set_port_feature returns 0x00000000
usb-hub usb1-0: usb_control_msg: request: 0x3, requesttype: 0x23, value 0x8 index 0x6 length 0x0
imx-usb 2184200.usb@2184200.of: pipe=8c000203, buffer=00000000, length=0, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=3 (0x3), type=35 (0x23), value=8 (0x8), index=6
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008d00
usb-hub usb1-0: port6: usb_set_port_feature returns 0x00000000
usb-hub usb1-0: usb_control_msg: request: 0x3, requesttype: 0x23, value 0x8 index 0x7 length 0x0
imx-usb 2184200.usb@2184200.of: pipe=8c000203, buffer=00000000, length=0, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=3 (0x3), type=35 (0x23), value=8 (0x8), index=7
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008d00
usb-hub usb1-0: port7: usb_set_port_feature returns 0x00000000
usb-hub usb1-0: devnum=2 poweron: query_delay=510 connect_timeout=1510
usb-hub usb1-0: usb_control_msg: request: 0x0, requesttype: 0xA3, value 0x0 index 0x1 length 0x4
imx-usb 2184200.usb@2184200.of: pipe=8c000283, buffer=9ffefd28, length=4, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=0 (0x0), type=163 (0xa3), value=0 (0x0), index=1
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008c00
usb-hub usb1-0: port1: Status 0x0101 Change 0x0001
usb-hub usb1-0: port1: USB dev found
usb-hub usb1-0: usb_control_msg: request: 0x1, requesttype: 0x23, value 0x10 index 0x1 length 0x0
imx-usb 2184200.usb@2184200.of: pipe=8c000203, buffer=00000000, length=0, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=1 (0x1), type=35 (0x23), value=16 (0x10), index=1
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008d00
usb-hub usb1-0: port1: resetting...
usb-hub usb1-0: usb_control_msg: request: 0x3, requesttype: 0x23, value 0x4 index 0x1 length 0x0
imx-usb 2184200.usb@2184200.of: pipe=8c000203, buffer=00000000, length=0, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=3 (0x3), type=35 (0x23), value=4 (0x4), index=1
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008d00
usb-hub usb1-0: usb_control_msg: request: 0x0, requesttype: 0xA3, value 0x0 index 0x1 length 0x4
imx-usb 2184200.usb@2184200.of: pipe=8c000283, buffer=9ffefd2c, length=4, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=0 (0x0), type=163 (0xa3), value=0 (0x0), index=1
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008c00
usb-hub usb1-0: port1: status 0x0503, change 0x0010, 480 Mb/s
usb-hub usb1-0: port1: STAT_C_CONNECTION = 0 STAT_CONNECTION = 1  USB_PORT_STAT_ENABLE 1
usb-hub usb1-0: usb_control_msg: request: 0x1, requesttype: 0x23, value 0x14 index 0x1 length 0x0
imx-usb 2184200.usb@2184200.of: pipe=8c000203, buffer=00000000, length=0, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=1 (0x1), type=35 (0x23), value=20 (0x14), index=1
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008d00
usb1-0-0: set address 3
usb1-0-0: usb_control_msg: request: 0x5, requesttype: 0x0, value 0x3 index 0x0 length 0x0
imx-usb 2184200.usb@2184200.of: pipe=8c000000, buffer=00000000, length=0, req=8ff5df40
imx-usb 2184200.usb@2184200.of: (req=5 (0x5), type=0 (0x0), value=3 (0x3), index=0
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008d00
usb1-0-0: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x100 index 0x0 length 0x12
imx-usb 2184200.usb@2184200.of: pipe=8c000383, buffer=8ff1f1c0, length=18, req=8ff5df40
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=256 (0x100), index=0
imx-usb 2184200.usb@2184200.of: dev=3, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
usb1-0-0: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x200 index 0x0 length 0x9
imx-usb 2184200.usb@2184200.of: pipe=8c000383, buffer=8fff92c0, length=9, req=8ff5df40
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=512 (0x200), index=0
imx-usb 2184200.usb@2184200.of: dev=3, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
ERROR: usb1-0-0: unable to get descriptor, error 80000000
usb1-0-0: unknown Description Type : 20
usb: 6B usb: 20 usb: 34 usb: 30 usb: 38 usb: 35 usb: 29 usb: 20 usb: 30 usb: 78 usb: 30 usb: 8C usb: 92 usb: FF usb: 8F usb: FB usb: 01 usb: 00 usb: 00 usb: C0 usb: 3F usb: FD usb: 8F usb: 4C usb: CD usb: F5 usb: 8F usb: 01 usb: 00 usb: 00 usb: 00 usb: 26 usb: 00 usb: 00 usb: 00 usb: 00 usb: 00 usb: 00 usb: 00 usb: 00 usb: 00 usb: 00 usb: 00 usb: AA usb: 0F usb: 00 usb: 00 usb: 00 usb: 00 usb: 00 usb: 00 usb: AD usb: A6 usb: FE usb: 8F usb: 00 usb: 00 usb: 00 usb: 00 usb: 00 usb: 00 usb: 00 usb: 00 usb: D4 usb: 92 usb: FF usb: 8F usb: 47 usb: 00 usb: 00 usb: 00 usb: 88 usb: EC usb: FC usb: 8F usb: 20 usb: 94 usb: FF usb: 8F usb: FF usb: FF usb: FF usb: FF usb: FF usb: FF usb: FF usb: FF usb: 00 usb: 00 usb: 00 usb: 00 usb: 00 usb: 00 usb: 00 usb: 00 usb: 00 usb: 00 usb: 00 usb: 00 usb: 00 usb: 00 usb: 00 usb: 00 usb: 00 usb: 01 usb: 10 usb: 00 usb: 


usb1-0-0: set configuration 1
usb1-0-0: usb_control_msg: request: 0x9, requesttype: 0x0, value 0x1 index 0x0 length 0x0
imx-usb 2184200.usb@2184200.of: pipe=8c000303, buffer=00000000, length=0, req=8ff5df40
imx-usb 2184200.usb@2184200.of: (req=9 (0x9), type=0 (0x0), value=1 (0x1), index=0
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008d00
usb1-0-0: new device: Mfr=1, Product=2, SerialNumber=0
usb1-0-0: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x300 index 0x0 length 0xFF
imx-usb 2184200.usb@2184200.of: pipe=8c000383, buffer=9ffefa58, length=255, req=8ff5df40
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=768 (0x300), index=0
imx-usb 2184200.usb@2184200.of: dev=3, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
usb1-0-0: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x300 index 0x0 length 0xFF
imx-usb 2184200.usb@2184200.of: pipe=8c000383, buffer=9ffefa58, length=255, req=8ff5df40
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=768 (0x300), index=0
imx-usb 2184200.usb@2184200.of: dev=3, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
usb1-0-0: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x300 index 0x0 length 0xFF
imx-usb 2184200.usb@2184200.of: pipe=8c000383, buffer=9ffefa58, length=255, req=8ff5df40
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=768 (0x300), index=0
imx-usb 2184200.usb@2184200.of: dev=3, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
usb1-0-0: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x300 index 0x0 length 0x2
imx-usb 2184200.usb@2184200.of: pipe=8c000383, buffer=9ffefa58, length=2, req=8ff5df40
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=768 (0x300), index=0
imx-usb 2184200.usb@2184200.of: dev=3, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
usb1-0-0: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x300 index 0x0 length 0x2
imx-usb 2184200.usb@2184200.of: pipe=8c000383, buffer=9ffefa58, length=2, req=8ff5df40
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=768 (0x300), index=0
imx-usb 2184200.usb@2184200.of: dev=3, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
usb1-0-0: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x300 index 0x0 length 0x2
imx-usb 2184200.usb@2184200.of: pipe=8c000383, buffer=9ffefa58, length=2, req=8ff5df40
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=768 (0x300), index=0
imx-usb 2184200.usb@2184200.of: dev=3, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
usb1-0-0: error getting string descriptor 0 (error=80000000)
usb1-0-0: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x300 index 0x0 length 0xFF
imx-usb 2184200.usb@2184200.of: pipe=8c000383, buffer=9ffefa58, length=255, req=8ff5df40
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=768 (0x300), index=0
imx-usb 2184200.usb@2184200.of: dev=3, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
usb1-0-0: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x300 index 0x0 length 0xFF
imx-usb 2184200.usb@2184200.of: pipe=8c000383, buffer=9ffefa58, length=255, req=8ff5df40
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=768 (0x300), index=0
imx-usb 2184200.usb@2184200.of: dev=3, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
usb1-0-0: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x300 index 0x0 length 0xFF
imx-usb 2184200.usb@2184200.of: pipe=8c000383, buffer=9ffefa58, length=255, req=8ff5df40
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=768 (0x300), index=0
imx-usb 2184200.usb@2184200.of: dev=3, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
usb1-0-0: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x300 index 0x0 length 0x2
imx-usb 2184200.usb@2184200.of: pipe=8c000383, buffer=9ffefa58, length=2, req=8ff5df40
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=768 (0x300), index=0
imx-usb 2184200.usb@2184200.of: dev=3, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
usb1-0-0: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x300 index 0x0 length 0x2
imx-usb 2184200.usb@2184200.of: pipe=8c000383, buffer=9ffefa58, length=2, req=8ff5df40
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=768 (0x300), index=0
imx-usb 2184200.usb@2184200.of: dev=3, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
usb1-0-0: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x300 index 0x0 length 0x2
imx-usb 2184200.usb@2184200.of: pipe=8c000383, buffer=9ffefa58, length=2, req=8ff5df40
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=768 (0x300), index=0
imx-usb 2184200.usb@2184200.of: dev=3, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
usb1-0-0: error getting string descriptor 0 (error=80000000)
usb1-0-0: Bus 001 Device 003: ID 090c:3267 
register_device: usb1-0-0
usb: matching: 0x090c 0x3267
usb: matching: 0x090c 0x3267
usb-hub usb1-0: usb_control_msg: request: 0x0, requesttype: 0xA3, value 0x0 index 0x2 length 0x4
imx-usb 2184200.usb@2184200.of: pipe=8c000283, buffer=9ffefd28, length=4, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=0 (0x0), type=163 (0xa3), value=0 (0x0), index=2
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008c00
usb-hub usb1-0: port2: Status 0x0100 Change 0x0000
usb-hub usb1-0: usb_control_msg: request: 0x0, requesttype: 0xA3, value 0x0 index 0x3 length 0x4
imx-usb 2184200.usb@2184200.of: pipe=8c000283, buffer=9ffefd28, length=4, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=0 (0x0), type=163 (0xa3), value=0 (0x0), index=3
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008c00
usb-hub usb1-0: port3: Status 0x0100 Change 0x0000
usb-hub usb1-0: usb_control_msg: request: 0x0, requesttype: 0xA3, value 0x0 index 0x4 length 0x4
imx-usb 2184200.usb@2184200.of: pipe=8c000283, buffer=9ffefd28, length=4, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=0 (0x0), type=163 (0xa3), value=0 (0x0), index=4
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008c00
usb-hub usb1-0: port4: Status 0x0100 Change 0x0000
usb-hub usb1-0: usb_control_msg: request: 0x0, requesttype: 0xA3, value 0x0 index 0x5 length 0x4
imx-usb 2184200.usb@2184200.of: pipe=8c000283, buffer=9ffefd28, length=4, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=0 (0x0), type=163 (0xa3), value=0 (0x0), index=5
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008c00
usb-hub usb1-0: port5: Status 0x0101 Change 0x0001
usb-hub usb1-0: port5: USB dev found
usb-hub usb1-0: usb_control_msg: request: 0x1, requesttype: 0x23, value 0x10 index 0x5 length 0x0
imx-usb 2184200.usb@2184200.of: pipe=8c000203, buffer=00000000, length=0, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=1 (0x1), type=35 (0x23), value=16 (0x10), index=5
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008d00
usb-hub usb1-0: port5: resetting...
usb-hub usb1-0: usb_control_msg: request: 0x3, requesttype: 0x23, value 0x4 index 0x5 length 0x0
imx-usb 2184200.usb@2184200.of: pipe=8c000203, buffer=00000000, length=0, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=3 (0x3), type=35 (0x23), value=4 (0x4), index=5
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008d00
usb-hub usb1-0: usb_control_msg: request: 0x0, requesttype: 0xA3, value 0x0 index 0x5 length 0x4
imx-usb 2184200.usb@2184200.of: pipe=8c000283, buffer=9ffefd2c, length=4, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=0 (0x0), type=163 (0xa3), value=0 (0x0), index=5
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008c00
usb-hub usb1-0: port5: status 0x0503, change 0x0010, 480 Mb/s
usb-hub usb1-0: port5: STAT_C_CONNECTION = 0 STAT_CONNECTION = 1  USB_PORT_STAT_ENABLE 1
usb-hub usb1-0: usb_control_msg: request: 0x1, requesttype: 0x23, value 0x14 index 0x5 length 0x0
imx-usb 2184200.usb@2184200.of: pipe=8c000203, buffer=00000000, length=0, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=1 (0x1), type=35 (0x23), value=20 (0x14), index=5
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008d00
usb1-0-4: set address 4
usb1-0-4: usb_control_msg: request: 0x5, requesttype: 0x0, value 0x4 index 0x0 length 0x0
imx-usb 2184200.usb@2184200.of: pipe=8c000000, buffer=00000000, length=0, req=8ff57580
imx-usb 2184200.usb@2184200.of: (req=5 (0x5), type=0 (0x0), value=4 (0x4), index=0
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008d00
usb1-0-4: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x100 index 0x0 length 0x12
imx-usb 2184200.usb@2184200.of: pipe=8c000483, buffer=8ffca7c0, length=18, req=8ff57580
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=256 (0x100), index=0
imx-usb 2184200.usb@2184200.of: dev=4, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
usb1-0-4: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x200 index 0x0 length 0x9
imx-usb 2184200.usb@2184200.of: pipe=8c000483, buffer=8ffed400, length=9, req=8ff57580
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=512 (0x200), index=0
imx-usb 2184200.usb@2184200.of: dev=4, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
ERROR: usb1-0-4: unable to get descriptor, error 80000000
usb1-0-4: unknown Description Type : 20
usb: 02 usb: 20 usb: 


usb1-0-4: set configuration 1
usb1-0-4: usb_control_msg: request: 0x9, requesttype: 0x0, value 0x1 index 0x0 length 0x0
imx-usb 2184200.usb@2184200.of: pipe=8c000403, buffer=00000000, length=0, req=8ff57580
imx-usb 2184200.usb@2184200.of: (req=9 (0x9), type=0 (0x0), value=1 (0x1), index=0
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008d00
usb1-0-4: new device: Mfr=1, Product=2, SerialNumber=3
usb1-0-4: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x300 index 0x0 length 0xFF
imx-usb 2184200.usb@2184200.of: pipe=8c000483, buffer=9ffefa58, length=255, req=8ff57580
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=768 (0x300), index=0
imx-usb 2184200.usb@2184200.of: dev=4, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
usb1-0-4: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x300 index 0x0 length 0xFF
imx-usb 2184200.usb@2184200.of: pipe=8c000483, buffer=9ffefa58, length=255, req=8ff57580
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=768 (0x300), index=0
imx-usb 2184200.usb@2184200.of: dev=4, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
usb1-0-4: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x300 index 0x0 length 0xFF
imx-usb 2184200.usb@2184200.of: pipe=8c000483, buffer=9ffefa58, length=255, req=8ff57580
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=768 (0x300), index=0
imx-usb 2184200.usb@2184200.of: dev=4, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
usb1-0-4: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x300 index 0x0 length 0x2
imx-usb 2184200.usb@2184200.of: pipe=8c000483, buffer=9ffefa58, length=2, req=8ff57580
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=768 (0x300), index=0
imx-usb 2184200.usb@2184200.of: dev=4, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
usb1-0-4: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x300 index 0x0 length 0x2
imx-usb 2184200.usb@2184200.of: pipe=8c000483, buffer=9ffefa58, length=2, req=8ff57580
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=768 (0x300), index=0
imx-usb 2184200.usb@2184200.of: dev=4, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
usb1-0-4: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x300 index 0x0 length 0x2
imx-usb 2184200.usb@2184200.of: pipe=8c000483, buffer=9ffefa58, length=2, req=8ff57580
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=768 (0x300), index=0
imx-usb 2184200.usb@2184200.of: dev=4, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
usb1-0-4: error getting string descriptor 0 (error=80000000)
usb1-0-4: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x300 index 0x0 length 0xFF
imx-usb 2184200.usb@2184200.of: pipe=8c000483, buffer=9ffefa58, length=255, req=8ff57580
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=768 (0x300), index=0
imx-usb 2184200.usb@2184200.of: dev=4, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
usb1-0-4: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x300 index 0x0 length 0xFF
imx-usb 2184200.usb@2184200.of: pipe=8c000483, buffer=9ffefa58, length=255, req=8ff57580
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=768 (0x300), index=0
imx-usb 2184200.usb@2184200.of: dev=4, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
usb1-0-4: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x300 index 0x0 length 0xFF
imx-usb 2184200.usb@2184200.of: pipe=8c000483, buffer=9ffefa58, length=255, req=8ff57580
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=768 (0x300), index=0
imx-usb 2184200.usb@2184200.of: dev=4, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
usb1-0-4: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x300 index 0x0 length 0x2
imx-usb 2184200.usb@2184200.of: pipe=8c000483, buffer=9ffefa58, length=2, req=8ff57580
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=768 (0x300), index=0
imx-usb 2184200.usb@2184200.of: dev=4, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
usb1-0-4: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x300 index 0x0 length 0x2
imx-usb 2184200.usb@2184200.of: pipe=8c000483, buffer=9ffefa58, length=2, req=8ff57580
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=768 (0x300), index=0
imx-usb 2184200.usb@2184200.of: dev=4, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
usb1-0-4: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x300 index 0x0 length 0x2
imx-usb 2184200.usb@2184200.of: pipe=8c000483, buffer=9ffefa58, length=2, req=8ff57580
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=768 (0x300), index=0
imx-usb 2184200.usb@2184200.of: dev=4, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
usb1-0-4: error getting string descriptor 0 (error=80000000)
usb1-0-4: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x300 index 0x0 length 0xFF
imx-usb 2184200.usb@2184200.of: pipe=8c000483, buffer=9ffefa58, length=255, req=8ff57580
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=768 (0x300), index=0
imx-usb 2184200.usb@2184200.of: dev=4, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
usb1-0-4: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x300 index 0x0 length 0xFF
imx-usb 2184200.usb@2184200.of: pipe=8c000483, buffer=9ffefa58, length=255, req=8ff57580
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=768 (0x300), index=0
imx-usb 2184200.usb@2184200.of: dev=4, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
usb1-0-4: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x300 index 0x0 length 0xFF
imx-usb 2184200.usb@2184200.of: pipe=8c000483, buffer=9ffefa58, length=255, req=8ff57580
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=768 (0x300), index=0
imx-usb 2184200.usb@2184200.of: dev=4, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
usb1-0-4: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x300 index 0x0 length 0x2
imx-usb 2184200.usb@2184200.of: pipe=8c000483, buffer=9ffefa58, length=2, req=8ff57580
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=768 (0x300), index=0
imx-usb 2184200.usb@2184200.of: dev=4, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
usb1-0-4: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x300 index 0x0 length 0x2
imx-usb 2184200.usb@2184200.of: pipe=8c000483, buffer=9ffefa58, length=2, req=8ff57580
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=768 (0x300), index=0
imx-usb 2184200.usb@2184200.of: dev=4, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
usb1-0-4: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x300 index 0x0 length 0x2
imx-usb 2184200.usb@2184200.of: pipe=8c000483, buffer=9ffefa58, length=2, req=8ff57580
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=768 (0x300), index=0
imx-usb 2184200.usb@2184200.of: dev=4, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
usb1-0-4: error getting string descriptor 0 (error=80000000)
usb1-0-4: Bus 001 Device 004: ID 0424:2240 
register_device: usb1-0-4
usb: matching: 0x0424 0x2240
usb: matching: 0x0424 0x2240
usb-hub usb1-0: usb_control_msg: request: 0x0, requesttype: 0xA3, value 0x0 index 0x6 length 0x4
imx-usb 2184200.usb@2184200.of: pipe=8c000283, buffer=9ffefd28, length=4, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=0 (0x0), type=163 (0xa3), value=0 (0x0), index=6
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008c00
usb-hub usb1-0: port6: Status 0x0100 Change 0x0000
usb-hub usb1-0: port6: timeout
usb-hub usb1-0: usb_control_msg: request: 0x0, requesttype: 0xA3, value 0x0 index 0x7 length 0x4
imx-usb 2184200.usb@2184200.of: pipe=8c000283, buffer=9ffefd28, length=4, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=0 (0x0), type=163 (0xa3), value=0 (0x0), index=7
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008c00
usb-hub usb1-0: port7: Status 0x0101 Change 0x0001
usb-hub usb1-0: port7: USB dev found
usb-hub usb1-0: usb_control_msg: request: 0x1, requesttype: 0x23, value 0x10 index 0x7 length 0x0
imx-usb 2184200.usb@2184200.of: pipe=8c000203, buffer=00000000, length=0, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=1 (0x1), type=35 (0x23), value=16 (0x10), index=7
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008d00
usb-hub usb1-0: port7: resetting...
usb-hub usb1-0: usb_control_msg: request: 0x3, requesttype: 0x23, value 0x4 index 0x7 length 0x0
imx-usb 2184200.usb@2184200.of: pipe=8c000203, buffer=00000000, length=0, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=3 (0x3), type=35 (0x23), value=4 (0x4), index=7
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008d00
usb-hub usb1-0: usb_control_msg: request: 0x0, requesttype: 0xA3, value 0x0 index 0x7 length 0x4
imx-usb 2184200.usb@2184200.of: pipe=8c000283, buffer=9ffefd2c, length=4, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=0 (0x0), type=163 (0xa3), value=0 (0x0), index=7
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008c00
usb-hub usb1-0: port7: status 0x0503, change 0x0010, 480 Mb/s
usb-hub usb1-0: port7: STAT_C_CONNECTION = 0 STAT_CONNECTION = 1  USB_PORT_STAT_ENABLE 1
usb-hub usb1-0: usb_control_msg: request: 0x1, requesttype: 0x23, value 0x14 index 0x7 length 0x0
imx-usb 2184200.usb@2184200.of: pipe=8c000203, buffer=00000000, length=0, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=1 (0x1), type=35 (0x23), value=20 (0x14), index=7
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008d00
usb1-0-6: set address 5
usb1-0-6: usb_control_msg: request: 0x5, requesttype: 0x0, value 0x5 index 0x0 length 0x0
imx-usb 2184200.usb@2184200.of: pipe=8c000000, buffer=00000000, length=0, req=8ff56a40
imx-usb 2184200.usb@2184200.of: (req=5 (0x5), type=0 (0x0), value=5 (0x5), index=0
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008d00
usb1-0-6: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x100 index 0x0 length 0x12
imx-usb 2184200.usb@2184200.of: pipe=8c000583, buffer=8ff58640, length=18, req=8ff56a40
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=256 (0x100), index=0
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008c00
usb1-0-6: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x200 index 0x0 length 0x9
imx-usb 2184200.usb@2184200.of: pipe=8c000583, buffer=8ffde9c0, length=9, req=8ff56a40
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=512 (0x200), index=0
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008c00
usb1-0-6: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x200 index 0x0 length 0xD3
imx-usb 2184200.usb@2184200.of: pipe=8c000583, buffer=8ffde9c0, length=211, req=8ff56a40
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=512 (0x200), index=0
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008c00
usb1-0-6: get_conf_no 0 Result 211, wLength 211
usb1-0-6: unknown Description Type : b
usb: 08 usb: 0B usb: 01 usb: 03 usb: 01 usb: 01 usb: 00 usb: 00 usb: 


usb1-0-6: unknown Description Type : 24
usb: 0A usb: 24 usb: 01 usb: 00 usb: 01 usb: 48 usb: 00 usb: 02 usb: 02 usb: 03 usb: 


usb1-0-6: unknown Description Type : 24
usb: 0C usb: 24 usb: 02 usb: 01 usb: 01 usb: 01 usb: 00 usb: 02 usb: 03 usb: 00 usb: 00 usb: 00 usb: 


usb1-0-6: unknown Description Type : 24
usb: 09 usb: 24 usb: 03 usb: 02 usb: 01 usb: 03 usb: 00 usb: 03 usb: 00 usb: 


usb1-0-6: unknown Description Type : 24
usb: 0A usb: 24 usb: 06 usb: 03 usb: 01 usb: 01 usb: 01 usb: 02 usb: 02 usb: 00 usb: 


usb1-0-6: unknown Description Type : 24
usb: 0C usb: 24 usb: 02 usb: 04 usb: 01 usb: 02 usb: 00 usb: 02 usb: 03 usb: 00 usb: 00 usb: 00 usb: 


usb1-0-6: unknown Description Type : 24
usb: 09 usb: 24 usb: 03 usb: 05 usb: 01 usb: 01 usb: 00 usb: 06 usb: 00 usb: 


usb1-0-6: unknown Description Type : 24
usb: 0A usb: 24 usb: 06 usb: 06 usb: 04 usb: 01 usb: 01 usb: 00 usb: 00 usb: 00 usb: 


usb1-0-6: unknown Description Type : 24
usb: 07 usb: 24 usb: 01 usb: 01 usb: 00 usb: 01 usb: 00 usb: 


usb1-0-6: unknown Description Type : 24
usb: 0B usb: 24 usb: 02 usb: 01 usb: 02 usb: 02 usb: 10 usb: 01 usb: 80 usb: BB usb: 00 usb: 


usb1-0-6: if 2, ep 0
usb1-0-6: unknown Description Type : 25
usb: 07 usb: 25 usb: 01 usb: 00 usb: 00 usb: 00 usb: 00 usb: 


usb1-0-6: unknown Description Type : 24
usb: 07 usb: 24 usb: 01 usb: 05 usb: 00 usb: 01 usb: 00 usb: 


usb1-0-6: unknown Description Type : 24
usb: 0B usb: 24 usb: 02 usb: 01 usb: 02 usb: 02 usb: 10 usb: 01 usb: 80 usb: BB usb: 00 usb: 


usb1-0-6: if 3, ep 0
usb1-0-6: unknown Description Type : 25
usb: 07 usb: 25 usb: 01 usb: 00 usb: 00 usb: 00 usb: 00 usb: 


usb1-0-6: set configuration 1
usb1-0-6: usb_control_msg: request: 0x9, requesttype: 0x0, value 0x1 index 0x0 length 0x0
imx-usb 2184200.usb@2184200.of: pipe=8c000503, buffer=00000000, length=0, req=8ff56a40
imx-usb 2184200.usb@2184200.of: (req=9 (0x9), type=0 (0x0), value=1 (0x1), index=0
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008d00
usb1-0-6: new device: Mfr=1, Product=2, SerialNumber=0
usb1-0-6: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x300 index 0x0 length 0xFF
imx-usb 2184200.usb@2184200.of: pipe=8c000583, buffer=9ffefa58, length=255, req=8ff56a40
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=768 (0x300), index=0
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008c00
usb1-0-6: USB device number 5 default language ID 0x409
usb1-0-6: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x301 index 0x409 length 0xFF
imx-usb 2184200.usb@2184200.of: pipe=8c000583, buffer=9ffefa58, length=255, req=8ff56a40
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=769 (0x301), index=1033
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008c00
usb1-0-6: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x302 index 0x409 length 0xFF
imx-usb 2184200.usb@2184200.of: pipe=8c000583, buffer=9ffefa58, length=255, req=8ff56a40
imx-usb 2184200.usb@2184200.of: (req=6 (0x6), type=128 (0x80), value=770 (0x302), index=1033
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008c00
usb1-0-6: Bus 001 Device 005: ID 0424:494a USB2 Controller Hub
register_device: usb1-0-6
usb: matching: 0x0424 0x494a
usb: matching: 0x0424 0x494a
usb-hub usb1-0: usb_control_msg: request: 0x0, requesttype: 0xA3, value 0x0 index 0x2 length 0x4
imx-usb 2184200.usb@2184200.of: pipe=8c000283, buffer=9ffefd28, length=4, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=0 (0x0), type=163 (0xa3), value=0 (0x0), index=2
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008c00
usb-hub usb1-0: port2: Status 0x0100 Change 0x0000
usb-hub usb1-0: port2: timeout
usb-hub usb1-0: usb_control_msg: request: 0x0, requesttype: 0xA3, value 0x0 index 0x3 length 0x4
imx-usb 2184200.usb@2184200.of: pipe=8c000283, buffer=9ffefd28, length=4, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=0 (0x0), type=163 (0xa3), value=0 (0x0), index=3
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008c00
usb-hub usb1-0: port3: Status 0x0100 Change 0x0000
usb-hub usb1-0: port3: timeout
usb-hub usb1-0: usb_control_msg: request: 0x0, requesttype: 0xA3, value 0x0 index 0x4 length 0x4
imx-usb 2184200.usb@2184200.of: pipe=8c000283, buffer=9ffefd28, length=4, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=0 (0x0), type=163 (0xa3), value=0 (0x0), index=4
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008c00
usb-hub usb1-0: port4: Status 0x0100 Change 0x0000
usb-hub usb1-0: port4: timeout
usb-hub usb1-0: usb_control_msg: request: 0x0, requesttype: 0xA3, value 0x0 index 0x1 length 0x4
imx-usb 2184200.usb@2184200.of: pipe=8c000283, buffer=9ffefcb0, length=4, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=0 (0x0), type=163 (0xa3), value=0 (0x0), index=1
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008c00
usb-hub usb1-0: port1: Status 0x0503 Change 0x0000
usb-hub usb1-0: port1: timeout
usb-hub usb1-0: usb_control_msg: request: 0x0, requesttype: 0xA3, value 0x0 index 0x2 length 0x4
imx-usb 2184200.usb@2184200.of: pipe=8c000283, buffer=9ffefcb0, length=4, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=0 (0x0), type=163 (0xa3), value=0 (0x0), index=2
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008c00
usb-hub usb1-0: port2: Status 0x0100 Change 0x0000
usb-hub usb1-0: port2: timeout
usb-hub usb1-0: usb_control_msg: request: 0x0, requesttype: 0xA3, value 0x0 index 0x3 length 0x4
imx-usb 2184200.usb@2184200.of: pipe=8c000283, buffer=9ffefcb0, length=4, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=0 (0x0), type=163 (0xa3), value=0 (0x0), index=3
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008c00
usb-hub usb1-0: port3: Status 0x0100 Change 0x0000
usb-hub usb1-0: port3: timeout
usb-hub usb1-0: usb_control_msg: request: 0x0, requesttype: 0xA3, value 0x0 index 0x4 length 0x4
imx-usb 2184200.usb@2184200.of: pipe=8c000283, buffer=9ffefcb0, length=4, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=0 (0x0), type=163 (0xa3), value=0 (0x0), index=4
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008c00
usb-hub usb1-0: port4: Status 0x0100 Change 0x0000
usb-hub usb1-0: port4: timeout
usb-hub usb1-0: usb_control_msg: request: 0x0, requesttype: 0xA3, value 0x0 index 0x5 length 0x4
imx-usb 2184200.usb@2184200.of: pipe=8c000283, buffer=9ffefcb0, length=4, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=0 (0x0), type=163 (0xa3), value=0 (0x0), index=5
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008c00
usb-hub usb1-0: port5: Status 0x0503 Change 0x0000
usb-hub usb1-0: port5: timeout
usb-hub usb1-0: usb_control_msg: request: 0x0, requesttype: 0xA3, value 0x0 index 0x6 length 0x4
imx-usb 2184200.usb@2184200.of: pipe=8c000283, buffer=9ffefcb0, length=4, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=0 (0x0), type=163 (0xa3), value=0 (0x0), index=6
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008c00
usb-hub usb1-0: port6: Status 0x0100 Change 0x0000
usb-hub usb1-0: port6: timeout
usb-hub usb1-0: usb_control_msg: request: 0x0, requesttype: 0xA3, value 0x0 index 0x7 length 0x4
imx-usb 2184200.usb@2184200.of: pipe=8c000283, buffer=9ffefcb0, length=4, req=8ff46f00
imx-usb 2184200.usb@2184200.of: (req=0 (0x0), type=163 (0xa3), value=0 (0x0), index=7
imx-usb 2184200.usb@2184200.of: TOKEN=0x00008c00
usb-hub usb1-0: port7: Status 0x0503 Change 0x0000
usb-hub usb1-0: port7: timeout
usb: 5 USB Device(s) found
barebox@Orbiter-i.MX6ULL:/ 

--nextPart2913838.NhbFuguAqk
Content-Disposition: attachment; filename="linux-usbmon.pcap"
Content-Transfer-Encoding: base64
Content-Type: application/vnd.tcpdump.pcap; name="linux-usbmon.pcap"

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
AAA=


--nextPart2913838.NhbFuguAqk
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--nextPart2913838.NhbFuguAqk--
