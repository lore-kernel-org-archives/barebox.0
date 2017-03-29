Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ct7SU-0002CG-UA
 for barebox@lists.infradead.org; Wed, 29 Mar 2017 06:51:56 +0000
Date: Wed, 29 Mar 2017 08:51:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170329065133.esikrtwah4jx3jbi@pengutronix.de>
References: <1490541467-15401-1-git-send-email-akurz@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1490541467-15401-1-git-send-email-akurz@blala.de>
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
Subject: Re: [PATCH] console: fix usbserial re-connect
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org, Bastian Stender <bst@pengutronix.de>

On Sun, Mar 26, 2017 at 05:17:47PM +0200, Alexander Kurz wrote:
> With commit b4f55fcf355a ("console: expose consoles in devfs") consoles
> got inserted, but never removed from devfs.
> When dealing with USB consoles, barebox should be prepared for devices
> spontaneously appering and disappering again (user disconnects and re-
> connects the cable). If the devfs entry is not removed upon disconnect,
> barebox will raise an error "device creation failed with File exists"
> when the cable is connected again.
> 
> Remove devfs entries when consoles are de-registered.
> Also change the error message, it's the devfs entry.
> 
> Signed-off-by: Alexander Kurz <akurz@blala.de>
> ---
>  common/console.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)

Also applied to master, thanks

Sascha

> 
> diff --git a/common/console.c b/common/console.c
> index 4127e76..74fb684 100644
> --- a/common/console.c
> +++ b/common/console.c
> @@ -375,7 +375,7 @@ int console_register(struct console_device *newcdev)
>  	ret = devfs_create(&newcdev->devfs);
>  
>  	if (ret) {
> -		pr_err("device creation failed with %s\n", strerror(-ret));
> +		pr_err("devfs entry creation failed: %s\n", strerror(-ret));
>  		return ret;
>  	}
>  
> @@ -388,6 +388,8 @@ int console_unregister(struct console_device *cdev)
>  	struct device_d *dev = &cdev->class_dev;
>  	int status;
>  
> +	devfs_remove(&cdev->devfs);
> +
>  	list_del(&cdev->list);
>  	if (list_empty(&console_list))
>  		initialized = CONSOLE_UNINITIALIZED;
> -- 
> 2.1.4
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
