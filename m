Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uk7Mj-0006nG-59
 for barebox@lists.infradead.org; Wed, 05 Jun 2013 06:38:38 +0000
Date: Wed, 5 Jun 2013 08:38:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130605063815.GM32299@pengutronix.de>
References: <1370349512-75630-1-git-send-email-monaka@monami-ya.jp>
 <1370349512-75630-2-git-send-email-monaka@monami-ya.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1370349512-75630-2-git-send-email-monaka@monami-ya.jp>
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
Subject: Re: [PATCH 2/3] Refactor malloc.h.
To: Masaki Muranaka <monaka@monami-ya.jp>
Cc: barebox@lists.infradead.org

On Tue, Jun 04, 2013 at 09:38:31PM +0900, Masaki Muranaka wrote:
> From: Masaki Muranaka <monaka@monami-ya.com>
> 
>  Some functions should be defined in stdlib.h or unistd.h.
> 
> Signed-off-by: Masaki Muranaka <monaka@monami-ya.jp>
> ---
>  include/malloc.h       |  8 +++-----
>  include/malloc_isoc.h  | 11 +++++++++++
>  include/malloc_posix.h |  8 ++++++++
>  include/stdlib.h       |  1 +
>  include/unistd.h       |  6 ++++++
>  5 files changed, 29 insertions(+), 5 deletions(-)
>  create mode 100644 include/malloc_isoc.h
>  create mode 100644 include/malloc_posix.h
>  create mode 100644 include/unistd.h
> 
> diff --git a/include/malloc.h b/include/malloc.h
> index 7b9b062..9554597 100644
> --- a/include/malloc.h
> +++ b/include/malloc.h
> @@ -5,20 +5,18 @@
>  
>  /* Public routines */
>  
> -void* malloc(size_t);
> -void free(void*);
> -void* realloc(void*, size_t);
> +#include <malloc_isoc.h>
> +#include <malloc_posix.h>
> +
>  void* memalign(size_t, size_t);
>  void* vallocc(size_t);
>  void* pvalloc(size_t);
> -void* calloc(size_t, size_t);
>  void cfree(void*);
>  int malloc_trim(size_t);
>  size_t malloc_usable_size(void*);
>  void malloc_stats(void);
>  int mallopt(int, int);
>  struct mallinfo mallinfo(void);
> -void *sbrk(ptrdiff_t increment);
>  
>  #endif
>  
> diff --git a/include/malloc_isoc.h b/include/malloc_isoc.h
> new file mode 100644
> index 0000000..728cdd9
> --- /dev/null
> +++ b/include/malloc_isoc.h
> @@ -0,0 +1,11 @@
> +#ifndef BAREBOX_MALLOC_ISOC_H__
> +#define BAREBOX_MALLOC_ISOC_H__
> +
> +#include <types.h>
> +
> +void* malloc(size_t);
> +void free(void*);
> +void* realloc(void*, size_t);
> +void* calloc(size_t, size_t);
> +
> +#endif /* BAREBOX_MALLOC_ISOC_H__ */

I think you can just add these to stdlib.h...

> diff --git a/include/malloc_posix.h b/include/malloc_posix.h
> new file mode 100644
> index 0000000..d10675d
> --- /dev/null
> +++ b/include/malloc_posix.h
> @@ -0,0 +1,8 @@
> +#ifndef BAREBOX_MALLOC_POSIX_H__
> +#define BAREBOX_MALLOC_POSIX_H__
> +
> +#include <types.h>
> +
> +void *sbrk(ptrdiff_t increment);
> +
> +#endif /* BAREBOX_MALLOC_POSIX_H__ */

...and this to unistd.h without introducing extra files.

You're right that in barebox it's often not clear whether some code
belongs to 'kernel' or 'userspace', but in the end it doesn't make
much difference. It's good to have standard functions in their
standard include/ locations.

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
