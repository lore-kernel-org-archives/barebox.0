Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1elW5h-0004yq-V5
 for barebox@lists.infradead.org; Tue, 13 Feb 2018 08:37:31 +0000
Date: Tue, 13 Feb 2018 09:37:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180213083717.ckxlikbsibt4a2y2@pengutronix.de>
References: <20180209122845.4113-1-eugen.wiens@jumo.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180209122845.4113-1-eugen.wiens@jumo.net>
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
Subject: Re: [PATCH] added colored print out of log levels
To: Eugen Wiens <eugen.wiens@jumo.net>
Cc: barebox@lists.infradead.org

HI Eugen,

On Fri, Feb 09, 2018 at 01:28:45PM +0100, Eugen Wiens wrote:
> When the system is booting the warnings and errors are not be quickly discovered.
> With this improvement the errors are colored red, the warnings yellow and the notices blue.

I like this because I like colors ;)
However, some people do not. Can we make this honour the value of the
global.allow_color variable? This variable is currently only used in the
environment, so we would have to move it to C code by adding a
globalvar_add_simple_bool().

> 
> Signed-off-by: Eugen Wiens <eugen.wiens@jumo.net>
> ---
>  common/Kconfig          |  8 ++++++++
>  common/console_common.c | 29 ++++++++++++++++++++++++++++-
>  2 files changed, 36 insertions(+), 1 deletion(-)
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index 57418ca..461ad35 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -1000,6 +1000,14 @@ config DEFAULT_LOGLEVEL
>  	  7    debug-level messages (debug)
>  	  8    verbose debug messages (vdebug)
>  
> +config PRINT_COLORED_LOG_LEVEL
> +	prompt "enable colored printing of the log level"
> +	bool
> +	default n
> +	help
> +		Enable the print out of the colored log level.

I don't think it's worth having an extra config option for this.
If we get concerned about the code size, then we should rather
add a global color control Kconfig option and let everything color
related depend on this.

Something like:

config CONSOLE_ALLOW_COLOR
	prompt "Allow colored console output"
	bool

static unsigned int allow_color;

bool __console_allow_color(void)
{
	return allow_color;
}

Some initcall:
	globalvar_add_simple_bool("allow_color", &allow_color);

include/:

static inline bool console_allow_color(void)
{
	if (!IS_ENABLED(CONFIG_CONSOLE_ALLOW_COLOR))
		return false;
	return __console_allow_color();
}

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
