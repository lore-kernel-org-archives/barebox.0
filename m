Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jndoW-0006kY-4S
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 07:57:54 +0000
Date: Tue, 23 Jun 2020 09:57:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200623075750.GU11869@pengutronix.de>
References: <20200619140353.18607-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200619140353.18607-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH] devinfo: print device parent along with device info
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jun 19, 2020 at 04:03:53PM +0200, Ahmad Fatoum wrote:
> Especially for "virtual" devices (e.g. wdog0 or mmc2), it is often
> useful to know the corresponding hardware device.
> 
> Instead of always having to search through plain devinfo, just
> include this information in the output when running
> `devinfo device`.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  commands/devinfo.c | 3 +++
>  1 file changed, 3 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/commands/devinfo.c b/commands/devinfo.c
> index 81956b1cc099..2e2e48e42cc5 100644
> --- a/commands/devinfo.c
> +++ b/commands/devinfo.c
> @@ -85,6 +85,9 @@ static int do_devinfo(int argc, char *argv[])
>  		if (dev->info)
>  			dev->info(dev);
>  
> +		if (dev->parent)
> +			printf("Parent: %s\n", dev_name(dev->parent));
> +
>  		first = true;
>  		list_for_each_entry(param, &dev->parameters, list) {
>  			if (first) {
> -- 
> 2.27.0
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
