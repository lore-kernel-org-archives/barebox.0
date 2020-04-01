Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJWJ4-0000i4-8T
 for barebox@lists.infradead.org; Wed, 01 Apr 2020 05:52:55 +0000
Date: Wed, 1 Apr 2020 07:52:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200401055252.GY27288@pengutronix.de>
References: <20200331172252.9703-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331172252.9703-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] mfd: rave-sp: Fix rave_sp_emulated_get_status()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Mar 31, 2020 at 10:22:52AM -0700, Andrey Smirnov wrote:
> Original code in rave_sp_emulated_get_status() got the meaning of
> RAVE_SP_STATUS_GS_FIRMWARE_MODE wrong. Invert it to correctly detect
> if RAVE SP device is in bootloader mode or not.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/mfd/rave-sp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mfd/rave-sp.c b/drivers/mfd/rave-sp.c
> index 67f7d4c65..c6ad57d51 100644
> --- a/drivers/mfd/rave-sp.c
> +++ b/drivers/mfd/rave-sp.c
> @@ -661,7 +661,7 @@ static int rave_sp_emulated_get_status(struct rave_sp *sp,
>  		return ret;
> 
>  	status->general_status =
> -		firmware_mode ? RAVE_SP_STATUS_GS_FIRMWARE_MODE : 0;
> +		firmware_mode ? 0 : RAVE_SP_STATUS_GS_FIRMWARE_MODE;
> 
>  	return 0;
>  }
> --
> 2.21.0
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
