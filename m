Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNA7Z-00029H-Ga
 for barebox@lists.infradead.org; Tue, 29 Sep 2020 07:32:22 +0000
Date: Tue, 29 Sep 2020 09:32:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200929073220.GU11648@pengutronix.de>
References: <20200928154247.15619-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200928154247.15619-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 1/7] driver: introduce less error-prone dev_get_drvdata
 alternative
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Sep 28, 2020 at 05:42:41PM +0200, Ahmad Fatoum wrote:
> We use dev_get_drvdata to get the driver match data associated with a
> device. This has two shortcomings:
> 
>  - Linux has dev_get_drvdata too, which returns a private pointer for
>    driver specific info to associate with a device. We use dev->priv
>    (or more often container_of) for that in barebox instead
> 
>  - It nearly always involves a cast to a double pointer, which is
>    error-prone as size and alignment match need to be ensured
>    on the programmer's part and can easily be gotten wrong:
> 	enum dev_type type
> 	dev_get_drvdata(dev, (const void **)&type);
> 
> Add a new function that instead of using a double pointer argument,
> returns the pointer directly:
> 
>  - For normal pointer driver data, no cast is necessary
>  - For integer driver data casted to a pointer for storage,
>    the cast is still necessary, but
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/base/driver.c | 11 +++++++++++
>  include/driver.h      | 18 ++++++++++++++++++
>  2 files changed, 29 insertions(+)
> 
> diff --git a/drivers/base/driver.c b/drivers/base/driver.c
> index 412db6c40699..3205bbc3c33b 100644
> --- a/drivers/base/driver.c
> +++ b/drivers/base/driver.c
> @@ -500,3 +500,14 @@ int dev_get_drvdata(struct device_d *dev, const void **data)
>  
>  	return -ENODEV;
>  }
> +
> +const void *device_get_match_data(struct device_d *dev)
> +{
> +	if (dev->of_id_entry)
> +		return dev->of_id_entry->data;
> +
> +	if (dev->id_entry)
> +		return (void *)dev->id_entry->driver_data;
> +
> +	return NULL;
> +}

Can we please give the caller a possibility to distinguish between
errors and a valid NULL pointer?

As you realize in your series some drivers cast the returned value into
an integer type and use 0 as a valid possibility. These need an extra
explanation why we can accept that case. I can think of different
possibilies to get that straight:

- Put a real pointer into matchdata. This is really preferred as it
  motivates people to put flags into a (struct type) matchdata which
  doesn't lead to excessive if (type == foo || type == bar || type ==
  baz) we sometimes see in drivers.
- Return an ERR_PTR from device_get_match_data(). this is less likely
  interpreted as a valid int value
- add a int * ret argument to device_get_match_data() which returns
  the error code.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
