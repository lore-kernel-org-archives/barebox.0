Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X42Wl-0001hz-IM
 for barebox@lists.infradead.org; Mon, 07 Jul 2014 06:35:52 +0000
Date: Mon, 7 Jul 2014 08:35:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140707063528.GG23235@pengutronix.de>
References: <alpine.LFD.2.11.1407041217080.16169@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.11.1407041217080.16169@localhost>
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
Subject: Re: [PATCH] Clean up Kconfig and source for a couple device tree
 commands.
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Fri, Jul 04, 2014 at 12:18:42PM -0400, Robert P. J. Day wrote:
> 
> Correct options listings for a couple device tree-related commands.
> 
> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
> 
> ---
> 
>   i *think* the following is valid.

Looks all good. Applied, thanks

Sascha

> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index eed6fbd..3248de9 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -1950,10 +1950,11 @@ config CMD_OFTREE
>  	help
>  	  oftree - handle device trees
> 
> -	  Usage: oftree [-lpfdn] [DTB]
> +	  Usage: oftree [-lspf] [DTB]
> 
>  	  Options:
>  		  -l		Load DTB to internal device tree
> +		  -s		save internal device tree to DTB
>  		  -p		probe devices from stored device tree
>  		  -f		free stored device tree
> 
> diff --git a/commands/of_dump.c b/commands/of_dump.c
> index e341942..cafde07 100644
> --- a/commands/of_dump.c
> +++ b/commands/of_dump.c
> @@ -101,7 +101,7 @@ BAREBOX_CMD_HELP_END
>  BAREBOX_CMD_START(of_dump)
>  	.cmd		= do_of_dump,
>  	BAREBOX_CMD_DESC("dump devicetree nodes")
> -	BAREBOX_CMD_OPTS("[-f]")
> +	BAREBOX_CMD_OPTS("[-f] [NODE]")
>  	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
>  	BAREBOX_CMD_COMPLETE(devicetree_file_complete)
>  	BAREBOX_CMD_HELP(cmd_of_dump_help)
> diff --git a/commands/oftree.c b/commands/oftree.c
> index a3b0e04..983a0a5 100644
> --- a/commands/oftree.c
> +++ b/commands/oftree.c
> @@ -145,7 +145,7 @@ BAREBOX_CMD_HELP_END
>  BAREBOX_CMD_START(oftree)
>  	.cmd		= do_oftree,
>  	BAREBOX_CMD_DESC("handle device trees")
> -	BAREBOX_CMD_OPTS("[-lpfs]")
> +	BAREBOX_CMD_OPTS("[-lspf]")
>  	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
>  	BAREBOX_CMD_HELP(cmd_oftree_help)
>  BAREBOX_CMD_END
> 
> -- 
> 
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
> 
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
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
