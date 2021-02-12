Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lAVUm-0000MO-69
 for barebox@lists.infradead.org; Fri, 12 Feb 2021 10:16:16 +0000
Date: Fri, 12 Feb 2021 11:16:13 +0100
Message-ID: <20210212101613.GL19583@pengutronix.de>
References: <20210210142704.1855761-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210210142704.1855761-1-enrico.scholz@sigma-chemnitz.de>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH] dt:overlay: fix operation with multiple overlays
To: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Cc: barebox@lists.infradead.org


Hi Enrico,

On Wed, Feb 10, 2021 at 03:27:02PM +0100, Enrico Scholz wrote:
> When applying multiple devicetree overlays the 'phandle' attribute
> must be updated too.  Else, every overlay will be adjusted to start
> with the same base which causes duplicate phandles.
> 
> Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
> ---
>  drivers/of/base.c    | 1 +
>  drivers/of/overlay.c | 4 +++-
>  2 files changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index edb0a8e71a0f..c88803d8ab4b 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -2385,6 +2385,7 @@ struct device_node *of_copy_node(struct device_node *parent, const struct device
>  	struct property *pp;
>  
>  	np = of_new_node(parent, other->name);
> +	np->phandle = other->phandle;

I can see why we have to do this for overlays. Without this all phandle
values from the overlay are lost.
I think however, that just copying the phandle values is wrong at least
in some cases of_copy_node() is used. When of_copy_node() is called with
a non NULL parent argument it duplicates the tree given in 'other' and
puts it below 'parent'. In that case we can't just copy the phandle
values as we would risk having duplicate phandle values in the parent
tree.

Maybe we can split of_copy_node() into two functions. One

struct device_node *of_duplicate(struct device_node *np);

this function can copy the phandle values without risk. The other
function

int of_attach(struct device_node *np, struct device_node *to);

would just make np a child node of 'to' and makes sure that phandle
values do not overlap.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
