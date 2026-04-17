Delivery-date: Fri, 17 Apr 2026 12:14:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDgDj-00D9oV-0b
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 12:14:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDgDi-0008Ir-IH
	for lore@pengutronix.de; Fri, 17 Apr 2026 12:14:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4kdIF8Ep7/a9/JMOoDiZXFGBwIs8ikWs/CCLRdOtK74=; b=1zNrwq9zYI8dRItXWK8Tc5I+iq
	iANiKLv4hrNU4q1MabwWf4AXdSBZ8ESIhvbA9P9dfNenCb10dtFwLD67a8F9FDMYpTGWznBiF9Evo
	sZ4iP9MPdabEXQDSCjYwg/5ziHHvICOP+ngXyptWyXHyZ4tuq+oxtgBp9hpKNkTKRFOK+wVW4gtA+
	ExwmoBgZJfiZy7vBEUZurbSBDaOFKoPyyJO551XGanIBNqe49iAu7xyR6RBDwmgc4lvhUXnejwCr0
	r9jNqH8vSr/4TRLLrk1C3isfleXH2YCzFevS4ceHghMg6DsrP1MZN2rDhlIqiN0vQhzD8MYoHxT9x
	hiRUAHJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDgDM-00000003tIk-0tEn;
	Fri, 17 Apr 2026 10:14:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDgDI-00000003tIJ-3yVh
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 10:14:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDgDH-00088h-Hj; Fri, 17 Apr 2026 12:14:15 +0200
Message-ID: <f22a767d-0a4c-457a-9e5b-f571a2203b45@pengutronix.de>
Date: Fri, 17 Apr 2026 12:14:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Opus 4.6" <noreply@anthropic.com>
References: <20260402-net-eth-do-udp-v1-0-af5d9fd6beec@pengutronix.de>
 <20260402-net-eth-do-udp-v1-8-af5d9fd6beec@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260402-net-eth-do-udp-v1-8-af5d9fd6beec@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_031416_994597_1ED27FF1 
X-CRM114-Status: GOOD (  19.17  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 08/10] net: fastboot: use net_eth_to_udp() for packet
 parsing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 4/2/26 8:36 AM, Sascha Hauer wrote:
> Replace the separate net_eth_to_udplen(), net_eth_to_udphdr() and
> net_eth_to_udp_payload() calls with the new consolidated
> net_eth_to_udp() helper.
> 
> The direct net_eth_to_iphdr() call is kept because fastboot needs
> access to the IP header for source address handling and tot_len based
> fragment detection.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  net/fastboot.c | 21 ++++++++++++++-------
>  1 file changed, 14 insertions(+), 7 deletions(-)
> 
> diff --git a/net/fastboot.c b/net/fastboot.c
> index 263d8abaa2..506af00cb8 100644
> --- a/net/fastboot.c
> +++ b/net/fastboot.c
> @@ -351,17 +351,24 @@ static void fastboot_check_retransmit(struct fastboot_net *fbn,
>  
>  static void fastboot_handler(void *ctx, char *packet, unsigned int raw_len)
>  {
> -	unsigned int len = net_eth_to_udplen(packet);
>  	struct ethernet *eth_header = (struct ethernet *)packet;
>  	struct iphdr *ip_header = net_eth_to_iphdr(packet);
> -	struct udphdr *udp_header = net_eth_to_udphdr(packet);
> -	char *payload = net_eth_to_udp_payload(packet);
>  	struct fastboot_net *fbn = ctx;
> +	struct net_udp_pkt udp;
>  	struct fastboot_header header;
> -	char *fastboot_data = payload + sizeof(header);
> -	u16 tot_len = ntohs(ip_header->tot_len);
> +	char *payload, *fastboot_data;
> +	unsigned int len;
> +	u16 tot_len;
>  	int ret;
>  
> +	if (net_eth_to_udp(packet, raw_len, &udp))
> +		return;
> +
> +	payload = udp.payload;
> +	len = udp.len;
> +	fastboot_data = payload + sizeof(header);
> +	tot_len = ntohs(ip_header->tot_len);
> +
>  	/* catch bogus tot_len values */
>  	if ((char *)ip_header - packet + tot_len > raw_len)
>  		return;
> @@ -392,7 +399,7 @@ static void fastboot_handler(void *ctx, char *packet, unsigned int raw_len)
>  
>  	memcpy(fbn->net_con->et->et_dest, eth_header->et_src, ETH_ALEN);
>  	net_copy_ip(&fbn->net_con->ip->daddr, &ip_header->saddr);
> -	fbn->net_con->udp->uh_dport = udp_header->uh_sport;
> +	fbn->net_con->udp->uh_dport = udp.udp->uh_sport;
>  
>  	switch (header.id) {
>  	case FASTBOOT_QUERY:
> @@ -404,7 +411,7 @@ static void fastboot_handler(void *ctx, char *packet, unsigned int raw_len)
>  			break;
>  		}
>  		fbn->host_addr = net_read_ip(&ip_header->saddr);
> -		fbn->host_port = udp_header->uh_sport;
> +		fbn->host_port = udp.udp->uh_sport;
>  		memcpy(fbn->host_mac, eth_header->et_src, ETH_ALEN);
>  		fastboot_net_abort(fbn);
>  		/* poller just unregistered in fastboot_net_abort() */
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



