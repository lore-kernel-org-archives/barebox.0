Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ux1wG-0007pQ-Py
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 21:28:41 +0000
Date: Wed, 10 Jul 2013 23:28:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130710212818.GA14452@pengutronix.de>
References: <20130710090131.GE516@pengutronix.de>
 <1373451310-8131-2-git-send-email-agalakhov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1373451310-8131-2-git-send-email-agalakhov@gmail.com>
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
Subject: Re: [PATCH 2/2] Force set console baudrate at enable time
To: Alexey Galakhov <agalakhov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jul 10, 2013 at 04:15:10PM +0600, Alexey Galakhov wrote:
> Signed-off-by: Alexey Galakhov <agalakhov@gmail.com>
> ---
>  common/console.c |   11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/common/console.c b/common/console.c
> index a0a06f6..28941d6 100644
> --- a/common/console.c
> +++ b/common/console.c
> @@ -80,6 +80,12 @@ static int console_std_set(struct device_d *dev, struct param_d *param,
>  		flag |= CONSOLE_STDERR;
>  	}
>  
> +	if (flag && !cdev->f_active) {
> +		/* The device is being activated, set its baudrate */
> +		if (cdev->setbrg)
> +			cdev->setbrg(cdev, cdev->baudrate);
> +	}
> +
>  	active[i] = 0;
>  	cdev->f_active = flag;
>  
> @@ -104,6 +110,8 @@ static int console_baudrate_set(struct param_d *param, void *priv)
>  	struct console_device *cdev = priv;
>  	unsigned char c;
>  
> +	/* If the device is already active, change its baudrate.
> +	The baudrate of an inactive device will be set at activation time. */

	/*
	 * multiline comments
	 * like this please
	 */

Fixed this while applying.

Thanks
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
