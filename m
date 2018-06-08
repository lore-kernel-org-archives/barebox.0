Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fRBT7-000431-7y
 for barebox@lists.infradead.org; Fri, 08 Jun 2018 07:06:01 +0000
Date: Fri, 8 Jun 2018 09:05:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180608070540.m6etfu37vu6s64ic@pengutronix.de>
References: <20180607174011.13130-1-pvizeli@syshack.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180607174011.13130-1-pvizeli@syshack.ch>
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
Subject: Re: [PATCH 1/1] drivers: of: bugfix partition fixups
To: Pascal Vizeli <pvizeli@syshack.ch>
Cc: barebox@lists.infradead.org

On Thu, Jun 07, 2018 at 05:40:11PM +0000, Pascal Vizeli wrote:
> If we load a new device tree for linux kernel with a diferent layout,
> the fixup of partition going into endless loop. Exactly the of_find_property
> function will never come back on a invalid device_node.

of_find_property is not called directly from the code you are changing,
so how excatly is the code path that fails?

> 
> My patch check, if the device will exists on device tree before we run the
> fixup.
> 
> Signed-off-by: Pascal Vizeli <pvizeli@syshack.ch>
> ---
>  drivers/of/partition.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/of/partition.c b/drivers/of/partition.c
> index aa6e601b7..17e420964 100644
> --- a/drivers/of/partition.c
> +++ b/drivers/of/partition.c
> @@ -140,6 +140,9 @@ static int of_partition_fixup(struct device_node *root, void *ctx)
>  	if (!cdev->device_node)
>  		return -EINVAL;
>  
> +	if (!of_find_node_by_path(cdev->device_node->full_name))
> +		return -EINVAL;
> +

What are you doing to get into this situation? This test should never
fail or else we are in trouble. Is there some "oftree -f" command
involved? I should really remove this command since in a device tree
based system there are always references to device nodes which are not
expected to become invalid.

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
