Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fx6AC-0005EN-Lk
 for barebox@lists.infradead.org; Tue, 04 Sep 2018 07:54:18 +0000
Date: Tue, 4 Sep 2018 09:54:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180904075403.2qwmdst2x7rauusx@pengutronix.de>
References: <20180903105715.24263-1-m.niestroj@grinn-global.com>
 <20180903105715.24263-6-m.niestroj@grinn-global.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180903105715.24263-6-m.niestroj@grinn-global.com>
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
Subject: Re: [PATCH 5/5] scripts: imx: Do not include autoconf.h
To: Marcin Niestroj <m.niestroj@grinn-global.com>
Cc: barebox@lists.infradead.org

On Mon, Sep 03, 2018 at 12:57:15PM +0200, Marcin Niestroj wrote:
> All required defines are passed with command line -D options, so there
> is no need to include full autoconf.h header. Additionally there were
> compile time warnings printed when passed variables (CONFIG_HABV*) had
> embedded environment variables, because macros in autoconf.h were
> redefining these passed as command line arguments (-include is
> processed later than -D option).
> 
> Remove including autoconf.h header, so CONFIG_HABV* macros are only
> defined with command line arguments, properly expanding embedded
> variables.
> 
> Signed-off-by: Marcin Niestroj <m.niestroj@grinn-global.com>
> ---
> Changes rfc -> v1: new patch
> 
>  scripts/Makefile.lib | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index 3b1308605..c254b5b79 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -433,7 +433,6 @@ cmd_imximage_S_dcd=						\
>  
>  imxcfg_cpp_flags  = -Wp,-MD,$(depfile) -nostdinc -x assembler-with-cpp \
>        -I $(srctree)/include -I $(srctree)/arch/arm/mach-imx/include \
> -      -include include/generated/autoconf.h \
>        -DCONFIG_HABV3_SRK_PEM=\"$(CONFIG_HABV3_SRK_PEM)\" \
>        -DCONFIG_HABV3_CSF_CRT_DER=\"$(CONFIG_HABV3_CSF_CRT_DER)\" \
>        -DCONFIG_HABV3_IMG_CRT_DER=\"$(CONFIG_HABV3_IMG_CRT_DER)\" \

the inclusion of autoconf.h is there so that we can use the CONFIG_*
macros. See for example rch/arm/boards/tqma53/flash-header.imxcfg:36

#ifdef CONFIG_MACH_TQMA53_1GB_RAM

What we can do instead is replace the -include with "-I
$(objtree)/include" so that we can do a "#include
<generated/autoconf.h>" in arch/arm/boards/tqma53/flash-header.imxcfg.
Would that be fine aswell?

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
