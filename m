Delivery-date: Wed, 26 Jul 2023 14:27:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOdcT-00AqTC-St
	for lore@lore.pengutronix.de; Wed, 26 Jul 2023 14:27:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOdcR-0003qK-8K
	for lore@pengutronix.de; Wed, 26 Jul 2023 14:27:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6b6dhc6hMCJePfPLxjG+cyeKrKKqJ6DoBtPfmO3kiVY=; b=k3hpkITD9ZNLtpl2zn3EJr+DcL
	k6jU0PujOa9Cp0L+EtQZj+fKUJJGq7E3e4ej/1Okusl0WQOTVxBhN2VVmmo+K2EMDRfVmT2Ect4CW
	6R1ZAtEgmKZk34iuBjWEO+D32wZRnszdxupyHOTwYT2Nr1MNxlCzo54KRDhpeYrc2gmfgX91ovTB3
	J89eucw1VBotF3/MxmctyUUyKkvvAvEFrBulSpZMvlmoTDRtaSVPkoveC90i2BinTgT9Q2s482LiW
	Y4FzWeiqE6GWBCIs+tW44Ao+byT8+I0qJqFiY5q7KqXrH7dOAY4JZj61EuHjOaH6kPfVSqchD8MQW
	4Y8M9HOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOdbH-00AKqT-1o;
	Wed, 26 Jul 2023 12:26:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOdbE-00AKpO-1E
	for barebox@lists.infradead.org;
	Wed, 26 Jul 2023 12:26:41 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qOdbD-0003hq-05; Wed, 26 Jul 2023 14:26:39 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qOdbC-0005bR-9W; Wed, 26 Jul 2023 14:26:38 +0200
Date: Wed, 26 Jul 2023 14:26:38 +0200
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org, Jules Maselbas <jmaselbas@zdiv.net>
Message-ID: <20230726122638.GQ18491@pengutronix.de>
References: <20230711091123.19111-1-jmaselbas@kalray.eu>
 <20230711091123.19111-3-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230711091123.19111-3-jmaselbas@kalray.eu>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230726_052640_415678_14BA7BB9 
X-CRM114-Status: GOOD (  25.40  )
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
Subject: Re: [PATCH 3/3] soc: kvx: Add board_sn global var from OTP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jul 11, 2023 at 11:11:23AM +0200, Jules Maselbas wrote:
> Add the magic variable "kvx.board_sn" that will reflect the board serial
> number stored in OTP.
> 
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  drivers/soc/kvx/kvx_socinfo.c | 33 ++++++++++++++++++++++++++++++++-
>  1 file changed, 32 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/soc/kvx/kvx_socinfo.c b/drivers/soc/kvx/kvx_socinfo.c
> index 496e817755..87c20c327b 100644
> --- a/drivers/soc/kvx/kvx_socinfo.c
> +++ b/drivers/soc/kvx/kvx_socinfo.c
> @@ -33,9 +33,11 @@
>  
>  static char *kvx_mppa_id;
>  static char *kvx_arch_rev;
> +static char *kvx_board_sn;
>  
>  BAREBOX_MAGICVAR(kvx.arch_rev, "KVX architecture revision");
>  BAREBOX_MAGICVAR(kvx.mppa_id, "KVX MPPA chip id");
> +BAREBOX_MAGICVAR(kvx.board_sn, "KVX board sn");
>  
>  static void kvx_soc_info_read_revision(void)
>  {
> @@ -123,11 +125,40 @@ static int kvx_read_mppa_id(struct device_node *socinfo)
>  	return 0;
>  }
>  
> +static int kvx_read_board_sn(struct device_node *socinfo)
> +{
> +	struct nvmem_cell *cell;
> +	size_t len;
> +	char *sn;
> +
> +	cell = of_nvmem_cell_get(socinfo, "board_sn");
> +	if (IS_ERR(cell)) {
> +		pr_debug("Fail to get board_sn cell\n");
> +		return PTR_ERR(cell);
> +	}
> +
> +	sn = (char *)nvmem_cell_read(cell, &len);
> +	nvmem_cell_put(cell);
> +	if (IS_ERR(sn)) {
> +		pr_debug("Fail to read board_sn\n");
> +		return PTR_ERR(sn);
> +	}
> +
> +	kvx_board_sn = xzalloc(len + 1);
> +	memcpy(kvx_board_sn, sn, len);
> +	globalvar_add_simple_string("kvx.board_sn", &kvx_board_sn);
> +	free(sn);
> +
> +	return 0;
> +}
> +
>  static int kvx_socinfo_probe(struct device *dev)
>  {
>  	kvx_soc_info_read_revision();
>  
> -	return kvx_read_serial(dev->of_node);
> +	kvx_read_board_sn(dev->device_node);
> +
> +	return kvx_read_mppa_id(dev->device_node);
>  }

Ah, ok. Here is the missing hunk from patch 1. I just fixed this up
while applying.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


