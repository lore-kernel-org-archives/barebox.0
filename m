Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kA6Kd-0000nF-0O
 for barebox@lists.infradead.org; Mon, 24 Aug 2020 06:51:51 +0000
Date: Mon, 24 Aug 2020 08:51:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200824065149.GG13023@pengutronix.de>
References: <20200820073454.17500-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200820073454.17500-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v5 00/12] prepare Protonic board code for mainline
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org, david@protonic.nl

On Thu, Aug 20, 2020 at 09:34:42AM +0200, Oleksij Rempel wrote:
> changes v5:
> - board: apply requested changes
> - add PHY and rs458 devicetree fixes for lanmcu and plym2m
> 
> changes v4:
> - follow suggestion provided by Ahmad and open-code the root node
>   registration and call it machine.of
> - board: rename crc and cs
> - board: ignore most of init related errors. Even if one part will fail,
>   we should be able to get as mach as possible.
> 
> changes v3:
> - remove barebox-serial driver and use read the rfid directy from board
>   code (as was done in initial implementation)
> - use initcall instead of registering driver in the board code
> - add delayed USB scan
> - add rampoops node
> - add partition tables 
> 
> changes v2:
> - add power init support for KvG boards
> - spell fixes
> - do not print error on probe exit
> - add of_console_get_by_alias() helper
> - free requested gpio array
> - exit fec init only in case of PROBE_DEFERED
> 
> This patch series is a preparation and actual Protonic board code.
> Following changes was made in the main code:
> - register DT root node as device to make it possible to loade board
>   code as usual driver
> - provide helpers to read ethernet mac from nvmem cell register in a
>   devicetree.
> - provide barebox-serial driver which should be a nvmem cell consumer
>   and
>   serial-number DT property provider.
> - provide gpio helper to read gpio based board revision.
> 
> Oleksij Rempel (12):
>   of: base: register DT root as device
>   gpiolib: add gpio_array_to_id helper to get ID out of GPIO array
>   common: console_common: add of_console_get_by_alias() helper
>   of: of_device_get_match_compatible() helper
>   ARM: protonic-imx6: port Protonic specific board code
>   ARM: dts: unify barebox and barebox,env partitions for all Protonic
>     boards
>   ARM: dts: imx6q-prti6q: add pstore/ramoops node
>   ARM: dts: protonic: lanmcu: add eMMC partition table
>   ARM: dts: protonic: add fixed clock for the FEC node
>   ARM: dts: protonic: lanmcu: use UART_CTS instead of GPIO based CTS
>   ARM: dts: protonic: properly define PHY nodes on lanmcu and plym2m
>     boards
>   ARM: dts: protonic: lanmcu: add uart-has-rtscts to enable rs485
>     functionality

Applied, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
