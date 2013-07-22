Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V1AdU-0008Dl-Rj
 for barebox@lists.infradead.org; Mon, 22 Jul 2013 07:34:25 +0000
Date: Mon, 22 Jul 2013 09:34:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130722073401.GF9434@pengutronix.de>
References: <1374241301-21277-1-git-send-email-h.feurstein@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1374241301-21277-1-git-send-email-h.feurstein@gmail.com>
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
Subject: Re: [PATCH] include/printk: fix level of pr_err and pr_warning
To: Hubert Feurstein <h.feurstein@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Jul 19, 2013 at 03:41:41PM +0200, Hubert Feurstein wrote:
> The level of pr_err and pr_warning were interchanged.
> 
> Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>

Applied, thanks

Sascha

> ---
>  include/printk.h |    4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/include/printk.h b/include/printk.h
> index 3cd7335..86bf208 100644
> --- a/include/printk.h
> +++ b/include/printk.h
> @@ -56,8 +56,8 @@ int dev_printf(const struct device_d *dev, const char *format, ...)
>  #define pr_emerg(fmt, arg...)	__pr_printk(0, pr_fmt(fmt), ##arg)
>  #define pr_alert(fmt, arg...)	__pr_printk(1, pr_fmt(fmt), ##arg)
>  #define pr_crit(fmt, arg...)	__pr_printk(2, pr_fmt(fmt), ##arg)
> -#define pr_warning(fmt, arg...)	__pr_printk(3, pr_fmt(fmt), ##arg)
> -#define pr_err(fmt, arg...)	__pr_printk(4, pr_fmt(fmt), ##arg)
> +#define pr_err(fmt, arg...)	__pr_printk(3, pr_fmt(fmt), ##arg)
> +#define pr_warning(fmt, arg...)	__pr_printk(4, pr_fmt(fmt), ##arg)
>  #define pr_notice(fmt, arg...)	__pr_printk(5, pr_fmt(fmt), ##arg)
>  #define pr_info(fmt, arg...)	__pr_printk(6, pr_fmt(fmt), ##arg)
>  #define pr_debug(fmt, arg...)	__pr_printk(7, pr_fmt(fmt), ##arg)
> -- 
> 1.7.9.5
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
