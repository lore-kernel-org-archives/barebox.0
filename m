Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1StOzX-0000Xn-Hd
 for barebox@lists.infradead.org; Mon, 23 Jul 2012 20:12:32 +0000
Date: Mon, 23 Jul 2012 22:10:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120723201012.GC30009@pengutronix.de>
References: <1343050608-2091-1-git-send-email-sv.khafizova@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1343050608-2091-1-git-send-email-sv.khafizova@gmail.com>
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
Subject: Re: [PATCH] Makefile: update barebox version if CONFIG_KALLSYMS is
 not set
To: Svetlana Khafizova <sv.khafizova@gmail.com>
Cc: barebox@lists.infradead.org, Aleksey Kuleshov <rndfax@yandex.ru>

On Mon, Jul 23, 2012 at 05:36:48PM +0400, Svetlana Khafizova wrote:
> If CONFIG_KALLSYMS is not set then barebox version is always "#0".
> By-default on mips boards CONFIG_KALLSYMS don't set, so barebox
> version does not increase after every build.
> This patch fixes the problem.

Same here. Applied.

Thanks,
 Sascha

> 
> Signed-off-by: Svetlana Khafizova <sv.khafizova@gmail.com>
> Signed-off-by: Aleksey Kuleshov <rndfax@yandex.ru>
> Acked-by:: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  Makefile |    3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/Makefile b/Makefile
> index ebcf9bf..ac5eaaf 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -549,12 +549,13 @@ quiet_cmd_sysmap = SYSMAP
>        cmd_sysmap = $(CONFIG_SHELL) $(srctree)/scripts/mksysmap
>  
>  # Link of barebox
> +# If CONFIG_KALLSYMS is set .version is already updated
>  # Generate System.map and verify that the content is consistent
>  # Use + in front of the barebox_version rule to silent warning with make -j2
>  # First command is ':' to allow us to use + in front of the rule
>  define rule_barebox__
>  	:
> -
> +	$(if $(CONFIG_KALLSYMS),,+$(call cmd,barebox_version))
>  	$(call cmd,barebox__)
>  
>  	$(Q)echo 'cmd_$@ := $(cmd_barebox__)' > $(@D)/.$(@F).cmd
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
