Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aHFME-0006bD-8G
 for barebox@lists.infradead.org; Thu, 07 Jan 2016 18:32:24 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Thu, 7 Jan 2016 18:31:45 +0000
Message-ID: <1452191516.4474.81.camel@rtred1test09.kymeta.local>
References: <1452166031-9973-1-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1452166031-9973-1-git-send-email-s.hauer@pengutronix.de>
Content-Language: en-US
Content-ID: <26399B43A03F8049A62E1EE82288D242@kymetacorp.com>
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
Subject: Re: [PATCH] of_path: Make partition names work again
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

There's already a patch in barebox-next that fixes this bug, 985e773.
It doesn't delete the patname: parsing code, but does add a number of
comments that this patch doesn't.

On Thu, 2016-01-07 at 12:27 +0100, Sascha Hauer wrote:
> The device-path "partname:<name>" mechanism is broken by:
> 
> 75b6827 of_path: of_find_path() factor out device detection logic into separate function
> 
> This is because since said commit the device-path property is no longer
> searched in the original device node anymore, but in the device node
> of the device itself.
> 
> Fix this by passing the partition name directly to __of_find_path.
> 
> Originally it was intended to further extend the multi string property
> device-path further with more elements, like for example a filename. It
> turned out though that this is too complex and instead of further
> extending the property we should instead create additional properties,
> so this mechanism is removed with this patch.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
>  drivers/of/of_path.c | 125 ++++++++++++---------------------------------------
>  1 file changed, 29 insertions(+), 96 deletions(-)
> 
> diff --git a/drivers/of/of_path.c b/drivers/of/of_path.c
> index 6903905..35d3576 100644
> --- a/drivers/of/of_path.c
> +++ b/drivers/of/of_path.c
> @@ -23,16 +23,6 @@
>  
>  #include <linux/mtd/mtd.h>
>  
> -struct of_path {
> -	struct cdev *cdev;
> -	struct device_d *dev;
> -};
> -
> -struct of_path_type {
> -	const char *name;
> -	int (*parse)(struct of_path *op, const char *str);
> -};
> -
>  struct device_d *of_find_device_by_node_path(const char *path)
>  {
>  	struct device_d *dev;
> @@ -47,103 +37,34 @@ struct device_d *of_find_device_by_node_path(const char *path)
>  	return NULL;
>  }
>  
> -/**
> - * of_path_type_partname - find a partition based on physical device and
> - *                         partition name
> - * @op: of_path context
> - * @name: the partition name to find
> - */
> -static int of_path_type_partname(struct of_path *op, const char *name)
> -{
> -	if (!op->dev)
> -		return -EINVAL;
> -
> -	op->cdev = device_find_partition(op->dev, name);
> -	if (op->cdev) {
> -		pr_debug("%s: found part '%s'\n", __func__, name);
> -		return 0;
> -	} else {
> -		pr_debug("%s: cannot find part '%s'\n", __func__, name);
> -		return -ENODEV;
> -	}
> -}
> -
> -static struct of_path_type of_path_types[] = {
> -	{
> -		.name = "partname",
> -		.parse = of_path_type_partname,
> -	},
> -};
> -
> -static int of_path_parse_one(struct of_path *op, const char *str)
> -{
> -	int i, ret;
> -	char *name, *desc;
> -
> -	pr_debug("parsing: %s\n", str);
> -
> -	name = xstrdup(str);
> -	desc = strchr(name, ':');
> -	if (!desc) {
> -		free(name);
> -		return -EINVAL;
> -	}
> -
> -	*desc = 0;
> -	desc++;
> -
> -	for (i = 0; i < ARRAY_SIZE(of_path_types); i++) {
> -		if (!strcmp(of_path_types[i].name, name)) {
> -			ret = of_path_types[i].parse(op, desc);
> -			goto out;
> -		}
> -	}
> -
> -	ret = -EINVAL;
> -out:
> -	free(name);
> -
> -	return ret;
> -}
> -
> -static int __of_find_path(struct device_node *node, const char *propname, char **outpath, unsigned flags)
> +static int __of_find_path(struct device_node *node, const char *partname, char **outpath, unsigned flags)
>  {
> -	struct of_path op = {};
> -	const char *str;
> +	struct device_d *dev;
> +	struct cdev *cdev;
>  	bool add_bb = false;
> -	int i, ret;
>  
> -	op.dev = of_find_device_by_node_path(node->full_name);
> -	if (!op.dev) {
> -		op.dev = of_find_device_by_node_path(node->parent->full_name);
> -		if (!op.dev)
> +	dev = of_find_device_by_node_path(node->full_name);
> +	if (!dev) {
> +		dev = of_find_device_by_node_path(node->parent->full_name);
> +		if (!dev)
>  			return -ENODEV;
>  	}
>  
> -	device_detect(op.dev);
> -
> -	op.cdev = cdev_by_device_node(node);
> +	device_detect(dev);
>  
> -	i = 1;
> +	if (partname)
> +		cdev = device_find_partition(dev, partname);
> +	else
> +		cdev = cdev_by_device_node(node);
>  
> -	while (propname) {
> -		ret = of_property_read_string_index(node, propname, i++, &str);
> -		if (ret)
> -			break;
> -
> -		ret = of_path_parse_one(&op, str);
> -		if (ret)
> -			return ret;
> -	}
> -
> -	if (!op.cdev)
> +	if (!cdev)
>  		return -ENOENT;
>  
> -	if ((flags & OF_FIND_PATH_FLAGS_BB) && op.cdev->mtd &&
> -	    mtd_can_have_bb(op.cdev->mtd))
> +	if ((flags & OF_FIND_PATH_FLAGS_BB) && cdev->mtd &&
> +	    mtd_can_have_bb(cdev->mtd))
>  		add_bb = true;
>  
> -	*outpath = asprintf("/dev/%s%s", op.cdev->name, add_bb ? ".bb" : "");
> +	*outpath = asprintf("/dev/%s%s", cdev->name, add_bb ? ".bb" : "");
>  
>  	return 0;
>  }
> @@ -193,6 +114,8 @@ int of_find_path(struct device_node *node, const char *propname, char **outpath,
>  {
>  	struct device_node *rnode;
>  	const char *path;
> +	const char *partname = NULL;
> +	char partnamestr[] = "partname:";
>  
>  	path = of_get_property(node, propname, NULL);
>  	if (!path)
> @@ -202,5 +125,15 @@ int of_find_path(struct device_node *node, const char *propname, char **outpath,
>  	if (!rnode)
>  		return -ENODEV;
>  
> -	return __of_find_path(rnode, propname, outpath, flags);
> +	of_property_read_string_index(node, propname, 1, &partname);
> +	if (partname) {
> +		if (!strncmp(partname, partnamestr, sizeof(partnamestr) - 1)) {
> +			partname += sizeof(partnamestr) - 1;
> +		} else {
> +			pr_err("Invalid device-path: %s\n", partname);
> +			return -EINVAL;
> +		}
> +	}
> +
> +	return __of_find_path(rnode, partname, outpath, flags);
>  }

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
