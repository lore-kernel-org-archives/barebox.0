Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f4X7O-0008G2-7W
 for barebox@lists.infradead.org; Fri, 06 Apr 2018 19:33:51 +0000
Message-ID: <1523043217.12903.5.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 06 Apr 2018 21:33:37 +0200
In-Reply-To: <20180406131639.14100-1-s.hauer@pengutronix.de>
References: <20180406131639.14100-1-s.hauer@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH] net: on ifup -a only detect devices when necessary
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List <barebox@lists.infradead.org>
Cc: mtr@pengutronix.de

Am Freitag, den 06.04.2018, 15:16 +0200 schrieb Sascha Hauer:
> For network boot we once used to hardcode eth0, but in latest changes
> this was changed to work with different network devices and the 'ifup
> eth0' was replaced with 'ifup -a' which lead to the result that we
> now
> detect all devices in order to eventually also bring up USB network
> adapters. In most of the cases this is not desired. When a board has
> internal network support this is likely to be used. With this patch
> we only detect all devices when we do not have a network device
> already.
> For the unusual case in which a USB network adapter shall be used
> even when an internal network interface is present we introduce the
> global variable "global.net.ifup_force_detect" which can be used to
> force detection of devices.

This may warrant some more documentation. Without the code change and
the above commit message, the variable doc isn't too verbose about what
it does exactly.

Otherwise I love this change, it makes ifup -a much more useful.

Regards,
Lucas

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  net/ifup.c | 21 ++++++++++++++++++++-
>  1 file changed, 20 insertions(+), 1 deletion(-)
> 
> diff --git a/net/ifup.c b/net/ifup.c
> index 827c5c03d1..d550f82530 100644
> --- a/net/ifup.c
> +++ b/net/ifup.c
> @@ -28,6 +28,9 @@
>  #include <globalvar.h>
>  #include <string.h>
>  #include <driver.h>
> +#include <init.h>
> +#include <globalvar.h>
> +#include <magicvar.h>
>  #include <linux/stat.h>
>  
>  static int eth_discover(char *file)
> @@ -245,6 +248,8 @@ int ifup(const char *ethname, unsigned flags)
>  	return ifup_edev(edev, flags);
>  }
>  
> +static int net_ifup_force_detect;
> +
>  int ifup_all(unsigned flags)
>  {
>  	struct eth_device *edev;
> @@ -266,7 +271,9 @@ int ifup_all(unsigned flags)
>  
>  	closedir(dir);
>  
> -	device_detect_all();
> +	if ((flags & IFUP_FLAG_FORCE) || net_ifup_force_detect ||
> +	    list_empty(&netdev_list))
> +		device_detect_all();
>  
>  	for_each_netdev(edev)
>  		ifup_edev(edev, flags);
> @@ -274,6 +281,18 @@ int ifup_all(unsigned flags)
>  	return 0;
>  }
>  
> +static int ifup_all_init(void)
> +{
> +	globalvar_add_simple_bool("net.ifup_force_detect",
> &net_ifup_force_detect);
> +
> +	return 0;
> +}
> +late_initcall(ifup_all_init);
> +
> +BAREBOX_MAGICVAR_NAMED(global_net_ifup_force_detect,
> +                       global.net.ifup_force_detect,
> +                       "net: force detection of devices on ifup
> -a");
> +
>  #if IS_ENABLED(CONFIG_NET_CMD_IFUP)
>  
>  static int do_ifup(int argc, char *argv[])

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
