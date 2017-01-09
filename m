Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cQXXX-0000uG-0P
 for barebox@lists.infradead.org; Mon, 09 Jan 2017 10:51:00 +0000
Date: Mon, 9 Jan 2017 11:50:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170109105037.atfxmgb2vq2u74k6@pengutronix.de>
References: <1481639504-4034-1-git-send-email-c.hemp@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1481639504-4034-1-git-send-email-c.hemp@phytec.de>
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
Subject: Re: [PATCH 1/2] mci: imx: Add imx6sx compatible
To: Christian Hemp <c.hemp@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Dec 13, 2016 at 03:31:43PM +0100, Christian Hemp wrote:
> To let the driver probe on i.MX6SX and i.MX6UL.
> 
> Signed-off-by: Christian Hemp <c.hemp@phytec.de>
> ---
>  drivers/mci/imx-esdhc.c | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
> index 262a904..41f0562 100644
> --- a/drivers/mci/imx-esdhc.c
> +++ b/drivers/mci/imx-esdhc.c
> @@ -648,6 +648,8 @@ static __maybe_unused struct of_device_id fsl_esdhc_compatible[] = {
>  	}, {
>  		.compatible = "fsl,imx6sl-usdhc",
>  	}, {
> +		.compatible = "fsl,imx6sx-usdhc",
> +	}, {
>  		/* sentinel */
>  	}
>  };
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
