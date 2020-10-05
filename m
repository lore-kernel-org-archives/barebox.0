Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kPOTc-0005pU-Sw
 for barebox@lists.infradead.org; Mon, 05 Oct 2020 11:16:22 +0000
References: <CABMENH487jhrwdywh4KOOqvJtJ_r0ZbSMu2ArDZRHhdK==-+wQ@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <61631575-54f8-4fe1-4a25-a806b39f2a63@pengutronix.de>
Date: Mon, 5 Oct 2020 13:16:18 +0200
MIME-Version: 1.0
In-Reply-To: <CABMENH487jhrwdywh4KOOqvJtJ_r0ZbSMu2ArDZRHhdK==-+wQ@mail.gmail.com>
Content-Language: en-US
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
To: "Robert Carnecky (Neopsis)" <robert@neopsis.com>, barebox@lists.infradead.org

Hello Robert,

On 10/5/20 12:07 PM, Robert Carnecky (Neopsis) wrote:
> Did anybody successfully configured Raspberry CM3/CM3+ mini-UART as
> the Barebox console? I found a thread
> on this list discussing the issue
> (https://www.mail-archive.com/barebox@lists.infradead.org/msg35235.html),
> unfortunately without any solution.
> 
> What I need:
> 
>    * UART0 on pins 32/33 (technology access over rs-485)
>    * UART1 (miniUART) on pins 14/15 (console)
> 
> My current config.txt boots fine my raspberry kernel (zImage built
> using builroot):
> 
>    kernel=zImage
>    enable_uart=1
>    dtoverlay=uart0,txd0_pin=32,rxd0_pin=33,pin_func=7
>    dtoverlay=uart1,txd1_pin=14,rxd1_pin=15
> 
> Now I would like to switch to Barebox as a bootloader. I compiled the
> barebox image with
> 
>    * CONSOLE_ACTIVATE_NONE = Y
>    * 'stdout-path=&uart1;' in  'arch/arm/dts/bcm2837-rpi-cm3.dts' .

I don't have a CM3, but are you sure uart1 is enabled?

Try adding to arch/arm/dts/bcm2837-rpi-cm3.dts:

&uart1 {
        pinctrl-names = "default";
        pinctrl-0 = <&uart1_gpio14>;
        status = "okay";
};

If that doesn't help, use CONSOLE_ACTIVATE_ALL and listen
on UART0 before the RS-485 transceiver and paste the
dmesg and devinfo input you get.

Cheers,
Ahmad


> 
> and changed my kernel in config.txt
> 
>     kernel=barebox.img
> 
> I cannot see any output on pins 14/15 e.g. UART1, no barebox console,
> no kernel console.
> Any idea what's wrong here?
> 
> Robert
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
