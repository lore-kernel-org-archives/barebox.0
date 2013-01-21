Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TxMQD-00007c-UN
 for barebox@lists.infradead.org; Mon, 21 Jan 2013 18:48:43 +0000
Date: Mon, 21 Jan 2013 19:48:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130121184839.GE1906@pengutronix.de>
References: <1358779722-322-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1358779722-322-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] introduce console none support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Jan 21, 2013 at 03:48:42PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> this will allow to have no console support
> 
> Use full for bootstrap as we can save 900bytes (barebox.bin) and
> 500bytes (zbarebox.bin lzo) on at91sam9263 as example.
> 
> As on bootstrap we have often very limited size.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  common/Kconfig        |    6 ++++
>  common/Makefile       |    1 +
>  common/console_none.c |   85 +++++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 92 insertions(+)
>  create mode 100644 common/console_none.c
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index 9d26abb..8704a42 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -506,10 +506,16 @@ config CONSOLE_ACTIVATE_NONE
>  endchoice
>  
>  config CONSOLE_SIMPLE
> +	prompt "Enable simple console support"
>  	bool
>  	default y
>  	depends on !CONSOLE_FULL
>  
> +config CONSOLE_NONE
> +	bool
> +	default y
> +	depends on !CONSOLE_FULL && !CONSOLE_SIMPLE
> +

This is probably a good moment to convert this to a choice.

> +
> +int printf (const char *fmt, ...)
> +{
> +	return 0;
> +}
> +EXPORT_SYMBOL(printf);

Have you tried providing static inline wrappers for these? I would
assume that a lot more space could be saved when gcc is able to optimize
the function calls away.

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
