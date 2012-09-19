Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TEO1j-0001Hh-M1
 for barebox@lists.infradead.org; Wed, 19 Sep 2012 17:25:32 +0000
Date: Wed, 19 Sep 2012 19:25:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120919172529.GJ6180@pengutronix.de>
References: <1348061997-16901-1-git-send-email-plagnioj@jcrosoft.com>
 <1348061997-16901-2-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1348061997-16901-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 2/2] driver: search device and driver based on the bus
 instead of all
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 19, 2012 at 03:39:57PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> This will allow reduce the number of driver and device to search on.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  drivers/base/driver.c |    9 +++++----
>  include/driver.h      |   12 ++++++++++++
>  2 files changed, 17 insertions(+), 4 deletions(-)
> 

[...]

>  
> +/* Iterate over all devices of a bus
> + */
> +#define for_each_bus_device(bus, dev) list_for_each_entry(dev, &bus->device_list, list)
> +
> +/* Iterate over all drivers of a bus
> + */
> +#define for_each_bus_driver(bus, drv) list_for_each_entry(drv, &bus->driver_list, list)
> +

bus_for_each_* please.

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
