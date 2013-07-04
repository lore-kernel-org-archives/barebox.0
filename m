Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x229.google.com ([2a00:1450:4013:c01::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uun5B-00060y-QZ
 for barebox@lists.infradead.org; Thu, 04 Jul 2013 17:12:38 +0000
Received: by mail-ea0-f169.google.com with SMTP id h15so932520eak.0
 for <barebox@lists.infradead.org>; Thu, 04 Jul 2013 10:12:14 -0700 (PDT)
Message-ID: <51D5ACEA.4070809@gmail.com>
Date: Thu, 04 Jul 2013 19:12:10 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
References: <1372891578-1871-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1372891578-1871-2-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130704065853.GS516@pengutronix.de>
In-Reply-To: <20130704065853.GS516@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/3] OF: base: fix infinite loop in of_find_node_by_name
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 07/04/13 08:58, Sascha Hauer wrote:
> On Thu, Jul 04, 2013 at 12:46:16AM +0200, Sebastian Hesselbarth wrote:
>> of_find_node_by_name suffers from infinite looping, because it
>> does not check for root node of the tree iterated over. This adds a
>> check for parent pointer of last tested iterator entry, which is
>> NULL for the root node.
>>
>
> How about the following which adds the check to the iterator instead of
> repeating it in the users.

Sascha,

I have taken your patch and successfully tested it for all node
iterators. of_for_each_node_with_property requires an additional patch
to initialize an empty from node with root_node.

Also, there was a similar issue for the child iterator where I sent a
patch ("OF: base: fix iterator in of_get_next_available_child") tonight.

If you have no objections against that last patch, I will prepare one
single patch set with v2 out of the three patches mentioned above.

Sebastian

> 8<---------------------------------------------------------------
>
>  From 3f361661e5446b0592f137a50efc4b275f426b41 Mon Sep 17 00:00:00 2001
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Date: Thu, 4 Jul 2013 08:52:10 +0200
> Subject: [PATCH] OF: base: fix inifinite looping in node iterators
>
> of_find_node_by_name suffers from infinite looping, because it
> does not check for root node of the tree iterated over. This
> fixes this by checking for node->parent to determine whether
> the last node has been reached.
> Since of_tree_for_each_node does not iterate over the whole tree,
> but only over the remaining nodes, rename it to
> of_tree_for_each_node_from.
>
> Reported-by: NISHIMOTO Hiroki <hiroki.nishimoto.if@gmail.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>   drivers/of/base.c | 21 +++++++++++++++------
>   1 file changed, 15 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 63ff647..74d4748 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -33,8 +33,17 @@
>    * have a dedicated list head, the start node (usually the root
>    * node) will not be iterated over.
>    */
> -#define of_tree_for_each_node(node, root) \
> -	list_for_each_entry(node, &root->list, list)
> +static inline struct device_node *of_next_node(struct device_node *node)
> +{
> +	struct device_node *next;
> +
> +	next = list_first_entry(&node->list, struct device_node, list);
> +
> +	return next->parent ? next : NULL;
> +}
> +
> +#define of_tree_for_each_node_from(node, from) \
> +	for (node = of_next_node(from); node; node = of_next_node(node))
>
>   /**
>    * struct alias_prop - Alias property in 'aliases' node
> @@ -337,7 +346,7 @@ struct device_node *of_find_node_by_name(struct device_node *from,
>   	if (!from)
>   		from = root_node;
>
> -	of_tree_for_each_node(np, from)
> +	of_tree_for_each_node_from(np, from)
>   		if (np->name && !of_node_cmp(np->name, name))
>   			return np;
>
> @@ -367,7 +376,7 @@ struct device_node *of_find_compatible_node(struct device_node *from,
>   	if (!from)
>   		from = root_node;
>
> -	of_tree_for_each_node(np, from)
> +	of_tree_for_each_node_from(np, from)
>   		if (of_device_is_compatible(np, compatible))
>   			return np;
>
> @@ -391,7 +400,7 @@ struct device_node *of_find_node_with_property(struct device_node *from,
>   {
>   	struct device_node *np;
>
> -	of_tree_for_each_node(np, from) {
> +	of_tree_for_each_node_from(np, from) {
>   		struct property *pp = of_find_property(np, prop_name, NULL);
>   		if (pp)
>   			return np;
> @@ -447,7 +456,7 @@ struct device_node *of_find_matching_node_and_match(struct device_node *from,
>   	if (!from)
>   		from = root_node;
>
> -	of_tree_for_each_node(np, from) {
> +	of_tree_for_each_node_from(np, from) {
>   		const struct of_device_id *m = of_match_node(matches, np);
>   		if (m) {
>   			if (match)
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
