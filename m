Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kRwkX-0008FH-GA
 for barebox@lists.infradead.org; Mon, 12 Oct 2020 12:16:22 +0000
Date: Mon, 12 Oct 2020 14:16:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201012121620.GD11648@pengutronix.de>
References: <20201011214742.697502-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201011214742.697502-1-ahmad@a3f.at>
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
Subject: Re: [PATCH] logo: Makefile: fix indentation of LOGO.S in quiet output
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

On Sun, Oct 11, 2020 at 11:47:42PM +0200, Ahmad Fatoum wrote:
> Output currently looks like this:
> 
>   CC      commands/printenv.o
>   LOGO.S   lib/logo/barebox-logo-w64.bblogo
>   CC      arch/sandbox/board/devices.o
> 
> Drop one space, so it's aligned with the usual two letter prefixes.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  lib/logo/Makefile | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/lib/logo/Makefile b/lib/logo/Makefile
> index 3d0f1c24c640..4149d4ff6c0c 100644
> --- a/lib/logo/Makefile
> +++ b/lib/logo/Makefile
> @@ -21,7 +21,7 @@ extra-y += $(patsubst %,%.bblogo.o,$(bblogo-y))
>  
>  obj-$(CONFIG_BAREBOX_LOGO) += logo.o
>  
> -quiet_cmd_logo_S = LOGO.S   $@
> +quiet_cmd_logo_S = LOGO.S  $@
>  cmd_logo_S =							\
>  (								\
>  	echo '\#include <asm-generic/barebox.lds.h>';		\
> @@ -43,7 +43,7 @@ INKSCAPEOPTS += $(call try-run, inkscape -z -e -,-z -e -,--export-type=png)
>  # Inkscape 1.0 supports -o -
>  INKSCAPEOPTS += $(call try-run, inkscape -o -,-o -,)
>  
> -quiet_cmd_logo = LOGO.S   $@
> +quiet_cmd_logo = LOGO.S  $@
>  cmd_logo =							\
>  (								\
>  	inkscape $(OPTS_$(@F)) $(INKSCAPEOPTS) $< > $@; \
> -- 
> 2.28.0
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
