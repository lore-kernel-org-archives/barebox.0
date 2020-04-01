Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJWI4-0000To-GR
 for barebox@lists.infradead.org; Wed, 01 Apr 2020 05:51:53 +0000
Date: Wed, 1 Apr 2020 07:51:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200401055150.GX27288@pengutronix.de>
References: <20200331172233.9493-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331172233.9493-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] kbuild: Allow building with ARCH set to "arm64"
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Mar 31, 2020 at 10:22:33AM -0700, Andrey Smirnov wrote:
> Allow building with ARCH set to "arm64" so that Barebox for AArch64 can
> be built with same environment settings one would use for building
> Linux kernel.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  Makefile | 4 ++++
>  1 file changed, 4 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/Makefile b/Makefile
> index 3b42769bb..55679cc81 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -163,6 +163,10 @@ export srctree objtree VPATH
>  # Alternatively CROSS_COMPILE can be set in the environment.
>  # Default value for CROSS_COMPILE is not to prefix executables
> 
> +ifeq ($(ARCH),arm64)
> +ARCH = arm
> +endif
> +
>  ARCH            ?= sandbox
>  CROSS_COMPILE   ?=
> 
> --
> 2.21.0
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
