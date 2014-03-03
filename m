Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.eu1.fugro.com ([46.34.88.151])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WKO2c-0006XQ-8I
 for barebox@lists.infradead.org; Mon, 03 Mar 2014 08:16:02 +0000
Content-class: urn:content-classes:message
MIME-Version: 1.0
Date: Mon, 3 Mar 2014 09:15:36 +0100
Message-ID: <C89EFD3CD56F64468D3D206D683A8D220304224D@ldam-msx2.fugro-nl.local>
In-Reply-To: <1393833013-7783-1-git-send-email-s.hauer@pengutronix.de>
References: <1393833013-7783-1-git-send-email-s.hauer@pengutronix.de>
From: "Hattink, Tjalling [FINT]" <T.Hattink@fugro.nl>
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
Subject: RE: [PATCH] mtd: nand: disable subpage reads
To: barebox@lists.infradead.org

> -----Original Message-----
> From: Sascha Hauer [mailto:s.hauer@pengutronix.de]
> Sent: Monday, March 03, 2014 08:50
> To: barebox@lists.infradead.org
> Cc: Sascha Hauer; Hattink, Tjalling [FINT]
> Subject: [PATCH] mtd: nand: disable subpage reads
> 
> The default nand_read_subpage implementation returns -ENOSUPP, so we
> have to make sure that barebox never uses this implementation. By
> setting the NAND_SUBPAGE_READ flag to 0x0 we ensure
> NAND_HAS_SUBPAGE_READ() never returns true and also give the compiler
a
> chance to optimize away some unused code.
> 
> subpage reads are a rather exotic feature even in Linux. It is only
> used on largepage NANDs with soft ecc. Even if we have this case it
> needs non page aligned reads to actually profit from this feature.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Hattink, Tjalling [FINT] <T.Hattink@fugro.nl>
> ---
> 
> Hi Tjalling,
> I had a closer look at the subpage read stuff and saw that this is
> really an exotic feature that even if we could support it doesn't help
> very much. So I decided to go back to a variant of your first
> patch: Fix subpage reads by disabling them completely.
> 
> 
>  include/linux/mtd/nand.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h index
> 74ea0b4..3c7509f 100644
> --- a/include/linux/mtd/nand.h
> +++ b/include/linux/mtd/nand.h
> @@ -162,7 +162,8 @@ typedef enum {
>  #define NAND_ROM		0x00000800
> 
>  /* Device supports subpage reads */
> -#define NAND_SUBPAGE_READ	0x00001000
> +/* Disabled in barebox for smaller binary sizes */
> +#define NAND_SUBPAGE_READ	(__BAREBOX__ ? 0x0 : 0x00001000)
> 
>  /* Options valid for Samsung large page devices */  #define
> NAND_SAMSUNG_LP_OPTIONS NAND_CACHEPRG
> --
> 1.8.5.3

Hi Sascha,

I don't think it matters much either when subpage read is disabled.
Barebox will not do heavy read operations on the nand so the subpage
support will not do much.

Thanks for resolving this bug,

Tjalling

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
