Delivery-date: Fri, 17 Apr 2026 11:15:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDfIK-00D8ee-0c
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 11:15:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDfII-0005DF-Fc
	for lore@pengutronix.de; Fri, 17 Apr 2026 11:15:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6/0C61at5hNjBs9Pa/8yibZoQOidt/kELOSqTUIvEqg=; b=1O1DkPBwmdJB4w+43NeBYsIzyR
	gAmlAYr+D6C3ly95ZjDuNDjcHRbWGrkFIge/OqDrp++xrIEhDobQDsvxv1mlcutrUoumSMDvC6Xxh
	VZTuzTM3oHtNSGLgF6EVxbXd+0Z0+YsdIiQt+2cTjP1OrMOZuTJSm3r1588CB15AeF2IJDiIBBszT
	sjh3kQJPNDqyyMo/hXMKdvs0oqVQgnBfIgLcPcUOflRWESDON+zavRQEhdb7SOuoPwJ1hb1oCPaGb
	zaOWk3GFT7stVQRkL8CT4mswCOpdL7K5TUjnvYuIek6d+xWOeowy7hFmkzE+UwMYsVrNqDl3/+Od7
	bF6XcrGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDfHq-00000003jzX-37qe;
	Fri, 17 Apr 2026 09:14:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDfHn-00000003jys-24EX
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 09:14:52 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDfHl-0004zj-Va; Fri, 17 Apr 2026 11:14:50 +0200
Message-ID: <69ec9b09-37a2-4631-b403-71371628024b@pengutronix.de>
Date: Fri, 17 Apr 2026 11:14:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Opus 4.6 (1M context)" <noreply@anthropic.com>
References: <20260402-net-tftp-buffer-overflows-v1-0-0a18aa8ea19e@pengutronix.de>
 <20260402-net-tftp-buffer-overflows-v1-1-0a18aa8ea19e@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260402-net-tftp-buffer-overflows-v1-1-0a18aa8ea19e@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_021451_540327_52EFD9F1 
X-CRM114-Status: GOOD (  24.53  )
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
Subject: Re: [PATCH 1/4] fs: tftp: prevent packet buffer overflow from long
 filenames
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 4/2/26 9:21 AM, Sascha Hauer wrote:
> tftp_send() constructs RRQ/WRQ packets by sprintf'ing the filename and
> TFTP options directly into the packet buffer with no bounds checking.
> The packet buffer is PKTSIZE (1536) bytes with 42 bytes of headers,
> leaving 1494 bytes of UDP payload. A filename longer than ~1418 bytes
> overflows the packet buffer, corrupting adjacent heap memory.
> 
> Replace sprintf with snprintf, tracking available buffer space and
> returning -ENAMETOOLONG if the packet would exceed the buffer.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Co-Authored-By: Claude Opus 4.6 (1M context) <noreply@anthropic.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  fs/tftp.c | 36 +++++++++++++++++++++++++++++-------
>  1 file changed, 29 insertions(+), 7 deletions(-)
> 
> diff --git a/fs/tftp.c b/fs/tftp.c
> index a454306b4b..1b15bc18e7 100644
> --- a/fs/tftp.c
> +++ b/fs/tftp.c
> @@ -79,6 +79,10 @@
>  /* allocate this number of blocks more than needed in the fifo */
>  #define TFTP_EXTRA_BLOCKS	2
>  
> +/* Maximum UDP payload that fits in a PKTSIZE packet buffer */
> +#define TFTP_MAX_UDP_PAYLOAD	(PKTSIZE - ETHER_HDR_SIZE - \
> +				 sizeof(struct iphdr) - sizeof(struct udphdr))
> +
>  /* marker for an emtpy 'tftp_cache' */
>  #define TFTP_CACHE_NO_ID	(-1)
>  
> @@ -218,7 +222,9 @@ static int tftp_send(struct file_priv *priv)
>  
>  	switch (priv->state) {
>  	case STATE_RRQ:
> -	case STATE_WRQ:
> +	case STATE_WRQ: {
> +		int room, n;
> +
>  		if (priv->push || priv->is_getattr)
>  			/* atm, windowsize is supported only for RRQ and there
>  			   is no need to request a full window when we are
> @@ -235,7 +241,9 @@ static int tftp_send(struct file_priv *priv)
>  		else
>  			*s++ = htons(TFTP_WRQ);
>  		pkt = (unsigned char *)s;
> -		pkt += sprintf((unsigned char *)pkt,
> +		room = TFTP_MAX_UDP_PAYLOAD - (pkt - xp);
> +
> +		n = snprintf(pkt, room,
>  				"%s%c"
>  				"octet%c"
>  				"timeout%c"
> @@ -250,24 +258,38 @@ static int tftp_send(struct file_priv *priv)
>  				/* use only a minimal blksize for getattr
>  				   operations, */
>  				priv->is_getattr ? TFTP_BLOCK_SIZE : TFTP_MTU_SIZE);
> -		pkt++;
> +		if (n >= room)
> +			return -ENAMETOOLONG;
> +		pkt += n + 1;
> +		room -= n + 1;
>  
> -		if (!priv->push)
> +		if (!priv->push) {
>  			/* we do not know the filesize in WRQ requests and
>  			   'priv->filesize' will always be zero */
> -			pkt += sprintf((unsigned char *)pkt,
> +			n = snprintf(pkt, room,
>  				       "tsize%c%lld%c",
>  				       '\0', priv->filesize,
>  				       '\0');
> +			if (n >= room)
> +				return -ENAMETOOLONG;
> +			pkt += n;
> +			room -= n;
> +		}
>  
> -		if (window_size > 1)
> -			pkt += sprintf((unsigned char *)pkt,
> +		if (window_size > 1) {
> +			n = snprintf(pkt, room,
>  				       "windowsize%c%u%c",
>  				       '\0', window_size,
>  				       '\0');
> +			if (n >= room)
> +				return -ENAMETOOLONG;
> +			pkt += n;
> +			room -= n;
> +		}
>  
>  		len = pkt - xp;
>  		break;
> +	}
>  
>  	case STATE_RDATA:
>  		xp = pkt;
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



