Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Up2MA-00025i-67
 for barebox@lists.infradead.org; Tue, 18 Jun 2013 20:18:22 +0000
Date: Tue, 18 Jun 2013 22:18:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130618201800.GB32299@pengutronix.de>
References: <1371576607-8090-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1371576607-8090-14-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1371576607-8090-14-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH 13/22] OF: base: import parent/child functions from Linux
 OF API
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jun 18, 2013 at 07:29:58PM +0200, Sebastian Hesselbarth wrote:
> This imports of_get_parent, of_get_next_child, of_get_next_available_child,
> and of_get_child_by_name and corresponding helpers from Linux OF API.
> 
> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> ---
> Cc: barebox@lists.infradead.org
> ---
>  drivers/of/base.c |   78 +++++++++++++++++++++++++++++++++++++++++++++++++++++
>  include/of.h      |   49 +++++++++++++++++++++++++++++++++
>  2 files changed, 127 insertions(+), 0 deletions(-)
> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 148f832..17364ea 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -862,6 +862,84 @@ int of_device_is_available(const struct device_node *device)
>  }
>  EXPORT_SYMBOL(of_device_is_available);
>  
> +/**
> + *	of_get_parent - Get a node's parent if any
> + *	@node:	Node to get parent
> + *
> + *	Returns a pointer to the parent node or NULL if already at root.
> + */
> +struct device_node *of_get_parent(const struct device_node *node)
> +{
> +	if (!node)
> +		return NULL;
> +
> +	return (node == root_node) ? NULL : node->parent;

parent should be NULL for the root_node, so it should be safe to remove
this additional check. This is also in the sense of making multiple
devicetrees possible.

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
