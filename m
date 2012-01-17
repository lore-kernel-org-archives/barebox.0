Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rn6OB-0006Cp-Mn
 for barebox@lists.infradead.org; Tue, 17 Jan 2012 10:35:45 +0000
Date: Tue, 17 Jan 2012 11:35:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120117103523.GX5446@pengutronix.de>
References: <20120115095156.GH5002@game.jcrosoft.org>
 <1326621621-11484-4-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1326621621-11484-4-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 4/5] filetype: add command support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Jan 15, 2012 at 11:00:20AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> this will allow to detect the filetype of a file and export it as filetype
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  commands/Kconfig    |    5 +++++
>  commands/Makefile   |    1 +
>  commands/filetype.c |   39 +++++++++++++++++++++++++++++++++++++++
>  3 files changed, 45 insertions(+), 0 deletions(-)
>  create mode 100644 commands/filetype.c
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 766428c..c613e22 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -181,6 +181,11 @@ config CMD_NANDTEST
>  	select PARTITION_NEED_MTD
>  	prompt "nandtest"
>  
> +config CMD_FILETYPE
> +	tristate
> +	depends on FILETYPE
> +	prompt "filetype"
> +
>  endmenu
>  
>  menu "console                       "
> diff --git a/commands/Makefile b/commands/Makefile
> index 31442b5..a91eed2 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -64,3 +64,4 @@ obj-$(CONFIG_CMD_OFTREE)	+= oftree.o
>  obj-$(CONFIG_CMD_MAGICVAR)	+= magicvar.o
>  obj-$(CONFIG_CMD_IOMEM)		+= iomem.o
>  obj-$(CONFIG_CMD_LINUX_EXEC)	+= linux_exec.o
> +obj-$(CONFIG_CMD_FILETYPE)	+= filetype.o
> diff --git a/commands/filetype.c b/commands/filetype.c
> new file mode 100644
> index 0000000..7c5e907
> --- /dev/null
> +++ b/commands/filetype.c
> @@ -0,0 +1,39 @@
> +/*
> + * (C) Copyright 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> + *
> + * Under GPLv2 Only
> + */
> +
> +#include <common.h>
> +#include <command.h>
> +#include <fs.h>
> +#include <filetype.h>
> +#include <environment.h>
> +
> +static int do_filetype(struct command *cmdtp, int argc, char *argv[])
> +{
> +	enum filetype type;
> +
> +	if (argc < 2)
> +		return COMMAND_ERROR_USAGE;
> +
> +	type = file_name_detect_type(argv[1]);
> +
> +	printf("%s: %s detected\n", argv[1], file_type_to_string(type));

As this is likely to be used in scripts it's probably useful to be able
to suppress this output.

> +
> +	export_env_ull("filetype" , type);

magicvar description?

Also, with exporting the filetype as integer we export the numbers
currently only known in sourcecode. We should add a switch to this
command to dump the number <-> string relationship.

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
