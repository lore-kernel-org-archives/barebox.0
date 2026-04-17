Delivery-date: Fri, 17 Apr 2026 12:04:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDg4B-00D9OL-0p
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 12:04:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDg4A-00053g-Jd
	for lore@pengutronix.de; Fri, 17 Apr 2026 12:04:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hhCQ/TcKRmvGmedycQ1NL/cUEws1NklMLEDZkNlNFb4=; b=YQF21uQk373xh6rJipO9gt4BC6
	mRlFYh3kcukdqcQKqShaCxe5twzgG/m73j9K71HPftofV+oOS7qq7LQ6xaghmVpiYw8LM1jaYZCI6
	FKD5b6YUpX2cMMWlmghOZiQ4xR6YDDzKTb5/bzaDx6LtWflBgwhUr3Hg61Qde1LEPzijv2UxuJ/+L
	Y48KpUvebo97S06YcV/BCUYglBnjAZ2aDbnqez4yhd94Ftpw0wnJOSOm92ALG36ZPkgvtjrPCXwv+
	LPtNd93uhJbgi3frT2nZpyiolyBdWfpP+2X2n9JZNDRviNOlW8LQb4CAvcaRspmafrbnYLosBSlsl
	J2/ERomA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDg3f-00000003sBR-435h;
	Fri, 17 Apr 2026 10:04:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDg3d-00000003sB6-0uhB
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 10:04:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDg3b-0004rK-MO; Fri, 17 Apr 2026 12:04:15 +0200
Message-ID: <fcb822a9-e237-4cb4-92ab-4a4bb36db87e@pengutronix.de>
Date: Fri, 17 Apr 2026 12:04:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Opus 4.6" <noreply@anthropic.com>
References: <20260402-net-eth-do-udp-v1-0-af5d9fd6beec@pengutronix.de>
 <20260402-net-eth-do-udp-v1-1-af5d9fd6beec@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260402-net-eth-do-udp-v1-1-af5d9fd6beec@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_030417_288019_751EBC0A 
X-CRM114-Status: GOOD (  25.13  )
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
Subject: Re: [PATCH 01/10] net: add net_eth_to_udp() helper for validated UDP
 extraction
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 4/2/26 8:36 AM, Sascha Hauer wrote:
> The existing net_eth_to_udp_payload(), net_eth_to_udphdr() and
> net_eth_to_udplen() helpers parse protocol headers by offset arithmetic
> without checking the actual packet length. A short or malformed packet
> can cause out-of-bounds reads.
> 
> Introduce net_eth_to_udp() which takes the frame pointer and the
> NIC-reported length, validates that the packet is large enough to
> contain ethernet + IP + UDP headers, cross-checks the UDP length field
> against available bytes, and returns all three pieces of information
> (udp header, payload pointer, payload length) callers typically need.
> 
> The old helpers are kept for now; callers will be converted in subsequent
> commits.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  include/net.h |  9 +++++++++
>  net/net.c     | 40 ++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 49 insertions(+)
> 
> diff --git a/include/net.h b/include/net.h
> index 43d718353a..bdf39bc531 100644
> --- a/include/net.h
> +++ b/include/net.h
> @@ -308,6 +308,15 @@ static inline int net_eth_to_udplen(char *pkt)
>  	return ntohs(udp->uh_ulen) - 8;
>  }
>  
> +struct net_udp_pkt {
> +	struct udphdr *udp;
> +	void *payload;
> +	unsigned int len;
> +};
> +
> +int net_eth_to_udp(char *pkt, unsigned int framelen,
> +		   struct net_udp_pkt *udp_pkt);
> +
>  int net_checksum_ok(unsigned char *, int);	/* Return true if cksum OK	*/
>  uint16_t net_checksum(unsigned char *, int);	/* Calculate the checksum	*/
>  
> diff --git a/net/net.c b/net/net.c
> index fc32c4562b..67c0eeb2ae 100644
> --- a/net/net.c
> +++ b/net/net.c
> @@ -60,6 +60,46 @@ const char *net_get_domainname(void)
>  	return net_domainname;
>  }
>  
> +/**
> + * net_eth_to_udp - extract and validate UDP payload from an ethernet frame
> + * @pkt:	pointer to start of ethernet frame
> + * @framelen:	total frame length as reported by the NIC
> + * @udp_pkt:	output struct, filled on success
> + *
> + * Validates that the frame is large enough to contain the ethernet, IP and
> + * UDP headers and clamps the reported UDP payload length to what is actually
> + * available in the frame.
> + *
> + * Return: 0 on success, negative error code on malformed/short packets.
> + */
> +int net_eth_to_udp(char *pkt, unsigned int framelen,
> +		   struct net_udp_pkt *udp_pkt)
> +{
> +	unsigned int hdr_len = ETHER_HDR_SIZE + sizeof(struct iphdr) +
> +			       sizeof(struct udphdr);
> +	struct udphdr *udp;
> +	unsigned int payload_len;
> +
> +	if (framelen < hdr_len)
> +		return -EINVAL;
> +
> +	udp = (struct udphdr *)((struct iphdr *)(pkt + ETHER_HDR_SIZE) + 1);
> +
> +	if (ntohs(udp->uh_ulen) < sizeof(struct udphdr))
> +		return -EINVAL;
> +
> +	payload_len = ntohs(udp->uh_ulen) - sizeof(struct udphdr);
> +
> +	if (payload_len > framelen - hdr_len)
> +		return -EINVAL;
> +
> +	udp_pkt->udp = udp;
> +	udp_pkt->payload = (char *)(udp + 1);
> +	udp_pkt->len = payload_len;
> +
> +	return 0;
> +}
> +
>  int net_checksum_ok(unsigned char *ptr, int len)
>  {
>  	return net_checksum(ptr, len) == 0xffff;
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



