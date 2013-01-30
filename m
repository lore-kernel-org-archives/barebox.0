Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U0f7h-0005rl-96
 for barebox@lists.infradead.org; Wed, 30 Jan 2013 21:23:13 +0000
Date: Wed, 30 Jan 2013 22:23:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130130212311.GC1906@pengutronix.de>
References: <1359457385-24232-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1359457385-24232-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] commands: reset: add shutdown_barebox() before reset_cpu()
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jan 29, 2013 at 03:03:05PM +0400, Antony Pavlov wrote:
> Some of controlled by barebox peripheral devices may be
> not affected by CPU reset, so we need call shutdown_barebox()
> to stop them.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied, thanks

Sascha

> ---
>  commands/reset.c |   23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/commands/reset.c b/commands/reset.c
> index 835926b..79885f4 100644
> --- a/commands/reset.c
> +++ b/commands/reset.c
> @@ -20,17 +20,40 @@
>  #include <common.h>
>  #include <command.h>
>  #include <complete.h>
> +#include <getopt.h>
>  
>  static int cmd_reset(int argc, char *argv[])
>  {
> +	int opt, shutdown_flag;
> +
> +	shutdown_flag = 1;
> +
> +	while ((opt = getopt(argc, argv, "f")) > 0) {
> +		switch (opt) {
> +		case 'f':
> +			shutdown_flag = 0;
> +			break;
> +		}
> +	}
> +
> +	if (shutdown_flag)
> +		shutdown_barebox();
> +
>  	reset_cpu(0);
>  
>  	/* Not reached */
>  	return 1;
>  }
>  
> +BAREBOX_CMD_HELP_START(reset)
> +BAREBOX_CMD_HELP_USAGE("reset [-f]\n")
> +BAREBOX_CMD_HELP_SHORT("Perform RESET of the CPU.\n")
> +BAREBOX_CMD_HELP_OPT("-f",  "force RESET, don't call shutdown\n")
> +BAREBOX_CMD_HELP_END
> +
>  BAREBOX_CMD_START(reset)
>  	.cmd		= cmd_reset,
>  	.usage		= "Perform RESET of the CPU",
> +	BAREBOX_CMD_HELP(cmd_reset_help)
>  	BAREBOX_CMD_COMPLETE(empty_complete)
>  BAREBOX_CMD_END
> -- 
> 1.7.10.4
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
