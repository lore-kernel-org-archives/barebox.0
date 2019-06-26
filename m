Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg2Oi-00069e-Bq
 for barebox@lists.infradead.org; Wed, 26 Jun 2019 07:31:17 +0000
Date: Wed, 26 Jun 2019 09:31:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190626073114.2ckfwxnueymn75hx@pengutronix.de>
References: <cover.a507585555be94a0fb8946fdfd851a30ab8b296f.1561525118.git-series.r.czerwinski@pengutronix.de>
 <b204fd526de2fa87a692fda32e42cf7bc0413964.1561525118.git-series.r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b204fd526de2fa87a692fda32e42cf7bc0413964.1561525118.git-series.r.czerwinski@pengutronix.de>
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
Subject: Re: [PATCH 01/13] hab: implement interface for i.MX8MQ
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jun 26, 2019 at 06:58:42AM +0200, Rouven Czerwinski wrote:
> The HAB interface for i.MX8MQ only implements the retrieval of status
> and events. The SoC status is retrieved using the TF-A SIP API found in
> the downstream imx TF-A. After calling into the TF-A the passed data
> structures need to be invalidated, since otherwise the cached zero value
> is used.
> Currently the TF-A report event call only supports FAILURE events.
> Testing the TF-A with other event types resulted in a freeze in the
> bootrom code, which was not investigated further.
> We instead walk the memory containing the events and retrieve the events
> ourselves. They are exposed using the same API.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
> +{
> +	return habv4_get_status(&hab_smc_ops);
> +}
> +
> +static int init_imx8_hab_get_status(void)
> +{
> +	int ret = 0;
> +
> +	if (cpu_is_mx8mq())
> +		ret = imx8_hab_get_status();
> +	else
> +		return 0;
> +
> +	/*
> +	 * Nobody will check the return value if there were HAB errors, but the
> +	 * initcall will fail spectaculously with a strange error message.
> +	 */
> +	if (ret == -EPERM)
> +		return 0;

Maybe just ignore the return value of imx8_hab_get_status() completely
and just add a comment that this is called for error printing only here?

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
