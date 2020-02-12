Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1mVL-0003Md-PL
 for barebox@lists.infradead.org; Wed, 12 Feb 2020 07:32:17 +0000
Date: Wed, 12 Feb 2020 08:32:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200212073213.66jp7z2qa7qqrc6t@pengutronix.de>
References: <20200210180751.31108-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200210180751.31108-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 1/2] driver: bail out, don't crash, if drv->name is not set
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Feb 10, 2020 at 07:07:50PM +0100, Ahmad Fatoum wrote:
> Currently, we expect each driver to have a name. If a driver doesn't,
> we run into a NULL pointer dereference. Make this error scenario more
> pleasant by checking if a name is set and failing otherwise.
> 
> The only in-tree driver affected by this is drivers/watchdog/dw_wdt.c,
> which will be fixed in the follow-up commit.
> 
> Affected drivers can be determined with following pipeline, which should
> return all driver_d structure instantiations that don't contain a name:
> 
>   ack --A 4 'struct driver_d.*' | perl -pe 's/^--$/\n/' | \
> 	perl -000 -ne 'print if /=.*\{.*\}/s && !/name/s'
> 
> With this change, these drivers should now give a more pleasant message:
> 
>   ERROR: initcall dw_wdt_driver_register+0x1/0xc failed: Invalid argument
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/base/driver.c | 3 +++
>  1 file changed, 3 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/base/driver.c b/drivers/base/driver.c
> index eec2a2d8a2a5..116ccb25864b 100644
> --- a/drivers/base/driver.c
> +++ b/drivers/base/driver.c
> @@ -308,6 +308,9 @@ int register_driver(struct driver_d *drv)
>  {
>  	struct device_d *dev = NULL;
>  
> +	if (!drv->name)
> +		return -EINVAL;
> +
>  	debug("register_driver: %s\n", drv->name);
>  
>  	BUG_ON(!drv->bus);
> -- 
> 2.25.0
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
