Delivery-date: Fri, 17 Apr 2026 12:11:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDgAE-00D9gF-1R
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 12:11:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDgAD-00073N-SX
	for lore@pengutronix.de; Fri, 17 Apr 2026 12:11:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oxoNElbr9QhV0QfSNhpk3FS334LZjvD5rfYMmf0Ppu4=; b=hBe5pisjTMmyN7paWnpbCgZTs5
	AGcXpqGzUCPMvOjgMgwcjmr4wo4yBy4NLjeQ2FIF5JpTk47OtcbqQnMI0J6lZzKI2dxhVVCWpFBk3
	kXe5eM+dj41qT2o6JnpCLYRRJm8FCnn9LhR+onCgoMDlJKN9mcUVEyu6RcU8Yz9X8QfcqAQEdrmWk
	qWVof4Q1MR/n5t8bHBNWjP89jAgGA7yEsgilsUeKecVq4D4Fl5xQbJEIjtXl0bYyoipf7PJnIBwWW
	A4tE8Upp8FmLscBbsyHK/qmSH5Ds3Ggci8Vofh/dzz3ZKiN2+f3zOS1qbW3bOZ0KXdt2xP3RwMA07
	CMwzMltQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDg9k-00000003syC-1L7F;
	Fri, 17 Apr 2026 10:10:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDg9g-00000003sxq-3nWx
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 10:10:34 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDg9f-0006r6-9K; Fri, 17 Apr 2026 12:10:31 +0200
Message-ID: <7f0387e1-f98e-4dbf-be6b-1d97bb9d872d@pengutronix.de>
Date: Fri, 17 Apr 2026 12:10:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Opus 4.6" <noreply@anthropic.com>
References: <20260402-net-eth-do-udp-v1-0-af5d9fd6beec@pengutronix.de>
 <20260402-net-eth-do-udp-v1-4-af5d9fd6beec@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260402-net-eth-do-udp-v1-4-af5d9fd6beec@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_031032_952009_91C46CF7 
X-CRM114-Status: GOOD (  18.54  )
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
Subject: Re: [PATCH 04/10] fs: nfs: use net_eth_to_udp() for packet parsing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 4/2/26 8:36 AM, Sascha Hauer wrote:
> Replace net_eth_to_udp_payload() with the new consolidated
> net_eth_to_udp() helper.
> 
> This also fixes a bug where the old code used the NIC-level frame
> length (which includes ethernet, IP, and UDP headers) instead of the
> UDP payload length when copying packet data.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  fs/nfs.c | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
> 
> diff --git a/fs/nfs.c b/fs/nfs.c
> index 0b40c56ff3..39c92e4736 100644
> --- a/fs/nfs.c
> +++ b/fs/nfs.c
> @@ -1193,13 +1193,16 @@ static int nfs_read_req(struct file_priv *priv, uint64_t offset,
>  
>  static void nfs_handler(void *ctx, char *p, unsigned len)
>  {
> -	char *pkt = net_eth_to_udp_payload(p);
>  	struct nfs_priv *npriv = ctx;
> +	struct net_udp_pkt udp;
>  	struct packet *packet;
>  
> -	packet = xmalloc(sizeof(*packet) + len);
> -	memcpy(packet->data, pkt, len);
> -	packet->len = len;
> +	if (net_eth_to_udp(p, len, &udp))
> +		return;
> +
> +	packet = xmalloc(sizeof(*packet) + udp.len);
> +	memcpy(packet->data, udp.payload, udp.len);
> +	packet->len = udp.len;
>  	packet->pos = 0;
>  
>  	list_add_tail(&packet->list, &npriv->packets);
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



