Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC31W-0001Fp-3j
 for barebox@lists.infradead.org; Wed, 11 Mar 2020 15:11:58 +0000
Date: Wed, 11 Mar 2020 16:11:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200311151152.GG3335@pengutronix.de>
References: <20200310112816.7415-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200310112816.7415-1-masahiroy@kernel.org>
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
Subject: Re: [PATCH 1/5] kbuild: remove unused barebox-head
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: barebox@lists.infradead.org

On Tue, Mar 10, 2020 at 08:28:12PM +0900, Masahiro Yamada wrote:
> This is not set by anyone.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---

Applied, thanks

Sascha

> 
>  Makefile | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index d923463ed5e3..1fa09b041360 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -781,7 +781,7 @@ barebox.S barebox.s: barebox FORCE
>  endif
>  
>  # barebox image
> -barebox: $(barebox-lds) $(barebox-head) $(barebox-common) $(kallsyms.o) FORCE
> +barebox: $(barebox-lds) $(barebox-common) $(kallsyms.o) FORCE
>  	$(call barebox-modpost)
>  	$(call if_changed_rule,barebox__)
>  	$(Q)rm -f .old_version
> @@ -791,7 +791,7 @@ barebox.srec: barebox
>  
>  # The actual objects are generated when descending,
>  # make sure no implicit rule kicks in
> -$(sort $(barebox-head) $(barebox-common) ) $(barebox-lds) $(barebox-pbl-common): $(barebox-dirs) ;
> +$(sort $(barebox-common) ) $(barebox-lds) $(barebox-pbl-common): $(barebox-dirs) ;
>  
>  # Handle descending into subdirectories listed in $(barebox-dirs)
>  # Preset locale variables to speed up the build process. Limit locale
> -- 
> 2.17.1
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
