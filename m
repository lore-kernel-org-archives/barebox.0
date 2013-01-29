Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U071N-0007b4-L1
 for barebox@lists.infradead.org; Tue, 29 Jan 2013 08:58:27 +0000
Date: Tue, 29 Jan 2013 09:58:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130129085823.GM1906@pengutronix.de>
References: <1359411780-30344-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1359411780-30344-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/1] w1: add dual search support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Jan 28, 2013 at 11:23:00PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Some 1-wire device need to be search twice to be detected
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  drivers/w1/Kconfig |    5 +++++
>  drivers/w1/w1.c    |   27 ++++++++++++++++++++++++++-
>  drivers/w1/w1.h    |    2 ++
>  3 files changed, 33 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/w1/Kconfig b/drivers/w1/Kconfig
> index ab34997..dbc1e3c 100644
> --- a/drivers/w1/Kconfig
> +++ b/drivers/w1/Kconfig
> @@ -11,4 +11,9 @@ if W1
>  source drivers/w1/masters/Kconfig
>  source drivers/w1/slaves/Kconfig
>  
> +config W1_DUAL_SEARCH
> +	bool "dual search"
> +	---help---
> +	  Some device need to be searched twice to be detected
> +
>  endif # W1
> diff --git a/drivers/w1/w1.c b/drivers/w1/w1.c
> index d2f94c9..eb6bec8 100644
> --- a/drivers/w1/w1.c
> +++ b/drivers/w1/w1.c
> @@ -402,6 +402,21 @@ struct bus_type w1_bustype= {
>  	.remove = w1_bus_remove,
>  };
>  
> +static bool w1_is_registered(struct w1_bus *bus, u64 rn)
> +{
> +	struct device_d *dev = NULL;
> +	struct w1_device *w1_dev;
> +
> +	bus_for_each_device(&w1_bustype, dev) {
> +		w1_dev = to_w1_device(dev);
> +
> +		if (w1_dev->bus == bus && w1_dev->reg_num == rn)
> +			return true;
> +	}
> +
> +	return false;
> +}
> +
>  static int w1_device_register(struct w1_bus *bus, struct w1_device *dev)
>  {
>  	char str[18];
> @@ -442,9 +457,15 @@ int w1_driver_register(struct w1_driver *drv)
>  
>  void w1_found(struct w1_bus *bus, u64 rn)
>  {
> -	struct w1_device *dev = xzalloc(sizeof(*dev));
> +	struct w1_device *dev;
>  	u64 tmp = be64_to_cpu(rn);
>  
> +	if (IS_ENABLED(CONFIG_W1_DUAL_SEARCH)
> +	 && bus->is_searched && w1_is_registered(bus, rn))
> +		return;
> +
> +	dev = xzalloc(sizeof(*dev));
> +
>  	dev->reg_num = rn;
>  	dev->fid = tmp >> 56;
>  	dev->id = (tmp >> 8) & 0xffffffffffff;
> @@ -605,7 +626,11 @@ int w1_bus_register(struct w1_bus *bus)
>  	if (ret)
>  		return ret;
>  
> +	bus->is_searched = false;
>  	w1_search(bus, W1_SEARCH);
> +	bus->is_searched = true;
> +	if (IS_ENABLED(CONFIG_W1_DUAL_SEARCH))
> +		w1_search(bus, W1_SEARCH);
>  
>  	return 0;
>  }
> diff --git a/drivers/w1/w1.h b/drivers/w1/w1.h
> index 1373f69..b92d8cd 100644
> --- a/drivers/w1/w1.h
> +++ b/drivers/w1/w1.h
> @@ -133,6 +133,8 @@ struct w1_bus
>  
>  	int		max_slave_count, slave_count;
>  
> +	bool		is_searched;
> +
>  	void		*data;
>  	struct list_head list;
>  };
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
