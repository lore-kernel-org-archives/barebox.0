Delivery-date: Fri, 17 Apr 2026 12:12:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDgBZ-00D9iI-0j
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 12:12:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDgBY-0007Un-LE
	for lore@pengutronix.de; Fri, 17 Apr 2026 12:12:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jTu+S91Q27o4BjVUNEsYkZ+eVq3JVrMismWNcf1B0r4=; b=R0b1goMjpdM7kcT9ms2F656io9
	5rJ0OmPVZt9Jtd0E2EplvSyxxO9SbdkLSoHF82wWV9Z261tWEgraI07Pwtu5WnPOSsFIYySbJmX5R
	jjVFuz1aAs4wLJxW4bOm/TAA18kwkonWrty787iBNmWYaoHGhvTuCWO1jEr4KKejCOrF3fsAMBKNF
	59nyb25RARxjn3l38suuJonxE+GWLE+ip07ZQ9KF+94WETOiElNpaXmgdt2c18RWCnIiEh++jojg6
	jMiH+yiG1julqmMmbhof+neZ16juyPC/lYKQL4SrDCIKUlKXSy4K0mmqOK3nT9cuwzh7zSBgYLeFE
	0siaXyjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDgBA-00000003t88-2Bzo;
	Fri, 17 Apr 2026 10:12:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDgB8-00000003t7m-05Ie
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 10:12:03 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDgB6-0007M0-Jq; Fri, 17 Apr 2026 12:12:00 +0200
Message-ID: <32c08b6b-acda-421b-9370-8bf80c188a4c@pengutronix.de>
Date: Fri, 17 Apr 2026 12:12:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Opus 4.6" <noreply@anthropic.com>
References: <20260402-net-eth-do-udp-v1-0-af5d9fd6beec@pengutronix.de>
 <20260402-net-eth-do-udp-v1-6-af5d9fd6beec@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260402-net-eth-do-udp-v1-6-af5d9fd6beec@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_031202_064177_4287D5CB 
X-CRM114-Status: GOOD (  17.91  )
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
Subject: Re: [PATCH 06/10] net: sntp: use net_eth_to_udp() for packet parsing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 4/2/26 8:36 AM, Sascha Hauer wrote:
> Replace the separate net_eth_to_udp_payload() and net_eth_to_udplen()
> calls with the new consolidated net_eth_to_udp() helper.
> 
> The direct net_eth_to_iphdr() call is kept because SNTP needs to check
> the source IP address before processing the UDP payload.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  net/sntp.c | 14 +++++++++-----
>  1 file changed, 9 insertions(+), 5 deletions(-)
> 
> diff --git a/net/sntp.c b/net/sntp.c
> index be361f625d..c7441bc312 100644
> --- a/net/sntp.c
> +++ b/net/sntp.c
> @@ -75,19 +75,23 @@ static int sntp_send(void)
>  
>  static void sntp_handler(void *ctx, char *pkt, unsigned len)
>  {
> -	IPaddr_t ip_addr;
>  	struct iphdr *ip = net_eth_to_iphdr(pkt);
> -	struct ntp_packet *ntp =
> -	    (struct ntp_packet *)net_eth_to_udp_payload(pkt);
> +	struct net_udp_pkt udp;
> +	struct ntp_packet *ntp;
> +	IPaddr_t ip_addr;
>  
>  	ip_addr = net_read_ip((void *)&ip->saddr);
>  	if (ip_addr != net_sntp_ip)
>  		return;
>  
> -	len = net_eth_to_udplen(pkt);
> -	if (len < sizeof(struct ntp_packet))
> +	if (net_eth_to_udp(pkt, len, &udp))
>  		return;
>  
> +	if (udp.len < sizeof(struct ntp_packet))
> +		return;
> +
> +	ntp = udp.payload;
> +
>  	pr_debug("received SNTP response\n");
>  
>  	if (ntp->version != VERSION)
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



