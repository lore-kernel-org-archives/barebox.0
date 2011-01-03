Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from fmmailgate02.web.de ([217.72.192.227])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PZinL-0002GO-MD
	for barebox@lists.infradead.org; Mon, 03 Jan 2011 11:41:48 +0000
Date: Mon, 3 Jan 2011 12:41:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110103114144.GL6017@pengutronix.de>
References: <20101230034811.GS19266@game.jcrosoft.org>
	<1293713374-3476-1-git-send-email-franck.jullien@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1293713374-3476-1-git-send-email-franck.jullien@gmail.com>
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
Subject: Re: [PATCH] Add an option to set a board specific banner
To: Franck JULLIEN <franck.jullien@gmail.com>
Cc: barebox@lists.infradead.org

Hi Franck,

On Thu, Dec 30, 2010 at 01:49:34PM +0100, Franck JULLIEN wrote:
> Allow a board specific fancy banner
> 
> ---
> 
> I removed the default fancy banner and do it like Jean-Christophe suggested it.
> 
>  common/Kconfig   |    6 ++++++
>  common/console.c |    7 ++++++-
>  2 files changed, 12 insertions(+), 1 deletions(-)
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index 617f640..d32c1ce 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -248,6 +248,12 @@ config HUSH_FANCY_PROMPT
>  	  Allow to set PS1 from the command line. PS1 can have several escaped commands
>  	  like \h for CONFIG_BOARDINFO or \w for the current working directory.
>  
> +config BOARD_BANNER
> +	bool
> +	prompt "allow a board specific fancy banner"
> +	help
> +	  Allow to define a custom board banner (you can define CONFIG_BOARD_BANNER_TEXT in your config.h)
> +
>  config HUSH_GETOPT
>  	bool
>  	depends on SHELL_HUSH
> diff --git a/common/console.c b/common/console.c
> index 82786f2..7caef11 100644
> --- a/common/console.c
> +++ b/common/console.c
> @@ -46,7 +46,12 @@ EXPORT_SYMBOL(console_list);
>  static void display_banner (void)
>  {
>  	printf (RELOC("\n\n%s\n\n"), RELOC_VAR(version_string));
> -	printf(RELOC("Board: " CONFIG_BOARDINFO "\n"));
> +
> +#ifndef CONFIG_BOARD_BANNER
> +#undef  CONFIG_BOARD_BANNER_TEXT
> +#define CONFIG_BOARD_BANNER_TEXT "Board: " CONFIG_BOARDINFO "\n"
> +#endif
> +        printf(RELOC(CONFIG_BOARD_BANNER_TEXT));
>  }

I do not really understand this patch. CONFIG_BOARDINFO is board
specific already, why would we want to add another option?

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
