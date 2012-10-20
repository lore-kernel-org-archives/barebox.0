Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo5.mail-out.ovh.net ([87.98.174.144]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TPXyK-0001cH-Rt
 for barebox@lists.infradead.org; Sat, 20 Oct 2012 12:16:09 +0000
Received: from mail624.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 74752FF937B
 for <barebox@lists.infradead.org>; Sat, 20 Oct 2012 14:22:55 +0200 (CEST)
Date: Sat, 20 Oct 2012 14:13:51 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121020121351.GD21588@game.jcrosoft.org>
References: <1350731704-17204-1-git-send-email-alex.aring@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1350731704-17204-1-git-send-email-alex.aring@gmail.com>
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
Subject: Re: [PATCH] progressbar: use __stringify in format string
To: Alexander Aring <alex.aring@googlemail.com>
Cc: barebox@lists.infradead.org

On 13:15 Sat 20 Oct     , Alexander Aring wrote:
> Use stringify in format string for HASH_PER_LINE.
> 
> Signed-off-by: Alexander Aring <alex.aring@gmail.com>
> ---
>  lib/show_progress.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/lib/show_progress.c b/lib/show_progress.c
> index d958a44..a43b4c9 100644
> --- a/lib/show_progress.c
> +++ b/lib/show_progress.c
> @@ -20,6 +20,7 @@
>  #include <common.h>
>  #include <progress.h>
>  #include <asm-generic/div64.h>
> +#include <linux/stringify.h>
>  
>  #define HASHES_PER_LINE	65
>  
> @@ -56,7 +57,9 @@ void init_progression_bar(int max)
>  	progress_max = max;
>  	spin = 0;
>  	if (progress_max)
> -		printf("\t[%65s]\r\t[", "");
> +		printf("\t[%"
> +				__stringify(HASHES_PER_LINE)
> +				"s]\r\t[", "");
online is more readable

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
