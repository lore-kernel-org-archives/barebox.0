Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dtDSU-0007y0-PR
 for barebox@lists.infradead.org; Sat, 16 Sep 2017 13:48:40 +0000
Date: Sat, 16 Sep 2017 15:48:09 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170916134809.GC6457@ravnborg.org>
References: <20170915090708.29889-1-l.stach@pengutronix.de>
 <20170915090708.29889-2-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170915090708.29889-2-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 2/2] imx-bbu-nand-fcb: fix build on MX28 only
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Lucas.

On Fri, Sep 15, 2017 at 11:07:08AM +0200, Lucas Stach wrote:
> This code may be compiled without ARCH_IMX6 present, so it must not
> depend on any functions provided by the architecture support.
> 
> Fixes: a2618c215bff (imx-bbu-nand-fcb: add support for imx6ul)
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  common/imx-bbu-nand-fcb.c | 15 ++++++++++++---
>  1 file changed, 12 insertions(+), 3 deletions(-)
> 
> diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
> index 7218c5e1ccda..bd539bafa7f7 100644
> --- a/common/imx-bbu-nand-fcb.c
> +++ b/common/imx-bbu-nand-fcb.c
> @@ -38,9 +38,12 @@
>  #include <io.h>
>  #include <crc.h>
>  #include <mach/generic.h>
> -#include <mach/imx6.h>
>  #include <mtd/mtd-peb.h>
>  
> +#ifdef CONFIG_ARCH_IMX6
> +#include <mach/imx6.h>
> +#endif
> +
>  struct dbbt_block {
>  	uint32_t Checksum;
>  	uint32_t FingerPrint;
> @@ -141,7 +144,8 @@ static uint8_t reverse_bit(uint8_t b)
>  	return b;
>  }
>  
> -static void encode_bch_ecc(void *buf, struct fcb_block *fcb, int eccbits)
> +static void __maybe_unused encode_bch_ecc(void *buf, struct fcb_block *fcb,
> +					  int eccbits)
>  {
>  	int i, j, m = 13;
>  	int blocksize = 128;
> @@ -441,9 +445,11 @@ static int read_fcb(struct mtd_info *mtd, int num, struct fcb_block **retfcb)
>  		goto err;
>  	}
>  
> +#if IS_ENABLED(CONFIG_ARCH_IMX6)
>  	if (cpu_is_mx6ul() || cpu_is_mx6ull())
>  		fcb = read_fcb_bch(rawpage, 40);
>  	else
> +#endif
>  		fcb = read_fcb_hamming_13_8(rawpage);

ifdef out an if else like this is ugly and confusing.

Consider using the much more readable variant:
	if (IS_ENABLED(CONFIG_ARCH_IMX6) && (cpu_is_mx6ul() || cpu_is_mx6ull()))
		fcb = read_fcb_bch(rawpage, 40);
	else
		fcb = read_fcb_hamming_13_8(rawpage);

Same goes for next chunk in this patch.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
