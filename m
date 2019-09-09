Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7FTF-0004xa-AE
 for barebox@lists.infradead.org; Mon, 09 Sep 2019 08:56:26 +0000
Date: Mon, 9 Sep 2019 10:56:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190909085623.zjvlscdv4mteamwl@pengutronix.de>
References: <20190908220111.694-1-dgienda125@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190908220111.694-1-dgienda125@gmail.com>
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
Subject: Re: [PATCH] console: set default console_device devname
To: dgienda125@gmail.com
Cc: barebox@lists.infradead.org

On Sun, Sep 08, 2019 at 06:01:11PM -0400, dgienda125@gmail.com wrote:
> From: David Dgien <dgienda125@gmail.com>
> 
> Some commands (loadb/x/y) rely on console_get_by_name, which searches the list
> of console devices based on console_device->devname. However, some serial
> drivers do not set devname, meaning that their respective console_devices can
> never be found. During console_register, ensure that a default devname is set
> if one is not already explicitly set.
> 
> Signed-off-by: David Dgien <dgienda125@gmail.com>
> ---
>  common/console.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/common/console.c b/common/console.c
> index ee17a508b..dacb6001c 100644
> --- a/common/console.c
> +++ b/common/console.c
> @@ -324,6 +324,10 @@ int console_register(struct console_device *newcdev)
>  		dev->parent = newcdev->dev;
>  	platform_device_register(dev);
>  
> +	if (!newcdev->devname) {
> +		newcdev->devname = strdup(dev_name(dev));

As the return value is not checked I switched to xstrdup. Applied,
thanks

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
