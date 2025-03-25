Delivery-date: Tue, 25 Mar 2025 17:58:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tx7bm-0045eS-29
	for lore@lore.pengutronix.de;
	Tue, 25 Mar 2025 17:58:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tx7bk-0006dx-VI
	for lore@pengutronix.de; Tue, 25 Mar 2025 17:58:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o8r3lzavUlRxrT5iAu8kSVHJ8mgDgJkpwPYPlaefTqo=; b=oRZMvYlQD0eH0E0sIeb5PTF+ZU
	CwgsBdofqqJQeigPF/kRUY4PFZn8Wal57p1oIJ5sCdkkhGM+MLy2rQ3Ud2yjV2li6ycqVdFA9pVVa
	quwBmBUO5pDbi4f1M73BG+iPjTyovldcNaPp9NuUAClolhU5KIJ4/Q2Bt5fDQ9DtA5FKbi8rAyJaP
	KVLjKD40Pj9bj4m/ETxb7cWgw1ha0AtOm7ByJudNHNDusK09fUAFYdPHoRSd10U50M/iH9AZ4k7v8
	FcJA9FK5VyIZXUYHCHxtrBI45YBC8ohu5EQQkldueyR/TTjzqUyWulQPMgGpzDiDAlUNBa08pUdoR
	CWCo4FWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tx7bL-00000006YT5-1dc0;
	Tue, 25 Mar 2025 16:58:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tx7bI-00000006YSj-0q7Y
	for barebox@lists.infradead.org;
	Tue, 25 Mar 2025 16:58:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tx7bG-0006YP-8l; Tue, 25 Mar 2025 17:58:02 +0100
Message-ID: <13bee917-8783-456f-9426-71e77747f050@pengutronix.de>
Date: Tue, 25 Mar 2025 17:58:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jules Maselbas <jmaselbas@zdiv.net>, barebox@lists.infradead.org
References: <20250325155327.31981-1-jmaselbas@zdiv.net>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250325155327.31981-1-jmaselbas@zdiv.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250325_095804_239913_1C8FABF2 
X-CRM114-Status: GOOD (  12.69  )
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
Subject: Re: [PATCH 1/2] vsprintf: fix missing break when printing %pJP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Jules,

On 3/25/25 16:53, Jules Maselbas wrote:
> When the format `%pJP` was introduced the new switch case didn't had a
> break at the end, it was last case in the switch. However subsequent
> commit didn't add a break either, creating a potential fallthrough.
> Add the missing break.
> 
> Fixes: 107eeef8f2 ("vsprintf: add support for printing MAC addresses")
> Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>

Ouch, Good catch.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Thanks,
Ahmad

> ---
>  lib/vsprintf.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/lib/vsprintf.c b/lib/vsprintf.c
> index f553662ce8..0656ba3620 100644
> --- a/lib/vsprintf.c
> +++ b/lib/vsprintf.c
> @@ -561,6 +561,7 @@ static char *pointer(const char *fmt, char *buf, const char *end, const void *pt
>  	case 'J':
>  		if (fmt[1] == 'P' && IS_ENABLED(CONFIG_JSMN))
>  			return jsonpath_string(buf, end, ptr, field_width, precision, flags, fmt);
> +		break;
>          case 'M':
>  		/* Colon separated: 00:01:02:03:04:05 */
>  		return mac_address_string(buf, end, ptr, field_width, precision, flags, fmt);



