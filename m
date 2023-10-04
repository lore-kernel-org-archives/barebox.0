Delivery-date: Wed, 04 Oct 2023 09:46:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qnwai-004crZ-MV
	for lore@lore.pengutronix.de; Wed, 04 Oct 2023 09:46:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qnwai-0006aG-0U
	for lore@pengutronix.de; Wed, 04 Oct 2023 09:46:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5hJqTmVo98gouRQyBcPjNydML4Tqs+/DWwQuFYsDWh4=; b=DXAj7WmqfduTWb0S9o98i8vgBV
	eOXMd3zXsg14GCcBX6JPz1R8sLK9dFExA4/pIe1vl6MrTOJNBvqOCxO/dId80WrfI3gUzcnAJMwV9
	8TtuBw1jqzJ6Zl2p05fjwyUzCivsABNkJ5moR1hty2C6cq/hFGidzqKJaktyRUtJoTBSbTebMXNsJ
	TzubTM3BFZBfeswbd7yYqWxiDv0Wfkg6bMYSclzDPkMcnzRNLeX7kGb3DovLf2nSkDyzlLJkt3y7p
	22Ks/u4s2D1vx/ylZjMd5iNxBaiJ73VjZRpqHdDwWgDXw0hwUdo5RH19z2jwSk4N1tSkyUA5JZaTr
	yvoqzj+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnwZZ-00GfD3-39;
	Wed, 04 Oct 2023 07:45:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnva5-00GSPp-2f
	for barebox@lists.infradead.org;
	Wed, 04 Oct 2023 06:42:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qnva0-0004X9-U9; Wed, 04 Oct 2023 08:41:56 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qnva0-00Axq5-He; Wed, 04 Oct 2023 08:41:56 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qnva0-00CiK3-FG; Wed, 04 Oct 2023 08:41:56 +0200
Date: Wed, 4 Oct 2023 08:41:56 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231004064156.GG637806@pengutronix.de>
References: <20231002101654.2373000-1-o.rempel@pengutronix.de>
 <20231002101654.2373000-10-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231002101654.2373000-10-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231003_234201_867629_7252BC14 
X-CRM114-Status: GOOD (  24.00  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 09/10] net: lib: add ether_addr_inc() helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Oct 02, 2023 at 12:16:53PM +0200, Oleksij Rempel wrote:
> Add helper function to calculate Ethernet address by incriminating it.
> This helper can be used for multiport devices like switches to generate
> address for each port based on one stored address.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  include/net.h |  1 +
>  net/lib.c     | 25 +++++++++++++++++++++++++
>  2 files changed, 26 insertions(+)
> 
> diff --git a/include/net.h b/include/net.h
> index a0ef8bee04..fe82451cc9 100644
> --- a/include/net.h
> +++ b/include/net.h
> @@ -360,6 +360,7 @@ int setenv_ip(const char *name, IPaddr_t ip);
>  
>  int string_to_ethaddr(const char *str, u8 enetaddr[6]);
>  void ethaddr_to_string(const u8 enetaddr[6], char *str);
> +void ether_addr_inc(u8 *dst_addr, const u8 *src_addr, u32 increment);
>  
>  #ifdef CONFIG_NET_RESOLV
>  int resolv(const char *host, IPaddr_t *ip);
> diff --git a/net/lib.c b/net/lib.c
> index d4536441bd..dc7d83bc6d 100644
> --- a/net/lib.c
> +++ b/net/lib.c
> @@ -44,6 +44,31 @@ void ethaddr_to_string(const u8 enetaddr[ETH_ALEN], char *str)
>  		 enetaddr[4], enetaddr[5]);
>  }
>  
> +/**
> + * ether_addr_inc - Increment an Ethernet address.
> + * @dst_addr: Destination address to store the incremented address.
> + * @src_addr: Source address to be incremented.
> + * @increment: Value by which to increment the source address.
> + *
> + * This function increments the given source Ethernet address by
> + * the specified increment value, storing the result in the
> + * destination address.
> + */
> +void ether_addr_inc(u8 *dst_addr, const u8 *src_addr, u32 increment)
> +{
> +	u32 value;
> +	int i;
> +
> +	for(i = 0; i < 6; ++i)
> +		dst_addr[i] = src_addr[i];
> +
> +	for(i = 5; i >= 0 && increment; --i) {
> +		value = dst_addr[i] + increment;
> +		dst_addr[i] = value & 0xFF;
> +		increment = value >> 8;
> +	}
> +}

The Kernel already has eth_addr_add() and more helpers. How about
adopting these instead?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


