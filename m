Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OcBws-00031q-16
	for barebox@lists.infradead.org; Fri, 23 Jul 2010 06:41:34 +0000
Date: Fri, 23 Jul 2010 08:41:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100723064132.GO14113@pengutronix.de>
References: <1279767613-1269-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1279767613-1269-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH] move boards to arch/<architecure>/boards
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi Jean Christophe,

You missed board/ipe337/env/bin/magic.bin in this patch. On the -next
branch there is guf-neso board support which was missing in the patch.
I fixed this and applied the patch to -next.

On Thu, Jul 22, 2010 at 05:00:13AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> this will allow each arch to handle the boards more simply and depending on
> there need
> 
> the env var BOARD will refer to the current board dirent
> 
> for sandbox as we have only one board the board dirent is arch/sandbox/board
> 
>  
>  If your board needs a special binary @a barebox layout, you can provide a local
>  board linker script file. This will replace the generic one provided by your
> diff --git a/drivers/nand/atmel_nand.c b/drivers/nand/atmel_nand.c
> index c3669e5..6200bcf 100644
> --- a/drivers/nand/atmel_nand.c
> +++ b/drivers/nand/atmel_nand.c
> @@ -12,7 +12,7 @@
>   *     Richard Genoud (richard.genoud@gmail.com), Adeneo Copyright (C) 2007
>   *
>   *     Derived from Das barebox source code
> - *     		(barebox-1.1.5/board/atmel/at91sam9263ek/nand.c)
> + *     		(barebox-1.1.5/arch/arm/boards/atmel/at91sam9263ek/nand.c)
>   *     (C) Copyright 2006 ATMEL Rousset, Lacressonniere Nicolas

Seems this file has been a victim of mass-replacing before ;)
I skipped this hunk and added the following instead:

commit b8063f72f0ff2f289151fb48815b8600f53c8cfc
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Fri Jul 23 08:37:47 2010 +0200

    atmel_nand: fix comment where this code is derived from
    
    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
index c3669e5..e8f85fc 100644
--- a/drivers/mtd/nand/atmel_nand.c
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -11,8 +11,8 @@
  *  Add Hardware ECC support for AT91SAM9260 / AT91SAM9263
  *     Richard Genoud (richard.genoud@gmail.com), Adeneo Copyright (C) 2007
  *
- *     Derived from Das barebox source code
- *     		(barebox-1.1.5/board/atmel/at91sam9263ek/nand.c)
+ *     Derived from Das U-Boot source code
+ *     		(u-boot-1.1.5/board/atmel/at91sam9263ek/nand.c)
  *     (C) Copyright 2006 ATMEL Rousset, Lacressonniere Nicolas
  *
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
