Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VSmSa-0005ut-HV
 for barebox@lists.infradead.org; Sun, 06 Oct 2013 11:25:17 +0000
Date: Sun, 6 Oct 2013 13:24:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131006112454.GO30088@pengutronix.de>
References: <20131003071723.GP32444@ns203013.ovh.net>
 <1380784920-30890-1-git-send-email-plagnioj@jcrosoft.com>
 <1380784920-30890-2-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1380784920-30890-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 2/8] console: factorise function to get the console by name
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Oct 03, 2013 at 09:21:54AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> rename it to console_get_by_name
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
> +struct console_device *console_get_by_name(const char *cname)
> +{
> +	struct console_device *cdev;
> +	const char *target;
> +
> +	for_each_console(cdev) {
> +		target = dev_id(&cdev->class_dev);
> +		if (strcmp(cname, target))
> +			continue;
> +		if ((cdev->f_active & (CONSOLE_STDIN | CONSOLE_STDOUT))
> +			return cdev;
> +		return NULL;
> +	}
> +	return NULL;
> +}
> +EXPORT_SYMBOL(console_get_by_name);

I think this function should return the console regardless of whether
it's active or not. This makes the console_get_by_name_flags you
introduce later unnecessary. Also the loadxyz code shouldn't care if
it's activated but instead just activate the console if necessary.

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
