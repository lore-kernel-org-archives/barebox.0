Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f54.google.com ([74.125.83.54])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCU6p-0006jW-MW
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 12:03:20 +0000
Received: by mail-ee0-f54.google.com with SMTP id c41so3752806eek.27
 for <barebox@lists.infradead.org>; Mon, 04 Mar 2013 04:00:49 -0800 (PST)
Date: Mon, 4 Mar 2013 13:01:56 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20130304120121.GA852@x61s.8.8.8.8>
References: <1362390820-10333-1-git-send-email-s.hauer@pengutronix.de>
 <1362390820-10333-14-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362390820-10333-14-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 13/37] of: Add initrd helper
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On Mon, Mar 04, 2013 at 10:53:16AM +0100, Sascha Hauer wrote:
> Add a helper to set the initrd properties in the unflattened tree.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/of/base.c |   39 +++++++++++++++++++++++++++++++++++++++
>  include/of.h      |    3 +++
>  2 files changed, 42 insertions(+)
> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 721db29..4dbe11e 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -1201,3 +1201,42 @@ int of_device_is_stdout_path(struct device_d *dev)
>  
>  	return 0;
>  }
> +
> +/**
> + * of_add_initrd - add initrd properties to the devicetree
> + * @root - the root node of the tree
> + * @start - physical start address of the initrd image
> + * @end - physical end address of the initrd image
> + *
> + * Add initrd properties to the devicetree, or, if end is 0,
> + * delete them.
> + */
> +int of_add_initrd(struct device_node *root, resource_size_t start,
> +		resource_size_t end)
> +{
> +	struct device_node *chosen;
> +	__be32 buf[2];
> +
> +	chosen = of_find_node_by_path(root, "/chosen");
> +	if (!chosen)
> +		return -EINVAL;
> +
> +	if (end) {

Perhaps it's better here to check on (start && end) instead of end
address only.

Similar in "[PATCH 35/37] ARM bootm: Switch initrd support to unflattened
tree" at "of_add_reserve_entry(initrd_start, initrd_end);".

Regards
Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
