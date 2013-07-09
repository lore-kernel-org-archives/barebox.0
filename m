Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwbxD-0006bR-6Q
 for barebox@lists.infradead.org; Tue, 09 Jul 2013 17:43:56 +0000
Date: Tue, 9 Jul 2013 19:43:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130709174333.GY516@pengutronix.de>
References: <1373383330-13126-1-git-send-email-agalakhov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1373383330-13126-1-git-send-email-agalakhov@gmail.com>
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
Subject: Re: [PATCH] Force set console baudrate
To: Alexey Galakhov <agalakhov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jul 09, 2013 at 09:22:10PM +0600, Alexey Galakhov wrote:
> Most serial drivers require setbrg() to be called at least once. Call them
> just after the device has been added.
> 
> Signed-off-by: Alexey Galakhov <agalakhov@gmail.com>

Applied, thanks.

Sascha

> ---
>  common/console.c |    1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/common/console.c b/common/console.c
> index a0a06f6..abf5322 100644
> --- a/common/console.c
> +++ b/common/console.c
> @@ -147,6 +147,7 @@ int console_register(struct console_device *newcdev)
>  		newcdev->baudrate = CONFIG_BAUDRATE;
>  		dev_add_param_int(dev, "baudrate", console_baudrate_set,
>  			NULL, &newcdev->baudrate, "%u", newcdev);
> +		newcdev->setbrg(newcdev, newcdev->baudrate);
>  	}
>  
>  	dev_add_param(dev, "active", console_std_set, NULL, 0);
> -- 
> 1.7.10.4
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
