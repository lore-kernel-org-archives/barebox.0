Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDLmG-0007gW-5W
 for barebox@lists.infradead.org; Wed, 06 Mar 2013 21:21:33 +0000
Date: Wed, 6 Mar 2013 22:21:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130306212129.GN1906@pengutronix.de>
References: <20130306092643.GF4401@game.jcrosoft.org>
 <1362562189-17783-1-git-send-email-plagnioj@jcrosoft.com>
 <1362562189-17783-6-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362562189-17783-6-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 06/20] app: add some utils
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Mar 06, 2013 at 10:29:35AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
>  - getchar_timeout
>  - term (try to detect terminal size, position, ansi helper)
>  - list
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
> diff --git a/apps/include/utils/list.h b/apps/include/utils/list.h
> new file mode 100644
> index 0000000..8a18dae
> --- /dev/null
> +++ b/apps/include/utils/list.h
> @@ -0,0 +1,114 @@
> +/*
> + * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
> + *
> + * Under GPLv2 only
> + *
> + * As a special exception, if other files instantiate templates or use macros
> + * or inline functions from this file, or you compile this file and link it
> + * with other works to produce a work based on this file, this file does not
> + * by itself cause the resulting work to be covered by the GNU General Public
> + * License. However the source code for this file must still be made available
> + * in accordance with section (3) of the GNU General Public License.
> +
> + * This exception does not invalidate any other reasons why a work based on
> + * this file might be covered by the GNU General Public License.
> + */

This looks suspiciously like the Linux list implementation which I think you
haven't written. Also who gives you the right to add this licence
exception to code you do not own?

Sascha

> +
> +#ifndef __UTILS_LIST_H__
> +#define __UTILS_LIST_H__
> +
> +struct list_entry {
> +	struct list_entry *prev;
> +	struct list_entry *next;
> +};
> +
> +struct list {
> +	struct list_entry head;
> +};
> +
> +#define LIST_HEAD_INIT(name) \
> +	{ \
> +		.head = { \
> +			.prev = &(name).head, \
> +			.next = &(name).head \
> +		} \
> +	}
> +
> +#define LIST_HEAD(name) \
> +	struct list name = LIST_HEAD_INIT(name)
> +
> +#define container_of(ptr, type, member) \
> +	((type *) (((void *)(ptr)) - ((void *) &(((type *)0)->member))))
> +
> +#define list_entry(ptr, type, member) \
> +	container_of(ptr, type, member)
> +
> +#define list_first_entry(ptr, type, member) \
> +	list_entry((ptr)->head.next, type, member)
> +
> +#define list_last_entry(head, type, member) \
> +	list_entry((head)->head.prev, type, member)
> +
> +#define list_for_each(pos, list) \
> +	for (pos = (list).head.next; pos != &(list).head; pos = pos->next)
> +
> +#define list_foreach_safe(pos, n, list) \
> +	for (pos = (list).head.next, *n = pos->next; \
> +		pos != &(list).head; pos = n, n = pos->next)
> +
> +#define list_for_each_entry(pos, list, member)				\
> +	for (pos = list_entry((list)->head.next, typeof(*pos), member);	\
> +	      &pos->member != (&(list)->head);				\
> +	     pos = list_entry(pos->member.next, typeof(*pos), member))
> +
> +
> +#define list_for_each_entry_safe(pos, n, list, member)			\
> +	for (pos = list_entry((list)->head.next, typeof(*pos), member),	\
> +		n = list_entry(pos->member.next, typeof(*pos), member);	\
> +	     &pos->member != (&(list)->head);				\
> +	     pos = n, n = list_entry(n->member.next, typeof(*n), member))
> +
> +
> +static inline bool list_empty(struct list *list)
> +{
> +	struct list_entry *head = &list->head;
> +
> +	return head->next == head;
> +}
> +
> +static inline void __list_add(struct list_entry *new,
> +			      struct list_entry *prev,
> +			      struct list_entry *next)
> +{
> +	next->prev = new;
> +	new->next = next;
> +	new->prev = prev;
> +	prev->next = new;
> +}
> +
> +static inline void list_add(struct list_entry *new, struct list *list)
> +{
> +	struct list_entry *head = &list->head;
> +
> +	__list_add(new, head, head->next);
> +}
> +
> +static inline void list_add_tail(struct list_entry *new, struct list *list)
> +{
> +	struct list_entry *head = &list->head;
> +
> +	__list_add(new, head->prev, head);
> +}
> +
> +static inline void list_del(struct list_entry *entry)
> +{
> +	struct list_entry *prev = entry->prev;
> +	struct list_entry *next = entry->next;
> +
> +	next->prev = prev;
> +	prev->next = next;
> +	entry->next = NULL;
> +	entry->prev = NULL;
> +}
> +	
> +#endif /* __UTILS_LIST_H__ */
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
