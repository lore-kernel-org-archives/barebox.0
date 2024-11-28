Delivery-date: Thu, 28 Nov 2024 08:29:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGYxo-001MVU-0D
	for lore@lore.pengutronix.de;
	Thu, 28 Nov 2024 08:29:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGYxn-0004Us-VW
	for lore@pengutronix.de; Thu, 28 Nov 2024 08:29:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tB9zE7YtWsaO2DwjA7mED4VlusDmfYTyx5x29VadzOM=; b=IYVpHXxxKOjF87eUNj77PM0Eb2
	KhtH6/LB8l+rjQ4dHwizJ6iJEq0Pm9N6ZMjvQH7NyVgQOF+rVLahymLOJTteLhQXMPW4A+6bZqVyG
	tcR7rGI1De1D0nCAufgV/rVK45L0Iv5m+UH7pByeTyKIxeMqtW8vckW8VYjVroSNYEe7W32PtsECs
	oXmJo96vizZ4DU5WFL74+ZT1lNUDghEX7hEB1hLziy7hNpAfZGSa4G1G0k5omwGfChiWSPIKnITl+
	eGX9+XY2lMmNgTQsxltTSGCgrtlJlDGKF7pJtmXrUjfqv0fMweBRw7Cxk+r6NbsyXJZHRG6rjccK8
	JxNLFPBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGYxK-0000000Esk0-1jRx;
	Thu, 28 Nov 2024 07:28:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGYx6-0000000Esii-1ep5
	for barebox@lists.infradead.org;
	Thu, 28 Nov 2024 07:28:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tGYx3-0004Go-Gj; Thu, 28 Nov 2024 08:28:37 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tGYx2-000Zad-1n;
	Thu, 28 Nov 2024 08:28:37 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tGYx3-002owx-0l;
	Thu, 28 Nov 2024 08:28:37 +0100
Date: Thu, 28 Nov 2024 08:28:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z0gbpZog23pPY-UA@pengutronix.de>
References: <20241126151744.3621717-1-a.fatoum@pengutronix.de>
 <20241126151744.3621717-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241126151744.3621717-2-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241127_232840_430593_E2F65FDA 
X-CRM114-Status: GOOD (  23.16  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] net: add ethaddr sequence handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Nov 26, 2024 at 04:17:41PM +0100, Ahmad Fatoum wrote:
> Instead of storing every MAC address in full, boards may elect
> to store a base address and increment it N times. Add a helper
> to iterate over such an Ethernet address sequence. Example usage:
> 
>   const u8 *eth_addr;
>   u8 eth_base[ETH_ALEN] = "\x00\x01\x02\x03\x04\x05";
>   int i = 0, eth_count = 4;
> 
>   for_each_seq_ethaddr(eth_addr, eth_base, &eth_count)
>           eth_register_ethaddr(i++, eth_addr);

	for (i = 0; i < 4; i++, eth_addr_inc(eth_addr))
		eth_register_ethaddr(i, eth_addr);

I think the open coded variant is easier to read and write, I don't
think we should introduce a helper for this.

Sascha

> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/net.h | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/include/net.h b/include/net.h
> index a04ed5b0ab92..1b6995b50043 100644
> --- a/include/net.h
> +++ b/include/net.h
> @@ -516,6 +516,18 @@ static inline void eth_addr_add(u8 *addr, long offset)
>  	u64_to_ether_addr(u, addr);
>  }
>  
> +#define for_each_seq_ethaddr(eth_addr, eth_base, eth_count) \
> +	for (eth_addr = *eth_count ? eth_base : NULL; eth_addr; eth_addr = eth_addr_seq_next(eth_base, eth_count))
> +
> +static inline const u8 *eth_addr_seq_next(u8 eth_base[6], unsigned *eth_count)
> +{
> +	if (--(*eth_count) <= 0)
> +		return NULL;
> +
> +	eth_addr_inc(eth_base);
> +	return eth_base;
> +}
> +
>  typedef void rx_handler_f(void *ctx, char *packet, unsigned int len);
>  
>  struct eth_device *eth_get_byname(const char *name);
> -- 
> 2.39.5
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


