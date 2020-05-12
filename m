Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYNbM-0003eh-EE
 for barebox@lists.infradead.org; Tue, 12 May 2020 05:37:13 +0000
Date: Tue, 12 May 2020 07:37:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200512053710.GU5877@pengutronix.de>
References: <20200509030239.835689-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200509030239.835689-1-masahiroy@kernel.org>
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
Subject: Re: [PATCH 1/2] kbuild: add -Werror={strict-prototypes,
 implicit-int} to KBUILD_CFLAGS
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: barebox@lists.infradead.org

On Sat, May 09, 2020 at 12:02:38PM +0900, Masahiro Yamada wrote:
> - Turn Wstrict-prototypes into an error
> - Add -Werror=implicit-int
> - Use the standard form -Werror=... for implicit-function-declaration
> 
> This commit imports the following Linux commits. They should work for
> barebox too.
> 
> 80970472179a Makefile: enable -Werror=implicit-int and -Werror=strict-prototypes by default
> eeb5687a7139 kbuild: add -Werror=strict-prototypes flag unconditionally
> 61a0902a06d6 kbuild: add -Werror=implicit-int flag unconditionally
> b89f25ea7892 kbuild: use -Werror=implicit-... instead of -Werror-implicit-...
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---

Applied, thanks

Sascha

> 
>  Makefile | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index 9485f5551..a732e24d3 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -318,9 +318,10 @@ LINUXINCLUDE    := -Iinclude -I$(srctree)/dts/include \
>  
>  KBUILD_CPPFLAGS        := -D__KERNEL__ -D__BAREBOX__ $(LINUXINCLUDE) -fno-builtin -ffreestanding
>  
> -KBUILD_CFLAGS          := -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs \
> -                   -Werror-implicit-function-declaration \
> -                   -fno-strict-aliasing -fno-common -Os -pipe -Wmissing-prototypes
> +KBUILD_CFLAGS   := -Wall -Wundef -Werror=strict-prototypes -Wno-trigraphs \
> +		   -fno-strict-aliasing -fno-common \
> +                   -Werror=implicit-function-declaration -Werror=implicit-int \
> +                   -Os -pipe -Wmissing-prototypes
>  KBUILD_AFLAGS          := -D__ASSEMBLY__
>  
>  LDFLAGS_barebox	:= -Map barebox.map
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
