Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XC6Z9-0005dv-UB
 for barebox@lists.infradead.org; Tue, 29 Jul 2014 12:31:40 +0000
Date: Tue, 29 Jul 2014 14:31:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140729123116.GF23235@pengutronix.de>
References: <1406620749-11756-1-git-send-email-voice.shen@atmel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1406620749-11756-1-git-send-email-voice.shen@atmel.com>
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
Subject: Re: [PATCH] mci: core: the sd1.0 card can work in 4 bits mode
To: Bo Shen <voice.shen@atmel.com>
Cc: barebox@lists.infradead.org

On Tue, Jul 29, 2014 at 03:59:09PM +0800, Bo Shen wrote:
> The sd 1.0 card can work in 4 bits mode also.
> 
> Signed-off-by: Bo Shen <voice.shen@atmel.com>

Applied, thanks

Sascha

> ---
> 
>  drivers/mci/mci-core.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index ce6e590..8221632 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -616,6 +616,9 @@ retry_scr:
>  		break;
>  	}
>  
> +	if (mci->scr[0] & SD_DATA_4BIT)
> +		mci->card_caps |= MMC_CAP_4_BIT_DATA;
> +
>  	/* Version 1.0 doesn't support switching */
>  	if (mci->version == SD_VERSION_1_0)
>  		return 0;
> @@ -634,9 +637,6 @@ retry_scr:
>  			break;
>  	}
>  
> -	if (mci->scr[0] & SD_DATA_4BIT)
> -		mci->card_caps |= MMC_CAP_4_BIT_DATA;
> -
>  	/* If high-speed isn't supported, we return */
>  	if (!(__be32_to_cpu(switch_status[3]) & SD_HIGHSPEED_SUPPORTED))
>  		return 0;
> -- 
> 1.8.5.2
> 
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
