Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x232.google.com ([2a00:1450:4013:c01::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuUNj-0000Nw-MB
 for barebox@lists.infradead.org; Wed, 03 Jul 2013 21:14:32 +0000
Received: by mail-ea0-f178.google.com with SMTP id l15so349582eak.37
 for <barebox@lists.infradead.org>; Wed, 03 Jul 2013 14:14:09 -0700 (PDT)
Message-ID: <51D4941D.9020303@gmail.com>
Date: Wed, 03 Jul 2013 23:14:05 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
References: <51D31D55.8000302@gmail.com>
In-Reply-To: <51D31D55.8000302@gmail.com>
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
Subject: Re: [PATCH 11/22] OF: base: import of_find_matching_node_and_match
 from Linux OF API
To: NISHIMOTO Hiroki <hiroki.nishimoto.if@gmail.com>
Cc: barebox@lists.infradead.org

On 07/02/2013 08:35 PM, NISHIMOTO Hiroki wrote:
> on master/next branch,
>
> of_find_matching_node_and_match macro can make infinite loop.

Hiroki,

I confirmed that infinite loop but there are more functions
that suffer from this infinite loop.

> This is because, of_tree_for_each_node traverse all nodes each time.
> But a callee of of_find_matching_node_and_match,
> such as for_each_matching_node, calls it by changing "from" arg.
> So if "matches" have two or more nodes, previously matched node can be re-matched.
>
> Below change can fix the issue.

@Sascha: please confirm the below. It is what I understand from your
last comments about OF API improvements.

Actually, root_node is only the list head for the currently active
device tree. There can be other device trees you want to use the
of_for_each_.. on, so we need to find another way to check for the
list head of the tree the "from" node is in.

 From what I can see from linux linked lists API, there is no safe
way to determine the start of a linked list without knowing what
has been the first list node in the first place.

Sascha knows barebox struct device_node lists for sure, maybe he
can point us to the best way to solve this?

Sebastian

> Or is it better to port node->allnext from linux kernel?
>
> Signed-off-by: NISHIMOTO Hiroki<hiroki.nishimoto.if@gmail.com>
> ---
>   drivers/of/base.c | 14 ++++++++++----
>   1 file changed, 10 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 63ff647..36774de 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -36,6 +36,9 @@
>   #define of_tree_for_each_node(node, root) \
>   	list_for_each_entry(node,&root->list, list)
>
> +#define of_get_next_node(np) \
> +	list_first_entry(&np->list, typeof(*np), list)
> +
>   /**
>    * struct alias_prop - Alias property in 'aliases' node
>    * @link:	List node to link the structure in aliases_lookup list
> @@ -444,17 +447,20 @@ struct device_node *of_find_matching_node_and_match(struct device_node *from,
>   	if (match)
>   		*match = NULL;
>
> -	if (!from)
> -		from = root_node;
> +	np = from ? of_get_next_node(from) : root_node;
>
> -	of_tree_for_each_node(np, from) {
> +	if (from != NULL&&  np == root_node)
> +		return NULL;
> +
> +	do {
>   		const struct of_device_id *m = of_match_node(matches, np);
>   		if (m) {
>   			if (match)
>   				*match = m;
>   			return np;
>   		}
> -	}
> +		np = of_get_next_node(np);
> +	} while (np != root_node);
>
>   	return NULL;
>   }


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
