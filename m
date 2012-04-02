Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SEcJp-0005d1-62
 for barebox@lists.infradead.org; Mon, 02 Apr 2012 08:08:54 +0000
Date: Mon, 2 Apr 2012 10:08:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120402080848.GG3852@pengutronix.de>
References: <1332699736-10591-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1332699736-10591-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] Add barebox.map and compressed default_env to distclean
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sun, Mar 25, 2012 at 10:22:16PM +0400, Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

Sascha

> ---
>  Makefile |    4 ++--
>  1 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index 4f4c006..eef76c5 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -1000,8 +1000,8 @@ endif # CONFIG_MODULES
>  # Directories & files removed with 'make clean'
>  CLEAN_DIRS  += $(MODVERDIR)
>  CLEAN_FILES +=	barebox System.map include/generated/barebox_default_env.h \
> -                .tmp_version .tmp_barebox* barebox.bin barebox.S \
> -		.tmp_kallsyms* barebox_default_env barebox.ldr Doxyfile.version
> +                .tmp_version .tmp_barebox* barebox.bin barebox.map barebox.S \
> +		.tmp_kallsyms* barebox_default_env* barebox.ldr Doxyfile.version
>  
>  # Directories & files removed with 'make mrproper'
>  MRPROPER_DIRS  += include/config include2 usr/include
> -- 
> 1.7.3.4
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
