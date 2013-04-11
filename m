Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UQD9Z-0001No-AV
 for barebox@lists.infradead.org; Thu, 11 Apr 2013 08:46:46 +0000
Date: Thu, 11 Apr 2013 10:46:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130411084643.GK1906@pengutronix.de>
References: <1365607897-32319-1-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1365607897-32319-1-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH] mtd: update NAND manufacturer names from the kernel
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Apr 10, 2013 at 05:31:37PM +0200, Jan Luebbe wrote:
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>

Applied, thanks

Sascha

> ---
>  drivers/mtd/nand/nand_ids.c |  4 +++-
>  include/linux/mtd/nand.h    | 20 +++++++++++---------
>  2 files changed, 14 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/mtd/nand/nand_ids.c b/drivers/mtd/nand/nand_ids.c
> index 72593d4..4f8fb02 100644
> --- a/drivers/mtd/nand/nand_ids.c
> +++ b/drivers/mtd/nand/nand_ids.c
> @@ -178,7 +178,9 @@ struct nand_manufacturers nand_manuf_ids[] = {
>  	{NAND_MFR_STMICRO, __NANDSTR("ST Micro")},
>  	{NAND_MFR_HYNIX, __NANDSTR("Hynix")},
>  	{NAND_MFR_MICRON, __NANDSTR("Micron")},
> -	{NAND_MFR_AMD, __NANDSTR("AMD")},
> +	{NAND_MFR_AMD, __NANDSTR("AMD/Spansion")},
> +	{NAND_MFR_MACRONIX, __NANDSTR("Macronix")},
> +	{NAND_MFR_EON, __NANDSTR("Eon")},
>  	{0x0, "Unknown"}
>  };
>  
> diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
> index d2f8648..1df1a7b 100644
> --- a/include/linux/mtd/nand.h
> +++ b/include/linux/mtd/nand.h
> @@ -497,15 +497,17 @@ struct nand_chip {
>  /*
>   * NAND Flash Manufacturer ID Codes
>   */
> -#define NAND_MFR_TOSHIBA	0x98
> -#define NAND_MFR_SAMSUNG	0xec
> -#define NAND_MFR_FUJITSU	0x04
> -#define NAND_MFR_NATIONAL	0x8f
> -#define NAND_MFR_RENESAS	0x07
> -#define NAND_MFR_STMICRO	0x20
> -#define NAND_MFR_HYNIX		0xad
> -#define NAND_MFR_MICRON		0x2c
> -#define NAND_MFR_AMD		0x01
> +#define NAND_MFR_TOSHIBA        0x98
> +#define NAND_MFR_SAMSUNG        0xec
> +#define NAND_MFR_FUJITSU        0x04
> +#define NAND_MFR_NATIONAL       0x8f
> +#define NAND_MFR_RENESAS        0x07
> +#define NAND_MFR_STMICRO        0x20
> +#define NAND_MFR_HYNIX          0xad
> +#define NAND_MFR_MICRON         0x2c
> +#define NAND_MFR_AMD            0x01
> +#define NAND_MFR_MACRONIX       0xc2
> +#define NAND_MFR_EON            0x92
>  
>  /**
>   * struct nand_flash_dev - NAND Flash Device ID Structure
> -- 
> 1.8.2.rc2
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
