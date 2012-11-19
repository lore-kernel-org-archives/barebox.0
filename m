Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TaNoU-0000AM-C8
 for barebox@lists.infradead.org; Mon, 19 Nov 2012 09:38:46 +0000
Date: Mon, 19 Nov 2012 10:38:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121119093844.GJ10369@pengutronix.de>
References: <20121116175355.GB8327@game.jcrosoft.org>
 <1353088545-19406-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1353088545-19406-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/7] watchdog: add keep alive support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Nov 16, 2012 at 06:55:39PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> this will allow to ping the watchdog via poller
> 
>  /*
>   * Note: this simple framework supports one watchdog only.
>   */
>  static struct watchdog *watchdog;
>  
> +static void watchdog_poller_func(struct poller_struct *poller)
> +{
> +	watchdog->keep_alive(watchdog);
> +}
> +
> +static struct poller_struct watchdog_poller = {
> +	.func = watchdog_poller_func,
> +};
> +
>  int watchdog_register(struct watchdog *wd)
>  {
>  	if (watchdog != NULL)
>  		return -EBUSY;
>  
>  	watchdog = wd;
> +
> +	if (watchdog->keep_alive) {
> +		int ret;
> +
> +		ret = poller_register(&watchdog_poller);
> +		if (ret) {
> +			watchdog = NULL;
> +			return ret;
> +		}
> +	}

Currently the watchdog is supposed to be kept alive with periodically
calling the watchdog (or wd) command. A user may decide to just
periodically ping the watchdog from C code, but this should be a users
decision (i.e. some enhancement to the wd command) and should be
available for i.MX aswell.

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
