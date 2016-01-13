Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aJNgy-0005Eb-Ki
 for barebox@lists.infradead.org; Wed, 13 Jan 2016 15:50:37 +0000
Date: Wed, 13 Jan 2016 16:50:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160113155013.GY13058@pengutronix.de>
References: <1452593799-21408-1-git-send-email-yegorslists@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1452593799-21408-1-git-send-email-yegorslists@googlemail.com>
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
Subject: Re: [PATCH v2 1/2] of: rework of_node_cmp() to support short and
 full node names
To: yegorslists@googlemail.com
Cc: barebox@lists.infradead.org, tpiepho@kymetacorp.com

Hi Yegor,

On Tue, Jan 12, 2016 at 11:16:38AM +0100, yegorslists@googlemail.com wrote:
> + * Compare node names using the length of the node in question
> + * and then check, if the in-tree node has '@' as next character.
> + * This way both short names like 'name' and full like 'name@1' will
> + * be accepted.
> + */
> +int of_node_cmp(const char *s1, const char *s2)
> +{
> +	int len = strlen(s2);
> +
> +	if (strncasecmp(s1, s2, len) != 0)
> +		return 1;
> +
> +	if (s1[len] == '\0')
> +		return 0;
> +	else if (!memchr(s2, '@', len) && (s1[len] == '@'))
> +		return 0;
> +	else
> +		return 1;
> +}
> +
> +/*
>   * Iterate over all nodes of a tree. As a devicetree does not
>   * have a dedicated list head, the start node (usually the root
>   * node) will not be iterated over.
> diff --git a/include/of.h b/include/of.h
> index 75cc3c1..3b18eef 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -10,7 +10,6 @@
>  /* Default string compare functions */
>  #define of_compat_cmp(s1, s2, l)	strcasecmp((s1), (s2))
>  #define of_prop_cmp(s1, s2)		strcmp((s1), (s2))
> -#define of_node_cmp(s1, s2)		strcasecmp((s1), (s2))

of_node_cmp is used elsewhere and a direct copy from the Kernel. You
should introduce a new function for your purpose instead of modifying
it.

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
