Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TAxbq-00053o-PJ
 for barebox@lists.infradead.org; Mon, 10 Sep 2012 06:36:40 +0000
Date: Mon, 10 Sep 2012 08:36:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120910063636.GR18243@pengutronix.de>
References: <1347014780-23446-1-git-send-email-alexg@meprolight.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347014780-23446-1-git-send-email-alexg@meprolight.com>
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
Subject: Re: [PATCH] mtd: nand: Add K9LBG08U0D chip to flash ids
To: Alex Gershgorin <alexgershgorin@gmail.com>
Cc: barebox@lists.infradead.org, Alex Gershgorin <alexg@meprolight.com>

On Fri, Sep 07, 2012 at 01:46:20PM +0300, Alex Gershgorin wrote:
> Signed-off-by: Alex Gershgorin <alexg@meprolight.com>

Applied, thanks

Sascha

> ---
>  drivers/mtd/nand/nand_ids.c |    3 +++
>  1 files changed, 3 insertions(+), 0 deletions(-)
> 
> diff --git a/drivers/mtd/nand/nand_ids.c b/drivers/mtd/nand/nand_ids.c
> index cb53fc6..469e8dd 100644
> --- a/drivers/mtd/nand/nand_ids.c
> +++ b/drivers/mtd/nand/nand_ids.c
> @@ -118,6 +118,9 @@ struct nand_flash_dev nand_flash_ids[] = {
>  	{__NANDSTR("NAND 2GiB 1,8V 16-bit"),	0xB5, 0, 2048, 0, LP_OPTIONS16},
>  	{__NANDSTR("NAND 2GiB 3,3V 16-bit"),	0xC5, 0, 2048, 0, LP_OPTIONS16},
>  
> +	/* 32 Gigabit */
> +	{__NANDSTR("NAND 4GiB 3,3V 8-bit"),	0xD7, 0, 4096, 0, LP_OPTIONS},
> +
>  	/*
>  	 * Renesas AND 1 Gigabit. Those chips do not support extended id and
>  	 * have a strange page/block layout !  The chosen minimum erasesize is
> -- 
> 1.7.1
> 
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
