Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f363.mail.ru ([217.69.141.5])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEe6o-0005z7-97
 for barebox@lists.infradead.org; Sun, 10 Mar 2013 11:08:07 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Sun, 10 Mar 2013 15:08:00 +0400
Message-ID: <1362913680.690644667@f363.mail.ru>
In-Reply-To: <1362594605-1083-1-git-send-email-shc_work@mail.ru>
References: <1362594605-1083-1-git-send-email-shc_work@mail.ru>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Subject: =?UTF-8?B?UmU6IFtSRkNdIE1ha2VmaWxlOiBDcmVhdGUgZW1wdHkgPGNvbmZpZy5oPiBp?=
 =?UTF-8?B?ZiB0aGlzIGhlYWRlciBmaWxlIGlzIG5vdCBuZWVkZWQgYnkgYm9hcmQ=?=
To: barebox@lists.infradead.org, =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>

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
> 1.7.12.4

Can anyone comment this patch?
I can resend it with cleanup part. (-50 files).

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
