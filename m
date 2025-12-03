Delivery-date: Wed, 03 Dec 2025 10:00:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQiic-007SU4-1E
	for lore@lore.pengutronix.de;
	Wed, 03 Dec 2025 10:00:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQiib-0004Kw-Nm
	for lore@pengutronix.de; Wed, 03 Dec 2025 10:00:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ly29dT6IDhv8ZAcLkwrq7e/1kYgQGhU+QV5ubOLjNMw=; b=hwftM5VTE3CeRpgHnhPu5vmZL3
	SfHgI4v/jLpbf44B3tX1IQc7LJgxDGbFFHwwpdD/3rP3tnaEVibh0FJzz86zs2R0qiKan2s/BLjS6
	whSnangPqjG7/wk7ct03++aIKmECsMU9IqaA6FBYPTqBg3Krhzt0gagN6fox2RMFDE+U9YZ9sutt8
	6+R+wGshJoeqm154SIx0xkxrcn5RKSc90e90yra8tH+Bbg7wYANH/sA0MF9eucaXPcfPlOz5PjBuo
	tmFy9R8atza080iPl8c/bbtlWz79SyZl+lmT+1dGbMbXeqrMo6fyhfw17oeVj/bLh506KwrOj6yKA
	+Ll8haWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQihr-00000006L7O-38tS;
	Wed, 03 Dec 2025 08:59:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQihp-00000006L5x-1cOA
	for barebox@lists.infradead.org;
	Wed, 03 Dec 2025 08:59:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vQihm-0004Ax-Hr; Wed, 03 Dec 2025 09:59:22 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vQihm-003kS8-1B;
	Wed, 03 Dec 2025 09:59:22 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vQihm-003Z2O-0r;
	Wed, 03 Dec 2025 09:59:22 +0100
Date: Wed, 3 Dec 2025 09:59:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jonas Rebmann <jre@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aS_76uN2baGiGPdu@pengutronix.de>
References: <20251202-base64-bounds-v2-0-34d3716c3f55@pengutronix.de>
 <20251202-base64-bounds-v2-1-34d3716c3f55@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251202-base64-bounds-v2-1-34d3716c3f55@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_005925_424979_4D25E8F2 
X-CRM114-Status: GOOD (  26.15  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] lib: base64: Fix out-of-bounds potential by
 respecting dst_len
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Dec 02, 2025 at 10:22:44AM +0100, Jonas Rebmann wrote:
> __decode_base64 generally writes the input in 3 bytes increments,
> corresponding to 4 bytes increments in the base64 input buffer. This
> means that in order to respect dst_len as the size of the output buffer,
> the case of exceeding dst_len within a loop iteration must be
> considered.
> 
> In such a case, refrain from writing the last one or two bytes if that
> write would be past dst_len.
> 
> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
> ---
>  lib/base64.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)

I wonder if we should switch to the kernel functions from lib/base64.c
instead. They look much more straight forward than the busybox based
implementation.

Sascha

> 
> diff --git a/lib/base64.c b/lib/base64.c
> index d5ab217528..3e29f0a56c 100644
> --- a/lib/base64.c
> +++ b/lib/base64.c
> @@ -163,19 +163,19 @@ static int __decode_base64(char *p_dst, int dst_len, const char *src, bool url)
>  		 */
>  		if (count > 1)
>  			*dst++ = six_bit[0] << 2 | six_bit[1] >> 4;
> -		if (count > 2)
> +		if (count > 2 && dst_len > 1)
>  			*dst++ = six_bit[1] << 4 | six_bit[2] >> 2;
> -		if (count > 3)
> +		if (count > 3 && dst_len > 2)
>  			*dst++ = six_bit[2] << 6 | six_bit[3];
> +		/* last character was "=" */
> +		if (count != 0)
> +			length += min(count - 1, dst_len);
>  		/*
>  		 * Note that if we decode "AA==" and ate first '=',
>  		 * we just decoded one char (count == 2) and now we'll
>  		 * do the loop once more to decode second '='.
>  		 */
>  		dst_len -= count-1;
> -		/* last character was "=" */
> -		if (count != 0)
> -			length += count - 1;
>  	}
>  ret:
>  	p_dst = dst;
> 
> -- 
> 2.51.2.535.g419c72cb8a
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


