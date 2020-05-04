Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVUib-0002cy-Nb
 for barebox@lists.infradead.org; Mon, 04 May 2020 06:36:47 +0000
Date: Mon, 4 May 2020 08:36:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200504063643.GK5877@pengutronix.de>
References: <20200429173419.681074-1-masahiroy@kernel.org>
 <20200429173419.681074-3-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429173419.681074-3-masahiroy@kernel.org>
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
Subject: Re: [PATCH 2/5] ppc: pass -mno-spe and -mspe=no to cc-option
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: barebox@lists.infradead.org

On Thu, Apr 30, 2020 at 02:34:16AM +0900, Masahiro Yamada wrote:
> My compiler does not understand -mno-spe or -msped=n.
> 
> powerpc-linux-gcc: error: unrecognized command line option '-mno-spe'; did you mean '-fno-see'?
> powerpc-linux-gcc: error: unrecognized command line option '-mspe=no'
> 
> Pass them to cc-option becasue this is what Linux does.
> 
> Also, assign the compiler flags to CFLAGS, AFLAGS, and CPPFLAGS properly.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---

I skipped this one as I have a similar patch in the tree already. We
might need a fixup patch to move -m32 to KBUILD_AFLAGS.

Sascha

> 
>  arch/ppc/Makefile | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/ppc/Makefile b/arch/ppc/Makefile
> index 276b1f6bf..3d8ddf377 100644
> --- a/arch/ppc/Makefile
> +++ b/arch/ppc/Makefile
> @@ -1,8 +1,10 @@
>  KBUILD_DEFCONFIG := p2020rdb_defconfig
>  
> -KBUILD_CPPFLAGS += -ffixed-r14 -m32 	\
> -	-meabi -D __PPC__ \
> -	-fno-strict-aliasing -mno-spe -mspe=no
> +KBUILD_CFLAGS += -ffixed-r14 -m32 -meabi -fno-strict-aliasing
> +KBUILD_CFLAGS += $(call cc-option,-mno-spe)
> +KBUILD_CFLAGS += $(call cc-option,-mspe=no)
> +KBUILD_AFLAGS += -m32
> +KBUILD_CPPFLAGS += -D __PPC__
>  
>  ifdef CONFIG_RELOCATABLE
>  KBUILD_CPPFLAGS += -fPIC -mrelocatable
> -- 
> 2.25.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
