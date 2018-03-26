Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f0MVd-0003gT-C9
 for barebox@lists.infradead.org; Mon, 26 Mar 2018 07:25:39 +0000
Date: Mon, 26 Mar 2018 09:25:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180326072524.tated4gxccrlemgg@pengutronix.de>
References: <1521825143-9979-1-git-send-email-andrey.gusakov@cogentembedded.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1521825143-9979-1-git-send-email-andrey.gusakov@cogentembedded.com>
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
Subject: Re: [PATCH] video: tc358767: set num_modes=0 if no valid mode found
To: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
Cc: barebox@lists.infradead.org, cphealy@gmail.com

On Fri, Mar 23, 2018 at 08:12:23PM +0300, Andrey Gusakov wrote:
> Since commit f986661 "video: ipu: register framebuffer,
> even when no modes are found" value returned from
> VPL_GET_VIDEOMODES ioctl is ignored. So set valid num_modes
> in error case to avoid crash in register_framebuffer.
> 
> Signed-off-by: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
> ---
>  drivers/video/tc358767.c | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/video/tc358767.c b/drivers/video/tc358767.c
> index 5ad5cb4..d4749b1 100644
> --- a/drivers/video/tc358767.c
> +++ b/drivers/video/tc358767.c
> @@ -1258,6 +1258,7 @@ static int tc_filter_videomodes(struct tc_data *tc, struct display_timings *timi
>  	} while (1);
>  
>  	free(timings->modes);
> +	timings->num_modes = 0;
>  	timings->modes = NULL;
>  
>  	if (!num_modes) {
> -- 
> 1.9.1
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
