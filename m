Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bFxxo-0000iY-Ea
 for barebox@lists.infradead.org; Thu, 23 Jun 2016 06:18:09 +0000
Date: Thu, 23 Jun 2016 08:17:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160623061745.GF4750@pengutronix.de>
References: <CC3701D5-B235-416E-B5C7-18F82E3B9A8A@jtang.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CC3701D5-B235-416E-B5C7-18F82E3B9A8A@jtang.org>
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
Subject: Re: [PATCH] ppc: fix USPRG0 define
To: "J. Tang" <tang@jtang.org>
Cc: barebox@lists.infradead.org

On Tue, Jun 21, 2016 at 11:05:51PM -0400, J. Tang wrote:
> The #define USPRG0 aliases SPRN_USPRG, but it should refer to
> SPRN_USPRG0. There is no register SPRN_USPRG on PowerPC.
> 
> Signed-off-by: Jason Tang <tang@jtang.org>
> ---
>  arch/ppc/include/asm/processor.h |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/ppc/include/asm/processor.h b/arch/ppc/include/asm/processor.h
> index e8a9c14..39a89a9 100644
> --- a/arch/ppc/include/asm/processor.h
> +++ b/arch/ppc/include/asm/processor.h
> @@ -572,7 +572,7 @@
>  #define CSRR0	SPRN_CSRR0
>  #define CSRR1	SPRN_CSRR1
>  #define IVPR	SPRN_IVPR
> -#define USPRG0	SPRN_USPRG
> +#define USPRG0	SPRN_USPRG0
>  #define SPRG4R	SPRN_SPRG4R
>  #define SPRG5R	SPRN_SPRG5R
>  #define SPRG6R	SPRN_SPRG6R
> -- 
> 1.7.10.4
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
