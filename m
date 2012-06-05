Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SbnOa-0003Uf-5a
 for barebox@lists.infradead.org; Tue, 05 Jun 2012 06:37:37 +0000
Date: Tue, 5 Jun 2012 08:37:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120605063730.GK30400@pengutronix.de>
References: <1338542601-28151-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1338542601-28151-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 1/2] MIPS: make possible board-specific header files
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Jun 01, 2012 at 01:23:20PM +0400, Antony Pavlov wrote:
> This patch makes possible to put a board-specific
> header file (e. g. foobar.h) to arch/mips/boards/*/include/board/.
> 
> Header file usage:
>  #include <board/foobar.h>
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied, thanks

Sascha

> ---
>  arch/mips/Makefile |    2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/mips/Makefile b/arch/mips/Makefile
> index f28c21d..6b7dae9 100644
> --- a/arch/mips/Makefile
> +++ b/arch/mips/Makefile
> @@ -96,6 +96,8 @@ else
>  MACH  :=
>  endif
>  
> +CPPFLAGS += -I$(BOARD)/include
> +
>  common-y += $(BOARD) $(MACH)
>  common-y += arch/mips/lib/
>  common-y += arch/mips/boot/
> -- 
> 1.7.10
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
