Delivery-date: Fri, 17 Apr 2026 12:18:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDgGx-00D9sc-1c
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 12:18:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDgGw-0000s0-Te
	for lore@pengutronix.de; Fri, 17 Apr 2026 12:18:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PvjjzwvX9vdMM/pIBLKqUD1X99zWWmBJlDM+8Fm19aM=; b=gyaxHUSY85M+EhWH9FQ0/lSOWX
	PqnBLluWSYw6vjImMalmBzn33b3cOJcLkwW5c7WG4VQgG1saeK8Prg55uEPlaMqrAYz+xh5IIMARl
	09L6LZ0Y+qxebdsmb59rp2Ga3jylzcWTkPDpKnw2e0OrsVwCS+Xa8IlyitQRE28YS70y+0Kg4RdVW
	7kMxlnVBmqCpo9IjYB+wNj45ZVoFT++ou3iOShEIAxg1mh9FB+pcT/JbSMgOICKq70aBj514jOhWU
	TYBGscfs6ddf2ZIy1EnKK74v3gHDhKGaFY0v9c5mk7wc72afTAAnQgZM06qu9JnRPjEdOqx1jU0vW
	Ewdq7PZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDgGY-00000003tdU-26x8;
	Fri, 17 Apr 2026 10:17:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDgGV-00000003tc0-3Kua
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 10:17:37 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDgGU-0000gC-Am; Fri, 17 Apr 2026 12:17:34 +0200
Message-ID: <59b1bfad-4943-4525-93eb-181286d6040b@pengutronix.de>
Date: Fri, 17 Apr 2026 12:17:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Opus 4.6" <noreply@anthropic.com>
References: <20260402-net-eth-do-udp-v1-0-af5d9fd6beec@pengutronix.de>
 <20260402-net-eth-do-udp-v1-10-af5d9fd6beec@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260402-net-eth-do-udp-v1-10-af5d9fd6beec@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_031735_848761_34896746 
X-CRM114-Status: GOOD (  15.38  )
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
Subject: Re: [PATCH 10/10] net: remove unused
 net_eth_to_udp{hdr,_payload,len}() helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 4/2/26 8:36 AM, Sascha Hauer wrote:
> All callers have been converted to net_eth_to_udp() which validates
> the packet length before accessing headers.  Remove the old helpers.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  include/net.h | 16 ----------------
>  1 file changed, 16 deletions(-)
> 
> diff --git a/include/net.h b/include/net.h
> index bdf39bc531..4d443135c1 100644
> --- a/include/net.h
> +++ b/include/net.h
> @@ -282,11 +282,6 @@ static inline struct iphdr *net_eth_to_iphdr(char *pkt)
>  	return (struct iphdr *)(pkt + ETHER_HDR_SIZE);
>  }
>  
> -static inline struct udphdr *net_eth_to_udphdr(char *pkt)
> -{
> -	return (struct udphdr *)(net_eth_to_iphdr(pkt) + 1);
> -}
> -
>  static inline struct icmphdr *net_eth_to_icmphdr(char *pkt)
>  {
>  	return (struct icmphdr *)(net_eth_to_iphdr(pkt) + 1);
> @@ -297,17 +292,6 @@ static inline char *net_eth_to_icmp_payload(char *pkt)
>  	return (char *)(net_eth_to_icmphdr(pkt) + 1);
>  }
>  
> -static inline char *net_eth_to_udp_payload(char *pkt)
> -{
> -	return (char *)(net_eth_to_udphdr(pkt) + 1);
> -}
> -
> -static inline int net_eth_to_udplen(char *pkt)
> -{
> -	struct udphdr *udp = net_eth_to_udphdr(pkt);
> -	return ntohs(udp->uh_ulen) - 8;
> -}
> -
>  struct net_udp_pkt {
>  	struct udphdr *udp;
>  	void *payload;
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



