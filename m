Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8Hx9-0004PV-7H
 for barebox@lists.infradead.org; Wed, 19 Aug 2020 06:52:07 +0000
Date: Wed, 19 Aug 2020 08:52:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200819065205.GP13023@pengutronix.de>
References: <20200818105520.32326-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200818105520.32326-1-masahiroy@kernel.org>
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
Subject: Re: [PATCH 1/5] scripts: remove redundant setupmbr addition to subdir-
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: barebox@lists.infradead.org

On Tue, Aug 18, 2020 at 07:55:16PM +0900, Masahiro Yamada wrote:
> This has already been added to subdir-$(CONFIG_X86) a few lines above.
> 'make mrproper' correctly descends into scripts/setupmbr/.
> 
> Remove the redundant addition.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---

Applied, thanks

Sascha

> 
>  scripts/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/scripts/Makefile b/scripts/Makefile
> index 75e68822d..238460fe2 100644
> --- a/scripts/Makefile
> +++ b/scripts/Makefile
> @@ -52,4 +52,4 @@ subdir-$(CONFIG_DTC)		+= dtc
>  subdir-$(CONFIG_ARCH_TEGRA)	+= tegra
>  
>  # Let clean descend into subdirs
> -subdir-	+= basic kconfig setupmbr
> +subdir-	+= basic kconfig
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
