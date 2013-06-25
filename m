Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrLmW-00044L-Fe
 for barebox@lists.infradead.org; Tue, 25 Jun 2013 05:27:09 +0000
Date: Tue, 25 Jun 2013 07:26:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130625052644.GG14308@pengutronix.de>
References: <1371808410.3949.13.camel@mars>
 <1371808556.3949.15.camel@mars>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1371808556.3949.15.camel@mars>
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
Subject: Re: [PATCH 2/2] ARM OMAP: add support for loading Environment from UBI
To: Christoph Fritz <chf.fritz@googlemail.com>
Cc: barebox@lists.infradead.org

On Fri, Jun 21, 2013 at 11:55:56AM +0200, Christoph Fritz wrote:
> This patch adds support to load environment from a static
> UBI volume.
> 
>  	if (IS_ENABLED(CONFIG_ENV_HANDLING)) {
>  		int ret;
>  
> +		if (IS_ENABLED(CONFIG_ENVIRONMENT_IN_UBI)) {
> +#ifdef CONFIG_ENVIRONMENT_IN_UBI
> +			char s[PATH_MAX + 32];
> +			sprintf(s, "%s%s ", "ubiattach ",
> +				CONFIG_ENV_IN_UBI_PARTITION);
> +			ret = run_command(s, 0);
> +			if (ret) {
> +				sprintf(s, "%s%s ", "unable to ubiattach ",
> +					CONFIG_ENV_IN_UBI_PARTITION);
> +				pr_err(s);
> +			} else {
> +				default_environment_path =
> +					CONFIG_ENV_IN_UBI_VOLNAME;
> +			}
> +#endif

You shouldn't need the ifdef here aswell. Also this should be a helper
function called from board code rather than something in generic code.
You can also hardcode the volume name in board code, I don't think this
needs to be configurable.

Configurability of stuff like environment position always has a problem.
If it wasn't you who compiled a particular binary (or it even was you
and you can't remember), you don't know how the binary behaves. For
everything you hardcode the version printout in barebox will exactly
tell you the behaviour.

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
