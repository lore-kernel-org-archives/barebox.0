Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YWUbe-00012x-Oy
 for barebox@lists.infradead.org; Fri, 13 Mar 2015 18:46:47 +0000
Date: Fri, 13 Mar 2015 19:46:22 +0100
From: Robert Schwebel <r.schwebel@pengutronix.de>
Message-ID: <20150313184621.GD26703@pengutronix.de>
References: <20150313083211.GW30554@ns203013.ovh.net>
 <1426236142-12050-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1426236142-12050-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] command: allow runtime usage
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Mar 13, 2015 at 09:42:22AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> this will allow as example to list the current supported digest
  ^                                            ^                 ^
  T                                            ly                .

Maybe you mean "This will for example allow to list the currently
supported digest."?

> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  common/command.c  | 2 ++
>  include/command.h | 3 +++
>  2 files changed, 5 insertions(+)
> 
> diff --git a/common/command.c b/common/command.c
> index 61191c2..dc2cb88 100644
> --- a/common/command.c
> +++ b/common/command.c
> @@ -47,6 +47,8 @@ void barebox_cmd_usage(struct command *cmdtp)
>  		puts(cmdtp->help);
>  		putchar('\n');
>  	}
> +	if (cmdtp->usage)
> +		cmdtp->usage();
>  #endif
>  }
>  EXPORT_SYMBOL(barebox_cmd_usage);
> diff --git a/include/command.h b/include/command.h
> index 5d5bf53..3aca1a9 100644
> --- a/include/command.h
> +++ b/include/command.h
> @@ -54,6 +54,7 @@ struct command {
>  	uint32_t	group;
>  #ifdef	CONFIG_LONGHELP
>  	const char	*help;		/* Help  message	(long)	*/
> +	void		(*usage)(void);
>  #endif
>  }
>  #ifdef __x86_64__
> @@ -115,8 +116,10 @@ static const __maybe_unused char cmd_##_name##_help[] =
>  
>  #ifdef CONFIG_LONGHELP
>  #define BAREBOX_CMD_HELP(text)	.help = text,
> +#define BAREBOX_CMD_USAGE(fn)	.usage = fn,
>  #else
>  #define BAREBOX_CMD_HELP(text)
> +#define BAREBOX_CMD_USAGE(fn)
>  #endif
>  
>  #define BAREBOX_CMD_GROUP(grp)	.group = grp,
> -- 
> 2.1.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
