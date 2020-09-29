Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kN9vO-0000iV-VM
 for barebox@lists.infradead.org; Tue, 29 Sep 2020 07:19:47 +0000
Date: Tue, 29 Sep 2020 09:19:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200929071945.GT11648@pengutronix.de>
References: <20200928154247.15619-1-a.fatoum@pengutronix.de>
 <20200928154247.15619-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200928154247.15619-2-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 2/7] led: pca955x: fix probing from device tree
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Sep 28, 2020 at 05:42:42PM +0200, Ahmad Fatoum wrote:
> dev->id_entry is not populated for devices probed from the device
> tree. It was used unconditionally however. Use device_get_match_data
> instead to support device tree probing.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/led/led-pca955x.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/led/led-pca955x.c b/drivers/led/led-pca955x.c
> index 27fefce8d524..f89fcbfba5ac 100644
> --- a/drivers/led/led-pca955x.c
> +++ b/drivers/led/led-pca955x.c
> @@ -349,8 +349,11 @@ static int led_pca955x_probe(struct device_d *dev)
>  	struct i2c_client *client;
>  	int err;
>  	struct pca955x_platform_data *pdata;
> +	enum pca955x_type type;
>  
> -	chip = &pca955x_chipdefs[dev->id_entry->driver_data];
> +	type = (enum pca955x_type)device_get_match_data(dev);

In this driver we have this:

static struct pca955x_chipdef pca955x_chipdefs[] = {
	[pca9550] = {
		.bits		= 2,
		.slv_addr	= /* 110000x */ 0x60,
		.slv_addr_shift	= 1,
	},
	[pca9551] = {
		.bits		= 8,
		.slv_addr	= /* 1100xxx */ 0x60,
		.slv_addr_shift	= 3,
	},
	[pca9552] = {
		.bits		= 16,
		.slv_addr	= /* 1100xxx */ 0x60,
		.slv_addr_shift	= 3,
	},
	[pca9553] = {
		.bits		= 4,
		.slv_addr	= /* 110001x */ 0x62,
		.slv_addr_shift	= 1,
	},
};

So instead of putting the enum casted to void pointer into the matchdata
we could put pointers to struct pca955x_chipdef directly into the
matchdata.

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
