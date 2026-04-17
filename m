Delivery-date: Fri, 17 Apr 2026 11:42:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDfid-00D935-1C
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 11:42:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDfic-0005Bx-QI
	for lore@pengutronix.de; Fri, 17 Apr 2026 11:42:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u2KKLTvK4c7aSlvlxyhdGnq50FLwU+l6lxELqKtKriI=; b=oDna/WDyOMz0/6cgmYT4tbNYKM
	EE1JJSggCJdy+QxIJpRFK2UPgDMNJBeGG4O/n+LHYWSM91EW/kAYQ1mFA6+Yaglg/ho+OP5Rrk4Vo
	AxQMsrB/izAAdXF6AQ4IBIxih8Ad28FdVOLRDpR1d1K9TgtKN3uXyr97QW0d6Q6DAyAZ+snOdk718
	RvybUq7FpLZX04DPzXH1sKvXQ0nSzpBdKCOGswz2BBos2j7Q7/VRRrFfWMuVlBidCE8uMlwKEw3N7
	Q4zo7nKlJvdwsqHEJOj/oDavwEXU7FVae6w63Ip2UlfMKnHJnJvM6NaPp3mewLSAZvWEckNFkambo
	F3HWrQ6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDfiD-00000003qXB-2mhV;
	Fri, 17 Apr 2026 09:42:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDfiA-00000003qWq-3YDp
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 09:42:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDfi9-00050Z-9d; Fri, 17 Apr 2026 11:42:05 +0200
Message-ID: <4bcae7c0-538a-4049-9395-9d34fdedaeaa@pengutronix.de>
Date: Fri, 17 Apr 2026 11:42:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Opus 4.6 (1M context)" <noreply@anthropic.com>
References: <20260402-net-tftp-buffer-overflows-v1-0-0a18aa8ea19e@pengutronix.de>
 <20260402-net-tftp-buffer-overflows-v1-4-0a18aa8ea19e@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260402-net-tftp-buffer-overflows-v1-4-0a18aa8ea19e@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_024207_037296_82FA4E03 
X-CRM114-Status: GOOD (  17.76  )
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
Subject: Re: [PATCH 4/4] fs: tftp: use bounded format for TFTP error message
 debug print
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 4/2/26 9:21 AM, Sascha Hauer wrote:
> The pr_debug for TFTP_ERROR uses %s to print the server's error
> message, but the message may not be null-terminated. This causes
> pr_debug to read past the packet data into uninitialized buffer
> memory.
> 
> Use %.*s with the remaining packet length to bound the read. This
> is only relevant in debug builds but is still worth fixing for
> correctness.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Co-Authored-By: Claude Opus 4.6 (1M context) <noreply@anthropic.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  fs/tftp.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/fs/tftp.c b/fs/tftp.c
> index 6dd4829184..8f01754fc0 100644
> --- a/fs/tftp.c
> +++ b/fs/tftp.c
> @@ -631,7 +631,9 @@ static void tftp_recv(struct file_priv *priv,
>  		break;
>  
>  	case TFTP_ERROR:
> -		pr_debug("error: '%s' (%d)\n", pkt + 2, ntohs(*(uint16_t *)pkt));
> +		pr_debug("error: '%.*s' (%d)\n",
> +			 len > 2 ? len - 2 : 0, pkt + 2,
> +			 ntohs(*(uint16_t *)pkt));
>  		switch (ntohs(*(uint16_t *)pkt)) {
>  		case 1:
>  			priv->err = -ENOENT;
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



