Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTgiR-0000kq-1v
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 04:52:07 +0000
Date: Fri, 15 Jun 2018 06:49:44 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180615044944.GA10093@ravnborg.org>
References: <20180615041136.23492-1-andrew.smirnov@gmail.com>
 <20180615041136.23492-5-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180615041136.23492-5-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 02/27] console: Unify console_simple.c and pbl/console.c
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey.

On Thu, Jun 14, 2018 at 09:11:10PM -0700, Andrey Smirnov wrote:
> Move all of the shared code into lib/console.c and convert both files
> to use that.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
> +++ b/lib/console.c
> @@ -0,0 +1,130 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +
> +/*
> + * File containing all of the console-related code that is used by all
> + * possible consumers: PBL, CONSOLE_FULL, CONSOLE_SIMPLE, etc.
> + *
> + * Copyright (C) 2018 Zodiac Inflight Innovations
> + * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
> + */
> +
> +#include <debug_ll.h>
> +#include <console.h>
> +
> +/*
> + * Put this in the data section so that it survives the clearing of
> + * the BSS segment.
> + */
> +#define __data __attribute__ ((section(".data")))
This definition would be better placed in compiler.h
together with all the __naked etc. definitions.

And then it could be used in other places,
like for example first patch in this serie.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
