Delivery-date: Fri, 17 Apr 2026 12:12:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDgBy-00D9nB-2n
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 12:12:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDgBy-0007ga-AT
	for lore@pengutronix.de; Fri, 17 Apr 2026 12:12:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VpHN8XNUWt9Lj20/HLw1uzSW/uKBV+yNoOUVmGcm2I4=; b=WFyIoylrAr0w1lezBjpZ81CklG
	mGs+GWLXIcDtiZrFRG3emAHDOPKRllX78U7ZFc1iHuzwHKPZeIIyiTare31btkFqWQc3GfRa0cfSq
	yChCwitldfCegtiAeYftEN/qCLpWJ79eY1lrXxHW1WmN8IPe7hm9LOfi8F0ApIkHC90dsvUMz17Ht
	/f6FxmsvpkdiY2XfhEjrwSpoXXYsSHsTg3cjzM1tNMY5gPUsHbHtRTgYXYnPhFLRFER0JDQ8T9J6G
	p05jNEaTMAgzlpbVPuYUAOM8JJ0Hogl7IIAp/utLunM7DOn3Gs5KgiJKSafaNkbFdeU7svC5WpY/E
	rJJbdhzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDgBY-00000003tB8-3QTj;
	Fri, 17 Apr 2026 10:12:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDgBV-00000003tAB-3TEg
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 10:12:27 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDgBT-0007Sb-DC; Fri, 17 Apr 2026 12:12:23 +0200
Message-ID: <bdd1387c-f04a-4383-84cc-9bf5d2b18af7@pengutronix.de>
Date: Fri, 17 Apr 2026 12:12:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Opus 4.6" <noreply@anthropic.com>
References: <20260402-net-eth-do-udp-v1-0-af5d9fd6beec@pengutronix.de>
 <20260402-net-eth-do-udp-v1-7-af5d9fd6beec@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260402-net-eth-do-udp-v1-7-af5d9fd6beec@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_031225_869527_8C0650EA 
X-CRM114-Status: GOOD (  16.14  )
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
Subject: Re: [PATCH 07/10] net: netconsole: use net_eth_to_udp() for packet
 parsing
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
>  net/netconsole.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/net/netconsole.c b/net/netconsole.c
> index 28fd0e98ec..859cfe8e6f 100644
> --- a/net/netconsole.c
> +++ b/net/netconsole.c
> @@ -33,9 +33,12 @@ static struct nc_priv *g_priv;
>  static void nc_handler(void *ctx, char *pkt, unsigned len)
>  {
>  	struct nc_priv *priv = g_priv;
> -	unsigned char *packet = net_eth_to_udp_payload(pkt);
> +	struct net_udp_pkt udp;
>  
> -	kfifo_put(priv->fifo, packet, net_eth_to_udplen(pkt));
> +	if (net_eth_to_udp(pkt, len, &udp))
> +		return;
> +
> +	kfifo_put(priv->fifo, udp.payload, udp.len);
>  }
>  
>  static int nc_getc(struct console_device *cdev)
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



