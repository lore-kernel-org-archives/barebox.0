Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTMkb-0007Zc-Fp
 for barebox@lists.infradead.org; Tue, 28 Apr 2020 09:42:03 +0000
Date: Tue, 28 Apr 2020 11:41:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200428094158.GZ5877@pengutronix.de>
References: <20200427191334.9839-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427191334.9839-1-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] ppc: Test for compiler options
To: Barebox List <barebox@lists.infradead.org>

On Mon, Apr 27, 2020 at 09:13:34PM +0200, Sascha Hauer wrote:
> The -mno-spe and -mspe=no options are not available on all compilers.
> Call cc-option to set them only when they exist.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/ppc/Makefile | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/ppc/Makefile b/arch/ppc/Makefile
> index ebf60edede..67b4b930e7 100644
> --- a/arch/ppc/Makefile
> +++ b/arch/ppc/Makefile
> @@ -4,6 +4,9 @@ CPPFLAGS += -ffixed-r14 -m32 	\
>  	-meabi -D __PPC__ -D CONFIG_PPC \
>  	-fno-strict-aliasing -mno-spe -mspe=no
>  
> +CPPFLAGS += $(call cc-option,-mno-spe)
> +CPPFLAGS += $(call cc-option,-mspe=no)
> +

Of course the options should be removed two lines further up.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
