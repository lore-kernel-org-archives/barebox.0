Delivery-date: Fri, 17 Apr 2026 12:11:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDgAE-00D9gP-1t
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 12:11:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDgAE-00073P-0m
	for lore@pengutronix.de; Fri, 17 Apr 2026 12:11:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xOwkozw7PFzPdgiQ+kjn/jhsg2pk14rjK/ItYrustXY=; b=Jm2z3KWaTRbwA16PRfhRqBZOs9
	XYFvGd+w0K8zjw9rOZOU00m8JMeY3NSp3aZXyPO3x+/xIFeByBN6I4tGgVociG8bFsSe5vUEI+L3v
	9a7vn1jBp73PfyfoNK59x87AhoEQy1KEuvtR4xcpQCBHioCigj8txG2S/trL8FiVKz0+RGhmikYSW
	CF1pAl/LXUHNOc3mej2Dkrp2zGYaugdfyuY65hmVcEjz1IJN45v1vjqUGQ06lz8ui4VEcP0F6hGbn
	rdm14Ke4jHxQMPUhEutxfT0W7HilKL16GEwodvpxWZ7MIVfJHfvXdv+cgkbljxK4exRmnmqa9IWbX
	UwYhdOXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDg9r-00000003t04-0SL8;
	Fri, 17 Apr 2026 10:10:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDg9o-00000003szE-3laP
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 10:10:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDg9n-0006sl-Fc; Fri, 17 Apr 2026 12:10:39 +0200
Message-ID: <0e2b0199-2ec5-469c-b0ca-8cf7370a624f@pengutronix.de>
Date: Fri, 17 Apr 2026 12:10:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Opus 4.6" <noreply@anthropic.com>
References: <20260402-net-eth-do-udp-v1-0-af5d9fd6beec@pengutronix.de>
 <20260402-net-eth-do-udp-v1-5-af5d9fd6beec@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260402-net-eth-do-udp-v1-5-af5d9fd6beec@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_031040_941988_B71E4848 
X-CRM114-Status: GOOD (  15.79  )
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
Subject: Re: [PATCH 05/10] net: dns: use net_eth_to_udp() for packet parsing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 4/2/26 8:36 AM, Sascha Hauer wrote:
> Replace the separate net_eth_to_udp_payload() and net_eth_to_udplen()
> calls with the new consolidated net_eth_to_udp() helper.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  net/dns.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/net/dns.c b/net/dns.c
> index 8fbd13cdc3..8616e353c1 100644
> --- a/net/dns.c
> +++ b/net/dns.c
> @@ -206,9 +206,12 @@ static void dns_recv(struct header *header, unsigned len)
>  
>  static void dns_handler(void *ctx, char *packet, unsigned len)
>  {
> -	(void)ctx;
> -	dns_recv((struct header *)net_eth_to_udp_payload(packet),
> -		net_eth_to_udplen(packet));
> +	struct net_udp_pkt udp;
> +
> +	if (net_eth_to_udp(packet, len, &udp))
> +		return;
> +
> +	dns_recv(udp.payload, udp.len);
>  }
>  
>  int resolv(const char *host, IPaddr_t *ip)
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



