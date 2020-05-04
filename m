Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVTsz-0002Tb-Oy
 for barebox@lists.infradead.org; Mon, 04 May 2020 05:43:27 +0000
Date: Mon, 4 May 2020 07:43:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200504054319.GI5877@pengutronix.de>
References: <20200429070653.24762-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429070653.24762-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH] video: ssd1307fb: fix null pointer dereference on error
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Apr 29, 2020 at 09:06:53AM +0200, Ahmad Fatoum wrote:
> On error, a goto may jump over the initialization of vmem and free the
> uninitialized value during clean up. Fix this.
> 
> Found by compiling the code with clang.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/video/ssd1307fb.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/video/ssd1307fb.c b/drivers/video/ssd1307fb.c
> index 835814bf5306..45f479b0efdc 100644
> --- a/drivers/video/ssd1307fb.c
> +++ b/drivers/video/ssd1307fb.c
> @@ -395,7 +395,7 @@ static int ssd1307fb_probe(struct device_d *dev)
>  	u32 vmem_size;
>  	struct ssd1307fb_par *par;
>  	struct ssd1307fb_array *array;
> -	u8 *vmem;
> +	u8 *vmem = NULL;
>  	int ret;
>  	int i, j;
>  
> -- 
> 2.26.2
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
