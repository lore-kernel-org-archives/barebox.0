Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYPc7-00017c-Eb
 for barebox@lists.infradead.org; Tue, 12 May 2020 07:46:12 +0000
Date: Tue, 12 May 2020 09:46:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200512074605.GB5877@pengutronix.de>
References: <20200511074220.980266-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511074220.980266-1-ahmad@a3f.at>
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
Subject: Re: [PATCH 1/2] video: backlight-pwm: remove unused struct member
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

On Mon, May 11, 2020 at 09:42:19AM +0200, Ahmad Fatoum wrote:
> pwm_backlight.max_value is unused anywhere. Drop it.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  drivers/video/backlight-pwm.c | 1 -
>  1 file changed, 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/video/backlight-pwm.c b/drivers/video/backlight-pwm.c
> index c2979f914de8..fda23b8243f6 100644
> --- a/drivers/video/backlight-pwm.c
> +++ b/drivers/video/backlight-pwm.c
> @@ -34,7 +34,6 @@ struct pwm_backlight {
>  	unsigned int *levels;
>  	int enable_gpio;
>  	int enable_active_high;
> -	int max_value;
>  	int enabled;
>  	unsigned int scale;
>  };
> -- 
> 2.20.1
> 
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
