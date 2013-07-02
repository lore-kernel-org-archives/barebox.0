Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x231.google.com ([2607:f8b0:400e:c03::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uu5Y7-0006LN-0c
 for barebox@lists.infradead.org; Tue, 02 Jul 2013 18:43:35 +0000
Received: by mail-pa0-f49.google.com with SMTP id ld11so6554737pab.36
 for <barebox@lists.infradead.org>; Tue, 02 Jul 2013 11:43:13 -0700 (PDT)
Message-ID: <51D31D55.8000302@gmail.com>
Date: Wed, 03 Jul 2013 03:35:01 +0900
From: NISHIMOTO Hiroki <hiroki.nishimoto.if@gmail.com>
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
Subject: Re: [PATCH 11/22] OF: base: import of_find_matching_node_and_match
 from Linux OF API
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, barebox@lists.infradead.org

Hi,

on master/next branch,

of_find_matching_node_and_match macro can make infinite loop.

This is because, of_tree_for_each_node traverse all nodes each time.
But a callee of of_find_matching_node_and_match,
such as for_each_matching_node, calls it by changing "from" arg.
So if "matches" have two or more nodes, previously matched node can be re-matched.

Below change can fix the issue.
Or is it better to port node->allnext from linux kernel?

Signed-off-by: NISHIMOTO Hiroki <hiroki.nishimoto.if@gmail.com>
---
 drivers/of/base.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 63ff647..36774de 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -36,6 +36,9 @@
 #define of_tree_for_each_node(node, root) \
 	list_for_each_entry(node, &root->list, list)
 
+#define of_get_next_node(np) \
+	list_first_entry(&np->list, typeof(*np), list)
+
 /**
  * struct alias_prop - Alias property in 'aliases' node
  * @link:	List node to link the structure in aliases_lookup list
@@ -444,17 +447,20 @@ struct device_node *of_find_matching_node_and_match(struct device_node *from,
 	if (match)
 		*match = NULL;
 
-	if (!from)
-		from = root_node;
+	np = from ? of_get_next_node(from) : root_node;
 
-	of_tree_for_each_node(np, from) {
+	if (from != NULL && np == root_node)
+		return NULL;
+
+	do {
 		const struct of_device_id *m = of_match_node(matches, np);
 		if (m) {
 			if (match)
 				*match = m;
 			return np;
 		}
-	}
+		np = of_get_next_node(np);
+	} while (np != root_node);
 
 	return NULL;
 }
-- 
1.8.1.2


> This imports of_find_matching_node_and_match and corresponding helpers
> from Linux OF API.
> 
> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@xxxxxxxxx>
> ---
> Cc: barebox@xxxxxxxxxxxxxxxxxxx
> ---
>  drivers/of/base.c |   37 +++++++++++++++++++++++++++++++++++++
>  include/of.h      |   24 ++++++++++++++++++++++++
>  2 files changed, 61 insertions(+), 0 deletions(-)
> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 50a3c22..218cb5a 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -389,6 +389,43 @@ const struct of_device_id *of_match_node(const struct of_device_id *matches,
>  	return NULL;
>  }
>  
> +/**
> + *	of_find_matching_node_and_match - Find a node based on an of_device_id
> + *					  match table.
> + *	@from:		The node to start searching from or NULL, the node
> + *			you pass will not be searched, only the next one
> + *			will; typically, you pass what the previous call
> + *			returned.
> + *	@matches:	array of of device match structures to search in
> + *	@match		Updated to point at the matches entry which matched
> + *
> + *	Returns a pointer to the node found or NULL.
> + */
> +struct device_node *of_find_matching_node_and_match(struct device_node *from,
> +					const struct of_device_id *matches,
> +					const struct of_device_id **match)
> +{
> +	struct device_node *np;
> +
> +	if (match)
> +		*match = NULL;
> +
> +	if (!from)
> +		from = root_node;
> +
> +	of_tree_for_each_node(np, from) {
> +		const struct of_device_id *m = of_match_node(matches, np);
> +		if (m) {
> +			if (match)
> +				*match = m;
> +			return np;
> +		}
> +	}
> +
> +	return NULL;
> +}
> +EXPORT_SYMBOL(of_find_matching_node_and_match);
> +
>  int of_match(struct device_d *dev, struct driver_d *drv)
>  {
>  	const struct of_device_id *id;
> diff --git a/include/of.h b/include/of.h
> index e170e2b..c21e73d 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -187,6 +187,10 @@ extern struct device_node *of_find_node_by_name(struct device_node *from,
>  extern struct device_node *of_find_node_by_path(const char *path);
>  extern struct device_node *of_find_compatible_node(struct device_node *from,
>  	const char *type, const char *compat);
> +extern struct device_node *of_find_matching_node_and_match(
> +	struct device_node *from,
> +	const struct of_device_id *matches,
> +	const struct of_device_id **match);
>  extern int of_device_is_available(const struct device_node *device);
>  
>  extern void of_alias_scan(void);
> @@ -259,6 +263,14 @@ static inline struct device_node *of_find_compatible_node(
>  	return NULL;
>  }
>  
> +static inline struct device_node *of_find_matching_node_and_match(
> +					struct device_node *from,
> +					const struct of_device_id *matches,
> +					const struct of_device_id **match)
> +{
> +	return NULL;
> +}
> +
>  static inline int of_device_is_available(const struct device_node *device)
>  {
>  	return 0;
> @@ -285,5 +297,17 @@ static inline const char *of_alias_get(struct device_node *np)
>  #define for_each_compatible_node(dn, type, compatible) \
>  	for (dn = of_find_compatible_node(NULL, type, compatible); dn; \
>  	     dn = of_find_compatible_node(dn, type, compatible))
> +static inline struct device_node *of_find_matching_node(
> +	struct device_node *from,
> +	const struct of_device_id *matches)
> +{
> +	return of_find_matching_node_and_match(from, matches, NULL);
> +}
> +#define for_each_matching_node(dn, matches) \
> +	for (dn = of_find_matching_node(NULL, matches); dn; \
> +	     dn = of_find_matching_node(dn, matches))
> +#define for_each_matching_node_and_match(dn, matches, match) \
> +	for (dn = of_find_matching_node_and_match(NULL, matches, match); \
> +	     dn; dn = of_find_matching_node_and_match(dn, matches, match))
>  
>  #endif /* __OF_H */
> -- 
> 1.7.2.5



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
