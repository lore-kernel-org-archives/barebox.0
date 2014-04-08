Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WXPOV-0002Zs-TQ
 for barebox@lists.infradead.org; Tue, 08 Apr 2014 06:20:28 +0000
Date: Tue, 8 Apr 2014 08:20:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140408062006.GW27055@pengutronix.de>
References: <1396866729-24201-1-git-send-email-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1396866729-24201-1-git-send-email-l.stach@pengutronix.de>
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
Subject: Re: [PATCH] ARM: dts: edmqmx6: add SPI SCLK pinmux
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Apr 07, 2014 at 12:32:09PM +0200, Lucas Stach wrote:
> Otherwise reading or writing to the SPI flash doesn't
> work.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Applied, thanks

Sascha

> ---
> Sascha, this is a fairly simple fix, but a severe
> restriction in functionality, as barebox isn't able to
> write itself to the flash. Please apply to master.
> ---
>  arch/arm/dts/imx6q-dmo-edmqmx6.dts | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/dts/imx6q-dmo-edmqmx6.dts b/arch/arm/dts/imx6q-dmo-edmqmx6.dts
> index 4cd1c55ff82e..f4f0bd6c14ba 100644
> --- a/arch/arm/dts/imx6q-dmo-edmqmx6.dts
> +++ b/arch/arm/dts/imx6q-dmo-edmqmx6.dts
> @@ -329,6 +329,7 @@
>  			fsl,pins = <
>  				MX6QDL_PAD_SD1_DAT0__ECSPI5_MISO 0x80000000
>  				MX6QDL_PAD_SD1_CMD__ECSPI5_MOSI 0x80000000
> +				MX6QDL_PAD_SD1_CLK__ECSPI5_SCLK 0x80000000
>  				MX6QDL_PAD_SD2_DAT3__GPIO1_IO12 0x80000000 /* cs0: m25p80 */
>  			>;
>  		};
> -- 
> 1.9.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
