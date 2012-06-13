Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Seus3-00055w-HR
 for barebox@lists.infradead.org; Wed, 13 Jun 2012 21:12:57 +0000
Date: Wed, 13 Jun 2012 23:12:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120613211250.GZ30400@pengutronix.de>
References: <1339608466-22105-1-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1339608466-22105-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH] common: fix typo cammand_var_complete
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jun 13, 2012 at 07:27:46PM +0200, Steffen Trumtrar wrote:
> Change function name to command_var_complete in all calls and its declaration.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Applied, thanks

Sascha

> ---
>  commands/go.c      |    2 +-
>  commands/sleep.c   |    2 +-
>  common/complete.c  |    2 +-
>  include/complete.h |    2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/commands/go.c b/commands/go.c
> index e9e9d40..14569a5 100644
> --- a/commands/go.c
> +++ b/commands/go.c
> @@ -92,5 +92,5 @@ BAREBOX_CMD_START(go)
>  	.cmd		= do_go,
>  	.usage		= "start application at address or file",
>  	BAREBOX_CMD_HELP(cmd_go_help)
> -	BAREBOX_CMD_COMPLETE(cammand_var_complete)
> +	BAREBOX_CMD_COMPLETE(command_var_complete)
>  BAREBOX_CMD_END
> diff --git a/commands/sleep.c b/commands/sleep.c
> index c5f7867..950ec08 100644
> --- a/commands/sleep.c
> +++ b/commands/sleep.c
> @@ -47,5 +47,5 @@ static int do_sleep(int argc, char *argv[])
>  BAREBOX_CMD_START(sleep)
>  	.cmd		= do_sleep,
>  	.usage		= "delay execution for n seconds",
> -	BAREBOX_CMD_COMPLETE(cammand_var_complete)
> +	BAREBOX_CMD_COMPLETE(command_var_complete)
>  BAREBOX_CMD_END
> diff --git a/common/complete.c b/common/complete.c
> index 0780888..4370b20 100644
> --- a/common/complete.c
> +++ b/common/complete.c
> @@ -198,7 +198,7 @@ int empty_complete(struct string_list *sl, char *instr)
>  	return COMPLETE_END;
>  }
>  
> -int cammand_var_complete(struct string_list *sl, char *instr)
> +int command_var_complete(struct string_list *sl, char *instr)
>  {
>  	return COMPLETE_CONTINUE;
>  }
> diff --git a/include/complete.h b/include/complete.h
> index 8248c64..33b848c 100644
> --- a/include/complete.h
> +++ b/include/complete.h
> @@ -15,7 +15,7 @@ int command_complete(struct string_list *sl, char *instr);
>  int device_complete(struct string_list *sl, char *instr);
>  int empty_complete(struct string_list *sl, char *instr);
>  int eth_complete(struct string_list *sl, char *instr);
> -int cammand_var_complete(struct string_list *sl, char *instr);
> +int command_var_complete(struct string_list *sl, char *instr);
>  int devfs_partition_complete(struct string_list *sl, char *instr);
>  
>  #endif /* __COMPLETE_ */
> -- 
> 1.7.10
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
