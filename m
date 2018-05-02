Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fDowK-000378-7k
 for barebox@lists.infradead.org; Wed, 02 May 2018 10:24:50 +0000
Date: Wed, 2 May 2018 12:24:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180502102436.avptoe2l6h4hpkqy@pengutronix.de>
References: <20180421013338.10115-1-andrew.smirnov@gmail.com>
 <20180421013338.10115-3-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180421013338.10115-3-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 2/2] watchdog: Port RAVE SP watchdog driver from Linux
 kernel
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Apr 20, 2018 at 06:33:38PM -0700, Andrey Smirnov wrote:
> +static int rave_sp_wdt_set_timeout(struct watchdog *wdd,
> +				   unsigned int timeout)
> +{
> +	struct rave_sp_wdt *sp_wd = to_rave_sp_wdt(wdd);
> +
> +	if (timeout < sp_wd->variant->min_timeout ||
> +	    timeout > sp_wd->variant->max_timeout)
> +		return -EINVAL;
> +
> +	if (!timeout)
> +		return rave_sp_wdt_stop(wdd);

Since min_timeout is > 0 this is never reached. You should move this up.

Otherwise the patches look fine.

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
