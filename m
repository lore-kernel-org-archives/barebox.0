Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eH2pw-0000ck-2g
 for barebox@lists.infradead.org; Tue, 21 Nov 2017 07:19:18 +0000
Date: Tue, 21 Nov 2017 08:18:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171121071858.rnth464lyiphjqke@pengutronix.de>
References: <20171117181426.27347-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171117181426.27347-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH v2] imx-bbu-nand-fcb: fix build on MX28 only
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Nov 17, 2017 at 07:14:26PM +0100, Lucas Stach wrote:
> This code may be compiled without ARCH_IMX6 present, so it must not
> depend on any functions provided by the architecture support.
> 
> Fixes: a2618c215bff (imx-bbu-nand-fcb: add support for imx6ul)
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
> v2: Remove ifdeffery by introducing a dedicated function, as
>     suggested by Sascha.
> ---
>  common/imx-bbu-nand-fcb.c | 18 +++++++++++++++---
>  1 file changed, 15 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
> index 89b404884ae8..2c8ca979266c 100644
> --- a/common/imx-bbu-nand-fcb.c
> +++ b/common/imx-bbu-nand-fcb.c
> @@ -38,9 +38,21 @@
>  #include <io.h>
>  #include <crc.h>
>  #include <mach/generic.h>
> -#include <mach/imx6.h>
>  #include <mtd/mtd-peb.h>
>  
> +#ifdef CONFIG_ARCH_IMX6
> +#include <mach/imx6.h>
> +static inline int fcb_is_bch_encoded(void)
> +{
> +       return cpu_is_mx6ul() || cpu_is_mx6ull();
> +}
> +#else
> +static inline int fcb_is_bch_encoded(void)
> +{
> +       return 0;
> +}
> +#endif
> +
>  struct dbbt_block {
>  	uint32_t Checksum;
>  	uint32_t FingerPrint;
> @@ -441,7 +453,7 @@ static int read_fcb(struct mtd_info *mtd, int num, struct fcb_block **retfcb)
>  		goto err;
>  	}
>  
> -	if (cpu_is_mx6ul() || cpu_is_mx6ull())
> +	if (fcb_is_bch_encoded())
>  		fcb = read_fcb_bch(rawpage, 40);
>  	else
>  		fcb = read_fcb_hamming_13_8(rawpage);
> @@ -899,7 +911,7 @@ static int imx_bbu_write_fcbs_dbbts(struct mtd_info *mtd, struct fcb_block *fcb)
>  
>  	fcb_raw_page = xzalloc(mtd->writesize + mtd->oobsize);
>  
> -	if (cpu_is_mx6ul() || cpu_is_mx6ull()) {
> +	if (fcb_is_bch_encoded()) {
>  		/* 40 bit BCH, for i.MX6UL(L) */
>  		encode_bch_ecc(fcb_raw_page + 32, fcb, 40);
>  	} else {
> -- 
> 2.11.0
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
