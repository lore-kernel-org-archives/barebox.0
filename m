Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kQrXY-0000Xz-2Z
 for barebox@lists.infradead.org; Fri, 09 Oct 2020 12:30:29 +0000
Received: by mail-io1-xd43.google.com with SMTP id l8so9828137ioh.11
 for <barebox@lists.infradead.org>; Fri, 09 Oct 2020 05:30:25 -0700 (PDT)
MIME-Version: 1.0
References: <CABMENH487jhrwdywh4KOOqvJtJ_r0ZbSMu2ArDZRHhdK==-+wQ@mail.gmail.com>
 <61631575-54f8-4fe1-4a25-a806b39f2a63@pengutronix.de>
In-Reply-To: <61631575-54f8-4fe1-4a25-a806b39f2a63@pengutronix.de>
From: "Robert Carnecky (Neopsis)" <robert@neopsis.com>
Date: Fri, 9 Oct 2020 14:30:12 +0200
Message-ID: <CABMENH4s2fWgZmJG-hMtKmHJAmC0N6PtL41LA2vJ4iuA1tPA9g@mail.gmail.com>
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
Subject: Re: Mini UART on RaspberryPi CM3/CM3+
To: barebox@lists.infradead.org

> Try adding to arch/arm/dts/bcm2837-rpi-cm3.dts:
>
> &uart1 {
>         pinctrl-names = "default";
>         pinctrl-0 = <&uart1_gpio14>;
>         status = "okay";
> };

I extended arch/arm/dts/bcm2837-rpi-cm3.dts as advised +
additionally I set UART0 to pins 32/33.

&uart0 {
     pinctrl-names = "default";
     pinctrl-0 = <&uart0_gpio32>;
     status = "okay";
};

I still cannot see Barebox console on boot, however, the Barebox loader
starts in 3 seconds my kernel and I get the Linux console output on
UART1/ttyS0. Now my Linux boots as expected, unfortunately without
visible Barebox console. I tried all Barebox console setting
(NONE/ALL/FIRST), same result, no Barebox console output on UART0
or UART1.

> If that doesn't help, use CONSOLE_ACTIVATE_ALL and listen
> on UART0 before the RS-485 transceiver and paste the
> dmesg and devinfo input you get.

# dmesg | grep tty
[    0.000000] Kernel command line: console=ttyS0,115200
coherent_pool=1M snd_bcm2835.enable_compat_alsa=0
 snd_bcm2835.enable_hdmi=1 snd_bcm2835.enable_headphones=1
8250.nr_uarts=1 bcm2708_fb.fbwidth=656
 bcm2708_fb.fbheight=416 bcm2708_fb.fbswap=1
smsc95xx.macaddr=B8:27:EB:C5:7D:E3 vc_mem.mem_base=0x3ec00000
 vc_mem.mem_size=0x40000000  root=/dev/mmcblk0p2 console=ttyS0,115200
rootfstype=ext4 elevator=deadline rootwait
[    1.289058] printk: console [ttyS0] disabled
[    1.289175] 3f215040.serial: ttyS0 at MMIO 0x0 (irq = 53, base_baud
= 50000000) is a 16550
[    1.945483] printk: console [ttyS0] enabled
[    2.432604] 3f201000.serial: ttyAMA0 at MMIO 0x3f201000 (irq = 81,
base_baud = 0) is a PL011 rev2

# stty -F /dev/ttyAMA0 115200
# cat /etc/inittab  > /dev/ttyAMA0   <- OK





  Robert



On Mon, Oct 5, 2020 at 1:16 PM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> Hello Robert,
>
> On 10/5/20 12:07 PM, Robert Carnecky (Neopsis) wrote:
> > Did anybody successfully configured Raspberry CM3/CM3+ mini-UART as
> > the Barebox console? I found a thread
> > on this list discussing the issue
> > (https://www.mail-archive.com/barebox@lists.infradead.org/msg35235.html),
> > unfortunately without any solution.
> >
> > What I need:
> >
> >    * UART0 on pins 32/33 (technology access over rs-485)
> >    * UART1 (miniUART) on pins 14/15 (console)
> >
> > My current config.txt boots fine my raspberry kernel (zImage built
> > using builroot):
> >
> >    kernel=zImage
> >    enable_uart=1
> >    dtoverlay=uart0,txd0_pin=32,rxd0_pin=33,pin_func=7
> >    dtoverlay=uart1,txd1_pin=14,rxd1_pin=15
> >
> > Now I would like to switch to Barebox as a bootloader. I compiled the
> > barebox image with
> >
> >    * CONSOLE_ACTIVATE_NONE = Y
> >    * 'stdout-path=&uart1;' in  'arch/arm/dts/bcm2837-rpi-cm3.dts' .
>
> I don't have a CM3, but are you sure uart1 is enabled?
>
> Try adding to arch/arm/dts/bcm2837-rpi-cm3.dts:
>
> &uart1 {
>         pinctrl-names = "default";
>         pinctrl-0 = <&uart1_gpio14>;
>         status = "okay";
> };
>
> If that doesn't help, use CONSOLE_ACTIVATE_ALL and listen
> on UART0 before the RS-485 transceiver and paste the
> dmesg and devinfo input you get.
>
> Cheers,
> Ahmad
>
>
> >
> > and changed my kernel in config.txt
> >
> >     kernel=barebox.img
> >
> > I cannot see any output on pins 14/15 e.g. UART1, no barebox console,
> > no kernel console.
> > Any idea what's wrong here?
> >
> > Robert
> >
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> >
>
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
