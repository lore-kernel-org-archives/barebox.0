Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TEOHb-0002m1-Ir
 for barebox@lists.infradead.org; Wed, 19 Sep 2012 17:41:56 +0000
Date: Wed, 19 Sep 2012 19:41:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120919174153.GM6180@pengutronix.de>
References: <20120919144332.GX25990@game.jcrosoft.org>
 <1348066078-26482-1-git-send-email-plagnioj@jcrosoft.com>
 <1348066078-26482-2-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1348066078-26482-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 2/5] sandbox: do not register device before base is started
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 19, 2012 at 04:47:55PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> This will crash when use registered bus with device registered to it.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/sandbox/board/Makefile   |    1 +
>  arch/sandbox/board/console.c  |    2 +-
>  arch/sandbox/board/devices.c  |   35 +++++++++++++++++++++++++++++++++++
>  arch/sandbox/board/hostfile.c |   19 +++++++++++++++++--
>  4 files changed, 54 insertions(+), 3 deletions(-)
>  create mode 100644 arch/sandbox/board/devices.c
> 
> diff --git a/arch/sandbox/board/Makefile b/arch/sandbox/board/Makefile
> index 266c3a3..5104f5c 100644
> --- a/arch/sandbox/board/Makefile
> +++ b/arch/sandbox/board/Makefile
> @@ -2,5 +2,6 @@ obj-y += board.o
>  obj-y += clock.o
>  obj-y += hostfile.o
>  obj-y += console.o
> +obj-y += devices.o
>  
>  extra-y += barebox.lds
> diff --git a/arch/sandbox/board/console.c b/arch/sandbox/board/console.c
> index 18b63e1..b0afa54 100644
> --- a/arch/sandbox/board/console.c
> +++ b/arch/sandbox/board/console.c
> @@ -44,6 +44,6 @@ int barebox_register_console(char *name, int stdinfd, int stdoutfd)
>  	data->stdoutfd = stdoutfd;
>  	data->stdinfd  = stdinfd;
>  
> -	return register_device(dev);
> +	return sandbox_add_device(dev);
>  }
>  
> diff --git a/arch/sandbox/board/devices.c b/arch/sandbox/board/devices.c
> new file mode 100644
> index 0000000..d3fad78
> --- /dev/null
> +++ b/arch/sandbox/board/devices.c
> @@ -0,0 +1,35 @@
> +/*
> + * Copyright (c) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> + *
> + * Under GPLv2 only
> + */
> +
> +#include <common.h>
> +#include <driver.h>
> +#include <init.h>
> +
> +static LIST_HEAD(sandbox_device_list);
> +
> +int sandbox_add_device(struct device_d *dev)
> +{
> +	if (!dev)
> +		return -EINVAL;

Can we please agree that everyone registering NULL pointers deserves a
nice crash? I do not see a reason to check this. All these kinds of
checks do is cover bugs and make tracking them down harder.

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
