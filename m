Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9ldE-0002sO-MC
 for barebox@lists.infradead.org; Wed, 10 Feb 2021 09:17:57 +0000
Date: Wed, 10 Feb 2021 10:17:54 +0100
Message-ID: <20210210091754.GR19583@pengutronix.de>
References: <20210209134936.2551-1-scaglia@amelchem.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210209134936.2551-1-scaglia@amelchem.com>
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
Subject: Re: [PATCH] of: partitions: fix NULL pointer dereference in
 of_partition_fixup()
To: Edoardo Scaglia <scaglia@amelchem.com>
Cc: barebox@lists.infradead.org

On Tue, Feb 09, 2021 at 02:49:36PM +0100, Edoardo Scaglia wrote:
> When barebox 'internal devicetree' is not used and your board
> registers a device that in turn registers a of_partition_fixup() (such
> as at24 EEPROM), running the bootm command crashes barebox with a NULL
> pointer dereference.
> 
> The error occurs when barebox applies Linux DTB fixups, specifically
> in following lines of_partition_fixup():
> 
>     name = of_get_reproducible_name(cdev->device_node);
>     np = of_find_node_by_reproducible_name(root, name);
> 
> since internal devicetree is not used cdev->device_node is NULL thus
> of_get_reproducibile_name() returns NULL then NULL is passed as lookup
> string to of_find_node_by_reproducible_name() which crashes trying to
> dereference NULL pointer.
> 
> The culprit is commit fa9179444c36f9daf5010215cf8e4dcb3bd1ffb2.
> Previously of_partition_fixup() returned -EINVAL when
> cdev->device_node was NULL, apparently that check was lost along the
> road.
> 
> Signed-off-by: Edoardo Scaglia <scaglia@amelchem.com>
> ---
>  drivers/of/partition.c | 3 +++
>  1 file changed, 3 insertions(+)

Applied to master, thanks

Sascha

> 
> diff --git a/drivers/of/partition.c b/drivers/of/partition.c
> index 65c24c5426..b71716218b 100644
> --- a/drivers/of/partition.c
> +++ b/drivers/of/partition.c
> @@ -235,6 +235,9 @@ static int of_partition_fixup(struct device_node *root, void *ctx)
>  	struct device_node *np;
>  	char *name;
>  
> +	if (!cdev->device_node)
> +		return -EINVAL;
> +
>  	name = of_get_reproducible_name(cdev->device_node);
>  	np = of_find_node_by_reproducible_name(root, name);
>  	free(name);
> -- 
> 2.30.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
