Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UO2hY-0006no-QF
 for barebox@lists.infradead.org; Fri, 05 Apr 2013 09:12:53 +0000
Date: Fri, 5 Apr 2013 11:12:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130405091250.GF20989@pengutronix.de>
References: <1363018250-6169-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1363018250-6169-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 1/2] Makefile: Create empty <config.h> if this header
 file is not needed by board
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Mon, Mar 11, 2013 at 08:10:49PM +0400, Alexander Shiyan wrote:
> Patch creates empty <config.h> if this header is not needed by board.
> This will allow to remove many empty config.h files from boards.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  Makefile | 17 +++++++++++------
>  1 file changed, 11 insertions(+), 6 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index b5819fc..e8d9984 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -898,13 +898,18 @@ include/asm:
>  	$(Q)$(check-symlink)
>  	$(Q)$(create-symlink)
>  
> +define symlink-config-h
> +	if [ -f $(srctree)/$(BOARD)/config.h ]; then		\
> +		$(kecho) '  SYMLINK $@ -> $(BOARD)/config.h';	\
> +		ln -fsn $(srctree)/$(BOARD)/config.h $@;	\
> +	else							\
> +		$(kecho) '  CREATE  $@';			\
> +		echo -n > $@;					\
> +	fi
> +endef

I dropped this patch because it autogenerates files which were
previously part of the repository. This causes git checkout to
complain about overwriting existing files when we want to checkout
earlier versions.

How about creating this patch like this:

- create (and commit) a include/config-empty.h
- link to the board specific config.h if it exists or to
  config-empty.h if it doesn't exist.

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
