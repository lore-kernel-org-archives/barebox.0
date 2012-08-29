Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T6daq-0007Um-0c
 for barebox@lists.infradead.org; Wed, 29 Aug 2012 08:25:45 +0000
From: Vanalme Filip <F.Vanalme@TELEVIC.com>
Date: Wed, 29 Aug 2012 10:25:40 +0200
Message-ID: <6EE7D1502C48E44E92DCADF9DD3E0DB901B0B37E24E0@SRV-VS06.TELEVIC.COM>
References: <1345280723-27113-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1345280723-27113-1-git-send-email-plagnioj@jcrosoft.com>
Content-Language: en-US
MIME-Version: 1.0
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
Subject: RE: [PATCH 1/1] spi: allow to dynamically allocate bus number
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>


> -----Original Message-----
> From: barebox-bounces@lists.infradead.org [mailto:barebox-
> bounces@lists.infradead.org] On Behalf Of Jean-Christophe PLAGNIOL-VILLARD
> Sent: zaterdag 18 augustus 2012 11:05
> To: barebox@lists.infradead.org
> Subject: [PATCH 1/1] spi: allow to dynamically allocate bus number
> 
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
> diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c index a7fe10c..90908b0 100644
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
>   * spi_new_device - instantiate one new SPI device @@ -154,6 +156,18 @@
> static void scan_boardinfo(struct spi_master *master)
>  	}
>  }
> 
> +static struct spi_master *master spi_get_master_by_num(int num) {
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
>   * @master: initialized master, originally from spi_alloc_master() @@ -177,6
> +191,7 @@ static void scan_boardinfo(struct spi_master *master)  int
> spi_register_master(struct spi_master *master)  {
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
> +			dev_warn(master->dev, "spi%d already exist\n", master-
> >bus_num);
> +		master->bus_num = spi_master_max_bus_num;
> +	} else {
> +		spi_master_max_bus_num = max(master->bus_num,
> spi_master_max_bus_num);
> +	}
> +	dev_info(master->dev, "register as spi%d\n", master->bus_num);
> +
> +	list_add_tail(&master->list, &master_list);
> +
>  	/* populate children from any spi device tables */
>  	scan_boardinfo(master);
>  	status = 0;
> diff --git a/include/spi/spi.h b/include/spi/spi.h index 9d01d06..7281c17 100644
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
Hi Jean-Christophe,

I'm not sure if it's ok to assign automatically bus numbers to the masters. They should have different bus numbers, for sure. But I wonder if it's not better to add an extra member 'bus_num' to the spi_imx_master struct instead ? bus_num is used in scan_boardinfo() to retrieve the right spi_board_info struct. As bus_num is assigned automatically, the order of registration of SPI busses will be important to match the information in spi_board_info().
E.g. in my board file I have :
[...]
static struct spi_board_info imx27_interaxio_spi_board_info[] = {
    { /* SPI 1 */
      .name = "mc13783",
      .max_speed_hz = 3000000,
      .bus_num = 1,
      .chip_select = 0,
    },
    { /* SPI 0 */
        .name = "LCD",
        .max_speed_hz = 2000000,
        .bus_num = 0,
        .chip_select = 0,
    },
};
[...]
imx27_add_spi0(&imx27_spi_0_data);       <=== first registration, will get bus_num 0
imx27_add_spi1(&imx27_spi_1_data);       <=== will get bus_num 1
 [...]

Then I have to be sure that I use the correct bus_num in spi_board_info to have the correct parameters (e.g. speed) for the right spi bus.
If I change the order of calling imx27_add_spiX(), I also have to change the bus numbers in my spi_board_info struct. I.e. this would not work :

[...]
static struct spi_board_info imx27_interaxio_spi_board_info[] = {
    { /* SPI 1 */
      .name = "mc13783",
      .max_speed_hz = 3000000,
      .bus_num = 1,
      .chip_select = 0,
    },
    { /* SPI 0 */
        .name = "LCD",
        .max_speed_hz = 2000000,
        .bus_num = 0,
        .chip_select = 0,
    },
};
[...]
imx27_add_spi1(&imx27_spi_1_data);       <=== first registration, will get bus_num 0
imx27_add_spi0(&imx27_spi_0_data);       <=== will get bus_num 1
[...]

SPI1 will end up having speed 2000000Hz instead of 3000000Hz (and will have the wrong name, but less important...).

Is my concern right or do I miss something ?

Filip
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
