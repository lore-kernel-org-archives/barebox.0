Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k2hlV-0006NU-4z
 for barebox@lists.infradead.org; Mon, 03 Aug 2020 21:13:20 +0000
Date: Mon, 3 Aug 2020 23:12:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200803211259.GL31536@pengutronix.de>
References: <20200723103326.23226-1-o.rempel@pengutronix.de>
 <20200723103326.23226-12-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200723103326.23226-12-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v1 11/11] ARM: dts: imx6q-prti6q: add barebox.serial node
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org, david@protonic.nl

On Thu, Jul 23, 2020 at 12:33:26PM +0200, Oleksij Rempel wrote:
> Add serial node provider
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  arch/arm/dts/imx6q-prti6q.dts | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm/dts/imx6q-prti6q.dts b/arch/arm/dts/imx6q-prti6q.dts
> index 76bb4d53d3..67e7f63979 100644
> --- a/arch/arm/dts/imx6q-prti6q.dts
> +++ b/arch/arm/dts/imx6q-prti6q.dts
> @@ -18,6 +18,11 @@
>  			compatible = "barebox,environment";
>  			device-path = &ecspi1, "partname:env";
>  		};
> +		serial {
> +			compatible = "barebox,serial";
> +			nvmem-cell-names = "serial-number";
> +			/* nvmem-cells will added board code */

You probably mean "nvmem-cells will be added by board code".

You need board code to fully describe the device which triggers a
freshly written driver which puts the found serial number as
/serial-number into dt. Is this really worth it? I'd just read the
serial number in board code and put it into dt, maybe add some helper
function to set the right property from a given string.

BTW you seem to be lucky that the i2c eeprom driver probes before the
barebox,serial driver, otherwise I think this doesn't work.

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
