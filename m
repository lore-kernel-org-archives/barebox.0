Delivery-date: Mon, 31 May 2021 09:02:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnbwO-0002nA-UD
	for lore@lore.pengutronix.de; Mon, 31 May 2021 09:02:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnbwN-0001Qf-Ms
	for lore@pengutronix.de; Mon, 31 May 2021 09:02:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GmYm+FDRHes7i7gOFnETj+/Ic5gMhM85BXM0mJQfYlI=; b=xX7mCd2CGwLQfDH8p6lXTPeBeh
	L4fhMoCOWt9w6jk56Le5lLm1vpP80575rsSqlDbR8q28qnKPq854DPK1aulu2NiwU6DpzKeJIUzQn
	zcO7m0U2sE9A+GalpwkRnqJwTXtnPTWcUkePEhLrOoHJnevE/omC9/LJyKOU6UpuqRie1b8BSNxpP
	oEsFgDpxWRCRWW7SgKWDbS43P9YM5TT67jO2vWrlECiR8JzGEhH6DB8YjD1foK2SDH3E7WGPoc09O
	kVnqAiKgIb8qypqLVZe1X5pZqkmbtZQOr5qylaDdJzQ/Oc5iKqoQhtIZgNGbxBi3dWVGtxKTQd0it
	rXeSKrBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lnbvD-00B3HV-LQ; Mon, 31 May 2021 07:01:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lnbv9-00B3GG-02
 for barebox@lists.infradead.org; Mon, 31 May 2021 07:01:08 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lnbv5-0001Dp-SY; Mon, 31 May 2021 09:01:03 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lnbv5-0001XH-Do; Mon, 31 May 2021 09:01:03 +0200
Date: Mon, 31 May 2021 09:01:03 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210531070103.GB5211@pengutronix.de>
References: <20210527124406.22121-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210527124406.22121-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:00:29 up 102 days, 10:24, 121 users,  load average: 0.51, 0.21,
 0.19
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_000107_068436_6FEA954A 
X-CRM114-Status: GOOD (  30.46  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] commands: of_dump: implement -p for printing properties
 only
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, May 27, 2021 at 02:44:06PM +0200, Ahmad Fatoum wrote:
> Some boards rewrite root node properties like compatible and
> serial-number. Checking them can be annoying, because the properties
> have usually long scrolled by, by the time the device tree was
> completely dumped. Add a -p option to print only properties.
> 
> -p -n (print only node names AND only properties) is interpreted
> to cancel each other out, so the whole device tree is dumped normally.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  commands/of_dump.c | 14 ++++++++++----
>  drivers/of/base.c  |  8 ++++++++
>  include/of.h       |  1 +
>  3 files changed, 19 insertions(+), 4 deletions(-)

Nice. This annoyed me as well sometimes. Applied, thanks

Sascha

> 
> diff --git a/commands/of_dump.c b/commands/of_dump.c
> index 6792af3afc31..2089c07ef79b 100644
> --- a/commands/of_dump.c
> +++ b/commands/of_dump.c
> @@ -36,9 +36,9 @@ static int do_of_dump(int argc, char *argv[])
>  	char *dtbfile = NULL;
>  	size_t size;
>  	const char *nodename;
> -	int names_only = 0;
> +	int names_only = 0, properties_only = 0;
>  
> -	while ((opt = getopt(argc, argv, "Ff:n")) > 0) {
> +	while ((opt = getopt(argc, argv, "Ff:np")) > 0) {
>  		switch (opt) {
>  		case 'f':
>  			dtbfile = optarg;
> @@ -49,6 +49,9 @@ static int do_of_dump(int argc, char *argv[])
>  		case 'n':
>  			names_only = 1;
>  			break;
> +		case 'p':
> +			properties_only = 1;
> +			break;
>  		default:
>  			return COMMAND_ERROR_USAGE;
>  		}
> @@ -111,8 +114,10 @@ static int do_of_dump(int argc, char *argv[])
>  		goto out;
>  	}
>  
> -	if (names_only)
> +	if (names_only && !properties_only)
>  		of_print_nodenames(node);
> +	else if (properties_only && !names_only)
> +		of_print_properties(node);
>  	else
>  		of_print_nodes(node, 0);
>  
> @@ -128,12 +133,13 @@ BAREBOX_CMD_HELP_TEXT("Options:")
>  BAREBOX_CMD_HELP_OPT  ("-f dtb",  "work on dtb instead of internal devicetree")
>  BAREBOX_CMD_HELP_OPT  ("-F",  "return fixed devicetree")
>  BAREBOX_CMD_HELP_OPT  ("-n",  "Print node names only, no properties")
> +BAREBOX_CMD_HELP_OPT  ("-p",  "Print properties only, no child nodes")
>  BAREBOX_CMD_HELP_END
>  
>  BAREBOX_CMD_START(of_dump)
>  	.cmd		= do_of_dump,
>  	BAREBOX_CMD_DESC("dump devicetree nodes")
> -	BAREBOX_CMD_OPTS("[-fFn] [NODE]")
> +	BAREBOX_CMD_OPTS("[-fFnp] [NODE]")
>  	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
>  	BAREBOX_CMD_COMPLETE(devicetree_file_complete)
>  	BAREBOX_CMD_HELP(cmd_of_dump_help)
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 6fe02649ee53..e103eed90af1 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -2002,6 +2002,14 @@ static void __of_print_property(struct property *p, int indent)
>  	printf(";\n");
>  }
>  
> +void of_print_properties(struct device_node *node)
> +{
> +	struct property *prop;
> +
> +	list_for_each_entry(prop, &node->properties, list)
> +		__of_print_property(prop, 0);
> +}
> +
>  static int __of_print_parents(struct device_node *node)
>  {
>  	int indent, i;
> diff --git a/include/of.h b/include/of.h
> index 645f429bdeed..55e6bff8689e 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -105,6 +105,7 @@ void of_print_property(const void *data, int len);
>  void of_print_cmdline(struct device_node *root);
>  
>  void of_print_nodes(struct device_node *node, int indent);
> +void of_print_properties(struct device_node *node);
>  void of_diff(struct device_node *a, struct device_node *b, int indent);
>  int of_probe(void);
>  int of_parse_dtb(struct fdt_header *fdt);
> -- 
> 2.29.2
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

