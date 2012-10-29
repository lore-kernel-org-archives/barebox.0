Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TSl3j-00027J-T9
 for barebox@lists.infradead.org; Mon, 29 Oct 2012 08:51:02 +0000
Date: Mon, 29 Oct 2012 09:50:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121029085055.GV24458@pengutronix.de>
References: <20121022160341.GF21588@game.jcrosoft.org>
 <1350922048-25699-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1350922048-25699-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/3] command: introduce abi version
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Oct 22, 2012 at 06:07:26PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> This will allow to detect incompatibility between the env abi and the current
> barebox one
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  common/command.c      |    2 ++
>  include/command.h     |    1 +
>  include/command_abi.h |   12 ++++++++++++
>  3 files changed, 15 insertions(+)
>  create mode 100644 include/command_abi.h
> 
> diff --git a/common/command.c b/common/command.c
> index 873b3ff..c80538c 100644
> --- a/common/command.c
> +++ b/common/command.c
> @@ -154,6 +154,8 @@ static int init_command_list(void)
>  {
>  	struct command *cmdtp;
>  
> +	export_env_ull("command_abi_version", COMMAND_ABI_VERSION);
> +
>  	for (cmdtp = &__barebox_cmd_start;
>  			cmdtp != &__barebox_cmd_end;
>  			cmdtp++)
> diff --git a/include/command.h b/include/command.h
> index ffc722c..c49a014 100644
> --- a/include/command.h
> +++ b/include/command.h
> @@ -25,6 +25,7 @@
>  
>  #include <linux/list.h>
>  #include <linux/stringify.h>
> +#include <command_abi.h>
>  
>  #ifndef NULL
>  #define NULL	0
> diff --git a/include/command_abi.h b/include/command_abi.h
> new file mode 100644
> index 0000000..264c003
> --- /dev/null
> +++ b/include/command_abi.h
> @@ -0,0 +1,12 @@
> +/*
> + * (C) Copyright 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> + *
> + * Under GPL v2
> + */
> +
> +#ifndef __COMMAND_ABI_H__
> +#define __COMMAND_ABI_H__
> +
> +#define COMMAND_ABI_VERSION	0

Please describe what this is. Something like:

/*
 * This tracks incompatible changes to the barebox command interface.
 * This number is increased when changes are introduced which will cause
 * an older environment to no longer work. This could be:
 *
 * - changes in commandline options to commands
 * - renames of commands
 * - rename of device files
 *
 * If you change this value, add a explanation of the actual change to
 * Documentation/command-abi-changes.txt
 */

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
