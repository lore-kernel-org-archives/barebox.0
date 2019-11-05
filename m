Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRvn9-0003LS-1e
 for barebox@lists.infradead.org; Tue, 05 Nov 2019 10:10:28 +0000
Date: Tue, 5 Nov 2019 11:10:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191105101021.deksnoqcbcyqho4f@pengutronix.de>
References: <20191104102806.8044-1-m.felsch@pengutronix.de>
 <20191104102806.8044-2-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104102806.8044-2-m.felsch@pengutronix.de>
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
Subject: Re: [PATCH v2 2/2] mfd: da9063: fix watchdog ping execution
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org, a.fatoum@pengutronix.de

On Mon, Nov 04, 2019 at 11:28:06AM +0100, Marco Felsch wrote:
> The watchdog resets the system if the watchdog gets pinged to fast.
> Between each watchdog ping must be a pause of at least 200ms. This
> commit fixes that by rejecting two fast requests.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
> @@ -237,6 +239,14 @@ static int da9063_watchdog_ping(struct da9063 *priv)
>  	int ret;
>  	u8 val;
>  
> +	/*
> +	 * The watchdog has a cool down phase of 200ms and if we ping to fast
> +	 * the da9062/3 resets the system. Reject those requests has a maximum
> +	 * failure of 10% if the watchdog timeout is set to 2.048s.
> +	 */
> +	if ((int64_t)(priv->last_ping + 200 * MSECOND - get_time_ns()) > 0)
> +		return 0;

Changed this to:

	if (!is_timeout(priv->last_ping, 200 * MSECOND))
		return 0;

And applied, thanks

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
