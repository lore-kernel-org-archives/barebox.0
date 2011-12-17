Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RbvP5-0003Ex-Q0
 for barebox@lists.infradead.org; Sat, 17 Dec 2011 14:38:24 +0000
Date: Sat, 17 Dec 2011 15:38:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111217143816.GZ27267@pengutronix.de>
References: <1323940985-16895-1-git-send-email-a.aring@phytec.de>
 <1323940985-16895-2-git-send-email-a.aring@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1323940985-16895-2-git-send-email-a.aring@phytec.de>
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
Subject: Re: [PATCH 1/3] stringlist-functions: add sorted insert
To: Alexander Aring <a.aring@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Dec 15, 2011 at 10:23:03AM +0100, Alexander Aring wrote:
> Add sorted insert in stringlist functions.
> Also added function to checked if string is already
> in string list.
> 
> Signed-off-by: Alexander Aring <a.aring@phytec.de>
> ---
>  include/stringlist.h |    2 ++
>  lib/stringlist.c     |   40 ++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 42 insertions(+), 0 deletions(-)
> 
> diff --git a/include/stringlist.h b/include/stringlist.h
> index 3453e9a..c923542 100644
> --- a/include/stringlist.h
> +++ b/include/stringlist.h
> @@ -9,6 +9,8 @@ struct string_list {
>  };
>  
>  int string_list_add(struct string_list *sl, char *str);
> +int string_list_add_sorted(struct string_list *sl, char *str);
> +int string_list_contains(struct string_list *sl, char *str);
>  void string_list_print_by_column(struct string_list *sl);
>  
>  static inline void string_list_init(struct string_list *sl)
> diff --git a/lib/stringlist.c b/lib/stringlist.c
> index 9ccf8fa..65c0117 100644
> --- a/lib/stringlist.c
> +++ b/lib/stringlist.c
> @@ -3,6 +3,21 @@
>  #include <malloc.h>
>  #include <stringlist.h>
>  
> +static int string_list_compare(struct list_head *a, struct list_head *b)
> +{
> +	int result = 0;
> +	char *astr, *bstr;
> +	astr = ((struct string_list *)(a))->str;
> +	bstr = ((struct string_list *)(b))->str;

Please do not cast to pointers of different types directly. Use
container_of or list_entry.

> +
> +	result = strcmp(astr, bstr);
> +
> +	/* Avoid a endless loop because >=0 insert str in list
> +	 * Insert string if strings are equal or is equal,
> +	 * but lengths are not the same */
> +	return result;

I don't understand this comment. Is it valid?

> +}
> +
>  int string_list_add(struct string_list *sl, char *str)
>  {
>  	struct string_list *new;
> @@ -16,6 +31,31 @@ int string_list_add(struct string_list *sl, char *str)
>  	return 0;
>  }
>  
> +int string_list_add_sorted(struct string_list *sl, char *str)
> +{
> +	struct string_list *new;
> +
> +	new = xmalloc(sizeof(struct string_list) + strlen(str) + 1);
> +
> +	strcpy(new->str, str);
> +
> +	list_add_sort(&new->list, &sl->list, string_list_compare);
> +
> +	return 0;
> +}
> +
> +int string_list_contains(struct string_list *sl, char *str)
> +{
> +	struct string_list *entry;
> +
> +	list_for_each_entry(entry, &sl->list, list) {
> +		if (!strcmp(str, entry->str))
> +			return 1;
> +	}
> +
> +	return 0;
> +}
> +
>  void string_list_print_by_column(struct string_list *sl)
>  {
>  	int len = 0, num, i;
> -- 
> 1.7.0.4
> 
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
