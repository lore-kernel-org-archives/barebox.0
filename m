Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLsgj-0003LF-Q5
 for barebox@lists.infradead.org; Wed, 10 Oct 2012 09:34:50 +0000
Date: Wed, 10 Oct 2012 11:34:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121010093448.GY27665@pengutronix.de>
References: <1349678104-4531-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1349678104-4531-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH v2] Add more generated files to .gitignore
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Mon, Oct 08, 2012 at 10:35:04AM +0400, Alexander Shiyan wrote:
> This patch adds at least one more generated file to .gitignore list:
> 
> shc@shc /home/git/bb_clps3 $ git status
> # On branch my
> # Untracked files:
> #   (use "git add <file>..." to include in what will be committed)
> #
> #       barebox-flash-image
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

Sascha

> ---
>  .gitignore |   12 +-----------
>  1 files changed, 1 insertions(+), 11 deletions(-)
> 
> diff --git a/.gitignore b/.gitignore
> index 9af6710..81e74a0 100644
> --- a/.gitignore
> +++ b/.gitignore
> @@ -26,21 +26,11 @@
>  #
>  tags
>  TAGS
> +barebox*
>  cross_arch
>  cross_compile
> -barebox
> -barebox.S
> -barebox.bin
> -barebox.srec
> -barebox.netx
> -barebox.s5p
> -barebox.spi
> -barebox.ubl
> -barebox.uimage
> -barebox.map
>  System.map
>  Module.symvers
> -barebox_default_env*
>  
>  #
>  # Generated include files
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
