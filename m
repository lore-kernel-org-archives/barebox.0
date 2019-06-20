Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdy74-0006if-Ha
 for barebox@lists.infradead.org; Thu, 20 Jun 2019 14:32:31 +0000
Date: Thu, 20 Jun 2019 16:32:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190620143228.wfasxgzjdyd4l4yw@pengutronix.de>
References: <20190617150751.3421-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617150751.3421-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v1 00/12] ARM: stm32mp: add drivers for GPIO, pinctrl
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jun 17, 2019 at 05:07:39PM +0200, Ahmad Fatoum wrote:
> Feedback welcome.
> 
> I still have a patch that ports designware_qos from U-Boot to barebox
> sitting on my branch. It works fine, but it needs refactoring, so it
> can reuse existing functionality in the generic designware MAC driver
> that's already in barebox. That will take a while, but if there's interest
> in it, I can push the current state somwhere till then.
> 
> Cheers,
> Ahmad Fatoum (12):
>   ARM: dts: stm32mp157a-dk1.dts: include upstream dts before barebox'
>   ARM: dts: stm32mp: factor out common DK nodes into dtsi
>   gpiolib: add gpio_get_chip helper
>   driver: add stubs for hardware spinlocks
>   pinctrl: add driver for STM32 GPIO and pin multiplexer
>   ARM: dts: stm32mp157a-dk1: enable heartbeat and error LEDs
>   ARM: stm32mp: turn on GPIO related options
>   ARM: stm32mp157c-dk2: add board-specific sysconf fixups
>   ARM: psci: fix erroneous call of ->system_reset on system_off
>   ARM: sm: move get_gicd_base_address to header for reuse
>   ARM: stm32mp: implement PSCI support
>   ARM: stm32mp157c-dk2: boot kernel in nonsecure mode

Applied, thanks

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
