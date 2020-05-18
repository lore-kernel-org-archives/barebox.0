Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaZ6c-0004RR-2w
 for barebox@lists.infradead.org; Mon, 18 May 2020 06:18:31 +0000
Date: Mon, 18 May 2020 08:18:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200518061828.GI11869@pengutronix.de>
References: <20200515145825.145665-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515145825.145665-1-masahiroy@kernel.org>
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
Subject: Re: [PATCH] .gitignore: drop stale ignore pattern include/asm
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: barebox@lists.infradead.org

On Fri, May 15, 2020 at 11:58:25PM +0900, Masahiro Yamada wrote:
> In old days, Linux created a symlink include/asm -> include/asm-*,
> but all the asm headers were moved to arch/*/include/asm, which
> is the same for Barebox too.
> 
> Remove the bitrotten ignore pattern.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---

Applied, thanks

Sascha

> 
>  include/.gitignore | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/include/.gitignore b/include/.gitignore
> index f28372a3d..18e58a752 100644
> --- a/include/.gitignore
> +++ b/include/.gitignore
> @@ -1,2 +1 @@
> -asm
>  /config.h
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
