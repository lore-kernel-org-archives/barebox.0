Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kTkRN-0003UX-5o
 for barebox@lists.infradead.org; Sat, 17 Oct 2020 11:32:03 +0000
Received: by mail-io1-xd41.google.com with SMTP id q9so7159034iow.6
 for <barebox@lists.infradead.org>; Sat, 17 Oct 2020 04:31:58 -0700 (PDT)
MIME-Version: 1.0
References: <CABMENH487jhrwdywh4KOOqvJtJ_r0ZbSMu2ArDZRHhdK==-+wQ@mail.gmail.com>
 <61631575-54f8-4fe1-4a25-a806b39f2a63@pengutronix.de>
 <CABMENH4s2fWgZmJG-hMtKmHJAmC0N6PtL41LA2vJ4iuA1tPA9g@mail.gmail.com>
 <0fae6213-91b3-a3ae-e1b8-2c7752866b2a@pengutronix.de>
In-Reply-To: <0fae6213-91b3-a3ae-e1b8-2c7752866b2a@pengutronix.de>
From: "Robert Carnecky (Neopsis)" <robert@neopsis.com>
Date: Sat, 17 Oct 2020 13:31:46 +0200
Message-ID: <CABMENH5dVchxGUQ-ozgpDS0wK2-QoNvEchQgPVhN=4ieCWQOvw@mail.gmail.com>
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
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

Finally, I managed to boot into barebox menu using UART1 (/dev/ttyS0)
as the console. The solution was to remove all UART related overlays
from config.txt and only activate UART1.

   enable_uart=1

Anyway, another problem occurred. When booting via barebox the CPU
serial number is wrong. Obviously, barebox somehow manipulates the
internal structures and

   cat /proc/cpuinfo

returns always

   Hardware        : BCM2835
   Revision          : 0000
   Serial              : 0000000000000000
   Model              : Raspberry Pi Compute Module 3 IO board V3.0

When I boot the same image directly without barebox boot loader, the
info is OK.  I found some discussions about U-Boot and wrong serial
number here

  https://www.raspberrypi.org/forums/viewtopic.php?t=183474#p1162778

maybe that's barebox related too. Anyway, that is a definitive no go
with barebox for us because parts of our software are expecting the
unique serial number.

Robert


On Fri, Oct 9, 2020 at 4:18 PM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> Hello Robert,
>
> On 10/9/20 2:30 PM, Robert Carnecky (Neopsis) wrote:
> >> Try adding to arch/arm/dts/bcm2837-rpi-cm3.dts:
> >>
> >> &uart1 {
> >>         pinctrl-names = "default";
> >>         pinctrl-0 = <&uart1_gpio14>;
> >>         status = "okay";
> >> };
> >
> > I extended arch/arm/dts/bcm2837-rpi-cm3.dts as advised +
> > additionally I set UART0 to pins 32/33.
> >
> > &uart0 {
> >      pinctrl-names = "default";
> >      pinctrl-0 = <&uart0_gpio32>;
> >      status = "okay";
> > };
> >
> > I still cannot see Barebox console on boot, however, the Barebox loader
> > starts in 3 seconds my kernel and I get the Linux console output on
> > UART1/ttyS0.
>
> Strange that this made the kernel boot now. Maybe somewhere an unclocked
> peripheral was being accessed before?
>
> > Now my Linux boots as expected, unfortunately without
> > visible Barebox console. I tried all Barebox console setting
> > (NONE/ALL/FIRST), same result, no Barebox console output on UART0
> > or UART1.
>
> Huh, you did listen at the UART0 _before_ the RS-485 transceiver?
> UART0 should work, at least it apparently did when the CM3 support
> was added.
>
> >> If that doesn't help, use CONSOLE_ACTIVATE_ALL and listen
> >> on UART0 before the RS-485 transceiver and paste the
> >> dmesg and devinfo input you get.
> >
> > # dmesg | grep tty
> > [    0.000000] Kernel command line: console=ttyS0,115200
> > coherent_pool=1M snd_bcm2835.enable_compat_alsa=0
> >  snd_bcm2835.enable_hdmi=1 snd_bcm2835.enable_headphones=1
> > 8250.nr_uarts=1 bcm2708_fb.fbwidth=656
> >  bcm2708_fb.fbheight=416 bcm2708_fb.fbswap=1
> > smsc95xx.macaddr=B8:27:EB:C5:7D:E3 vc_mem.mem_base=0x3ec00000
> >  vc_mem.mem_size=0x40000000  root=/dev/mmcblk0p2 console=ttyS0,115200
> > rootfstype=ext4 elevator=deadline rootwait
> > [    1.289058] printk: console [ttyS0] disabled
> > [    1.289175] 3f215040.serial: ttyS0 at MMIO 0x0 (irq = 53, base_baud
> > = 50000000) is a 16550
> > [    1.945483] printk: console [ttyS0] enabled
> > [    2.432604] 3f201000.serial: ttyAMA0 at MMIO 0x3f201000 (irq = 81,
> > base_baud = 0) is a PL011 rev2
> >
> > # stty -F /dev/ttyAMA0 115200
> > # cat /etc/inittab  > /dev/ttyAMA0   <- OK
>
> I meant dmesg under barebox, if UART1 fails to output, but UART0 can be
> read before the transceiver.
>
> On 10/6/20 1:32 AM, Robert Carnecky (Neopsis) wrote:
> > I played a bit more with the config.txt settings and when I activated the flag
> >
> >     uart_2ndstage=1
> >
> > I got the barebox console! Here a snippet from the 2stage while
> > logging the UART lading.
>
> Oh. That would indicate that there is some sort of initialization missing.
> uart_2ndstage=1 initializes the UART for VideoCore use apparently and from
> there on, it works.
>
> > What I do not understand: how the loaded  /mfs/sd/bcm2710-rpi-cm3.dtb
> > and the overlays
> > cooperate with the Barebox device tree? Does it mean we have two sets
> > of device tree
> > files?
>
> Yes. The VideoCore device tree is available in barebox as /vc.dtb,
> see e390c8799d91 ("ARM: rpi: save fdt that was passed from VideoCore")
>
>
> Hope this helps,
> Ahmad
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
