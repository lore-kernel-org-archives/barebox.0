Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kOCOk-0008Uo-Kq
 for barebox@lists.infradead.org; Fri, 02 Oct 2020 04:10:23 +0000
Date: Fri, 2 Oct 2020 06:10:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201002041020.GO11648@pengutronix.de>
References: <20200930125303.14933-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200930125303.14933-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 1/4] include: string: migrate barebox function from
 <linux/string.h>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Sep 30, 2020 at 02:53:00PM +0200, Ahmad Fatoum wrote:
> <linux/string.h> was imported from Linux. In order to keep changes
> to a minimum, add prototypes for new barebox functions to <string.h>
> instead.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/linux/string.h | 1 -
>  include/string.h       | 1 +
>  2 files changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/include/linux/string.h b/include/linux/string.h
> index 2b699957e824..85c3eb1de340 100644
> --- a/include/linux/string.h
> +++ b/include/linux/string.h
> @@ -10,7 +10,6 @@ extern "C" {
>  
>  extern char * strpbrk(const char *,const char *);
>  extern char * strsep(char **,const char *);
> -extern char * strsep_unescaped(char **,const char *);
>  extern __kernel_size_t strspn(const char *,const char *);
>  
>  
> diff --git a/include/string.h b/include/string.h
> index 727bc51934bc..063e85f62cf8 100644
> --- a/include/string.h
> +++ b/include/string.h
> @@ -5,6 +5,7 @@
>  #include <linux/string.h>
>  
>  int strtobool(const char *str, int *val);
> +char *strsep_unescaped(char **, const char *);
>  
>  void *__default_memset(void *, int, __kernel_size_t);
>  void *__nokasan_default_memset(void *, int, __kernel_size_t);
> -- 
> 2.28.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
