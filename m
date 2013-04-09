Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UPSGs-00017P-5H
 for barebox@lists.infradead.org; Tue, 09 Apr 2013 06:43:11 +0000
Date: Tue, 9 Apr 2013 08:43:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130409064307.GV1906@pengutronix.de>
References: <1365173000-4422-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1365173000-4422-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH v2 1/2] Makefile: Create empty <config.h> if this header
 file is not needed by board
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Fri, Apr 05, 2013 at 06:43:19PM +0400, Alexander Shiyan wrote:
> Patch creates empty <config.h> if this header is not needed by board.
> This will allow to remove many empty config.h files from boards.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

Sascha

> ---
>  Makefile | 18 ++++++++++++------
>  1 file changed, 12 insertions(+), 6 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index a7db9de..71f181c 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -841,13 +841,19 @@ include/asm:
>  	$(Q)$(check-symlink)
>  	$(Q)$(create-symlink)
>  
> +define symlink-config-h
> +	if [ -f $(srctree)/$(BOARD)/config.h ]; then		\
> +		$(kecho) '  SYMLINK $@ -> $(BOARD)/config.h';	\
> +		ln -fsn $(srctree)/$(BOARD)/config.h $@;	\
> +	else							\
> +		[ -h $@ ] && rm -f $@;				\
> +		$(kecho) '  CREATE  $@';			\
> +		touch -a $@;					\
> +	fi
> +endef
> +
>  include/config.h: include/config/auto.conf
> -	$(Q)$(kecho) '  SYMLINK $@ -> $(BOARD)/config.h'
> -ifneq ($(KBUILD_SRC),)
> -	$(Q)ln -fsn $(srctree)/$(BOARD)/config.h $@
> -else
> -	$(Q)ln -fsn ../$(BOARD)/config.h $@
> -endif
> +	$(Q)$(symlink-config-h)
>  
>  # Generate some files
>  # ---------------------------------------------------------------------------
> -- 
> 1.8.1.5
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
