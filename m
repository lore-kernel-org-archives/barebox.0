Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1brJNj-0000ce-22
 for barebox@lists.infradead.org; Tue, 04 Oct 2016 06:39:15 +0000
Date: Tue, 4 Oct 2016 08:38:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161004063853.5p7xulewpbuuacxv@pengutronix.de>
References: <1475505657-898-1-git-send-email-andrew.smirnov@gmail.com>
 <1475505657-898-8-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1475505657-898-8-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 07/20] clk: Port of_clk_set_defautls()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Oct 03, 2016 at 07:40:44AM -0700, Andrey Smirnov wrote:
> Port of_clk_set_defautls() from Linux kernel in order to support DT
> configurations that require it (e. g. Vybrid).

s/of_clk_set_defautls/of_clk_set_defaults/ here and in the subject.

> diff --git a/include/linux/clk/clk-conf.h b/include/linux/clk/clk-conf.h
> new file mode 100644
> index 0000000..2c0a39e
> --- /dev/null
> +++ b/include/linux/clk/clk-conf.h
> @@ -0,0 +1,22 @@
> +/*
> + * Copyright (C) 2014 Samsung Electronics Co., Ltd.
> + * Sylwester Nawrocki <s.nawrocki@samsung.com>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + */
> +
> +#include <linux/types.h>
> +
> +struct device_node;
> +
> +#if defined(CONFIG_OFTREE) && defined(CONFIG_COMMON_CLK)
> +int of_clk_set_defaults(struct device_node *node, bool clk_supplier);
> +#else
> +static inline int of_clk_set_defaults(struct device_node *node,
> +				      bool clk_supplier)
> +{
> +	return 0;
> +}
> +#endif

We shouldn't need this static inline variant. The caller already exists for OF
enabled builds only.

Sascha

> -- 
> 2.5.5
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
