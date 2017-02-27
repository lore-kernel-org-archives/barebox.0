Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ciI1T-0004PM-Bj
 for barebox@lists.infradead.org; Mon, 27 Feb 2017 09:55:17 +0000
Date: Mon, 27 Feb 2017 10:54:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170227095453.5tznukther5d3o46@pengutronix.de>
References: <20170224142501.2679-1-bst@pengutronix.de>
 <20170224142501.2679-2-bst@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170224142501.2679-2-bst@pengutronix.de>
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
Subject: Re: [PATCH 1/4] console: replace set_active by open/close
To: Bastian Stender <bst@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Feb 24, 2017 at 03:24:58PM +0100, Bastian Stender wrote:
> Opening and closing consoles should be independent from setting them
> active. This way it is possible to open e.g. a framebuffer console and
> display text on it without showing stdout/stderr.
> 
> Signed-off-by: Bastian Stender <bst@pengutronix.de>
> ---
>  common/console.c          | 19 +++++++++++++++----
>  drivers/video/fbconsole.c | 28 ++++++++++++++++++----------
>  include/console.h         |  3 ++-
>  net/netconsole.c          | 27 +++++++++++++++++----------
>  4 files changed, 52 insertions(+), 25 deletions(-)
> 
> diff --git a/common/console.c b/common/console.c
> index 74ccfcfc3e..43890b3da8 100644
> --- a/common/console.c
> +++ b/common/console.c
> @@ -71,10 +71,21 @@ int console_set_active(struct console_device *cdev, unsigned flag)
>  	if (!flag && cdev->f_active && cdev->flush)
>  		cdev->flush(cdev);
>  
> -	if (cdev->set_active) {
> -		ret = cdev->set_active(cdev, flag);
> -		if (ret)
> -			return ret;
> +	if (flag == cdev->f_active)
> +		return 0;
> +
> +	if (!flag) {
> +		if (cdev->close) {
> +			ret = cdev->close(cdev);
> +			if (ret)
> +				return ret;
> +		}
> +	} else {
> +		if (cdev->open) {
> +			ret = cdev->open(cdev);
> +			if (ret)
> +				return ret;
> +		}
>  	}

instead of calling into cdev->open/close directly here I would prefer
console_open() / console_close() functions which get called here.
In these functions you can call the driver hooks on first open and last
close.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
