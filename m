Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1js5Ti-0007JS-96
 for barebox@lists.infradead.org; Sun, 05 Jul 2020 14:18:46 +0000
Date: Sun, 5 Jul 2020 16:18:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200705141844.GU15485@pengutronix.de>
References: <20200702134650.19767-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200702134650.19767-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH master] sandbox: fix generation of broken binaries
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Peter Mamonov <pmamonov@gmail.com>

On Thu, Jul 02, 2020 at 03:46:50PM +0200, Ahmad Fatoum wrote:
> Code under arch/sandbox/os is meant to link against the libc primitives
> of the OS, not the barebox counterparts (e.g. for malloc).
> 
> 54d47eb7e912 ("sandbox: support forcing 32-bit x86") broke this
> rendering the sandbox architecture unusable. Fix this.
> 
> Reported-by: Peter Mamonov <pmamonov@gmail.com>
> Fixes: 54d47eb7e912 ("sandbox: support forcing 32-bit x86")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> Hello Sascha,
> 
> ARCH=sandbox is runtime-broken in master. Please add this patch there
> to fix this.

Did that, thanks

Sascha

> 
> Cheers,
> Ahmad
> ---
>  arch/sandbox/os/Makefile | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/sandbox/os/Makefile b/arch/sandbox/os/Makefile
> index ed921443e0fd..b2f95087dcc4 100644
> --- a/arch/sandbox/os/Makefile
> +++ b/arch/sandbox/os/Makefile
> @@ -6,9 +6,13 @@ KBUILD_CPPFLAGS = $(patsubst %,-I$(srctree)/%include,$(machdirs))
>  
>  KBUILD_CPPFLAGS += -DCONFIG_MALLOC_SIZE=$(CONFIG_MALLOC_SIZE)
>  
> -KBUILD_CFLAGS += -Wall
> +KBUILD_CFLAGS := -Wall
>  NOSTDINC_FLAGS :=
>  
> +ifeq ($(CONFIG_SANDBOX_LINUX_I386),y)
> +KBUILD_CFLAGS += -m32
> +endif
> +
>  obj-y = common.o tap.o
>  
>  CFLAGS_sdl.o = $(shell pkg-config sdl --cflags)
> -- 
> 2.27.0
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
