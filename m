Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U8WqR-0002WM-Hp
 for barebox@lists.infradead.org; Thu, 21 Feb 2013 14:09:56 +0000
Date: Thu, 21 Feb 2013 15:09:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130221140954.GX1906@pengutronix.de>
References: <1361364976-8949-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1361364976-8949-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/2] Makefile.lib: introduce lwl-y for lowlevel code
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Feb 20, 2013 at 01:56:15PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> The lowlevel code is expected to be present only ONCE
> 
> in PBL is enabled otherwise in barebox
> 
> This fix the module support with PBL and allow to reduce the size of barebox
> by drop the lowlevell init in barebox as the compiler does not discard it
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  scripts/Makefile.lib |    8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index f7d6721..871c44b 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -21,6 +21,14 @@ lib-y := $(filter-out $(obj-y), $(sort $(lib-y) $(lib-m)))
>  # o if we encounter foo/ in $(obj-m), remove it from $(obj-m)
>  #   and add the directory to the list of dirs to descend into: $(subdir-m)
>  
> +# lowlevel is present in the PBL if enabled
> +# otherwise in barebox
> +ifeq ($(CONFIG_PBL_IMAGE), y)
> +pbl-y		+= $(lwl-y)
> +else
> +obj-y		+= $(lwl-y)
> +endif
> +
>  # for non dirs add pbl- prefix to the target
>  # so we recompile the source with custom flags and custom quiet
>  __pbl-y		:= $(notdir $(pbl-y))
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
