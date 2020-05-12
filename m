Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYPfc-0001iM-Pq
 for barebox@lists.infradead.org; Tue, 12 May 2020 07:49:46 +0000
Date: Tue, 12 May 2020 09:49:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200512074942.GE5877@pengutronix.de>
References: <20200511165019.22278-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511165019.22278-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 1/3] i2c: add coredevice_i2c_driver() macro
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, May 11, 2020 at 06:50:17PM +0200, Lucas Stach wrote:
> Some i2c device want to be coredevices. Add a macro to avoid
> boilerplate code.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  include/i2c/i2c.h | 2 ++
>  1 file changed, 2 insertions(+)

This reminds me of your deep-probe series, I should maybe nack this
patch ;)

Sascha

> 
> diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
> index a694e4ab2ff1..cb65c43e4110 100644
> --- a/include/i2c/i2c.h
> +++ b/include/i2c/i2c.h
> @@ -318,6 +318,8 @@ static inline int i2c_driver_register(struct driver_d *drv)
>  	return register_driver(drv);
>  }
>  
> +#define coredevice_i2c_driver(drv) \
> +	register_driver_macro(coredevice, i2c, drv)
>  #define device_i2c_driver(drv) \
>  	register_driver_macro(device, i2c, drv)
>  
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
