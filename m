Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gWHTA-0002uu-Qx
 for barebox@lists.infradead.org; Mon, 10 Dec 2018 09:03:18 +0000
Date: Mon, 10 Dec 2018 10:03:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181210090304.4tz56pv3vuokfgj7@pengutronix.de>
References: <20181207073345.5638-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181207073345.5638-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 1/6] mci: core: Use alias as a devname by default
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Dec 06, 2018 at 11:33:40PM -0800, Andrey Smirnov wrote:
> This idiom is repeatead by almost every mci driver, so move it to
> mci_of_parse() in order to reduce amount of duplicated code.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/mci/mci-core.c | 5 +++++
>  1 file changed, 5 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index c8d1d5e16..3efd80a8a 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -1858,6 +1858,7 @@ void mci_of_parse_node(struct mci_host *host,
>  {
>  	u32 bus_width;
>  	u32 dsr_val;
> +	const char *alias;
>  
>  	if (!IS_ENABLED(CONFIG_OFDEVICE))
>  		return;
> @@ -1865,6 +1866,10 @@ void mci_of_parse_node(struct mci_host *host,
>  	if (!host->hw_dev || !np)
>  		return;
>  
> +	alias = of_alias_get(np);
> +	if (alias)
> +		host->devname = xstrdup(alias);
> +
>  	/* "bus-width" is translated to MMC_CAP_*_BIT_DATA flags */
>  	if (of_property_read_u32(np, "bus-width", &bus_width) < 0) {
>  		/* If bus-width is missing we get the driver's default, which
> -- 
> 2.19.1
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
