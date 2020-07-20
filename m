Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jxRHA-0005zh-I0
 for barebox@lists.infradead.org; Mon, 20 Jul 2020 08:35:57 +0000
Message-ID: <46086d47250c312244a08c8bf487ac2fb6fec688.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 20 Jul 2020 10:35:53 +0200
In-Reply-To: <20200720063921.7547-2-o.rempel@pengutronix.de>
References: <20200720063921.7547-1-o.rempel@pengutronix.de>
 <20200720063921.7547-2-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v4 1/3] devinfo: do not dump the device node for the
 root node
To: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org
Cc: david@protonic.nl

Am Montag, den 20.07.2020, 08:39 +0200 schrieb Oleksij Rempel:
> Calling the devinfo against a device which is linked to some device tree
> node will result a device tree dump of this node. For example:
> 
> barebox@Protonic PRTI6Q board:/ devinfo devinfo ldb.of
> Bus: platform
> Device node: /ldb
> ldb {
> 
>         #address-cells = <0x1>;
>         #size-cells = <0x0>;
>         compatible = "fsl,imx6q-ldb", "fsl,imx53-ldb";
>         gpr = <0x5>;
>         status = "okay";
>         clocks = <0x4 0x21 0x4 0x22 0x4 0x27 0x4 0x28 0x4 0x29 0x4 0x2a 0x4 0x87 0x4 0x88>;
>         clock-names = "di0_pll", "di1_pll", "di0_sel", "di1_sel", "di2_sel", "di3_sel", "di0", "di1";
>         lvds-channel@0 {
>                 #address-cells = <0x1>;
>                 #size-cells = <0x0>;
>                 reg = <0x0>;
>                 status = "okay";
>                 port@0 {
>                         reg = <0x0>;
>                         endpoint {
>                                 remote-endpoint = <0x6>;
>                                 phandle = <0x56>;
>                         };
>                 };
>                 port@1 {
>                         reg = <0x1>;
>                         endpoint {
>                                 remote-endpoint = <0x7>;
>                                 phandle = <0x5a>;
>                         };
>                 };
>                 port@2 {
>                         reg = <0x2>;
>                         endpoint {
>                                 remote-endpoint = <0x8>;
>                                 phandle = <0x60>;
>                         };
>                 };
> .........
> 
> Calling same command on a device which is linked to the root node of
> device tree, for example "machine.of", will trigger a dump of complete
> device tree. Since the same functionality is provided by the "of_dump"
> command, it is better to limit devinfo to print only exactly requested
> node, without printing the child nodes. After this patch we would get
> following output:
> 
> barebox@Protonic PRTI6Q board:/ devinfo ldb.of
> Bus: platform
> Device node: /ldb
> ldb {
>         #address-cells = <0x1>;
>         #size-cells = <0x0>;
>         compatible = "fsl,imx6q-ldb", "fsl,imx53-ldb";
>         gpr = <0x5>;
>         status = "okay";
>         clocks = <0x4 0x21 0x4 0x22 0x4 0x27 0x4 0x28 0x4 0x29 0x4 0x2a 0x4 0x87 0x4 0x88>;
>         clock-names = "di0_pll", "di1_pll", "di0_sel", "di1_sel", "di2_sel", "di3_sel", "di0", "di1";
> };

Bad example, the port nodes are actually part of the LDB device and are
useful information when dumping the info of the LDB.

Maybe this wasn't clear enough, but in my last mail I said "don't dump
subnodes with a compatible" on purpose. If we just stop iterating when
the subnode has its own compatible, we still dump subnodes like the
port nodes, which are logically part of the parent OF node, but still
don't dump subnodes which likely have a device on their own.

Regards,
Lucas

> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  commands/devinfo.c |  2 +-
>  drivers/of/base.c  | 20 ++++++++++++++------
>  include/of.h       |  1 +
>  3 files changed, 16 insertions(+), 7 deletions(-)
> 
> diff --git a/commands/devinfo.c b/commands/devinfo.c
> index 81956b1cc0..7036545cdb 100644
> --- a/commands/devinfo.c
> +++ b/commands/devinfo.c
> @@ -101,7 +101,7 @@ static int do_devinfo(int argc, char *argv[])
>  #ifdef CONFIG_OFDEVICE
>  		if (dev->device_node) {
>  			printf("Device node: %s\n", dev->device_node->full_name);
> -			of_print_nodes(dev->device_node, 0);
> +			of_print_node(dev->device_node, 0);
>  		}
>  #endif
>  	}
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 4c633bcd49..4754fcb98f 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -1793,7 +1793,8 @@ int of_property_read_string_helper(const struct device_node *np,
>  	return i <= 0 ? -ENODATA : i;
>  }
>  
> -static void __of_print_nodes(struct device_node *node, int indent, const char *prefix)
> +static void __of_print_nodes(struct device_node *node, int indent,
> +			     const char *prefix, bool single)
>  {
>  	struct device_node *n;
>  	struct property *p;
> @@ -1815,8 +1816,10 @@ static void __of_print_nodes(struct device_node *node, int indent, const char *p
>  		printf(";\n");
>  	}
>  
> -	list_for_each_entry(n, &node->children, parent_list) {
> -		__of_print_nodes(n, indent + 1, prefix);
> +	if (!single) {
> +		list_for_each_entry(n, &node->children, parent_list) {
> +			__of_print_nodes(n, indent + 1, prefix, false);
> +		}
>  	}
>  
>  	printf("%s%*s};\n", prefix, indent * 8, "");
> @@ -1824,7 +1827,12 @@ static void __of_print_nodes(struct device_node *node, int indent, const char *p
>  
>  void of_print_nodes(struct device_node *node, int indent)
>  {
> -	__of_print_nodes(node, indent, NULL);
> +	__of_print_nodes(node, indent, NULL, false);
> +}
> +
> +void of_print_node(struct device_node *node, int indent)
> +{
> +	__of_print_nodes(node, indent, NULL, true);
>  }
>  
>  static void __of_print_property(struct property *p, int indent)
> @@ -1934,14 +1942,14 @@ void of_diff(struct device_node *a, struct device_node *b, int indent)
>  			of_diff(ca, cb, indent + 1);
>  		} else {
>  			of_print_parents(a, &printed);
> -			__of_print_nodes(ca, indent, "-");
> +			__of_print_nodes(ca, indent, "-", false);
>  		}
>  	}
>  
>  	for_each_child_of_node(b, cb) {
>  		if (!of_get_child_by_name(a, cb->name)) {
>  			of_print_parents(a, &printed);
> -			__of_print_nodes(cb, indent, "+");
> +			__of_print_nodes(cb, indent, "+", false);
>  		}
>  	}
>  
> diff --git a/include/of.h b/include/of.h
> index 08bbeaf4d2..820a8ea0ed 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -104,6 +104,7 @@ static inline const void *of_property_get_value(struct property *pp)
>  void of_print_property(const void *data, int len);
>  void of_print_cmdline(struct device_node *root);
>  
> +void of_print_node(struct device_node *node, int indent);
>  void of_print_nodes(struct device_node *node, int indent);
>  void of_diff(struct device_node *a, struct device_node *b, int indent);
>  int of_probe(void);


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
