Delivery-date: Fri, 17 Apr 2026 12:06:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDg5Z-00D9QC-2z
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 12:06:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDg5Z-0005VS-A7
	for lore@pengutronix.de; Fri, 17 Apr 2026 12:06:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v3pG4z+665VTJEMBsQd+qKgfqlJqozhShGGLfNjBwyc=; b=gaTLWaKLRtOqHddTAIq8jA0TZb
	AwM8MoPmlEgni8hHA/LrOgQIsxQTs0f6YlcVF0eND2lClAETdXJTXfDr+kSMvoSryXcyrolISttpj
	ZD2AhTSmPWNDRY6L14KzbwEBhemXfcAHoNPIKy6tzebujL9wdZ9fKzqKXtY3u3PCh4aepjakjALmP
	gMLPut0FEZ19ncJIW68y57JTrUZR/lZtBWaHDjwAZsHV16tiasqkMn7yI3ioJ29edo8Ln7b0FZyVP
	dIoPWjrH4GpPg+rJwE/OklIzeCgw6+LX7C2FYqFMgFbL8rE0UCX1olqevDT8M+3WS9xKlNcVdN18L
	MlzjNVtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDg5D-00000003sOQ-2jmn;
	Fri, 17 Apr 2026 10:05:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDg59-00000003sJC-1I8F
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 10:05:52 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDg57-0005Kl-Q4; Fri, 17 Apr 2026 12:05:49 +0200
Message-ID: <4117971e-99bd-4098-9b80-9d45d89a4c31@pengutronix.de>
Date: Fri, 17 Apr 2026 12:05:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Opus 4.6" <noreply@anthropic.com>
References: <20260402-net-eth-do-udp-v1-0-af5d9fd6beec@pengutronix.de>
 <20260402-net-eth-do-udp-v1-2-af5d9fd6beec@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260402-net-eth-do-udp-v1-2-af5d9fd6beec@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_030551_356096_0647D404 
X-CRM114-Status: GOOD (  16.51  )
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
Subject: Re: [PATCH 02/10] fs: tftp: use net_eth_to_udp() for packet parsing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 4/2/26 8:36 AM, Sascha Hauer wrote:
> Replace the separate net_eth_to_udp_payload(), net_eth_to_udphdr() and
> net_eth_to_udplen() calls with the new consolidated net_eth_to_udp()
> helper.  This validates the packet length before accessing any headers
> and removes the need to cast away the unused len parameter.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>


> ---
>  fs/tftp.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/fs/tftp.c b/fs/tftp.c
> index a454306b4b..fe6f42b073 100644
> --- a/fs/tftp.c
> +++ b/fs/tftp.c
> @@ -628,11 +628,12 @@ static void tftp_recv(struct file_priv *priv,
>  static void tftp_handler(void *ctx, char *packet, unsigned len)
>  {
>  	struct file_priv *priv = ctx;
> -	char *pkt = net_eth_to_udp_payload(packet);
> -	struct udphdr *udp = net_eth_to_udphdr(packet);
> +	struct net_udp_pkt udp;
>  
> -	(void)len;
> -	tftp_recv(priv, pkt, net_eth_to_udplen(packet), udp->uh_sport);
> +	if (net_eth_to_udp(packet, len, &udp))
> +		return;
> +
> +	tftp_recv(priv, udp.payload, udp.len, udp.udp->uh_sport);
>  }
>  
>  static int tftp_start_transfer(struct file_priv *priv)
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



