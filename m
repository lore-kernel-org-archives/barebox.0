Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYNjI-00012F-WA
 for barebox@lists.infradead.org; Tue, 12 May 2020 05:45:26 +0000
References: <20200511165019.22278-1-l.stach@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <8205bb72-aa65-6470-9db8-cced6435a9a4@pengutronix.de>
Date: Tue, 12 May 2020 07:45:23 +0200
MIME-Version: 1.0
In-Reply-To: <20200511165019.22278-1-l.stach@pengutronix.de>
Content-Language: en-US
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
To: Lucas Stach <l.stach@pengutronix.de>, barebox@lists.infradead.org

On 5/11/20 6:50 PM, Lucas Stach wrote:
> Some i2c device want to be coredevices. Add a macro to avoid
> boilerplate code.

For all three patches:
Tested-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  include/i2c/i2c.h | 2 ++
>  1 file changed, 2 insertions(+)
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
