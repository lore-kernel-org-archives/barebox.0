Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOFKn-0005G0-Kn
 for barebox@lists.infradead.org; Tue, 14 Apr 2020 06:46:15 +0000
Date: Tue, 14 Apr 2020 08:46:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200414064609.GV27288@pengutronix.de>
References: <20200413075204.17544-1-a.fatoum@pengutronix.de>
 <20200413075204.17544-8-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200413075204.17544-8-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 07/21] of: port Linux of_get_compatible_child helper
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Apr 13, 2020 at 09:51:50AM +0200, Ahmad Fatoum wrote:
> Incoming Linux code port makes use of the helper. Add it now instead of
> having to open-code it later.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/of/base.c | 25 +++++++++++++++++++++++++
>  include/of.h      |  8 ++++++++
>  2 files changed, 33 insertions(+)
> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 346d72e1e09e..5a0374a82c5c 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -1712,6 +1712,31 @@ int of_get_available_child_count(const struct device_node *parent)
>  }
>  EXPORT_SYMBOL(of_get_available_child_count);
>  
> +/**
> + * of_get_compatible_child - Find compatible child node
> + * @parent:	parent node
> + * @compatible:	compatible string
> + *
> + * Lookup child node whose compatible property contains the given compatible
> + * string.
> + *
> + * Returns a node pointer with refcount incremented, use of_node_put() on it
> + * when done; or NULL if not found.
> + */
> +struct device_node *of_get_compatible_child(const struct device_node *parent,
> +				const char *compatible)
> +{
> +	struct device_node *child;
> +
> +	for_each_child_of_node(parent, child) {
> +		if (of_device_is_compatible(child, compatible))
> +			break;
> +	}

for_each_child_of_node() goes down to list_for_each_entry(). On an empty
list child will point to the list head after leaving the loop. Return
child explicitly when it's compatible and NULL when leaving the loop
which is better readable as well.

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
