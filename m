Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cicYy-00014C-P8
 for barebox@lists.infradead.org; Tue, 28 Feb 2017 07:51:15 +0000
Date: Tue, 28 Feb 2017 08:50:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170228075046.ton57n2maeygzvog@pengutronix.de>
References: <20170227095548.mze7oca5d6dzkobf@pengutronix.de>
 <20170227160108.5965-1-bst@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170227160108.5965-1-bst@pengutronix.de>
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
Subject: Re: [PATCH v2] console: expose consoles in devfs
To: Bastian Stender <bst@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Feb 27, 2017 at 05:01:08PM +0100, Bastian Stender wrote:
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
> index 3ff32b8327..bde4c08414 100644
> --- a/common/console.c
> +++ b/common/console.c
> @@ -259,6 +259,39 @@ static int __console_puts(struct console_device *cdev, const char *s)
>  	return n;
>  }
>  
> +static int fops_open(struct cdev *cdev, unsigned long flags)
> +{
> +	struct console_device *priv = cdev->priv;
> +
> +	return console_open(priv);
> +}
> +
> +static int fops_close(struct cdev *dev)
> +{
> +	struct console_device *priv = dev->priv;
> +
> +	return console_close(priv);
> +}
> +
> +static int fops_flush(struct cdev *dev)
> +{
> +	struct console_device *priv = dev->priv;
> +
> +	priv->flush(priv);

cdev->flush() is optional, you have to test for presence before using
it.

When you have to resend patches from a series, please resend the whole
series. Scanning different mail threads to find the newest version of
the patches can get cumbersome quite fast.

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
