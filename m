Delivery-date: Fri, 17 Apr 2026 11:46:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDfmn-00D98t-11
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 11:46:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDfmm-0006f1-I6
	for lore@pengutronix.de; Fri, 17 Apr 2026 11:46:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SC1AWWKiU2KBi8NPBHkw8348N3gkNV8ZUW597QoWl/Q=; b=fil4yItPGJkwwQSoKsg5TcliB/
	ppUWeareGz677Cke7FJq+3Wo/YH2tZY62xWT8qPSjRIJpRusQfzx/ouSxJIieT+YgO6kJCyOhpqLb
	nYvTMDJ5V1ceLpw3epoeMFlMK47SJrUzkK4Bb2CVcQ8rvuozgMddeiSKvPwvrZCVB+bc9c8IV4Lqv
	rBUvIGU/b6sm4DGIGgRqL2z6OyFoMgFF/57h34GKGFlDHIrO/sqkaJCPKvnSP5964u1Mpmb6K0ifX
	X/EAqkmeL1jdIGzWUFPiW4XBajHFz/dyfA7va1ZB12l4hSyXdyCg/4YnEVppskYecUYrODky6nlnX
	X51gCNQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDfmO-00000003qst-1lOP;
	Fri, 17 Apr 2026 09:46:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDfmM-00000003qsF-1KFL
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 09:46:27 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDfmK-0006V9-Qq; Fri, 17 Apr 2026 11:46:24 +0200
Message-ID: <a6e792a6-357e-47ce-91af-e6d89f17efb5@pengutronix.de>
Date: Fri, 17 Apr 2026 11:46:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Opus 4.6 (1M context)" <noreply@anthropic.com>
References: <20260402-net-dhcp-buffer-overflows-v2-0-fe4ca7c4b718@pengutronix.de>
 <20260402-net-dhcp-buffer-overflows-v2-1-fe4ca7c4b718@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260402-net-dhcp-buffer-overflows-v2-1-fe4ca7c4b718@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_024626_357469_17FE3E4F 
X-CRM114-Status: GOOD (  21.95  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/3] net: dhcp: add bounds checking to DHCP option
 parsing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 4/2/26 8:59 AM, Sascha Hauer wrote:
> dhcp_message_type() walks DHCP options with no end-of-buffer check. A
> malicious DHCP server can craft a packet without a 0xff terminator or
> with large option length fields, causing reads past the packet buffer
> boundary.
> 
> Similarly, dhcp_options_process() computes its end bound from fixed
> struct sizes rather than the actual received packet length, which could
> parse past the real packet data.
> 
> Fix both functions by passing the actual packet length and computing
> proper bounds. Validate that option type and length bytes are within
> bounds before reading them, and that the option data region doesn't
> extend past the packet.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Co-Authored-By: Claude Opus 4.6 (1M context) <noreply@anthropic.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  net/dhcp.c | 28 +++++++++++++++++++---------
>  1 file changed, 19 insertions(+), 9 deletions(-)
> 
> diff --git a/net/dhcp.c b/net/dhcp.c
> index e25b64842d..1cb3fef5d7 100644
> --- a/net/dhcp.c
> +++ b/net/dhcp.c
> @@ -318,30 +318,39 @@ static void dhcp_options_handle(unsigned char option, void *popt,
>  	}
>  }
>  
> -static void dhcp_options_process(unsigned char *popt, struct bootp *bp)
> +static void dhcp_options_process(unsigned char *popt, struct bootp *bp,
> +				 unsigned int len)
>  {
> -	unsigned char *end = popt + sizeof(*bp) + OPT_SIZE;
> +	unsigned char *end = (unsigned char *)bp + len;
>  	int oplen;
>  	unsigned char option;
>  
> -	while (popt < end && *popt != 0xff) {
> +	while (popt + 1 < end && *popt != 0xff) {
>  		oplen = *(popt + 1);
>  		option = *popt;
>  
> +		if (popt + 2 + oplen > end)
> +			break;
> +
>  		dhcp_options_handle(option, popt + 2, oplen, bp);
>  
>  		popt += oplen + 2;	/* Process next option */
>  	}
>  }
>  
> -static int dhcp_message_type(unsigned char *popt)
> +static int dhcp_message_type(unsigned char *popt, unsigned int len)
>  {
> +	unsigned char *end = popt + len;
> +
> +	if (len < 4)
> +		return -1;
> +
>  	if (net_read_uint32((uint32_t *)popt) != htonl(BOOTP_VENDOR_MAGIC))
>  		return -1;
>  
>  	popt += 4;
> -	while (*popt != 0xff) {
> -		if (*popt == 53)	/* DHCP Message Type */
> +	while (popt + 1 < end && *popt != 0xff) {
> +		if (*popt == 53 && popt + 2 < end)
>  			return *(popt + 2);
>  		popt += *(popt + 1) + 2;	/* Scan through all options */
>  	}
> @@ -415,7 +424,7 @@ static void dhcp_handler(void *ctx, char *packet, unsigned int len)
>  		dhcp_state = REQUESTING;
>  
>  		if (net_read_uint32(&bp->bp_vend[0]) == htonl(BOOTP_VENDOR_MAGIC))
> -			dhcp_options_process((u8 *)&bp->bp_vend[4], bp);
> +			dhcp_options_process((u8 *)&bp->bp_vend[4], bp, len);
>  
>  		bootp_copy_net_params(bp); /* Store net params from reply */
>  
> @@ -426,9 +435,10 @@ static void dhcp_handler(void *ctx, char *packet, unsigned int len)
>  	case REQUESTING:
>  		debug("%s: State REQUESTING\n", __func__);
>  
> -		if (dhcp_message_type((u8 *)bp->bp_vend) == DHCP_ACK ) {
> +		if (dhcp_message_type((u8 *)bp->bp_vend,
> +				      len - offsetof(struct bootp, bp_vend)) == DHCP_ACK) {
>  			if (net_read_uint32(&bp->bp_vend[0]) == htonl(BOOTP_VENDOR_MAGIC))
> -				dhcp_options_process(&bp->bp_vend[4], bp);
> +				dhcp_options_process(&bp->bp_vend[4], bp, len);
>  			bootp_copy_net_params(bp); /* Store net params from reply */
>  			dhcp_state = BOUND;
>  			dev_info(&dhcp_edev->dev, "DHCP client bound to address %pI4\n", &dhcp_result->ip);
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



