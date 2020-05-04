Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVUuW-00025M-Sn
 for barebox@lists.infradead.org; Mon, 04 May 2020 06:49:06 +0000
Date: Mon, 4 May 2020 08:49:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200504064903.GO5877@pengutronix.de>
References: <20200430044449.762595-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430044449.762595-1-masahiroy@kernel.org>
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
Subject: Re: [PATCH 1/2] mips: remove unused INCDIR and BOARD variables in
 Makefile
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: barebox@lists.infradead.org

On Thu, Apr 30, 2020 at 01:44:48PM +0900, Masahiro Yamada wrote:
> The variable INCDIR is not used by anyone.
> 
> The variable BOARD is not set by anyone, so $(BOARD) is always empty.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---

Applied, thanks

Sascha

> 
>  arch/mips/Makefile | 13 -------------
>  1 file changed, 13 deletions(-)
> 
> diff --git a/arch/mips/Makefile b/arch/mips/Makefile
> index 4717f49a4..abfa82504 100644
> --- a/arch/mips/Makefile
> +++ b/arch/mips/Makefile
> @@ -88,25 +88,12 @@ else
>  KBUILD_CPPFLAGS += $(patsubst %,-I$(srctree)/%include,$(machdirs))
>  endif
>  
> -ifeq ($(incdir-y),)
> -incdir-y := $(machine-y)
> -endif
> -INCDIR   := arch-$(incdir-y)
> -
> -ifeq ($(KBUILD_SRC),)
> -KBUILD_CPPFLAGS += -I$(BOARD)/include
> -else
> -KBUILD_CPPFLAGS += -I$(srctree)/$(BOARD)/include
> -endif
> -
>  ifneq ($(machine-y),)
>  MACH  := arch/mips/mach-$(machine-y)/
>  else
>  MACH  :=
>  endif
>  
> -common-y += $(BOARD)
> -
>  common-y += $(MACH)
>  common-y += arch/mips/lib/
>  common-y += arch/mips/boot/
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
