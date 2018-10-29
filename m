Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gH3Hf-0003lK-Uw
 for barebox@lists.infradead.org; Mon, 29 Oct 2018 08:52:29 +0000
Date: Mon, 29 Oct 2018 09:52:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181029085214.mnn25qlp6a72zsq4@pengutronix.de>
References: <20181027013230.24387-1-andrew.smirnov@gmail.com>
 <20181027013230.24387-4-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181027013230.24387-4-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 3/6] drivers: base: Share implementations for
 dev_get_resource*()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Oct 26, 2018 at 06:32:27PM -0700, Andrey Smirnov wrote:
> Both dev_get_resource() and dev_get_resource_by_name() implement the
> same algorithm and differ only in matching criteria. Move that
> algoritm into a separate generic function and implement those two
> functions using it.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/base/driver.c | 39 +++++++++++++++++++++++----------------
>  1 file changed, 23 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/base/driver.c b/drivers/base/driver.c
> index 22ca96d7e..4c1b6110a 100644
> --- a/drivers/base/driver.c
> +++ b/drivers/base/driver.c
> @@ -325,14 +325,27 @@ int register_driver(struct driver_d *drv)
>  }
>  EXPORT_SYMBOL(register_driver);
>  
> -struct resource *dev_get_resource(struct device_d *dev, unsigned long type,
> -				  int num)
> +static struct resource *
> +dev_get_resource_by_name_or_id(struct device_d *dev, unsigned long type,
> +			       const char *name, int num)

The behaviour of this function is a bit ambiguous: type must always match,
name must match if given, num must match if name is not given but is otherwise
ignored. Given that dev_get_resource() and dev_get_resource_by_name()
both implement a simpler behaviour and both are straight forward to read
I don't think this is an improvement.

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
