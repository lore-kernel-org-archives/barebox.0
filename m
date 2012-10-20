Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo1.mail-out.ovh.net ([87.98.179.142]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TPWe3-0005Fr-Gg
 for barebox@lists.infradead.org; Sat, 20 Oct 2012 10:51:08 +0000
Received: from mail184.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 3D6FB1004044
 for <barebox@lists.infradead.org>; Sat, 20 Oct 2012 13:00:55 +0200 (CEST)
Date: Sat, 20 Oct 2012 12:48:46 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121020104846.GB21588@game.jcrosoft.org>
References: <1350715865-4252-1-git-send-email-alex.aring@gmail.com>
 <1350715865-4252-2-git-send-email-alex.aring@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1350715865-4252-2-git-send-email-alex.aring@gmail.com>
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
Subject: Re: [PATCH 2/2] progressbar: add TOSTRING macro
To: Alexander Aring <alex.aring@googlemail.com>
Cc: barebox@lists.infradead.org

On 08:51 Sat 20 Oct     , Alexander Aring wrote:
> Add TOSTRING macro in common.h and use it for
> HASH_PER_LINE in printf format string of
> function init_progression_bar.
> 
> Signed-off-by: Alexander Aring <alex.aring@gmail.com>
> ---
>  include/common.h    | 5 +++++
>  lib/show_progress.c | 2 +-
>  2 files changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/include/common.h b/include/common.h
> index c1f44b4..ffdfcd9 100644
> --- a/include/common.h
> +++ b/include/common.h
> @@ -256,4 +256,9 @@ static inline void barebox_banner(void) {}
>  		(__x < 0) ? -__x : __x;         \
>  	})
>  
> +/* Convert a number define to
> + * const char* with concat */
> +#define STRINGIFY(x) #x
> +#define TOSTRING(x) STRINGIFY(x)
> +
>  #endif	/* __COMMON_H_ */
> diff --git a/lib/show_progress.c b/lib/show_progress.c
> index d958a44..eca7e1e 100644
> --- a/lib/show_progress.c
> +++ b/lib/show_progress.c
> @@ -56,7 +56,7 @@ void init_progression_bar(int max)
>  	progress_max = max;
>  	spin = 0;
>  	if (progress_max)
> -		printf("\t[%65s]\r\t[", "");
> +		printf("\t[%"TOSTRING(HASHES_PER_LINE)"s]\r\t[", "");
no we have __stringify

Best Regards,
J.
>  	else
>  		printf("\t");
>  }
> -- 
> 1.7.12.4
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
