Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kV9Nf-0004fN-Hy
 for barebox@lists.infradead.org; Wed, 21 Oct 2020 08:22:02 +0000
Received: by mail-io1-xd41.google.com with SMTP id k21so2022125ioa.9
 for <barebox@lists.infradead.org>; Wed, 21 Oct 2020 01:21:56 -0700 (PDT)
MIME-Version: 1.0
References: <CABMENH487jhrwdywh4KOOqvJtJ_r0ZbSMu2ArDZRHhdK==-+wQ@mail.gmail.com>
 <61631575-54f8-4fe1-4a25-a806b39f2a63@pengutronix.de>
 <CABMENH4s2fWgZmJG-hMtKmHJAmC0N6PtL41LA2vJ4iuA1tPA9g@mail.gmail.com>
 <0fae6213-91b3-a3ae-e1b8-2c7752866b2a@pengutronix.de>
 <CABMENH5dVchxGUQ-ozgpDS0wK2-QoNvEchQgPVhN=4ieCWQOvw@mail.gmail.com>
 <169904de-d6d7-b3c8-79ce-e3e63305f037@pengutronix.de>
 <CABMENH4-4iefDPv8s6_mADKoAHRHAcN+aw9nW6J1WR0_K2v0jw@mail.gmail.com>
 <0c91c15c-91b6-98c0-1e3c-c02d5a19e772@pengutronix.de>
 <CABMENH4ezfWcJX0xq+U4RhEKrLEQWEZbYE9mLuZdjjmQDC0nYQ@mail.gmail.com>
 <6d2cf28bcdeecc2a139d8f704ef03ebd61e18501.camel@pengutronix.de>
 <d1a23b4ae7220295690f763cb278e1ff27de6f8c.camel@pengutronix.de>
 <CABMENH4JhxWE5eUxj8oYDjJSTixwrWShvSew8zRwrxV9v2k89g@mail.gmail.com>
 <28a2117b0b108448ee9ab9d2bad725a3bd561c99.camel@pengutronix.de>
 <CABMENH4eayuwJ_s9GPPJ62VUUCyJE89fEY5Q4hFccs2CTfo7uw@mail.gmail.com>
In-Reply-To: <CABMENH4eayuwJ_s9GPPJ62VUUCyJE89fEY5Q4hFccs2CTfo7uw@mail.gmail.com>
From: "Robert Carnecky (Neopsis)" <robert@neopsis.com>
Date: Wed, 21 Oct 2020 10:21:43 +0200
Message-ID: <CABMENH4i3JcAOfB2Jn91h7dqgZQZy1BCDahfzBB1izaDhE92DQ@mail.gmail.com>
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
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>

