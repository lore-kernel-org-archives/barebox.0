Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T6HH3-00088J-C9
 for barebox@lists.infradead.org; Tue, 28 Aug 2012 08:35:50 +0000
Date: Tue, 28 Aug 2012 10:35:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120828083546.GC26594@pengutronix.de>
References: <1345280723-27113-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1345280723-27113-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] spi: allow to dynamically allocate bus number
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Aug 18, 2012 at 11:05:23AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> For this keep track of the master list and the max bus_num.
> If a master already use the same bus_num use an other number and emit a
> warning.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  drivers/spi/spi.c |   28 ++++++++++++++++++++++++++++
>  include/spi/spi.h |    2 ++
>  2 files changed, 30 insertions(+)
> 
> diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
> index a7fe10c..90908b0 100644
> --- a/drivers/spi/spi.c
> +++ b/drivers/spi/spi.c
> @@ -41,6 +41,8 @@ struct boardinfo {
>  };
>  
>  static LIST_HEAD(board_list);
> +static LIST_HEAD(master_list);
> +static int spi_master_max_bus_num = -1;
>  
>  /**
>   * spi_new_device - instantiate one new SPI device
> @@ -154,6 +156,18 @@ static void scan_boardinfo(struct spi_master *master)
>  	}
>  }
>  
> +static struct spi_master *master spi_get_master_by_num(int num)
> +{
> +	struct spi_master *master;
> +
> +	list_for_each_entry(master, &master_list, list) {
> +		if (master->bus_num == num)
> +			return master;
> +	}
> +
> +	return NULL;
> +}
> +
>  /**
>   * spi_register_master - register SPI master controller
>   * @master: initialized master, originally from spi_alloc_master()
> @@ -177,6 +191,7 @@ static void scan_boardinfo(struct spi_master *master)
>  int spi_register_master(struct spi_master *master)
>  {
>  	int			status = -ENODEV;
> +	struct spi_master	*tmp = NULL;
>  
>  	debug("%s: %s:%d\n", __func__, master->dev->name, master->dev->id);
>  
> @@ -186,6 +201,19 @@ int spi_register_master(struct spi_master *master)
>  	if (master->num_chipselect == 0)
>  		return -EINVAL;
>  
> +	if (master->bus_num < 0 ||
> +		(tmp = spi_get_master_by_num(master->bus_num))) {
> +		spi_master_max_bus_num++;
> +		if (tmp)
> +			dev_warn(master->dev, "spi%d already exist\n", master->bus_num);
> +		master->bus_num = spi_master_max_bus_num;
> +	} else {
> +		spi_master_max_bus_num = max(master->bus_num, spi_master_max_bus_num);
> +	}
> +	dev_info(master->dev, "register as spi%d\n", master->bus_num);

This dynamic bus_num allocation seems quite useless. When the bus_num is
dynamically allocated it is not known to the caller and the bus can't be
populated afterwards.

We should instead use a fixed bus_num only and bail out if the bus_num
already is registered.

Sascha

> +
> +	list_add_tail(&master->list, &master_list);
> +
>  	/* populate children from any spi device tables */
>  	scan_boardinfo(master);
>  	status = 0;
> diff --git a/include/spi/spi.h b/include/spi/spi.h
> index 9d01d06..7281c17 100644
> --- a/include/spi/spi.h
> +++ b/include/spi/spi.h
> @@ -163,6 +163,8 @@ struct spi_master {
>  
>  	/* called on release() to free memory provided by spi_master */
>  	void			(*cleanup)(struct spi_device *spi);
> +
> +	struct list_head	list;
>  };
>  
>  /*---------------------------------------------------------------------------*/
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
