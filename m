Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPTfh-0003Li-JQ
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 08:45:10 +0000
Date: Fri, 27 Sep 2013 10:44:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130927084447.GO30088@pengutronix.de>
References: <20130927071255.GB32444@ns203013.ovh.net>
 <1380266058-18501-1-git-send-email-plagnioj@jcrosoft.com>
 <1380266058-18501-2-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1380266058-18501-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 2/8] console: factorise function to get the first enabled
 console
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Sep 27, 2013 at 09:14:12AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> +/**
> + * @brief returns current used console device
> + *
> + * @return console device which is registered with CONSOLE_STDIN and
> + * CONSOLE_STDOUT
> + */
> +struct console_device *console_get_first_current(void)
> +{
> +	struct console_device *cdev;
> +	/*
> +	 * Assumption to have BOTH CONSOLE_STDIN AND STDOUT in the
> +	 * same output console
> +	 */
> +	for_each_console(cdev) {
> +		if ((cdev->f_active & (CONSOLE_STDIN | CONSOLE_STDOUT)))
> +			return cdev;
> +	}
> +	return NULL;
> +}
> +EXPORT_SYMBOL(console_get_first_current);

I find the function name misleading. Can we stick to the original name
or console_get_first_active?

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
