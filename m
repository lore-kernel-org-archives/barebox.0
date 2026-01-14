Delivery-date: Wed, 14 Jan 2026 13:05:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfzd0-001DsO-1A
	for lore@lore.pengutronix.de;
	Wed, 14 Jan 2026 13:05:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfzcz-0000gP-Cg
	for lore@pengutronix.de; Wed, 14 Jan 2026 13:05:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CiRDEhyK28uEDrDGniRWkO4fekRhHn/83N8cSXi0G4k=; b=REwHRtaNbisoJgLP1WDPAlJ0Sf
	jAh4/X2K49OfvdCFDRcArU7ZF/sB6q09XtVkV8+PN+D+wCLHLp1F7LbDWqVgvi4md0ZJOSuM/5WM5
	82K8TvgquZIzqaV8jQBsE/SGVJIgUiJBS9kLyyCNep3Ho4xUMrpBwZGRtj8FuhD9udGz0FMQrTHQo
	JVVB/eirvbSf3Cc3NN7j3DlzI0YmMyf40uBUsCLRbzJ5YCpOPYj5FmgzRflVYSSOUxo4rHQasHtnm
	U8PcXle0jky4iztJlrsq5ptQ3sCJPBKX8tavsj/WBcHXVt+R5NsTbJ0xRvd8HvLOvt3qkXIzBZy2D
	WxGekPIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfzcZ-000000095Hy-0kNy;
	Wed, 14 Jan 2026 12:05:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfzcT-000000095Fg-3nOL
	for barebox@lists.infradead.org;
	Wed, 14 Jan 2026 12:05:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfzcS-0000VM-D4; Wed, 14 Jan 2026 13:05:00 +0100
Message-ID: <5f597a3d-dc9e-4a19-83a2-ec4a250b176e@pengutronix.de>
Date: Wed, 14 Jan 2026 13:05:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
 <20251110-v2025-09-0-topic-optee-of-handling-v1-15-8f0625ac5471@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251110-v2025-09-0-topic-optee-of-handling-v1-15-8f0625ac5471@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_040501_989855_C4286BF5 
X-CRM114-Status: GOOD (  15.31  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 15/23] pbl: string: add strncmp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 11/10/25 9:34 PM, Marco Felsch wrote:
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

I split out this patch in a series that I just sent.

Cheers,
Ahmad

> ---
>  pbl/string.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/pbl/string.c b/pbl/string.c
> index 528f62ef2055aa59643e7a882b2ac1358813386d..89663fef3d6a5b0bdcbda2f3c6bc686f1ee4da71 100644
> --- a/pbl/string.c
> +++ b/pbl/string.c
> @@ -102,6 +102,21 @@ int strcmp(const char *cs, const char *ct)
>  	return res;
>  }
>  
> +int strncmp(const char *cs, const char *ct, size_t count)
> +{
> +	register signed char __res = 0;
> +
> +	BUG_ON(!cs || !ct);
> +
> +	while (count) {
> +		if ((__res = *cs - *ct++) != 0 || !*cs++)
> +			break;
> +		count--;
> +	}
> +
> +	return __res;
> +}
> +
>  int strcasecmp(const char *s1, const char *s2)
>  {
>  	int c1, c2;
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



