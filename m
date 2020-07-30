Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k12wS-0007Bv-9y
 for barebox@lists.infradead.org; Thu, 30 Jul 2020 07:25:29 +0000
References: <CAKd8=GuMSvfaXiTvx4MSOnkLNvTuZg--deRufN6wDaPr8OxA1g@mail.gmail.com>
 <52e432ea-2ecb-2464-9126-379900da2433@pengutronix.de>
 <CAKd8=GvjdkC=mHYq3LpLwtaSi8WhYsn3e1VphTWefbzpq=_ZFA@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <ce3df13a-29aa-809f-f39c-1213da23038e@pengutronix.de>
Date: Thu, 30 Jul 2020 09:25:26 +0200
MIME-Version: 1.0
In-Reply-To: <CAKd8=GvjdkC=mHYq3LpLwtaSi8WhYsn3e1VphTWefbzpq=_ZFA@mail.gmail.com>
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
Subject: Re: Getting serial console output on new imx7d tqma7 board UART4
To: Lars Pedersen <lapeddk@gmail.com>
Cc: barebox@lists.infradead.org



On 7/30/20 8:58 AM, Lars Pedersen wrote:
> The DCD part now matches exactly for the top part (00000000 to
> 00000020)  of it which i guess is the IVT header, which shouldn't be
> the same?

I mean the memory calibration and such. Not that your U-Boot port
does something in C code, which you are missing in your barebox
DCD.

> 
> The following is xxd where barebox  (left side) has been shifted 0x400
> to match u-boot part.
> 
> /usr/bin/diff -y <(xxd barebox_stripped) <(xxd uboot_stripped)

I don't understand how to read this diff.

> So I guess that the DCD table part now should be correct. So the
> question is if this is and lowlevel.c/board.c boilerplate issue or
> maybe I need something in the Kconfig menu.

Enable CONFIG_DEBUG_LL and see how far barebox comes.
See the inline comment from my last mail.

>>> +
>>> +static inline void setup_uart(void)
>>> +{
>>> +    imx7_early_setup_uart_clock();
>>> +
>>> +    imx7_setup_pad(MX7D_PAD_SAI2_TX_BCLK__UART4_DCE_TX);
>>> +
>>> +    imx7_uart_setup_ll();
>>> +
>>> +    putc_ll('>');
>>
>> You've CONFIG_DEBUG_LL=y and you choose the correct UART port
>> in the i.MX menuconfig option?
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
