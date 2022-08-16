Delivery-date: Tue, 16 Aug 2022 10:20:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNroJ-000TZr-38
	for lore@lore.pengutronix.de; Tue, 16 Aug 2022 10:20:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNroG-0000i7-US
	for lore@pengutronix.de; Tue, 16 Aug 2022 10:20:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ml+XiqnjJ1OkNjXQIGcRSEs0evrg2jtO9Qj1VIoByPk=; b=gNjJyn+6J7CtwA7eEDhusgf+mD
	XciNPtEc8ZATK1vUXLieXbDwQgkZUiClsCW1IvAIIj1kepFfPqd5CVcySuBycSCDh+7A/DTgMSYyb
	fme/L01BwaNUpIxkckiid/Tyva8+hkvTxEKpvia5DQfwCaCltuYEvgD4TmVluXpNfihJTrTSnAmkt
	oSv3ccQ7HJE+3SwCKXmtOYiRNfB1iWmA9MZlIbTtylVpJ2TA8qugxT4MY7ImNwREMdTwWJXtAo2ax
	+wcnlln/yknEv/7WyLLNTR/AhXGUQvx3mzxLjq2ADvuT42x+zu1d07LXD3MN/bMpM+J77cumlI8MQ
	coRUy68w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNrmt-00GVUt-JK; Tue, 16 Aug 2022 08:18:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNrmj-00GVNu-7H
	for barebox@lists.infradead.org; Tue, 16 Aug 2022 08:18:56 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oNrmh-0000QX-Ur; Tue, 16 Aug 2022 10:18:47 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oNrmh-0006PE-M5; Tue, 16 Aug 2022 10:18:47 +0200
Date: Tue, 16 Aug 2022 10:18:47 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220816081847.GI17485@pengutronix.de>
References: <20220815114246.2275465-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220815114246.2275465-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220816_011855_135847_4121EEB3 
X-CRM114-Status: GOOD (  27.25  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] of: add new of_fixup_reserved_memory() helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Aug 15, 2022 at 01:42:45PM +0200, Ahmad Fatoum wrote:
> We are opencoding the reserved memory fixup in fs/pstore/ram.c and the
> sequence is generic enough that we could use it for other fixups as
> well, e.g. rmem, barebox as secure monitor or OP-TEE which is not
> configured to generate an overlay or fix up the device tree itself.
> 
> Add a helper that can be directly registered and reads all the necessary
> information out of a struct resource.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/oftree.c | 41 +++++++++++++++++++++++++++++++++++++++++
>  include/of.h    |  2 ++
>  2 files changed, 43 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/common/oftree.c b/common/oftree.c
> index 91b3fcc9fad6..e459f84601a3 100644
> --- a/common/oftree.c
> +++ b/common/oftree.c
> @@ -271,6 +271,47 @@ static int of_register_bootargs_fixup(void)
>  }
>  late_initcall(of_register_bootargs_fixup);
>  
> +int of_fixup_reserved_memory(struct device_node *root, void *_res)
> +{
> +	struct resource *res = _res;
> +	struct device_node *node, *child;
> +	struct property *pp;
> +	unsigned addr_n_cells = sizeof(void *) / sizeof(__be32),
> +		 size_n_cells = sizeof(void *) / sizeof(__be32);
> +	unsigned rangelen = 0;
> +	__be32 reg[4];
> +	int ret;
> +
> +	node = of_get_child_by_name(root, "reserved-memory") ?: of_new_node(root, "reserved-memory");
> +
> +	ret = of_property_read_u32(node, "#address-cells", &addr_n_cells);
> +	if (ret)
> +		of_property_write_u32(node, "#address-cells", addr_n_cells);
> +
> +	ret = of_property_read_u32(node, "#size-cells", &size_n_cells);
> +	if (ret)
> +		of_property_write_u32(node, "#size-cells", size_n_cells);
> +
> +	pp = of_find_property(node, "ranges", &rangelen) ?: of_new_property(node, "ranges", NULL, 0);
> +	if (rangelen) {
> +		pr_warn("reserved-memory ranges not 1:1 mapped. Aborting fixup\n");
> +		return -EINVAL;
> +	}
> +
> +	child = of_get_child_by_name(node, res->name) ?: of_new_node(node, res->name);
> +
> +	if (res->flags & IORESOURCE_BUSY)
> +		of_property_write_bool(child, "no-map", true);
> +
> +	of_write_number(reg, res->start, addr_n_cells);
> +	of_write_number(reg + addr_n_cells, resource_size(res), size_n_cells);
> +
> +	of_new_property(child, "reg", reg,
> +			(addr_n_cells + size_n_cells) * sizeof(*reg));
> +
> +	return 0;
> +}
> +
>  struct of_fixup_status_data {
>  	const char *path;
>  	bool status;
> diff --git a/include/of.h b/include/of.h
> index 9130a36d372d..223c634bc88a 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -113,6 +113,8 @@ int of_parse_dtb(struct fdt_header *fdt);
>  struct device_node *of_unflatten_dtb(const void *fdt, int size);
>  struct device_node *of_unflatten_dtb_const(const void *infdt, int size);
>  
> +int of_fixup_reserved_memory(struct device_node *node, void *data);
> +
>  struct cdev;
>  
>  #ifdef CONFIG_OFTREE
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


