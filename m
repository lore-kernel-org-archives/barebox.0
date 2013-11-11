Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VfoYJ-0002jB-1J
 for barebox@lists.infradead.org; Mon, 11 Nov 2013 10:17:03 +0000
Date: Mon, 11 Nov 2013 11:16:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131111101641.GH24559@pengutronix.de>
References: <20131107160424.GL26639@ns203013.ovh.net>
 <1383869517-25032-1-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1383869517-25032-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] mci: mxs: support overwriting the device name via
 platform data
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Nov 08, 2013 at 01:11:57AM +0100, Uwe Kleine-K=F6nig wrote:
> The current implementation of the bootloader specification depends on the
> hardware name and the name of the device in /dev to match. As the default
> hardware name is mciX and the device name is diskY the bootloader spec
> cannot be used as is.
> =

> This patch implements a way to overwrite the device name similar to what =
is
> possible for the imx-esdhc driver.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Applied, thanks

Sascha

> ---
> =

> Notes:
>     Changes since (implicit) v1, sent with
>     Message-Id: 1383821462-29348-1-git-send-email-u.kleine-koenig@pengutr=
onix.de:
>     =

>      - don't check for pd->devname being non-NULL before assigment as sug=
gested
>        by Jean-Christophe.
> =

>  arch/arm/mach-mxs/include/mach/mci.h | 1 +
>  drivers/mci/mxs.c                    | 1 +
>  include/mci.h                        | 2 +-
>  3 files changed, 3 insertions(+), 1 deletion(-)
> =

> diff --git a/arch/arm/mach-mxs/include/mach/mci.h b/arch/arm/mach-mxs/inc=
lude/mach/mci.h
> index 4faab37..c47c24c 100644
> --- a/arch/arm/mach-mxs/include/mach/mci.h
> +++ b/arch/arm/mach-mxs/include/mach/mci.h
> @@ -15,6 +15,7 @@
>  #define __MACH_MMC_H
>  =

>  struct mxs_mci_platform_data {
> +	const char *devname;
>  	unsigned caps;	/**< supported operating modes (MMC_MODE_*) */
>  	unsigned voltages; /**< supported voltage range (MMC_VDD_*) */
>  	unsigned f_min;	/**< min operating frequency in Hz (0 -> no limit) */
> diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
> index 1b935f7..bf928e8 100644
> --- a/drivers/mci/mxs.c
> +++ b/drivers/mci/mxs.c
> @@ -570,6 +570,7 @@ static int mxs_mci_probe(struct device_d *hw_dev)
>  	/* feed forward the platform specific values */
>  	host->voltages =3D pd->voltages;
>  	host->host_caps =3D pd->caps;
> +	host->devname =3D pd->devname;
>  =

>  	mxs_mci->clk =3D clk_get(hw_dev, NULL);
>  	if (IS_ERR(mxs_mci->clk))
> diff --git a/include/mci.h b/include/mci.h
> index 07ac273..0f10e8a 100644
> --- a/include/mci.h
> +++ b/include/mci.h
> @@ -286,7 +286,7 @@ struct mci;
>  struct mci_host {
>  	struct device_d *hw_dev;	/**< the host MCI hardware device */
>  	struct mci *mci;
> -	char *devname;			/**< the devicename for the card, defaults to disk%d */
> +	const char *devname;		/**< the devicename for the card, defaults to dis=
k%d */
>  	unsigned voltages;
>  	unsigned host_caps;	/**< Host's interface capabilities, refer MMC_VDD_*=
 */
>  	unsigned f_min;		/**< host interface lower limit */
> -- =

> 1.8.4.rc3
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
