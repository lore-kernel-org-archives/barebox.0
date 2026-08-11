Delivery-date: Tue, 11 Aug 2026 12:22:31 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wtjct-001wms-0J
	for lore@lore.pengutronix.de;
	Tue, 11 Aug 2026 12:22:31 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id AA75A2017AA
	for <lore@pengutronix.de>; Tue, 11 Aug 2026 12:22:31 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Amy5MIc2;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UsDZ5FFr6hVcGkQkmYJ4B/yWVAKE5clLKGdX4FbFUjk=; b=Amy5MIc2NO0ZE6fqB0GgH1tPWE
	++1bLXR1PhfpGYbT+ANX7rpSAuddp3n1/LxUIFocsB3X3F377XK22hWwe9tmdGhMVavgwRVwfp3l6
	c7KT0cr6FZ3rCcaOciUa+/ALLzn5PHxmrD+rWQTz6lBucFrnHrkbRhXng7kEdwGZaAG2EujKhPtvZ
	+r1zUy8Hux4iwZgk797cozaee9MkXhS/Dkc4jMDsEGL2mWzihcLgIywB4iW5yTZwG9dyJiRCkAd64
	cXgX8sZ9gCzFNUmLxCIQihko6+BJdcn/9So/q4vHU9cfPqf3/UST0PK/ch6hl1jdXUXwzccdFm81E
	jW0b3xSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtjbh-0000000DqM1-2hqV;
	Tue, 11 Aug 2026 10:21:17 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtjbe-0000000DqKX-1kWi
	for barebox@lists.infradead.org;
	Tue, 11 Aug 2026 10:21:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id F1A9D2017DE;
	Tue, 11 Aug 2026 12:21:10 +0200 (CEST)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wtjba-000vws-2j;
	Tue, 11 Aug 2026 12:21:10 +0200
Message-ID: <a2b7c9d2-b6b0-4c64-818c-f945b117fb94@pengutronix.de>
Date: Tue, 11 Aug 2026 12:21:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] ARM: lib32: pbl: implement get_time_ns and
 is_timeout
To: Stefan Kerkmann <s.kerkmann@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20260811-feature-pbl-get-time-ns-v2-0-754ee021b19d@pengutronix.de>
 <20260811-feature-pbl-get-time-ns-v2-2-754ee021b19d@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260811-feature-pbl-get-time-ns-v2-2-754ee021b19d@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260811_032114_614497_021C4100 
X-CRM114-Status: GOOD (  20.25  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On 8/11/26 12:13 PM, Stefan Kerkmann wrote: > ARMv7-A
   cores can implement the optional 64bit wide generic timer > CNTPCT[1]. If
   it is present we can use it to implement the get_time_ns > and is_timeou [...]
    
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: egdr3iqscezpsiunyy66k3z6315m5hsb
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: AA75A2017AA

Hi,

On 8/11/26 12:13 PM, Stefan Kerkmann wrote:
> ARMv7-A cores can implement the optional 64bit wide generic timer
> CNTPCT[1]. If it is present we can use it to implement the get_time_ns
> and is_timeout helpers which in turn enable the whole read_poll_timeout
> class of functions in the PBL. As it is guaranteed that the timer won't
> wrap for 40 years no overflow handling is necessary.
> 
> [1]: See "ARM Architecture Reference Manual ARMv7-A and ARMv7-R edition
> (rev C.d)", Chapter B8 "The Generic Timer"
> 
> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
> ---
>  arch/arm/lib32/arm_architected_timer.c | 15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/lib32/arm_architected_timer.c b/arch/arm/lib32/arm_architected_timer.c
> index 54eca13f8b..75f74cbc15 100644
> --- a/arch/arm/lib32/arm_architected_timer.c
> +++ b/arch/arm/lib32/arm_architected_timer.c
> @@ -10,8 +10,21 @@ void arm_architected_timer_udelay(unsigned long us)
>  	unsigned long long ticks, cntfrq = get_cntfrq();
>  	unsigned long long start = get_cntpct();
>  
> -	ticks = DIV_ROUND_DOWN_ULL((us * cntfrq), 1000000);
> +	ticks = DIV_ROUND_DOWN_ULL((us * cntfrq), MSECOND);
>  
>  	while ((long)(start + ticks - get_cntpct()) > 0)
>  		;
>  }
> +
> +uint64_t get_time_ns(void)
> +{
> +	return get_cntpct() * SECOND / get_cntfrq();

I think you need to use one of the 64-bit division macros here.

> +int is_timeout(uint64_t start, uint64_t time_offset_ns)
> +{
> +	if ((int64_t)(start + time_offset_ns - get_time_ns()) < 0)
> +		return 1;
> +	else
> +		return 0;

That's a convoluted way to write

  return get_time_ns() >= start + time_offset_ns;

Why did you structure it this way with the cast?

(A 64-bit nanosecond timestamp overflows after hundreds of years).

Cheers,
Ahmad

> +}
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



