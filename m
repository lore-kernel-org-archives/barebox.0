Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TCUpV-00084D-58
 for barebox@lists.infradead.org; Fri, 14 Sep 2012 12:17:06 +0000
Message-ID: <1347625024.3037.5.camel@lws-weitzel>
From: Jan Weitzel <J.Weitzel@phytec.de>
Date: Fri, 14 Sep 2012 14:17:04 +0200
In-Reply-To: <1347608713-10133-3-git-send-email-s.hauer@pengutronix.de>
References: <1347608713-10133-1-git-send-email-s.hauer@pengutronix.de>
 <1347608713-10133-3-git-send-email-s.hauer@pengutronix.de>
Mime-Version: 1.0
Reply-To: J.Weitzel@phytec.de
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
Subject: Re: [PATCH 2/3] ARM: Add dummy update handler
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Am Freitag, den 14.09.2012, 09:45 +0200 schrieb Sascha Hauer:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/lib/Makefile |    1 +
>  arch/arm/lib/bbu.c    |   56 +++++++++++++++++++++++++++++++++++++++++++++++++
>  include/bbu.h         |    3 +++
>  3 files changed, 60 insertions(+)
>  create mode 100644 arch/arm/lib/bbu.c
> 
> diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
> index 9d0ff7a..c5d6a06 100644
> --- a/arch/arm/lib/Makefile
> +++ b/arch/arm/lib/Makefile
> @@ -16,6 +16,7 @@ obj-y	+= lib1funcs.o
>  obj-y	+= ashrdi3.o
>  obj-y	+= ashldi3.o
>  obj-y	+= lshrdi3.o
> +obj-y	+= bbu.o
>  obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memcpy.o
>  obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memset.o
>  obj-$(CONFIG_ARM_UNWIND) += unwind.o
> diff --git a/arch/arm/lib/bbu.c b/arch/arm/lib/bbu.c
> new file mode 100644
> index 0000000..71a0d85
> --- /dev/null
> +++ b/arch/arm/lib/bbu.c
> @@ -0,0 +1,56 @@
> +/*
> + * bbu.c - ARM specific barebox update functions
> + *
> + * Copyright (c) 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + */
> +#include <common.h>
> +#include <malloc.h>
> +#include <bbu.h>
> +#include <filetype.h>
> +#include <errno.h>
> +
> +int barebox_arm_update(struct bbu_handler *handler, struct bbu_data *data)
> +{
> +	if (file_detect_type(data->image) != filetype_arm_barebox) {
is_barebox_arm_head(data->image) ?
> +		if (!bbu_force(data, "Not an ARM barebox image"))
> +			return -EINVAL;
> +	}
> +
> +	if (!bbu_confirm(data))
> +		return -EINVAL;
> +
> +	printf("updating to %s\n", (char *)handler->handler_data);
> +
> +	return 0;
> +}
> +
> +int bbu_register_arm_handler(const char *name, char *devicefile,
> +		unsigned long flags)
> +{
> +	struct bbu_handler *handler;
> +	int ret;
> +
> +	handler = xzalloc(sizeof(*handler));
> +	handler->name = name;
> +	handler->handler_data = devicefile;
> +	handler->flags = flags;
> +	handler->handler = barebox_arm_update;
> +
> +	ret = bbu_register_handler(handler);
> +	if (ret)
> +		free(handler);
> +
> +	return ret;
> +}
> diff --git a/include/bbu.h b/include/bbu.h
> index ce1a608..a71c25b 100644
> --- a/include/bbu.h
> +++ b/include/bbu.h
> @@ -30,6 +30,9 @@ int bbu_register_handler(struct bbu_handler *);
>  
>  int barebox_update(struct bbu_data *);
>  
> +int bbu_register_arm_handler(const char *name, char *devicefile,
> +		unsigned long flags);
> +
>  int barebox_arm_update(struct bbu_handler *, struct bbu_data *data);
>  
>  void bbu_handlers_list(void);



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
