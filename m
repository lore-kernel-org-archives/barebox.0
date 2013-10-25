Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VZrGV-0008NT-Gq
 for barebox@lists.infradead.org; Fri, 25 Oct 2013 23:58:04 +0000
Date: Sat, 26 Oct 2013 01:57:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131025235741.GE30088@pengutronix.de>
References: <1382714628-27038-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1382714628-27038-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] console: Obey "linux, stdout-path" parameter regardless
 of CONSOLE_ACTIVATE_XX
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Fri, Oct 25, 2013 at 07:23:48PM +0400, Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  common/console.c  |  4 ++--
>  drivers/of/base.c | 13 ++++---------
>  include/of.h      |  2 +-
>  3 files changed, 7 insertions(+), 12 deletions(-)
> 
> diff --git a/common/console.c b/common/console.c
> index 56bc864..2d31d71 100644
> --- a/common/console.c
> +++ b/common/console.c
> @@ -168,8 +168,8 @@ int console_register(struct console_device *newcdev)
>  		activate = 1;
>  	}
>  
> -	if (newcdev->dev && of_device_is_stdout_path(newcdev->dev))
> -		activate = 1;
> +	if (newcdev->dev)
> +		 check_of_device_is_stdout_path(newcdev->dev, &activate);
>  
>  	list_add_tail(&newcdev->list, &console_list);
>  
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 116dd0c..6303b53 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -1819,23 +1819,18 @@ void of_delete_node(struct device_node *node)
>  		of_set_root_node(NULL);
>  }
>  
> -int of_device_is_stdout_path(struct device_d *dev)
> +void check_of_device_is_stdout_path(struct device_d *dev, int *activate)
>  {
>  	struct device_node *dn;
>  	const char *name;
>  
>  	name = of_get_property(of_chosen, "linux,stdout-path", NULL);
>  	if (name == NULL)
> -		return 0;
> +		return;
>  
>  	dn = of_find_node_by_path(name);
> -	if (!dn)
> -		return 0;
> -
> -	if (dn == dev->device_node)
> -		return 1;
> -
> -	return 0;
> +	if (dn)
> +		*activate = dn == dev->device_node;
>  }

Can you elaborate why you need this patch? Normally on devicetree based
boards I set CONSOLE_ACTIVATE_NONE. In this case I think your patch
changes nothing. If you set CONSOLE_ACTIVATE_ALL or
CONSOLE_ACTIVATE_FIRST your patch seems to overwrite the Kconfig setting
with the devicetree setting. Why don't you set CONSOLE_ACTIVATE_NONE in
the first place?

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
