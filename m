Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfRYw-0006HL-0u
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 08:39:38 +0000
Date: Mon, 3 Dec 2012 09:39:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121203083936.GD10369@pengutronix.de>
References: <1354244033-9664-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1354244033-9664-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] MIPS: fix out-of-tree build
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Nov 30, 2012 at 06:53:53AM +0400, Antony Pavlov wrote:
> The commit
> 
>   commit d25d94bea67308e29db895d418f3f1f8153ae2ea
>   Author: Antony Pavlov <antonynpavlov@gmail.com>
>   Date:   Fri Jun 1 13:23:20 2012 +0400
> 
>       MIPS: make possible board-specific header files
> 
>       This patch makes possible to put a board-specific
>       header file (e. g. foobar.h) to arch/mips/boards/*/include/board/.
> 
> breaks the out-of-tree build for the boards that use it (rzx50).

Applied, thanks

Sascha

> 
> Reported-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/mips/Makefile |    8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/mips/Makefile b/arch/mips/Makefile
> index 5e40de7..f32089d 100644
> --- a/arch/mips/Makefile
> +++ b/arch/mips/Makefile
> @@ -88,14 +88,18 @@ else
>  BOARD :=
>  endif
>  
> +ifeq ($(KBUILD_SRC),)
> +CPPFLAGS += -I$(BOARD)/include
> +else
> +CPPFLAGS += -I$(srctree)/$(BOARD)/include
> +endif
> +
>  ifneq ($(machine-y),)
>  MACH  := arch/mips/mach-$(machine-y)/
>  else
>  MACH  :=
>  endif
>  
> -CPPFLAGS += -I$(BOARD)/include
> -
>  common-y += $(BOARD) $(MACH)
>  common-y += arch/mips/lib/
>  common-y += arch/mips/boot/
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
