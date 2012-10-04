Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo1.mail-out.ovh.net ([178.33.45.107]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TJky1-0005tq-9g
 for barebox@lists.infradead.org; Thu, 04 Oct 2012 12:55:53 +0000
Received: from mail615.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 844D6FF927C
 for <barebox@lists.infradead.org>; Thu,  4 Oct 2012 15:04:58 +0200 (CEST)
Date: Thu, 4 Oct 2012 14:53:28 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121004125328.GL26553@game.jcrosoft.org>
References: <1349354221-28409-1-git-send-email-shc_work@mail.ru>
 <1349354221-28409-2-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1349354221-28409-2-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 2/3] Add more generated files to .gitignore
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On 16:37 Thu 04 Oct     , Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  .gitignore |   11 ++---------
>  1 files changed, 2 insertions(+), 9 deletions(-)
> 
> diff --git a/.gitignore b/.gitignore
> index 4154c73..3fded4e 100644
> --- a/.gitignore
> +++ b/.gitignore
> @@ -26,19 +26,11 @@
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
> -barebox.ubl
> -barebox.map
>  System.map
>  Module.symvers
> -barebox_default_env*
>  
>  #
>  # Generated include files
> @@ -67,3 +59,4 @@ cscope.*
>  scripts/gen_netx_image
>  scripts/s5p_cksum
>  scripts/bareboxenv-target
> +scripts/kconfig/zconf.lex.c
already ignored

Best Regards,
J.
> -- 
> 1.7.3.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
