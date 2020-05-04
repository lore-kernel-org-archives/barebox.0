Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVUp8-0006KL-G1
 for barebox@lists.infradead.org; Mon, 04 May 2020 06:43:36 +0000
Date: Mon, 4 May 2020 08:43:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200504064328.GM5877@pengutronix.de>
References: <20200430044252.762041-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430044252.762041-1-masahiroy@kernel.org>
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
Subject: Re: [PATCH] kbuild: add $(always-y) to 'targets'
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: barebox@lists.infradead.org

On Thu, Apr 30, 2020 at 01:42:51PM +0900, Masahiro Yamada wrote:
> I missed to sync this line in commit 421108c51da4 ("kbuild: rename
> hostprogs-y/always to hostprogs/always-y").
> 
> Since then, the files in always(-y) are needlessly rebuilt.
> 
> Fixes: 421108c51da4 ("kbuild: rename hostprogs-y/always to hostprogs/always-y")
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---

Applied, thanks

Sascha

> 
>  scripts/Makefile.build | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> index 8c28ccb8e..acb0d68b8 100644
> --- a/scripts/Makefile.build
> +++ b/scripts/Makefile.build
> @@ -243,7 +243,7 @@ pbl-%.o: %.S FORCE
>  	$(call if_changed_dep,as_o_S)
>  
>  targets += $(real-objs-y) $(real-objs-m) $(lib-y) $(pbl-y)
> -targets += $(extra-y) $(MAKECMDGOALS) $(always)
> +targets += $(extra-y) $(always-y) $(MAKECMDGOALS)
>  
>  # Linker scripts preprocessor (.lds.S -> .lds)
>  # ---------------------------------------------------------------------------
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
