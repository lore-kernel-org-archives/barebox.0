Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YD7YW-0002Mt-Oy
 for barebox@lists.infradead.org; Mon, 19 Jan 2015 08:19:29 +0000
Date: Mon, 19 Jan 2015 17:19:02 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
In-Reply-To: <1421141134-8295-1-git-send-email-yamada.m@jp.panasonic.com>
References: <1421141134-8295-1-git-send-email-yamada.m@jp.panasonic.com>
Message-Id: <20150119171902.9430.AA925319@jp.panasonic.com>
MIME-Version: 1.0
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
Subject: Re: [PATCH] gitignore: remove obsolete link method for arch
 specification
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

How about this patch?


On Tue, 13 Jan 2015 18:25:34 +0900
Masahiro Yamada <yamada.m@jp.panasonic.com> wrote:

> The cross_arch and cross_compile links method is obsolete and not
> available any more, so we remove it from the .gitignore.
> 
> Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
> ---
> 
>  .gitignore | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/.gitignore b/.gitignore
> index 74d24ea..0456bfd 100644
> --- a/.gitignore
> +++ b/.gitignore
> @@ -31,8 +31,6 @@
>  #
>  tags
>  TAGS
> -cross_arch
> -cross_compile
>  barebox
>  barebox.S
>  barebox.bin
> -- 
> 1.9.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
