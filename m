Delivery-date: Tue, 30 Mar 2021 07:41:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lR77z-0002sw-F1
	for lore@lore.pengutronix.de; Tue, 30 Mar 2021 07:41:23 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lR77y-0002jP-Ls
	for lore@pengutronix.de; Tue, 30 Mar 2021 07:41:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PC6b1QWH1TeIPt0+WHRd9ngxCZGDkGujZCgmCoraLok=; b=i/E6JYJ6VbV2Xa4HkPwJ4dGoQ
	SF1cyStHctnnUcPWXbooZqWcNJkyEmBGD2aj6an55a4zPUhHl3sHvBI2m1bTfck1Wuwm6BxZFTY61
	CV82RftUhIVlQcNgD0BdEjTE9EOPKnbcT+JifkvLIhFxKJ4R+1Z5zR8TzokStRCn8/n56wcDav5mw
	Y99A3TQuHxDDd/Yanm2vDifZyutXbeIM4Y1fPiSN2LF/D5f3rdhx0fhGcU/ghtFENQ1nxmRbmtRjP
	zIOs4C0+LsuLIzm8p6BII/7i8jxV2v/8pdeJGxePclb++MEOJ/yUGV5zHkmrwGJQIIXHA3XRCT1yJ
	NqLUcuVOw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lR772-002m74-Lc; Tue, 30 Mar 2021 05:40:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lR76v-002m6Q-U1
 for barebox@lists.infradead.org; Tue, 30 Mar 2021 05:40:19 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lR76v-0002MY-GZ; Tue, 30 Mar 2021 07:40:17 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lR76v-0000Hb-2j; Tue, 30 Mar 2021 07:40:17 +0200
Date: Tue, 30 Mar 2021 07:40:17 +0200
To: Stefan Riedmueller <s.riedmueller@phytec.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210330054017.GK609@pengutronix.de>
References: <20210329131048.66199-1-s.riedmueller@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210329131048.66199-1-s.riedmueller@phytec.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 07:39:36 up 40 days,  9:03, 70 users,  load average: 0.04, 0.04, 0.05
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210330_064018_096032_93697CB5 
X-CRM114-Status: GOOD (  26.19  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] net: eth: of_fixup_node: Use reproducible node name for
 fixup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Mar 29, 2021 at 03:10:48PM +0200, Stefan Riedmueller wrote:
> To be able to fixup older devicetrees, prior to v4.15 where leading
> zeros of the unit addresses were removed, use the reproducible name to
> find the corresponding nodes.

Who would ever run such an old kernel ;)
Anyway, applied, thanks

Sascha

> 
> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
> ---
>  net/eth.c | 16 ++++++++++------
>  1 file changed, 10 insertions(+), 6 deletions(-)
> 
> diff --git a/net/eth.c b/net/eth.c
> index 626b35d5cc65..84f99d3aa822 100644
> --- a/net/eth.c
> +++ b/net/eth.c
> @@ -304,7 +304,8 @@ static void eth_of_fixup_node(struct device_node *root,
>  			      const char *node_path, int ethid,
>  			      const u8 ethaddr[ETH_ALEN])
>  {
> -	struct device_node *node;
> +	struct device_node *bb_node, *fixup_node;
> +	char *name;
>  	int ret;
>  
>  	if (!is_valid_ether_addr(ethaddr)) {
> @@ -314,22 +315,25 @@ static void eth_of_fixup_node(struct device_node *root,
>  	}
>  
>  	if (node_path) {
> -		node = of_find_node_by_path_from(root, node_path);
> +		bb_node = of_find_node_by_path_from(0, node_path);
> +		name = of_get_reproducible_name(bb_node);
> +		fixup_node = of_find_node_by_reproducible_name(root, name);
> +		free(name);
>  	} else {
>  		char eth[12];
>  		sprintf(eth, "ethernet%d", ethid);
> -		node = of_find_node_by_alias(root, eth);
> +		fixup_node = of_find_node_by_alias(root, eth);
>  	}
>  
> -	if (!node) {
> +	if (!fixup_node) {
>  		pr_debug("%s: no node to fixup\n", __func__);
>  		return;
>  	}
>  
> -	ret = of_set_property(node, "mac-address", ethaddr, ETH_ALEN, 1);
> +	ret = of_set_property(fixup_node, "mac-address", ethaddr, ETH_ALEN, 1);
>  	if (ret)
>  		pr_err("Setting mac-address property of %s failed with: %s\n",
> -		       node->full_name, strerror(-ret));
> +		       fixup_node->full_name, strerror(-ret));
>  }
>  
>  static int eth_of_fixup(struct device_node *root, void *unused)
> -- 
> 2.25.1
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

