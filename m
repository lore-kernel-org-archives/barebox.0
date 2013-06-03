Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UjP9u-0007W6-LZ
 for barebox@lists.infradead.org; Mon, 03 Jun 2013 07:26:27 +0000
Date: Mon, 3 Jun 2013 09:26:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130603072604.GX32299@pengutronix.de>
References: <1370184829-66576-1-git-send-email-monaka@monami-ya.com>
 <1370184829-66576-2-git-send-email-monaka@monami-ya.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1370184829-66576-2-git-send-email-monaka@monami-ya.com>
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

On Sun, Jun 02, 2013 at 11:53:48PM +0900, Masaki Muranaka wrote:
>  Some functions should be defined in stdlib.h or unistd.h.
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

Wouldn't it be nicer to move the prototypes to unistd.h / stdlib.h
instead of adding new files?

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
