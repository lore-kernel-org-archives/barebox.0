Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PX6sW-0006m5-64
	for barebox@lists.infradead.org; Mon, 27 Dec 2010 06:48:21 +0000
Date: Mon, 27 Dec 2010 07:43:05 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20101227064305.GN19266@game.jcrosoft.org>
References: <1293399652-2615-1-git-send-email-franck.jullien@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1293399652-2615-1-git-send-email-franck.jullien@gmail.com>
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
Subject: Re: [PATCH] (reformated) Allow board specific fancy banner
To: Franck JULLIEN <franck.jullien@gmail.com>
Cc: barebox@lists.infradead.org

On 22:40 Sun 26 Dec     , Franck JULLIEN wrote:
> This time I used git to send the email. I think I get it right.
> However, I didn't find how to put this file in the thread we were later...
> I don't think it is possible since those emails didn't have ID's to use with
> the In-Reply-To option (right ?).
> 
> ---
>  common/Kconfig   |    6 ++++++
>  common/console.c |   10 ++++++++++
>  2 files changed, 16 insertions(+), 0 deletions(-)
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index 617f640..d46c8fc 100644
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
> +	  Allow to define a custom board banner (you must define BOARD_BANNER in your config.h)
> +
>  config HUSH_GETOPT
>  	bool
>  	depends on SHELL_HUSH
> diff --git a/common/console.c b/common/console.c
> index 82786f2..8a830e3 100644
> --- a/common/console.c
> +++ b/common/console.c
> @@ -46,7 +46,17 @@ EXPORT_SYMBOL(console_list);
>  static void display_banner (void)
>  {
>  	printf (RELOC("\n\n%s\n\n"), RELOC_VAR(version_string));
> +#ifdef CONFIG_BOARD_BANNER
> +#ifdef BOARD_BANNER
> +	printf(RELOC(BOARD_BANNER));
> +#else
> +#define VT100_YELLOW	"\033[1;33m"
> +#define VT100_RESET	"\033[1;0m"
> +	printf(RELOC("Board: " VT100_YELLOW CONFIG_BOARDINFO VT100_RESET "\n"));
why not define it in the Kconfig simply?

I'm sorry but I do not see why we can not do it in the defconfig

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
