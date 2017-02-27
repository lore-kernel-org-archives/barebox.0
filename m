Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ciI2M-0005ke-EO
 for barebox@lists.infradead.org; Mon, 27 Feb 2017 09:56:12 +0000
Date: Mon, 27 Feb 2017 10:55:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170227095548.mze7oca5d6dzkobf@pengutronix.de>
References: <20170224142501.2679-1-bst@pengutronix.de>
 <20170224142501.2679-3-bst@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170224142501.2679-3-bst@pengutronix.de>
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
Subject: Re: [PATCH 2/4] console: expose consoles in devfs
To: Bastian Stender <bst@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Feb 24, 2017 at 03:24:59PM +0100, Bastian Stender wrote:
> This enables displaying text on e.g. a framebuffer console by issueing
> 
> 	echo -o /dev/fbconsole0 abc123
> 
> Signed-off-by: Bastian Stender <bst@pengutronix.de>
> ---
>  common/console.c  | 52 ++++++++++++++++++++++++++++++++++++++++++++++++++++
>  include/console.h |  3 +++
>  2 files changed, 55 insertions(+)
> 
> diff --git a/common/console.c b/common/console.c
> index 43890b3da8..dcd67afe20 100644
> --- a/common/console.c
> +++ b/common/console.c
> @@ -243,6 +243,39 @@ static int __console_puts(struct console_device *cdev, const char *s)
>  	return n;
>  }
>  
> +static int fops_open(struct cdev *cdev, unsigned long flags)
> +{
> +	struct console_device *priv = cdev->priv;
> +
> +	return priv->open(priv);
> +}

You do not check if this hook exists in the driver, but this will be
solved when you follow what I suggested in 1/4.

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
