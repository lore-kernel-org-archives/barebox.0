Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout12.rmx.de ([94.199.88.78])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k56Lk-0006tI-17
 for barebox@lists.infradead.org; Mon, 10 Aug 2020 11:52:21 +0000
Received: from kdin01.retarus.com (kdin01.dmz1.retloc [172.19.17.48])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mailout12.rmx.de (Postfix) with ESMTPS id 4BQDpY4tzSzRkpm
 for <barebox@lists.infradead.org>; Mon, 10 Aug 2020 13:52:05 +0200 (CEST)
Received: from mta.arri.de (unknown [217.111.95.66])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by kdin01.retarus.com (Postfix) with ESMTPS id 4BQDpW08y8z2xDp
 for <barebox@lists.infradead.org>; Mon, 10 Aug 2020 13:52:03 +0200 (CEST)
From: Christian Eggers <ceggers@arri.de>
Date: Mon, 10 Aug 2020 13:52:01 +0200
Message-ID: <3346214.S29caFStrp@n95hx1g2>
In-Reply-To: <5183365.pEXpNOHncD@n95hx1g2>
References: <5183365.pEXpNOHncD@n95hx1g2>
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
Subject: Re: Some USB memory sticks not (fully) recognized
To: barebox@lists.infradead.org
Cc: Primoz Fiser <primoz.fiser@norik.com>

On Thursday, 6 August 2020, 16:29:13 CEST, Christian Eggers wrote:
> Barebox version: 2020.07.0
> Hardware: i.MX6 ULL with external Microchip USB Hub attached
> 
> I got a bug report that some newer USB memory sticks do not work with
> barebox. While with barebox-2020.01 these devices are not recognized at all,
> in barebox-2020.07 I get at least some warnings:
I checked again with an older release of barebox (2019-06). With this version,
the USB drive is detected:

> # usb -s
> usb: USB: scanning bus for devices...
> usb: Bus 001 Device 001: ID 0000:0000 EHCI Host Controller
> usb: Bus 001 Device 002: ID 0424:4916 USB4916
> usb: Bus 001 Device 003: ID 090c:3267 Flash Disk
> Using index 0 for the new disk
> usb: Bus 001 Device 004: ID 0424:494a USB2 Controller Hub
> usb: 4 USB Device(s) found
> Bus 001 Device 001: ID 0000:0000 EHCI Host Controller
> Bus 001 Device 002: ID 0424:4916 USB4916
> Bus 001 Device 003: ID 090c:3267 Flash Disk
> Bus 001 Device 004: ID 0424:494a USB2 Controller Hub

Also mounting the drive works fine. So I guess that this problem may have been 
introduced here:

b1d9837182 ("usb: Change power-on / scanning timeout handling")

Best regards
Christian

> 
> # usb
> 
> > usb: USB: scanning bus for devices...
> > usb1: Bus 001 Device 001: ID 0000:0000 EHCI Host Controller
> > usb1-0: Bus 001 Device 002: ID 0424:4916 USB4916
> > ERROR: usb1-0-4: unable to get descriptor, error 80000000
> > usb1-0-4: Bus 001 Device 003: ID 0424:2240
> > usb1-0-6: Bus 001 Device 004: ID 0424:494a USB2 Controller Hub
> > ERROR: usb1-0-0: unable to get descriptor, error 80000000
> > usb1-0-0: Bus 001 Device 005: ID 090c:3267
> > usb: 5 USB Device(s) found
> 
> Beside the USB memory stick, also one of the hub's internal
> devices is not recognized correctly. The full log output with
> global.loglevel=7 is attached. The first error seems to appear
> 
> in line 233. The USB device descriptor cannot be read:
> > usb1-0-4: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x100
> > index 0x0 length 0x12 imx-usb 2184200.usb@2184200.of: pipe=8c000483,
> > buffer=8ffca7c0, length=18, req=8ff57580 imx-usb 2184200.usb@2184200.of:
> > (req=6 (0x6), type=128 (0x80), value=256 (0x100), index=0 imx-usb
> > 2184200.usb@2184200.of: dev=4, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
> Under Linux (on the same device), the USB drives work without any noticeable
> problems:
> Linux messages (v5.4):
> > [  111.458582] 000: usb 1-1.1: new high-speed USB device number 5 using
> > ci_hdrc [  111.613740] 000: usb 1-1.1: New USB device found,
> > idVendor=090c, idProduct=3267, bcdDevice=11.00 [  111.613763] 000: usb
> > 1-1.1: New USB device strings: Mfr=1, Product=2, SerialNumber=0 [ 
> > 111.613777] 000: usb 1-1.1: Product: Flash Disk
> > [  111.613784] 000: usb 1-1.1: Manufacturer: USB
> > [  111.615642] 000: usb-storage 1-1.1:1.0: USB Mass Storage device
> > detected
> 
> An usbmon capture for Linux is also attached (USB memory stick is plugged in
> at about packet 99).
> 
> Any hints how I can debug this problem. I've almost now knowledge about
> USB...
> 
> regards
> Christian





_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
