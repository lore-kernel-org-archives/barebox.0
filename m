Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5SDG-0005Ft-8k
 for barebox@lists.infradead.org; Tue, 11 Aug 2020 11:13:03 +0000
Date: Tue, 11 Aug 2020 13:12:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200811111256.GL9475@pengutronix.de>
References: <20200805101628.4698-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200805101628.4698-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v2 00/13] prepare Protonic board code for mainline
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org, david@protonic.nl

On Wed, Aug 05, 2020 at 12:16:15PM +0200, Oleksij Rempel wrote:
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
> Oleksij Rempel (13):
>   ARM: dts: imx6q-prti6q: fix PHY register
>   ARM: dts: imx6: vicut1: fix network support
>   of: base: register DT root as device
>   ARM: embest-riotboard: port board file to the driver model
>   net: port nvmem_get_mac_address() from linux kernel
>   of: of_net: sync of_get_mac_address() with latest kernel version
>   net: fec_imx: use of_get_mac_address() to get mac address out of DT
>   of: of_device_get_match_compatible() helper
>   gpiolib: add gpio_array_to_id helper to get ID out of GPIO array
>   common: console_common: add of_console_get_by_alias() helper
>   ARM: protonic-imx6: port Protonic specific board code
>   of: add barebox-serial driver
>   ARM: dts: imx6q-prti6q: add barebox,serial-number node

Applied 1-4 for now.

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