On Tue, Oct 20, 2020 at 7:04 PM Robert Carnecky (Neopsis)
<robert@neopsis.com> wrote:
>
> On Tue, Oct 20, 2020 at 2:45 PM Rouven Czerwinski
> <r.czerwinski@pengutronix.de> wrote:
> >
> > On Tue, 2020-10-20 at 14:22 +0200, Robert Carnecky (Neopsis) wrote:
> > > On Tue, Oct 20, 2020 at 6:04 AM Rouven Czerwinski
> > > <r.czerwinski@pengutronix.de> wrote:
> > > > On Tue, 2020-10-20 at 05:59 +0200, Rouven Czerwinski wrote:
> > > > > On Tue, 2020-10-20 at 00:29 +0200, Robert Carnecky (Neopsis)
> > > > > wrote:
> > > > > > On Mon, Oct 19, 2020 at 11:28 AM Ahmad Fatoum <
> > > > > > a.fatoum@pengutronix.de> wrote:
> > > > > > > Hello,
> > > > > > >
> > > > > > > On 10/18/20 1:17 AM, Robert Carnecky (Neopsis) wrote:
> > > > > > > > On Sat, Oct 17, 2020 at 11:29 PM Ahmad Fatoum <
> > > > > > > > a.fatoum@pengutronix.de> wrote:
> > > > > > > > > Hi,
> > > > > > > > >
> > > > > > > > > On 10/17/20 1:31 PM, Robert Carnecky (Neopsis) wrote:
> > > > > > > > > > Finally, I managed to boot into barebox menu using
> > > > > > > > > > UART1
> > > > > > > > > > (/dev/ttyS0)
> > > > > > > > > > as the console. The solution was to remove all UART
> > > > > > > > > > related
> > > > > > > > > > overlays
> > > > > > > > > > from config.txt and only activate UART1.
> > > > > > > > > >
> > > > > > > > > >    enable_uart=1
> > > > > > > > > >
> > > > > > > > > > Anyway, another problem occurred. When booting via
> > > > > > > > > > barebox
> > > > > > > > > > the CPU
> > > > > > > > > > serial number is wrong. Obviously, barebox somehow
> > > > > > > > > > manipulates the
> > > > > > > > > > internal structures and
> > > > > > > > > >
> > > > > > > > > >    cat /proc/cpuinfo
> > > > > > > > > >
> > > > > > > > > > returns always
> > > > > > > > > >
> > > > > > > > > >    Hardware        : BCM2835
> > > > > > > > > >    Revision          : 0000
> > > > > > > > > >    Serial              : 0000000000000000
> > > > > > > > > >    Model              : Raspberry Pi Compute Module 3
> > > > > > > > > > IO
> > > > > > > > > > board V3.0
> > > > > > > > > >
> > > > > > > > > > When I boot the same image directly without barebox
> > > > > > > > > > boot
> > > > > > > > > > loader, the
> > > > > > > > > > info is OK.  I found some discussions about U-Boot and
> > > > > > > > > > wrong serial
> > > > > > > > > > number here
> > > > > > > > > >
> > > > > > > > > >
> > > > > > > > > > https://www.raspberrypi.org/forums/viewtopic.php?t=183474#p1162778
> > > > > > > > > >
> > > > > > > > > > maybe that's barebox related too. Anyway, that is a
> > > > > > > > > > definitive no go
> > > > > > > > > > with barebox for us because parts of our software are
> > > > > > > > > > expecting the
> > > > > > > > > > unique serial number.
> > > > > > > > >
> > > > > > > > > I believe you can boot Linux with /vc.dtb and you'll get
> > > > > > > > > the
> > > > > > > > > same
> > > > > > > > > device tree passed to Linux as if you booted without
> > > > > > > > > passing
> > > > > > > > > through
> > > > > > > > > barebox.
> > > > > > > >
> > > > > > > > Yes, but then I lose my Linux console! A summary, in all
> > > > > > > > cases
> > > > > > > > Barebox device
> > > > > > > > tree in arch/arm/dts/bcm2837-rpi-cm3.dts was updated
> > > > > > > > following
> > > > > > > > your hint, e.g.
> > > > > > > >
> > > > > > > > / {
> > > > > > > >   chosen {
> > > > > > > >      stdout-path = "&uart1";
> > > > > > > >   };
> > > > > > > >  };
> > > > > > > >
> > > > > > > > &uart1 {
> > > > > > > >         pinctrl-names = "default";
> > > > > > > >         pinctrl-0 = <&uart1_gpio14>;
> > > > > > > >         status = "okay";
> > > > > > > >  };
> > > > > > > >
> > > > > > > > &uart0 {
> > > > > > > >      pinctrl-names = "default";
> > > > > > > >      pinctrl-0 = <&uart0_gpio32>;
> > > > > > > >      status = "okay";
> > > > > > > >  };
> > > > > > > >
> > > > > > > > 1. Booting kernel direct, works as expected (console on
> > > > > > > > uart1),
> > > > > > > > expected behavior
> > > > > > > >
> > > > > > > > kernel=zImage
> > > > > > > > enable_uart=1
> > > > > > > > dtoverlay=uart0,txd0_pin=32,rxd0_pin=33,pin_func=7
> > > > > > > > dtoverlay=uart1,txd1_pin=14,rxd1_pin=15
> > > > > > > >
> > > > > > > > 2. With Barebox loader. The same config.txt as in case 1),
> > > > > > > >     - no Barebox console
> > > > > > > >     - kernel boots with the console on uart1
> > > > > > > >
> > > > > > > > kernel=barebox-raspberry-pi-cm3.img
> > > > > > > > enable_uart=1
> > > > > > > > dtoverlay=uart0,txd0_pin=32,rxd0_pin=33,pin_func=7
> > > > > > > > dtoverlay=uart1,txd1_pin=14,rxd1_pin=15
> > > > > > > >
> > > > > > > > 3.  With Barebox loader, no uart overlays in config.txt.
> > > > > > > >     - Barebox console on uart1 ok,
> > > > > > > >     - kernel console on uart1
> > > > > > > >     - almost done), but ... no cpuinfo
> > > > > > > >
> > > > > > > > kernel=barebox-raspberry-pi-cm3.img
> > > > > > > > enable_uart=1
> > > > > > > >
> > > > > > > > 4. With Barebox loader, no uart overlays in config.txt,
> > > > > > > > Linux
> > > > > > > > boots with vc.dtb.
> > > > > > > >     - Barebox console on uart1 ok
> > > > > > > >     - no Linux console, Linux boots with cpuinfo ok
> > > > > > > >
> > > > > > > > kernel=barebox-raspberry-pi-cm3.img
> > > > > > > > enable_uart=1
> > > > > > > >
> > > > > > > > I did not found any combination when I get the Barebox
> > > > > > > > console
> > > > > > > > and
> > > > > > > > Linux console on uart1
> > > > > > > > and with cpuinfo ok. If the serial number is not needed,
> > > > > > > > case
> > > > > > > > 3) should be ok.
> > > > > > >
> > > > > > > What happens if you combine 2. and 4. ?
> > > > > > > So you have enable_uart=1, the uart overlays _and_ Linux
> > > > > > > boots
> > > > > > > with vc.dtb?
> > > > > >
> > > > > > Negativ. Whenever I enable overlays in the config.txt that map
> > > > > > uart0
> > > > > > to pin32/33 and
> > > > > > uart1 to pin 14/15 (console), I do not get Barebox console. It
> > > > > > does
> > > > > > not depend on the device
> > > > > > tree passed to the kernel. This interaction between Barebox
> > > > > > device
> > > > > > tree and Raspberry config.txt
> > > > > > overlays is a bit strange for me.
> > > > > >
> > > > > > Just an idea - does Barebox fully support this hardware? From
> > > > > > the
> > > > > > 2835
> > > > > > ARM Peripherals Guide,
> > > > > > chapter 2.2 miniUART :
> > > > > >
> > > > > > > The implemented UART is not a 16650 compatible UART However
> > > > > > > as
> > > > > > > far as possible
> > > > > > > the first 8 control and status registers are laid out like a
> > > > > > > 16550 UART. Al 16550 register
> > > > > > > bits which are not supported can be written but will be
> > > > > > > ignored
> > > > > > > and read back as 0.
> > > > > > > All control bits for simple UART receive/transmit operations
> > > > > > > are
> > > > > > > available.
> > > > > >
> > > > > > Barebox has support for NS16650 ( CONFIG_DRIVER_SERIAL_NS16550)
> > > > > > but
> > > > > > not for
> > > > > > Raspberry miniUART.
> > > > > >
> > > > > > Anyway, I am giving up. I am sure I tested all combinations of
> > > > > > overlays, I have written my
> > > > > > own dts, nothing works as I need (console=uart1, incl. proper
> > > > > > serial
> > > > > > number handling).
> > > > > > There is no problem to get the console on uart0/ttyAMA0, but
> > > > > > not on
> > > > > > uart1/ttyS0.
> > > > > > The Raspberry way how they are handling uarts lacks all logic
> > > > > > and
> > > > > > is completely
> > > > > > unclear.
> > > > >
> > > > > Hi,
> > > > >
> > > > > looking into arch/arm/dts/bcm2837-rpi-cm3.dts:
> > > > > / {
> > > > >         chosen {
> > > > >                 stdout-path = &uart0;
> > > > >         };
> > > > > };
> > > > >
> > > > > The CM3 module is currently default configured to use uart0 as
> > > > > the
> > > > > stdout path, while bcm2837-rpi-3.dts is configured for uart1.
> > > > > This was done in ab76f9d09d3b7b77fc00d84bc2fac6bfbf82c69c after
> > > > > the
> > > > > miniuart support was added to the NS16550 driver
> > > > > in 77de547cd179b910cdcb8530df15d77a0fc66a3c.
> > > >
> > > > Disregard this, I didn't read the whole thread. There however was
> > > > another user who tried to use the miniuart and had failures on
> > > > probe on
> > > > the CM3. Unfortunately the barebox archives don't have these mails,
> > > > I'll attach an mbox which has the whole thread.
> > > >
> > > >
> > > > Regards,
> > > > Rouven Czerwinski
> > > >
> > >
> > > The thread sent by Rouven describes really the same issue and, like
> > > me, without a solution.
> > > As I wrote in my summary, there is one combination of config.txt and
> > > barebox
> > > device tree booting into barebox console on uart1 and kernel console
> > > on uart1:
> > >
> > > barebox device tree:
> > >
> > > / {
> > >   chosen {
> > >      stdout-path = "&uart1";
> > >   };
> > >  };
> > >
> > > &uart1 {
> > >         pinctrl-names = "default";
> > >         pinctrl-0 = <&uart1_gpio14>;
> > >         status = "okay";
> > >  };
> > >
> > > &uart0 {
> > >      pinctrl-names = "default";
> > >      pinctrl-0 = <&uart0_gpio32>;
> > >      status = "okay";
> > >  };
> > >
> > >
> > > config.txt:
> > > kernel=barebox-raspberry-pi-cm3.img
> > > enable_uart=1
> > >
> > > Unfortunately, in this case the content of /proc/cpuinfo in Linux
> > > is  wrong,
> > > which is in my opinion barebox bug.
> >
> > According to [1], the serial number is directly read from the device
> > tree, this node is not populated by barebox. This leaves the following
> > possible options:
> >
> > 1) Fix the barebox NS16550 driver to probe on the rpi3 CM3 miniuart.
> > Then boot with the vc.dtb file.
> >
> > 2) Read the serial-number from the vc.dtb file and fixup the serial
> > number before booting with the barebox device tree
> >
> > 3) Find out if the RPI serial number can be read using the mailbox
> > communication interface to the VC core, retrieve the number and fix it
> > up into the device tree before boot. A quick google says this could be
> > the case, see [2].
> >
> > [1]:
> > https://elixir.bootlin.com/linux/latest/source/arch/arm/kernel/setup.c#L951
> > [2]:
> > https://github.com/Terminus-IMRC/mailbox/blob/b96aa3cc8dfee2be2c8f835e09e812000910a5ff/src/wrap_ours.c#L114
> >
> > Regards,
> > Rouven
> >
>
>
>   OK, I did not know that barebox do not populate the serial number.
> I will do it in my app from the mailbox.
>
> FYI I found various ways how to read the S/N here
>
> https://github.com/AndrewFromMelbourne/raspi_serialnumber
>
> Robert

I can confirm, that this piece of code returns the right serial
number. Now I have the barebox and Linux
console on uart1/ttyS0 and the application can use uart0/ttyAMA0.
Thank you for your help.

uint32_t get_serial_number() {

int fd = open("/dev/vcio", 0);
    if (fd == -1)
    {
        log_error("open /dev/vcio");
        exit(EXIT_FAILURE);
    }

    uint32_t property[32] =
    {
        0x00000000,
        0x00000000,
        0x00010004,
        0x00000010,
        0x00000000,
        0x00000000,
        0x00000000,
        0x00000000,
        0x00000000,
        0x00000000
    };

    property[0] = 10 * sizeof(property[0]);

    if (ioctl(fd, _IOWR(100, 0, char *), property) == -1)
    {
        log_error("ioctl");
        exit(EXIT_FAILURE);
    }

    close(fd);

    return  property[5];
}

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
