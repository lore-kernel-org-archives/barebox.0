Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XdyKl-0006Oq-1n
 for barebox@lists.infradead.org; Tue, 14 Oct 2014 09:24:00 +0000
Date: Tue, 14 Oct 2014 11:23:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141014092332.GT4992@pengutronix.de>
References: <1412932473-38216-1-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1412932473-38216-1-git-send-email-t.gamez@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/6] ARM: defconfig: Enable of_display_timings in
 am335x_defconfig
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org


Applied all, thanks

Sascha

On Fri, Oct 10, 2014 at 11:14:28AM +0200, Teresa G=E1mez wrote:
> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>
> ---
>  arch/arm/configs/am335x_defconfig | 1 +
>  1 file changed, 1 insertion(+)
> =

> diff --git a/arch/arm/configs/am335x_defconfig b/arch/arm/configs/am335x_=
defconfig
> index 6ef9c83..7dcfaed 100644
> --- a/arch/arm/configs/am335x_defconfig
> +++ b/arch/arm/configs/am335x_defconfig
> @@ -79,6 +79,7 @@ CONFIG_CMD_USBGADGET=3Dy
>  CONFIG_CMD_BAREBOX_UPDATE=3Dy
>  CONFIG_CMD_OF_NODE=3Dy
>  CONFIG_CMD_OF_PROPERTY=3Dy
> +CONFIG_CMD_OF_DISPLAY_TIMINGS=3Dy
>  CONFIG_CMD_OFTREE=3Dy
>  CONFIG_CMD_TIME=3Dy
>  CONFIG_NET=3Dy
> -- =

> 1.9.1
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
