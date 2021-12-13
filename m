Delivery-date: Mon, 13 Dec 2021 23:39:37 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwtyr-005iwf-EX
	for lore@lore.pengutronix.de; Mon, 13 Dec 2021 23:39:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwtyp-0003yo-Pz
	for lore@pengutronix.de; Mon, 13 Dec 2021 23:39:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oQOzRzxDkrZ55n2TDDxcewfupdhF0EZpWhKXdG+WdMs=; b=JitiVlm7UFO89B1kPKpU8dQd8r
	Fs4iDfT6Y6dPgp3DOK2WT4UHLkJD3wAXrxdftcrmIsVzy4YBOELfJxhKie/jteotQ+GGRFy5+n19n
	uzxsZmVErdXP6JSuCP7gaQE4GnQK1tewyk2fvccrT8pOSZcQLra03PjCaJNpSWNiz29G5xbGh4C2Z
	LSyOfKbGZJ/rfldexcIttBs3FafDWeMkjoX7Il9mNM4YdTXvgLd9iXEzb5WsFvHRgrhUd5OsanhfM
	QSNjGkMwJKTxJt5mqW/Spdufv4dsE1WuNjKj5mRtfYDa1UTVqXo7MuCrvmKMItvUqw2JURuv6hucp
	l7YgtuEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwtxI-00BnGF-8H; Mon, 13 Dec 2021 22:38:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwtcD-00BfEw-MN
 for barebox@lists.infradead.org; Mon, 13 Dec 2021 22:16:15 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mwtcC-0001Xz-BW; Mon, 13 Dec 2021 23:16:12 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mwtcC-00047T-25; Mon, 13 Dec 2021 23:16:12 +0100
Date: Mon, 13 Dec 2021 23:16:12 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211213221612.GE6003@pengutronix.de>
References: <20211209105727.3517863-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211209105727.3517863-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 23:16:03 up 3 days, 7:01, 33 users, load average: 0.19, 0.09, 0.10
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_141613_796672_9D452EC7 
X-CRM114-Status: GOOD (  25.69  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] of: make of_dump abortable by ctrlc()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Dec 09, 2021 at 11:57:27AM +0100, Ahmad Fatoum wrote:
> Some device trees can be quite long, e.g. because they contain all
> possible pinmux entries. Writing that out over serial can take quite a
> while. Check for ctrlc() between nodes to make these less annoying.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  commands/of_dump.c |  5 ++++-
>  drivers/of/base.c  | 13 ++++++++++---
>  2 files changed, 14 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/of_dump.c b/commands/of_dump.c
> index 5223ba63ad23..6f36b3151458 100644
> --- a/commands/of_dump.c
> +++ b/commands/of_dump.c
> @@ -23,8 +23,11 @@ static void of_print_nodenames(struct device_node *node)
>  
>  	printf("%s\n", node->full_name);
>  
> -	list_for_each_entry(n, &node->children, parent_list)
> +	list_for_each_entry(n, &node->children, parent_list) {
> +		if (ctrlc())
> +			return;
>  		of_print_nodenames(n);
> +	}
>  }
>  
>  static int do_of_dump(int argc, char *argv[])
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 321022f2b391..664a3a411eaf 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -1968,13 +1968,14 @@ int of_property_read_string_helper(const struct device_node *np,
>  	return i <= 0 ? -ENODATA : i;
>  }
>  
> -static void __of_print_nodes(struct device_node *node, int indent, const char *prefix)
> +static int __of_print_nodes(struct device_node *node, int indent, const char *prefix)
>  {
>  	struct device_node *n;
>  	struct property *p;
> +	int ret;
>  
>  	if (!node)
> -		return;
> +		return 0;
>  
>  	if (!prefix)
>  		prefix = "";
> @@ -1990,11 +1991,17 @@ static void __of_print_nodes(struct device_node *node, int indent, const char *p
>  		printf(";\n");
>  	}
>  
> +	if (ctrlc())
> +		return -EINTR;
> +
>  	list_for_each_entry(n, &node->children, parent_list) {
> -		__of_print_nodes(n, indent + 1, prefix);
> +		ret = __of_print_nodes(n, indent + 1, prefix);
> +		if (ret)
> +			return ret;
>  	}
>  
>  	printf("%s%*s};\n", prefix, indent * 8, "");
> +	return 0;
>  }
>  
>  void of_print_nodes(struct device_node *node, int indent)
> -- 
> 2.30.2
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

