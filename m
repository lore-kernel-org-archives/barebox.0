Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x243.google.com ([2a00:1450:400c:c09::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fL2MI-0001L1-Jn
 for barebox@lists.infradead.org; Tue, 22 May 2018 08:10:22 +0000
Received: by mail-wm0-x243.google.com with SMTP id a67-v6so29296184wmf.3
 for <barebox@lists.infradead.org>; Tue, 22 May 2018 01:09:15 -0700 (PDT)
Message-ID: <1526976551.2078.18.camel@googlemail.com>
From: Christoph Fritz <chf.fritz@googlemail.com>
Date: Tue, 22 May 2018 10:09:11 +0200
In-Reply-To: <20180522075441.mke2rbn5karwc23t@pengutronix.de>
References: <1482938984.1946.1.camel@googlemail.com>
 <20170109083855.f2vxmkmtlczdv62t@pengutronix.de>
 <1526573972.12584.7.camel@googlemail.com>
 <20180522075441.mke2rbn5karwc23t@pengutronix.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: chf.fritz@googlemail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] USB: host: hub: increase delay after device removal
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, 2018-05-22 at 09:54 +0200, Sascha Hauer wrote:
> On Thu, May 17, 2018 at 06:19:32PM +0200, Christoph Fritz wrote:

> > # still 4 USB Devices found, ...?
> > # starting 'usb' again hits a NULL pointer dereference:
> 
> Disconnecting USB devices during runtime of barebox is not really
> supported. We should probably make that clear somewhere. The code is not
> prepared for that case and trying to fix it is likely to be a bottomless
> pit.
> 
> Can you reproduce a problem without removing a device?

Yes I can, please see the scenario below.
But the USB device plugged in isn't USB certified and Linux-Kernel needs
the quirk too... so...?

# on another hardware with a bit more debug output:
# just reset board, plug in USB device and start 'usb':

barebox@:/ usb
usb: USB: scanning bus for devices...
usb: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x100 index 0x0 length 0x40
usb: set address 1
usb: usb_control_msg: request: 0x5, requesttype: 0x0, value 0x1 index 0x0 length 0x0
usb: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x100 index 0x0 length 0x12
usb: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x200 index 0x0 length 0x9
usb: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x200 index 0x0 length 0x19
usb: get_conf_no 0 Result 25, wLength 25
usb: if 0, ep 0
usb: ##EP epmaxpacketin[1] = 2
usb: set configuration 1
usb: usb_control_msg: request: 0x9, requesttype: 0x0, value 0x1 index 0x0 length 0x0
usb: new device: Mfr=1, Product=2, SerialNumber=0
usb: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x300 index 0x0 length 0xFF
usb: USB device number 1 default language ID 0x1
usb: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x301 index 0x1 length 0xFF
usb: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x302 index 0x1 length 0xFF
usb: Bus 001 Device 001: ID 0000:0000 EHCI Host Controller
usb: matching: 0x0000 0x0000
usb: matching: 0x0000 0x0000
usb: matching: 0x0000 0x0000
usb: match: 0x0000 0x0000
usb: usb_control_msg: request: 0x6, requesttype: 0xA0, value 0x2900 index 0x0 length 0x4
usb: usb_control_msg: request: 0x6, requesttype: 0xA0, value 0x2900 index 0x0 length 0x9
usb-hub usb1: 1 ports detected
usb-hub usb1: individual port power switching
usb-hub usb1: standalone hub
usb-hub usb1: global over-current protection
usb-hub usb1: power on to power good time: 20ms
usb-hub usb1: hub controller current requirement: 0mA
usb-hub usb1: port 1 is removable
usb: usb_control_msg: request: 0x0, requesttype: 0xA0, value 0x0 index 0x0 length 0x4
usb-hub usb1: get_hub_status returned status 1, change 8101
usb-hub usb1: local power source is lost (inactive)
usb-hub usb1: no over-current condition exists
usb: usb_control_msg: request: 0x1, requesttype: 0x23, value 0x8 index 0x1 length 0x0
usb-hub usb1: port 1 returns 0
usb-hub usb1: enabling power on all ports
usb: usb_control_msg: request: 0x3, requesttype: 0x23, value 0x8 index 0x1 length 0x0
usb-hub usb1: port 1 returns 0
usb: usb_control_msg: request: 0x0, requesttype: 0xA3, value 0x0 index 0x1 length 0x4
usb-hub usb1: Port 1 Status 101 Change 1
usb-hub usb1: port 1 connection change
usb: usb_control_msg: request: 0x0, requesttype: 0xA3, value 0x0 index 0x1 length 0x4
usb-hub usb1: portstatus 101, change 1, 12 Mb/s
usb: usb_control_msg: request: 0x1, requesttype: 0x23, value 0x10 index 0x1 length 0x0
usb-hub usb1: hub_port_reset: resetting port 0...
usb: usb_control_msg: request: 0x3, requesttype: 0x23, value 0x4 index 0x1 length 0x0
usb: usb_control_msg: request: 0x0, requesttype: 0xA3, value 0x0 index 0x1 length 0x4
usb-hub usb1: portstatus 503, change 10, 480 Mb/s
usb-hub usb1: STAT_C_CONNECTION = 0 STAT_CONNECTION = 1  USB_PORT_STAT_ENABLE 1
usb: usb_control_msg: request: 0x1, requesttype: 0x23, value 0x14 index 0x1 length 0x0
usb: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x100 index 0x0 length 0x40
usb-hub usb1: hub_port_reset: resetting port 0...
usb: usb_control_msg: request: 0x3, requesttype: 0x23, value 0x4 index 0x1 length 0x0
usb: usb_control_msg: request: 0x0, requesttype: 0xA3, value 0x0 index 0x1 length 0x4
usb-hub usb1: portstatus 503, change 10, 480 Mb/s
usb-hub usb1: STAT_C_CONNECTION = 0 STAT_CONNECTION = 1  USB_PORT_STAT_ENABLE 1
usb: usb_control_msg: request: 0x1, requesttype: 0x23, value 0x14 index 0x1 length 0x0
usb: set address 2
usb: usb_control_msg: request: 0x5, requesttype: 0x0, value 0x2 index 0x0 length 0x0
usb: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x100 index 0x0 length 0x12
usb: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x200 index 0x0 length 0x9
usb: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x200 index 0x0 length 0x29
usb: get_conf_no 0 Result 41, wLength 41
usb: if 0, ep 0
usb: if 0, ep 1
usb: ##EP epmaxpacketin[1] = 1
usb: set configuration 1
usb: usb_control_msg: request: 0x9, requesttype: 0x0, value 0x1 index 0x0 length 0x0
usb: new device: Mfr=0, Product=0, SerialNumber=0
usb: Bus 001 Device 002: ID 0424:2514
usb: matching: 0x0424 0x2514
usb: matching: 0x0424 0x2514
usb: matching: 0x0424 0x2514
usb: match: 0x0000 0x0000
usb: usb_control_msg: request: 0x6, requesttype: 0xA0, value 0x2900 index 0x0 length 0x4
usb: usb_control_msg: request: 0x6, requesttype: 0xA0, value 0x2900 index 0x0 length 0x9
usb-hub usb1-0: 4 ports detected
usb-hub usb1-0: individual port power switching
usb-hub usb1-0: standalone hub
usb-hub usb1-0: individual port over-current protection
usb-hub usb1-0: power on to power good time: 100ms
usb-hub usb1-0: hub controller current requirement: 1mA
usb-hub usb1-0: port 1 is removable
usb-hub usb1-0: port 2 is removable
usb-hub usb1-0: port 3 is removable
usb-hub usb1-0: port 4 is removable
usb: usb_control_msg: request: 0x0, requesttype: 0xA0, value 0x0 index 0x0 length 0x4
usb-hub usb1-0: get_hub_status returned status 0, change 0
usb-hub usb1-0: local power source is good
usb-hub usb1-0: no over-current condition exists
usb: usb_control_msg: request: 0x1, requesttype: 0x23, value 0x8 index 0x1 length 0x0
usb-hub usb1-0: port 1 returns 0
usb: usb_control_msg: request: 0x1, requesttype: 0x23, value 0x8 index 0x2 length 0x0
usb-hub usb1-0: port 2 returns 0
usb: usb_control_msg: request: 0x1, requesttype: 0x23, value 0x8 index 0x3 length 0x0
usb-hub usb1-0: port 3 returns 0
usb: usb_control_msg: request: 0x1, requesttype: 0x23, value 0x8 index 0x4 length 0x0
usb-hub usb1-0: port 4 returns 0
usb-hub usb1-0: enabling power on all ports
usb: usb_control_msg: request: 0x3, requesttype: 0x23, value 0x8 index 0x1 length 0x0
usb-hub usb1-0: port 1 returns 0
usb: usb_control_msg: request: 0x3, requesttype: 0x23, value 0x8 index 0x2 length 0x0
usb-hub usb1-0: port 2 returns 0
usb: usb_control_msg: request: 0x3, requesttype: 0x23, value 0x8 index 0x3 length 0x0
usb-hub usb1-0: port 3 returns 0
usb: usb_control_msg: request: 0x3, requesttype: 0x23, value 0x8 index 0x4 length 0x0
usb-hub usb1-0: port 4 returns 0
usb: usb_control_msg: request: 0x0, requesttype: 0xA3, value 0x0 index 0x1 length 0x4
usb-hub usb1-0: Port 1 Status 101 Change 1
usb-hub usb1-0: port 1 connection change
usb: usb_control_msg: request: 0x0, requesttype: 0xA3, value 0x0 index 0x1 length 0x4
usb-hub usb1-0: portstatus 101, change 1, 12 Mb/s
usb: usb_control_msg: request: 0x1, requesttype: 0x23, value 0x10 index 0x1 length 0x0
usb-hub usb1-0: hub_port_reset: resetting port 0...
usb: usb_control_msg: request: 0x3, requesttype: 0x23, value 0x4 index 0x1 length 0x0
usb: usb_control_msg: request: 0x0, requesttype: 0xA3, value 0x0 index 0x1 length 0x4
usb-hub usb1-0: portstatus 103, change 10, 12 Mb/s
usb-hub usb1-0: STAT_C_CONNECTION = 0 STAT_CONNECTION = 1  USB_PORT_STAT_ENABLE 1
usb: usb_control_msg: request: 0x1, requesttype: 0x23, value 0x14 index 0x1 length 0x0
usb: usb_control_msg: request: 0x6, requesttype: 0x80, value 0x100 index 0x0 length 0x40
usb: usb_new_device: usb_get_descriptor() failed with -110
usb-hub usb1-0: hub: disabling port 1
usb: usb_control_msg: request: 0x1, requesttype: 0x23, value 0x1 index 0x1 length 0x0
usb: usb_control_msg: request: 0x0, requesttype: 0xA3, value 0x0 index 0x2 length 0x4
usb-hub usb1-0: Port 2 Status 100 Change 0
usb: usb_control_msg: request: 0x0, requesttype: 0xA3, value 0x0 index 0x3 length 0x4
usb-hub usb1-0: Port 3 Status 100 Change 0
usb: usb_control_msg: request: 0x0, requesttype: 0xA3, value 0x0 index 0x4 length 0x4
usb-hub usb1-0: Port 4 Status 100 Change 0
usb: usb_control_msg: request: 0x0, requesttype: 0xA3, value 0x0 index 0x1 length 0x4
usb-hub usb1-0: Port 1 Status 101 Change 1
usb-hub usb1-0: port 1 connection change
usb: usb_control_msg: request: 0x0, requesttype: 0xA3, value 0x0 index 0x1 length 0x4
usb-hub usb1-0: portstatus 101, change 1, 12 Mb/s
usb: usb_control_msg: request: 0x1, requesttype: 0x23, value 0x10 index 0x1 length 0x0
unable to handle NULL pointer dereference at address 0x00000004
pc : [<2fe1d48a>]    lr : [<2fe1e651>]
sp : 2ffefce0  ip : 00000016  fp : 00000001
r10: 00000101  r9 : 00000001  r8 : 20183cd4
r7 : 00000000  r6 : 20185af0  r5 : 20185b14  r4 : 20185004
r3 : 00000000  r2 : 00000000  r1 : 00000000  r0 : 20185b14
Flags: nZCv  IRQs off  FIQs off  Mode SVC_32
[<2fe1d48a>] (usb_remove_device+0x4e/0x98) from [<2fe1e651>] (usb_hub_detect+0x149/0x2b0)
[<2fe1e651>] (usb_hub_detect+0x149/0x2b0) from [<2fe1e771>] (usb_hub_detect+0x269/0x2b0)
[<2fe1e771>] (usb_hub_detect+0x269/0x2b0) from [<2fe1df47>] (usb_host_detect+0x3f/0x44)
[<2fe1df47>] (usb_host_detect+0x3f/0x44) from [<2fe1df6d>] (usb_rescan+0x21/0x48)
[<2fe1df6d>] (usb_rescan+0x21/0x48) from [<2fe3100d>] (do_usb+0x2d/0xa8)
[<2fe3100d>] (do_usb+0x2d/0xa8) from [<2fe02bc9>] (execute_command+0x21/0x48)
[<2fe02bc9>] (execute_command+0x21/0x48) from [<2fe06e2f>] (run_list_real+0x55b/0x618)
[<2fe06e2f>] (run_list_real+0x55b/0x618) from [<2fe067a5>] (parse_stream_outer+0xd9/0x164)
[<2fe067a5>] (parse_stream_outer+0xd9/0x164) from [<2fe0702b>] (run_shell+0x33/0x60)
[<2fe0702b>] (run_shell+0x33/0x60) from [<2fe0092d>] (start_barebox+0x6d/0x98)
[<2fe0092d>] (start_barebox+0x6d/0x98) from [<2fe4d377>] (barebox_non_pbl_start+0xd7/0xfc)
[<2fe4d377>] (barebox_non_pbl_start+0xd7/0xfc) from [<2fe00005>] (__bare_init_start+0x1/0xc)

[<2fe4ecb5>] (unwind_backtrace+0x1/0x58) from [<2fe00b65>] (panic+0x1d/0x2c)
[<2fe00b65>] (panic+0x1d/0x2c) from [<2fe4d131>] (do_exception+0xd/0x10)
[<2fe4d131>] (do_exception+0xd/0x10) from [<2fe4d191>] (do_data_abort+0x21/0x2c)
[<2fe4d191>] (do_data_abort+0x21/0x2c) from [<2fe4c8d4>] (do_abort_6+0x48/0x54)
[<2fe4c8d4>] (do_abort_6+0x48/0x54) from [<00000000>] (0x0)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
