Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fPjPE-0005x9-KL
 for barebox@lists.infradead.org; Mon, 04 Jun 2018 06:55:54 +0000
Date: Mon, 4 Jun 2018 08:55:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180604065540.v5xskz5gpq32d7o7@pengutronix.de>
References: <1527819969-26797-1-git-send-email-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1527819969-26797-1-git-send-email-yamada.masahiro@socionext.com>
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
Subject: Re: [PATCH] .gitignore: sort normal pattern rules alphabetically
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: barebox@lists.infradead.org

On Fri, Jun 01, 2018 at 11:26:09AM +0900, Masahiro Yamada wrote:
> Follow Linux commit 1377dd3e2987 (".gitignore: sort normal pattern
> rules alphabetically").
> 
> This would allow us to easily catch duplicated patterns if any.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---

Applied, thanks

Sascha

> 
>  .gitignore | 30 +++++++++++++++---------------
>  1 file changed, 15 insertions(+), 15 deletions(-)
> 
> diff --git a/.gitignore b/.gitignore
> index bbcfa22..d83d317 100644
> --- a/.gitignore
> +++ b/.gitignore
> @@ -7,29 +7,29 @@
>  # command after changing this file, to see if there are
>  # any tracked files which get ignored after the change.
>  #
> -# Normal rules
> +# Normal rules (sorted alphabetically)
>  #
>  .*
> +*.a
> +*.bbenv
> +*.bbenv.*
> +*.bct
> +*.dcd
> +*.dcd.S
> +*.elf
> +*.i
> +*.ko
> +*.lst
> +*.mcp
> +*.mod.c
>  *.o
>  *.o.*
> -*.a
> +*.patch
> +*.pyc
>  *.s
> -*.ko
>  *.so
>  *.so.dbg
> -*.mod.c
> -*.i
> -*.lst
>  *.symtypes
> -*.elf
> -*.patch
> -*.pyc
> -*.mcp
> -*.bct
> -*.dcd
> -*.dcd.S
> -*.bbenv
> -*.bbenv.*
>  Module.symvers
>  
>  #
> -- 
> 2.7.4
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
