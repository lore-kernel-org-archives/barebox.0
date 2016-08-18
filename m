Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x232.google.com ([2a00:1450:400c:c09::232])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1baIFy-0006Xs-Jb
 for barebox@lists.infradead.org; Thu, 18 Aug 2016 08:00:55 +0000
Received: by mail-wm0-x232.google.com with SMTP id i5so20135529wmg.0
 for <barebox@lists.infradead.org>; Thu, 18 Aug 2016 01:00:33 -0700 (PDT)
References: <7f89efef-2805-34d8-db7d-f3bc53d8e21a@gmail.com>
 <20160818073831.GL20657@pengutronix.de>
From: Peter Kardos <kardos.peter.sk@gmail.com>
Message-ID: <2b1f58b6-7d4b-5b85-240e-aa41c2e23c2e@gmail.com>
Date: Thu, 18 Aug 2016 10:00:30 +0200
MIME-Version: 1.0
In-Reply-To: <20160818073831.GL20657@pengutronix.de>
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
Subject: Re: AT91RM9200 hang in atmel_serial_putc
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

> So you have a jtag debugger attached, does it support showing registers?
> What is the value of uart->base? Is it correct?
> Also you could compare the UART registers with the ones from a working
> U-Boot/barebox.
Yes, I have, it does. I've checked, and it seems to be correct, pointing 
to 0xFFFFF200.

However I didn't think to check the register offset and mask (it was late).

> Which instance of the UART are you using? It seems we have:
I'm using the debug UART (USART0)...

> Does atmel_serial_init_port() do everything correctly?
> Finally it may be that the clock is disabled for some reason,
Was thinking the same thing.

I'll check it (compare reg dumps, console init) tonight and report my 
findings.


Cheers, Peter

On 2016-08-18 09:38, Sascha Hauer wrote:
> Hi Peter,
>
> On Thu, Aug 18, 2016 at 03:08:36AM +0200, Peter Kardos wrote:
>> Greetings,
>>
>> I'm looking for a AT91 specialist that could help me debug barebox v2016.08.
>>
>> I have a custom board running AT91RM9200 that came with a really old custom
>> u-boot (v1.1.4, no ubifs support)...
>>
>> The first bootloader I've ported (barebox v2015.07, using AT91RM9200ek as
>> template) almost works; I'm having trouble getting networking (ping, dhcp)
>> working with Micrel KSZ8721 phy. But it boots, works with the Flash, etc...
>> With hopes, that this (networking issue) is resolved with the latest barebox
>> release (using the same patchset and config) I've found (??) a another
>> issue.
>>
>> At first it seemed the board just does not boot, after having a look with a
>> j-link it seems the board "hangs" in atmel_serial_putc().
>> I've tried to look at the AT91RM9200 init (lowlevel, peripherals, driver)
>> and could not find any significant change (rewrite, define changes, etc)...
> So you have a jtag debugger attached, does it support showing registers?
> What is the value of uart->base? Is it correct?
> Also you could compare the UART registers with the ones from a working
> U-Boot/barebox. Does atmel_serial_init_port() do everything correctly?
> Finally it may be that the clock is disabled for some reason, then the
> values written to the UART would never be shifted out.
> Which instance of the UART are you using? It seems we have:
>
> static struct clk_lookup usart_clocks_lookups[] = {
> 	CLKDEV_CON_DEV_ID("usart", "atmel_usart0", &mck),
> 	CLKDEV_CON_DEV_ID("usart", "atmel_usart1", &usart0_clk),
> 	CLKDEV_CON_DEV_ID("usart", "atmel_usart2", &usart1_clk),
> 	CLKDEV_CON_DEV_ID("usart", "atmel_usart3", &usart2_clk),
> 	CLKDEV_CON_DEV_ID("usart", "atmel_usart4", &usart3_clk),
> };
>
> The first clock seems to be always-on, but the others could be turned off.
>
> Sascha
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
