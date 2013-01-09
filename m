Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TsrFl-00054z-9w
 for barebox@lists.infradead.org; Wed, 09 Jan 2013 08:43:18 +0000
Date: Wed, 9 Jan 2013 09:43:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130109084313.GQ1906@pengutronix.de>
References: <1357658023-31893-1-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1357658023-31893-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH] stringlist: fix cpp macro in header
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jan 08, 2013 at 04:13:43PM +0100, Steffen Trumtrar wrote:
> Both include/string.h and include/stringlist.h define the c preprocessor macro
> __STRING_H. This leads to a compile time error, in case both files are
> (indirectly) included.
> 
> Rename the macro to __STRINGLIST_H in stringlist.h.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Applied, thanks

Sascha

> ---
>  include/stringlist.h |    6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/include/stringlist.h b/include/stringlist.h
> index dd3f623..8738137 100644
> --- a/include/stringlist.h
> +++ b/include/stringlist.h
> @@ -1,5 +1,5 @@
> -#ifndef __STRING_H
> -#define __STRING_H
> +#ifndef __STRINGLIST_H
> +#define __STRINGLIST_H
>  
>  #include <linux/list.h>
>  
> @@ -29,4 +29,4 @@ static inline void string_list_free(struct string_list *sl)
>  	}
>  }
>  
> -#endif /* __STRING_H */
> +#endif /* __STRINGLIST_H */
> -- 
> 1.7.10.4
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
