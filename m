Delivery-date: Mon, 03 Jul 2023 10:55:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGFLg-00DIFc-55
	for lore@lore.pengutronix.de; Mon, 03 Jul 2023 10:55:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGFLd-0001Ep-LW
	for lore@pengutronix.de; Mon, 03 Jul 2023 10:55:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bheCy2fW0QDLP/zCmx/krCa/5Ed9xVv9wZOhuATKosg=; b=DvkmoRkST3ZPwm1GoOJFMUD27h
	RmgGNRxsUQ9uWX/flVPVh8khRrVSpc9Amk6qEULujKEUrDnceXPleH8t9zLpt2k4u21mjFLuMLdyN
	4rhtQQHr6VHjMehUZ8fstbKpi/Iw3FXx6IRsQoP7DuKhSk5oUEhab72jcQBsHucLR5bTXENNyy0Bs
	HOlSVeMXfy/uToczaYMlahBZcHuc+qFhhpzgBl32TUHL/AeHR+1ZdUv5Ii4k0dmzesVc0rqSfw3RD
	nPnoab5FWRMe/p6sk2b7CRkpzFTS0Dqw/ZoFSynWARifXjwZ9DblttvEhmOd5RGqbXGnt7/10yzcs
	pHtUnBYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGFKY-009p3V-36;
	Mon, 03 Jul 2023 08:54:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGFKW-009p2s-1X
	for barebox@lists.infradead.org;
	Mon, 03 Jul 2023 08:54:45 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qGFKU-0000qS-Vk; Mon, 03 Jul 2023 10:54:42 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qGFKU-0002CC-Na; Mon, 03 Jul 2023 10:54:42 +0200
Date: Mon, 3 Jul 2023 10:54:42 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230703085442.GK18491@pengutronix.de>
References: <20230629065612.1119622-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230629065612.1119622-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230703_015444_530534_B293545D 
X-CRM114-Status: GOOD (  27.20  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master v2 1/2] of: implement of_reparent_node helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 29, 2023 at 08:56:12AM +0200, Ahmad Fatoum wrote:
> Reparenting nodes can be a useful thing to do in fixups. Add a helper
> for that.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - rename from of_move_node to of_reparent_node
>   - ensure that there's a parent to avoid null pointer deref
>     (Sascha)
>   - set node->parent to new_parent (Sascha)
>   - Remove broken condition on old parent (Sascha)
> ---
>  drivers/of/base.c           | 26 ++++++++++++++++++++++++++
>  include/of.h                |  1 +
>  test/self/of_manipulation.c |  8 ++++++--
>  3 files changed, 33 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 4dc1c76b136d..e1134e9c694b 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -2697,6 +2697,32 @@ void of_delete_node(struct device_node *node)
>  	free(node);
>  }
>  
> +/*
> + * of_reparent_node - Move node from beneath one parent to another
> + * @new_parent: The new parent node
> + * @node        The node to be moved
> + */
> +int of_reparent_node(struct device_node *new_parent, struct device_node *node)
> +{
> +	if (!node)
> +		return 0;
> +
> +	if (!new_parent || !node->parent)
> +		return -EINVAL;
> +
> +	list_del(&node->parent_list);
> +	list_del(&node->list);

You could put these list operations into a if (node->parent), then @node
wouldn't necessarily need a parent.

> +
> +	free(node->full_name);
> +	node->full_name = basprintf("%s/%s", new_parent->full_name, node->name);

That fixes full_name of @node, but not its children.

One obvious solution would be to iterate over the children and fix the
name recursively. Another one would be to git rid of the full_name
member and generate the name dynamically when needed, but that wouldn't be
master material anymore.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


