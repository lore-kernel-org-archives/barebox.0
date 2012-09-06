Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.meprolight.com ([194.90.149.17] helo=meprolight.com)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T9cZ8-0001NN-Ao
 for barebox@lists.infradead.org; Thu, 06 Sep 2012 13:56:19 +0000
From: Alex Gershgorin <alexg@meprolight.com>
Date: Thu, 6 Sep 2012 16:51:50 +0300
Message-ID: <4875438356E7CA4A8F2145FCD3E61C0B3074AA38F4@MEP-EXCH.meprolight.com>
References: <1346935710-23360-1-git-send-email-alexg@meprolight.com>,
 <20120906134735.GY26594@pengutronix.de>
In-Reply-To: <20120906134735.GY26594@pengutronix.de>
Content-Language: en-US
MIME-Version: 1.0
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
Subject: RE: [PATCH] i.mx35pdk add nand identification
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Sascha,

Thanks for your comments.
 
On Thu, Sep 06, 2012 at 03:48:30PM +0300, Alex Gershgorin wrote:
> Without this patch I get following messages
>
> Board: Freescale MX35 3Stack
> NAND type unknown: ec,d7
> No NAND device found (-19)!

> >Please replace the subject with something like:

> >"mtd nand: Add <blachip> to flash ids"

> >Having 'i.mx35pdk' seems to imply this affects only i.MX users.

You are absolutely right, I will correct it. 

Regards,
Alex

>
> Signed-off-by: Alex Gershgorin <alexg@meprolight.com>
> ---
>  drivers/mtd/nand/nand_ids.c |    1 +
>  1 files changed, 1 insertions(+), 0 deletions(-)
>
> diff --git a/drivers/mtd/nand/nand_ids.c b/drivers/mtd/nand/nand_ids.c
> index cb53fc6..5f184bd 100644
> --- a/drivers/mtd/nand/nand_ids.c
> +++ b/drivers/mtd/nand/nand_ids.c
> @@ -103,6 +103,7 @@ struct nand_flash_dev nand_flash_ids[] = {
>       /* 4 Gigabit */
>       {__NANDSTR("NAND 512MiB 1,8V 8-bit"),   0xAC, 0, 512, 0, LP_OPTIONS},
>       {__NANDSTR("NAND 512MiB 3,3V 8-bit"),   0xDC, 0, 512, 0, LP_OPTIONS},
> +     {__NANDSTR("NAND 512MiB 3,3V 8-bit"),   0xD7, 0, 512, 0, LP_OPTIONS},
>       {__NANDSTR("NAND 512MiB 1,8V 16-bit"),  0xBC, 0, 512, 0, LP_OPTIONS16},
>       {__NANDSTR("NAND 512MiB 3,3V 16-bit"),  0xCC, 0, 512, 0, LP_OPTIONS16},
>
> --
> 1.7.0.4
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
