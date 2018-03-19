Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1expjq-0001dL-8p
 for barebox@lists.infradead.org; Mon, 19 Mar 2018 08:01:51 +0000
Date: Mon, 19 Mar 2018 09:01:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180319080137.wqucsld7iumv6ivo@pengutronix.de>
References: <20180313083328.25705-1-o.rempel@pengutronix.de>
 <20180313083328.25705-6-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180313083328.25705-6-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v2 6/6] watchdog: add watchdog poller
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Mar 13, 2018 at 09:33:28AM +0100, Oleksij Rempel wrote:
> In some cases it is practical to supervise as much as possible of
> the barebox execution with a watchdog (or multiple watchdogs). This
> patch provides an async poller for watchdog core framework which can
> be enabled by the user and stores this configuration to nv.
> 
> +static int watchdog_register_poller(struct watchdog *wd)
> +{
> +	struct param_d *p;
> +	int ret;
> +
> +	ret = poller_async_register(&wd->poller);
> +	if (ret)
> +		return ret;
> +
> +	p = dev_add_param_bool(&wd->dev, "poller_enable", watchdog_set_poller,
> +			NULL, &wd->poller_enable, wd);

The series looks mostly good and I applied 1-5. However, as Jan
mentioned we should find a better name for the variable. "poller_enable"
describes how it's internally implemented, not what this variable is
good for.

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
