Delivery-date: Fri, 17 Apr 2026 12:08:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDg7J-00D9Rn-0T
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 12:08:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDg7I-00068m-Iw
	for lore@pengutronix.de; Fri, 17 Apr 2026 12:08:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f6da+QPGk+cmZtkXbMWCL8ALRbPc5g6i2Eq8w8TGSvk=; b=PxJ8sfS3GIj3s5yIwZsrW3YNdC
	EvmiE+VJFCHZdV3Gk7CB1lpErctP2SmECl/Hq+7RoSo8Kx5qeSjEQHR2kf/jcreigF97iAxCYqPcD
	0Y2nFbLFv2sCs/ZzObTqk5BE/C+9Rpxs7vwULi6482S6fXjXFpFHlfrjIkg82LolBwI0kNDDDozUi
	Sc4/YLHPIsc2W8ZXL2ZcOmf8HXFByifTpqEHor7P7QGd8GnYBe9z0yUfgf3tIuLzaNL+YajHPc4ZD
	OTokTt071WWsA1t2fPthE+fr0qQE4OPyC9laMbnU3zfry3I/LXEkX1qNYyX+jhSDH4eSrC+5dPawZ
	TVcgcO6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDg6s-00000003soh-2iLT;
	Fri, 17 Apr 2026 10:07:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDg6p-00000003soN-1rqS
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 10:07:36 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDg6n-0005wv-Se; Fri, 17 Apr 2026 12:07:33 +0200
Message-ID: <29629b15-deaf-4e62-b799-47f65751f0de@pengutronix.de>
Date: Fri, 17 Apr 2026 12:07:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Opus 4.6" <noreply@anthropic.com>
References: <20260402-net-eth-do-udp-v1-0-af5d9fd6beec@pengutronix.de>
 <20260402-net-eth-do-udp-v1-3-af5d9fd6beec@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260402-net-eth-do-udp-v1-3-af5d9fd6beec@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_030735_506515_59F16F74 
X-CRM114-Status: GOOD (  17.11  )
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
Subject: Re: [PATCH 03/10] net: dhcp: use net_eth_to_udp() for packet parsing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 4/2/26 8:36 AM, Sascha Hauer wrote:
> Replace the separate net_eth_to_udp_payload(), net_eth_to_udphdr() and
> net_eth_to_udplen() calls with the new consolidated net_eth_to_udp()
> helper.  This validates the packet length before accessing any headers.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  net/dhcp.c | 16 +++++++++-------
>  1 file changed, 9 insertions(+), 7 deletions(-)
> 
> diff --git a/net/dhcp.c b/net/dhcp.c
> index e25b64842d..39168a2d53 100644
> --- a/net/dhcp.c
> +++ b/net/dhcp.c
> @@ -391,16 +391,18 @@ static void dhcp_send_request_packet(struct bootp *bp_offer)
>   */
>  static void dhcp_handler(void *ctx, char *packet, unsigned int len)
>  {
> -	char *pkt = net_eth_to_udp_payload(packet);
> -	struct udphdr *udp = net_eth_to_udphdr(packet);
> -	struct bootp *bp = (struct bootp *)pkt;
> +	struct net_udp_pkt udp;
> +	struct bootp *bp;
> +
> +	if (net_eth_to_udp(packet, len, &udp))
> +		return;
>  
> -	len = net_eth_to_udplen(packet);
> +	bp = udp.payload;
>  
> -	debug("DHCPHandler: got packet: (len=%d) state: %d\n",
> -		len, dhcp_state);
> +	debug("DHCPHandler: got packet: (len=%u) state: %d\n",
> +		udp.len, dhcp_state);
>  
> -	if (bootp_check_packet(pkt, ntohs(udp->uh_sport), len)) /* Filter out pkts we don't want */
> +	if (bootp_check_packet(udp.payload, ntohs(udp.udp->uh_sport), udp.len))
>  		return;
>  
>  	switch (dhcp_state) {
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



