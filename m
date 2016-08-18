Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1baHug-0007Dc-7H
 for barebox@lists.infradead.org; Thu, 18 Aug 2016 07:38:55 +0000
Date: Thu, 18 Aug 2016 09:38:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160818073831.GL20657@pengutronix.de>
References: <7f89efef-2805-34d8-db7d-f3bc53d8e21a@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7f89efef-2805-34d8-db7d-f3bc53d8e21a@gmail.com>
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
Subject: Re: AT91RM9200 hang in atmel_serial_putc
To: Peter Kardos <kardos.peter.sk@gmail.com>
Cc: barebox@lists.infradead.org

Hi Peter,

On Thu, Aug 18, 2016 at 03:08:36AM +0200, Peter Kardos wrote:
> Greetings,
> 
> I'm looking for a AT91 specialist that could help me debug barebox v2016.08.
> 
> I have a custom board running AT91RM9200 that came with a really old custom
> u-boot (v1.1.4, no ubifs support)...
> 
> The first bootloader I've ported (barebox v2015.07, using AT91RM9200ek as
> template) almost works; I'm having trouble getting networking (ping, dhcp)
> working with Micrel KSZ8721 phy. But it boots, works with the Flash, etc...
> With hopes, that this (networking issue) is resolved with the latest barebox
> release (using the same patchset and config) I've found (??) a another
> issue.
> 
> At first it seemed the board just does not boot, after having a look with a
> j-link it seems the board "hangs" in atmel_serial_putc().
> I've tried to look at the AT91RM9200 init (lowlevel, peripherals, driver)
> and could not find any significant change (rewrite, define changes, etc)...

So you have a jtag debugger attached, does it support showing registers?
What is the value of uart->base? Is it correct?
Also you could compare the UART registers with the ones from a working
U-Boot/barebox. Does atmel_serial_init_port() do everything correctly?
Finally it may be that the clock is disabled for some reason, then the
values written to the UART would never be shifted out.
Which instance of the UART are you using? It seems we have:

static struct clk_lookup usart_clocks_lookups[] = {
	CLKDEV_CON_DEV_ID("usart", "atmel_usart0", &mck),
	CLKDEV_CON_DEV_ID("usart", "atmel_usart1", &usart0_clk),
	CLKDEV_CON_DEV_ID("usart", "atmel_usart2", &usart1_clk),
	CLKDEV_CON_DEV_ID("usart", "atmel_usart3", &usart2_clk),
	CLKDEV_CON_DEV_ID("usart", "atmel_usart4", &usart3_clk),
};

The first clock seems to be always-on, but the others could be turned off.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
