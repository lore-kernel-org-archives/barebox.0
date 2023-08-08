Delivery-date: Tue, 08 Aug 2023 07:53:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qTFeP-00C0DO-TS
	for lore@lore.pengutronix.de; Tue, 08 Aug 2023 07:53:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qTFeN-0002Pz-Id
	for lore@pengutronix.de; Tue, 08 Aug 2023 07:53:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x/R+DIz4VMh6m1LaWFVdtF6HiLzqb6uHdKzyge99sGU=; b=yYOg5uU4wpsg5zRDpZQWKaBXRA
	FAUG41OxREmX3z5UYxjFsD3HliInOC7Gt2inafzSR7DYTpbayHFWqOvoEo5CdNmUXQ+o3N845DCQc
	YWN5bLdvmno74x8Fsp/QcI6AUWb1FKyu4uir+ozjvoz2qFbYkm2/tcUyAcUi1yOaqtXXY5malg9S6
	4LWuLwapg8YMG4pvDFwwSdDE7VMBGaTxBNEKrnkiYWKPMjXJVZOORdXbMAK8o9goGhcsGs0bpBc63
	lz8dJl4ByoA8mFls2EZDGDvymvlpDnIRhzB+2mWmT7O8i1bU0Zysv6CUXk0RjrGrKpHIxraMDnj63
	nu1QNQ6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qTFcx-001lwz-0z;
	Tue, 08 Aug 2023 05:51:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qTFct-001lwN-0s
	for barebox@lists.infradead.org;
	Tue, 08 Aug 2023 05:51:29 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qTFco-0002Mn-2f; Tue, 08 Aug 2023 07:51:22 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qTFcn-0005ug-RS; Tue, 08 Aug 2023 07:51:21 +0200
Date: Tue, 8 Aug 2023 07:51:21 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230808055121.GP26314@pengutronix.de>
References: <20230807170743.149799-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230807170743.149799-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230807_225127_308269_65999E59 
X-CRM114-Status: GOOD (  22.84  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] of: of_net: add support to parse ASCII encoded
 mac-addresses
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Aug 07, 2023 at 07:07:43PM +0200, Marco Felsch wrote:
> Some vendors like Polyhex store the MAC address ASCII encoded instead of
> using the plain 6-byte MAC address. This commit adds the support to
> decode the 12-byte ASCII encoded MAC addresses.

The upstream i.MX8MP dtsi files have "mac-address" nvmem cells described
in the device trees, but they point to a 6-byte long cell in ocotp.
These cells are not overwritten in the Polyhex dts files. How can there
be a 12-byte ASCII stored?

> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  drivers/of/of_net.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/drivers/of/of_net.c b/drivers/of/of_net.c
> index 75a24073da51..4e74986cdda8 100644
> --- a/drivers/of/of_net.c
> +++ b/drivers/of/of_net.c
> @@ -79,6 +79,8 @@ static int of_get_mac_addr(struct device_node *np, const char *name, u8 *addr)
>  	return -ENODEV;
>  }
>  
> +#define ETH_ALEN_ASCII	12
> +
>  int of_get_mac_addr_nvmem(struct device_node *np, u8 *addr)
>  {
>  	struct nvmem_cell *cell;
> @@ -98,6 +100,23 @@ int of_get_mac_addr_nvmem(struct device_node *np, u8 *addr)
>  	if (IS_ERR(mac))
>  		return PTR_ERR(mac);
>  
> +	if (len == ETH_ALEN_ASCII) {

I don't like this heuristic very much. If I understand the nvmem stuff
correctly then parsing of properties in non standard formats should be
fixed in a struct nvmem_cell_info::read_post_process hook.

> +		u8 *mac_new;
> +		int ret;
> +
> +		mac_new = kzalloc(sizeof("xx:xx:xx:xx:xx:xx"), GFP_KERNEL);

If anything, then sizeof("xxxxxxxxxxxx"), but what you want here is
ETH_ALEN.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


