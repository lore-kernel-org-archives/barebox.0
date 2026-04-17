Delivery-date: Fri, 17 Apr 2026 11:33:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDfZW-00D8tz-04
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 11:33:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDfZV-00025M-En
	for lore@pengutronix.de; Fri, 17 Apr 2026 11:33:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sH9IgUUmxM4GeCVpFZW3rjxIZaFqiZ/s/VTqZmoiL/g=; b=J5I1LY0dvLt2FL3G3qTponPAdB
	vzbYCfHLUyICpK0BGu8CzuyR2/dJ64TSEpGSsWRSDDJl8a6K2cDt6pYgroXiWpdQ3Bt0cyM/emeV3
	7bxLm2IkCSqbEpzjLTrXcTBx2McxdP/O6SRPSFXUFWWFOfZOB4CQXUxsfi1+gD1OqkizayfA4nNTb
	790BqAAc+61dUrz4FNIMGXAmOq7xbkjwNSC2C7LNAmX//oDchiPyaed9PxPepl6HO6jfVL/2EuAdj
	4OyqleD7gjB3F2587NkvcsgABeCR/4fgq3XCXBnS6PHZaU3u045rZL3dRV8vRTkuBjIvrYifNt41z
	78i8cqTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDfZ7-00000003pwF-2YPE;
	Fri, 17 Apr 2026 09:32:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDfZ5-00000003pvt-1Rnq
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 09:32:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDfZ3-0001ux-Q2; Fri, 17 Apr 2026 11:32:41 +0200
Message-ID: <82b0da9a-1e6c-4f55-b96c-c208115c76c7@pengutronix.de>
Date: Fri, 17 Apr 2026 11:32:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Opus 4.6 (1M context)" <noreply@anthropic.com>
References: <20260402-net-tftp-buffer-overflows-v1-0-0a18aa8ea19e@pengutronix.de>
 <20260402-net-tftp-buffer-overflows-v1-3-0a18aa8ea19e@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260402-net-tftp-buffer-overflows-v1-3-0a18aa8ea19e@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_023243_390685_6F8651B4 
X-CRM114-Status: GOOD (  18.33  )
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
Subject: Re: [PATCH 3/4] fs: tftp: reject OACK with blocksize of zero
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 4/2/26 9:21 AM, Sascha Hauer wrote:
> tftp_parse_oack() validates that windowsize is non-zero but does not
> check blocksize. A malicious TFTP server sending 'blksize\0000\0' in
> the OACK sets priv->blocksize to 0, which causes:
> 
>   - kfifo_alloc(0 * ...) allocating a zero-sized fifo
>   - tftp_write() entering an infinite loop on
>     'while (kfifo_len(fifo) >= 0)', spinning on kfifo_get with size 0
>   - tftp_put_data() rejecting all data packets as oversized
> 
> Add blocksize == 0 to the existing OACK validation check.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Co-Authored-By: Claude Opus 4.6 (1M context) <noreply@anthropic.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  fs/tftp.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/fs/tftp.c b/fs/tftp.c
> index 03e9d552aa..6dd4829184 100644
> --- a/fs/tftp.c
> +++ b/fs/tftp.c
> @@ -382,7 +382,8 @@ static int tftp_parse_oack(struct file_priv *priv, unsigned char *pkt, int len)
>  		s = val + strlen(val) + 1;
>  	}
>  
> -	if (priv->blocksize > TFTP_MTU_SIZE ||
> +	if (priv->blocksize == 0 ||
> +	    priv->blocksize > TFTP_MTU_SIZE ||
>  	    priv->windowsize > TFTP_MAX_WINDOW_SIZE ||
>  	    priv->windowsize == 0) {
>  		pr_warn("tftp: invalid oack response\n");
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



