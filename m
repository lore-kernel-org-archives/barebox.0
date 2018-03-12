Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1evKnq-00049M-BM
 for barebox@lists.infradead.org; Mon, 12 Mar 2018 10:35:40 +0000
Date: Mon, 12 Mar 2018 11:35:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180312103526.yoieryp6wlgxy6te@pengutronix.de>
References: <20180308110515.29574-1-o.rempel@pengutronix.de>
 <20180308110515.29574-3-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180308110515.29574-3-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v1 3/6] watchdog: register watchdog virtual device with
 short name wdog
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Oleksij,

On Thu, Mar 08, 2018 at 12:05:12PM +0100, Oleksij Rempel wrote:
> the watchdog hwdev is usually named with devicetree schema
> which is not practical for CLI.
> 
> On device registration "wdog" will be extended with some index number
> extracted from devicetree (if awailable) or automatically assigned
> first available number. End result will be "wdog0" .. etc.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/watchdog/wd_core.c | 6 ++++++
>  include/watchdog.h         | 1 +
>  2 files changed, 7 insertions(+)
> 
> diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
> index 1d0f0de7d..97e2ab568 100644
> --- a/drivers/watchdog/wd_core.c
> +++ b/drivers/watchdog/wd_core.c
> @@ -33,6 +33,11 @@ static const char *watchdog_name(struct watchdog *wd)
>  
>  int watchdog_register(struct watchdog *wd)
>  {
> +

Please drop that blank line.

> +	strcpy(wd->dev.name, "wdog");

I would prefer a of_alias_get() as first try and "wdog" only as
fallback.

For the hardcoded string wd->dev.id needs to be initialized with
DEVICE_ID_DYNAMIC, otherwise only a single watchdog can be successfully
registered.

> +	wd->dev.parent = wd->hwdev;
> +	register_device(&wd->dev);

Check return value.

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
