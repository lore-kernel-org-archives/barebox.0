Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SOpIf-00013y-IJ
 for barebox@lists.infradead.org; Mon, 30 Apr 2012 12:01:54 +0000
Date: Mon, 30 Apr 2012 14:01:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120430120150.GJ4141@pengutronix.de>
References: <1335628376-6568-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1335628376-6568-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] Makefile: add barebox.srec to 'clean'
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Apr 28, 2012 at 07:52:56PM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied, thanks

Sascha

> ---
>  Makefile |    3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/Makefile b/Makefile
> index fb85915..44b7dbd 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -1002,7 +1002,8 @@ endif # CONFIG_MODULES
>  CLEAN_DIRS  += $(MODVERDIR)
>  CLEAN_FILES +=	barebox System.map include/generated/barebox_default_env.h \
>                  .tmp_version .tmp_barebox* barebox.bin barebox.map barebox.S \
> -		.tmp_kallsyms* barebox_default_env* barebox.ldr Doxyfile.version
> +		.tmp_kallsyms* barebox_default_env* barebox.ldr \
> +		Doxyfile.version barebox.srec
>  
>  # Directories & files removed with 'make mrproper'
>  MRPROPER_DIRS  += include/config include2 usr/include
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
