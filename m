Delivery-date: Thu, 01 Oct 2026 10:32:22 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCCDG-008NS9-12
	for lore@lore.pengutronix.de;
	Thu, 01 Oct 2026 10:32:22 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C492D201F18
	for <lore@pengutronix.de>; Thu, 01 Oct 2026 10:32:20 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="0T3Z3IM/";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=OZuokIjF;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790843542; a=rsa-sha256;
	cv=pass;
	b=aKR0uA0yRzVIbFzGPKCa9l/tNslyHmYECtsIeLyBpTyBRe+oD0ZisWugWWVABUhLuCmBza
	9QoyUMmqh8A5o5qz02wi4vQzFHSoZrPbveaiqZtnWRVAkLHR1H/dCxKWvpRHRSbFczpTrF
	+JxFU4QC3WUKIMOEP+RX+wXvswoUeQkjAeHEQkJMKzA9utnOV93vawfOOA6RDdae8YKNEE
	MxZhEZzbk0LQDdIFcYQ1Xv5RRMx+1My4zKUVa5lEUAOU6VWleGQTMljSUeviM4XRfH6mov
	Vpn8vCBDfvbScNJhum0QcZ1g+sqSBCaDpu/rUK2qShioy4j+3Lns+G5qhA38MA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="0T3Z3IM/";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=OZuokIjF;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790843542;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=v7ttcgzodUTa5+ukN7tqJZxCCAgHaRF8Hy0BtM9+s/g=;
	b=NRF66wNKt94y9Fc1eO50pvNDnPyAJS6tgZInMtEv1WY/uzkeF3cdMSQlALWjfUQJoP37iH
	JY0wujwfuMJITbRsH9acqWJVuWWqDknS881iK0Lbbv8bBzPpYQC+uk9qiUlE2ATNzq/DjE
	a5BUMQlhg0IcDJbfQWfZPzJm2GMWGnAsU3i0jKZgWqEgGkEPFNEhhBjh3PN0RgxJXJhkYI
	M0vjkvbqUOgfNMEajMakl7DVVIIs/MWx4+fFyH8vAZuBq+maz0difJvzgfXx5hE8twRQzj
	xSbZyiUj+y9DAi0LJc7Y0XHtl2jJbLoR03OP+Uj5ZML6iZGJcA06JF3v7lgSfA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v7ttcgzodUTa5+ukN7tqJZxCCAgHaRF8Hy0BtM9+s/g=; b=0T3Z3IM/4oyqZnST52Yec599I3
	o0OgwcCENqJLc3tAUslR/UeIVsZ6Z7efoILoGt4jPg01yKqsuLlM+7xjB5mD9qk+Ja252WiJ7mk8X
	auBBUp6srwk/0cNppgL7nS0D+IhYVBp2Q+EnXuVJVCd2c4GLWAUjae6nb8GzR9WQLmbsGekVRc4D1
	COZRdjSQPG+2MirOnkeyGbhn6tkf6oIydmHqmg0vPx/9t+nm/acGuCZPI8+SPF1fwlD0BJdSAk3jR
	QWp6NWuSt8fzJIg2wQXY+4xMdQD/eWUNNUEhjE/4hhXOe+67EAOGLwiT37HuqyXTFS+5W2XnPddBD
	1JbgYv+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCCBu-00000008An2-3wnX;
	Thu, 01 Oct 2026 08:30:58 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCCBr-00000008Am1-1dfb
	for barebox@lists.infradead.org;
	Thu, 01 Oct 2026 08:30:57 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 91793200206;
	Thu, 01 Oct 2026 10:30:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790843451;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=v7ttcgzodUTa5+ukN7tqJZxCCAgHaRF8Hy0BtM9+s/g=;
	b=OZuokIjFNumOzViSE+Tf+kCFZzTV3FgwALmGRoQ0uxX4SMeD4JCcX+/PSoFO7PeJ7v6qdW
	Lr5H9XwsNKjaHV46VJGSSN1DGQPR0C9Ve986QnAXBNtPUqVv6avew0yyXZOMbItTWThvGO
	q6dnd2ciLLTV7QZJ4vR1lUgHOfBrB1j0v4z9YBB/5FwRZ2vR/rnpUDcEoEshn4C+D4Pj50
	sIDQQ8hAa8FJx4I5rAX8dfQKI6ykF/L1G34BqOprwTdF6/ms/l7CuFMVwdHLLQoPXwCTMf
	ddC/k9iO9CKNjIwijhbQagSIX9l7oXYjesXLyfqwPzJZv6xsMWhyoRLk4RPNsg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790843451; a=rsa-sha256;
	cv=none;
	b=FI5YApHyw7ZCqe11nVN3wyIqYNoAZX/OSNiTlIJTHs7w7fdoywxiIbYDymqzWnhW4ZXAjE
	RGBTnVHAOkEOUl92FadS8bhJVmWfc7ubQl6jbzLGERxbRl+c0Js8XqUIHb6MMWOqGGL3Mx
	2IMorhrOe1HQJBuvLzkLJrXCcw/NkxOsxSJoosBbjRB/OBLGwaIyn5I9YNxBLehAoFFBHa
	XvfGZr000wSatFjuUQUATR9uhNR4TLMLlRi496AZH3N23o6lxoL4+ZjeUrHrvVJ9iwsnuH
	8FljYXykAdZs7pcNkREaB39wmc//bad0SyvuZFk/3slSEGmt8DtUMZbMfp6qRw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790843451;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=v7ttcgzodUTa5+ukN7tqJZxCCAgHaRF8Hy0BtM9+s/g=;
	b=LY041H7jWm3xRB5hcp+RCk1E/1AI4dZuFJ1IFzLadERAnRy3GimCWFsQD/6xhR79+gWLRn
	QloCm/FHX/nhdyfAo7RGrjem+oRvPDmRk8OvkR2pP4BEqvlfO4KDiv8rBuXRqeKcZu1WyN
	pCXVp9mtdIsg6cxS1hluTa5ViXRSikhOgusgHj7q6Y+sR+HZL3cUNdIAkAygtzl9heqg1+
	8kImWq/Gmbbpb5kzVboPNEG/X3Z+H/njzhnH7fcbxsZgNpjk3wVLx2TnVRdtpR3fuCjUSM
	WMgM69pe1ynYJfA0MeOrLuDIrHXiHbMOvadm2/JoCE1ebP5LRU57QxkMqr0bqA==
Message-ID: <5e5c848a-207c-45db-ad29-bf0b326badff@pengutronix.de>
Date: Thu, 1 Oct 2026 10:30:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] ARM: rockchip: boards: leave moving to the load
 address to atf.c
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20261001-rockchip-early-boottime-v1-0-dd891bcdb74f@pengutronix.de>
 <20261001-rockchip-early-boottime-v1-2-dd891bcdb74f@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20261001-rockchip-early-boottime-v1-2-dd891bcdb74f@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_013055_604551_F175DE91 
X-CRM114-Status: GOOD (  19.03  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello Sascha, On 10/1/26 9:42 AM, Sascha Hauer wrote: > The
    SoC entry functions now move barebox to the load address themselves, > with
    the MMU enabled. Stop doing it upfront with relocate_to_adr_full(), > which
    co [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: C492D201F18
X-Stat-Signature: 8ehghkd44pzo3onn51xhpkkt6qo4c5fb

Hello Sascha,

On 10/1/26 9:42 AM, Sascha Hauer wrote:
> The SoC entry functions now move barebox to the load address themselves,
> with the MMU enabled. Stop doing it upfront with relocate_to_adr_full(),
> which copies the image with the MMU off, and just relocate in place.
> 
> Assisted-by: Claude:claude-opus-5-5
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Will an out-of-tree board that still has the same old pattern continue
to work normally?

Thanks,
Ahmad


> ---
>  arch/arm/boards/pine64-pinetab2/lowlevel.c           | 10 ++--------
>  arch/arm/boards/pine64-quartz64/lowlevel.c           |  5 +----
>  arch/arm/boards/protonic-prtpuk/lowlevel.c           |  5 +----
>  arch/arm/boards/protonic-rk356x/lowlevel.c           |  5 +----
>  arch/arm/boards/qnap-tsx33/lowlevel.c                | 18 ++----------------
>  arch/arm/boards/radxa-cm3/lowlevel.c                 |  5 +----
>  arch/arm/boards/radxa-rock3/lowlevel.c               |  5 +----
>  arch/arm/boards/radxa-rock5/lowlevel.c               | 10 ++--------
>  arch/arm/boards/rockchip-rk3562-evb2/lowlevel.c      |  5 +----
>  arch/arm/boards/rockchip-rk3562-kickpi-k3/lowlevel.c |  5 +----
>  arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c |  5 +----
>  arch/arm/boards/rockchip-rk3568-evb/lowlevel.c       |  5 +----
>  arch/arm/boards/wolfvision-pf5/lowlevel.c            |  9 +--------
>  arch/arm/boards/xunlong-orangepi-5-plus/lowlevel.c   |  5 +----
>  14 files changed, 17 insertions(+), 80 deletions(-)
> 
> diff --git a/arch/arm/boards/pine64-pinetab2/lowlevel.c b/arch/arm/boards/pine64-pinetab2/lowlevel.c
> index 73ca6866f0..63286bf630 100644
> --- a/arch/arm/boards/pine64-pinetab2/lowlevel.c
> +++ b/arch/arm/boards/pine64-pinetab2/lowlevel.c
> @@ -12,10 +12,7 @@ ENTRY_FUNCTION(start_pinetab2_v0, r0, r1, r2)
>  {
>  	putc_ll('>');
>  
> -	if (current_el() == 3)
> -		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
> -	else
> -		relocate_to_current_adr();
> +	relocate_to_current_adr();
>  
>  	setup_c();
>  
> @@ -26,10 +23,7 @@ ENTRY_FUNCTION(start_pinetab2_v2, r0, r1, r2)
>  {
>  	putc_ll('>');
>  
> -	if (current_el() == 3)
> -		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
> -	else
> -		relocate_to_current_adr();
> +	relocate_to_current_adr();
>  
>  	setup_c();
>  
> diff --git a/arch/arm/boards/pine64-quartz64/lowlevel.c b/arch/arm/boards/pine64-quartz64/lowlevel.c
> index 7723d47860..6a1169d24a 100644
> --- a/arch/arm/boards/pine64-quartz64/lowlevel.c
> +++ b/arch/arm/boards/pine64-quartz64/lowlevel.c
> @@ -12,10 +12,7 @@ ENTRY_FUNCTION(start_quartz64a, r0, r1, r2)
>  {
>  	putc_ll('>');
>  
> -	if (current_el() == 3)
> -		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
> -	else
> -		relocate_to_current_adr();
> +	relocate_to_current_adr();
>  
>  	setup_c();
>  
> diff --git a/arch/arm/boards/protonic-prtpuk/lowlevel.c b/arch/arm/boards/protonic-prtpuk/lowlevel.c
> index 08de527bf6..df1588d343 100644
> --- a/arch/arm/boards/protonic-prtpuk/lowlevel.c
> +++ b/arch/arm/boards/protonic-prtpuk/lowlevel.c
> @@ -12,10 +12,7 @@ ENTRY_FUNCTION(start_prtpuk, r0, r1, r2)
>  {
>  	putc_ll('>');
>  
> -	if (current_el() == 3)
> -		relocate_to_adr_full(RK3576_BAREBOX_LOAD_ADDRESS);
> -	else
> -		relocate_to_current_adr();
> +	relocate_to_current_adr();
>  
>  	setup_c();
>  
> diff --git a/arch/arm/boards/protonic-rk356x/lowlevel.c b/arch/arm/boards/protonic-rk356x/lowlevel.c
> index 830d708b6e..1959881951 100644
> --- a/arch/arm/boards/protonic-rk356x/lowlevel.c
> +++ b/arch/arm/boards/protonic-rk356x/lowlevel.c
> @@ -22,10 +22,7 @@ ENTRY_FUNCTION(start_mecsbc, r0, r1, r2)
>  
>  	putc_ll('>');
>  
> -	if (current_el() == 3)
> -		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
> -	else
> -		relocate_to_current_adr();
> +	relocate_to_current_adr();
>  
>  	setup_c();
>  
> diff --git a/arch/arm/boards/qnap-tsx33/lowlevel.c b/arch/arm/boards/qnap-tsx33/lowlevel.c
> index c5458937d1..88e94471d2 100644
> --- a/arch/arm/boards/qnap-tsx33/lowlevel.c
> +++ b/arch/arm/boards/qnap-tsx33/lowlevel.c
> @@ -13,14 +13,7 @@ extern char __dtb_rk3568_qnap_ts433eu_start[];
>  
>  ENTRY_FUNCTION(start_rk3568_qnap_ts433, r0, r1, r2)
>  {
> -	/*
> -	 * Image execution starts at 0x0, but this is used for ATF and
> -	 * OP-TEE later, so move away from here.
> -	 */
> -	if (current_el() == 3)
> -		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
> -	else
> -		relocate_to_current_adr();
> +	relocate_to_current_adr();
>  
>  	setup_c();
>  
> @@ -35,14 +28,7 @@ ENTRY_FUNCTION(start_rk3568_qnap_ts433, r0, r1, r2)
>   */
>  ENTRY_FUNCTION(start_rk3568_qnap_ts433eu, r0, r1, r2)
>  {
> -	/*
> -	 * Image execution starts at 0x0, but this is used for ATF and
> -	 * OP-TEE later, so move away from here.
> -	 */
> -	if (current_el() == 3)
> -		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
> -	else
> -		relocate_to_current_adr();
> +	relocate_to_current_adr();
>  
>  	setup_c();
>  
> diff --git a/arch/arm/boards/radxa-cm3/lowlevel.c b/arch/arm/boards/radxa-cm3/lowlevel.c
> index e1b453f21f..2c91444d46 100644
> --- a/arch/arm/boards/radxa-cm3/lowlevel.c
> +++ b/arch/arm/boards/radxa-cm3/lowlevel.c
> @@ -21,10 +21,7 @@ ENTRY_FUNCTION(start_radxa_cm3_io, r0, r1, r2)
>  
>  	putc_ll('>');
>  
> -	if (current_el() == 3)
> -		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
> -	else
> -		relocate_to_current_adr();
> +	relocate_to_current_adr();
>  
>  	setup_c();
>  
> diff --git a/arch/arm/boards/radxa-rock3/lowlevel.c b/arch/arm/boards/radxa-rock3/lowlevel.c
> index ec407404b9..50ec27d272 100644
> --- a/arch/arm/boards/radxa-rock3/lowlevel.c
> +++ b/arch/arm/boards/radxa-rock3/lowlevel.c
> @@ -22,10 +22,7 @@ ENTRY_FUNCTION(start_rock3a, r0, r1, r2)
>  
>  	putc_ll('>');
>  
> -	if (current_el() == 3)
> -		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
> -	else
> -		relocate_to_current_adr();
> +	relocate_to_current_adr();
>  
>  	setup_c();
>  
> diff --git a/arch/arm/boards/radxa-rock5/lowlevel.c b/arch/arm/boards/radxa-rock5/lowlevel.c
> index e70752be31..f00c394c4d 100644
> --- a/arch/arm/boards/radxa-rock5/lowlevel.c
> +++ b/arch/arm/boards/radxa-rock5/lowlevel.c
> @@ -15,10 +15,7 @@ ENTRY_FUNCTION(start_rock5b, r0, r1, r2)
>  {
>  	putc_ll('>');
>  
> -	if (current_el() == 3)
> -		relocate_to_adr_full(RK3588_BAREBOX_LOAD_ADDRESS);
> -	else
> -		relocate_to_current_adr();
> +	relocate_to_current_adr();
>  
>  	setup_c();
>  
> @@ -29,10 +26,7 @@ ENTRY_FUNCTION(start_rock5t, r0, r1, r2)
>  {
>  	putc_ll('>');
>  
> -	if (current_el() == 3)
> -		relocate_to_adr_full(RK3588_BAREBOX_LOAD_ADDRESS);
> -	else
> -		relocate_to_current_adr();
> +	relocate_to_current_adr();
>  
>  	setup_c();
>  
> diff --git a/arch/arm/boards/rockchip-rk3562-evb2/lowlevel.c b/arch/arm/boards/rockchip-rk3562-evb2/lowlevel.c
> index 474f1a1332..9e083514e1 100644
> --- a/arch/arm/boards/rockchip-rk3562-evb2/lowlevel.c
> +++ b/arch/arm/boards/rockchip-rk3562-evb2/lowlevel.c
> @@ -12,10 +12,7 @@ ENTRY_FUNCTION(start_rk3562_evb2, r0, r1, r2)
>  {
>  	putc_ll('>');
>  
> -	if (current_el() == 3)
> -		relocate_to_adr_full(RK3562_BAREBOX_LOAD_ADDRESS);
> -	else
> -		relocate_to_current_adr();
> +	relocate_to_current_adr();
>  
>  	setup_c();
>  
> diff --git a/arch/arm/boards/rockchip-rk3562-kickpi-k3/lowlevel.c b/arch/arm/boards/rockchip-rk3562-kickpi-k3/lowlevel.c
> index 4afe83189d..b56f8d62cf 100644
> --- a/arch/arm/boards/rockchip-rk3562-kickpi-k3/lowlevel.c
> +++ b/arch/arm/boards/rockchip-rk3562-kickpi-k3/lowlevel.c
> @@ -12,10 +12,7 @@ ENTRY_FUNCTION(start_rk3562_kickpi_k3, r0, r1, r2)
>  {
>  	putc_ll('>');
>  
> -	if (current_el() == 3)
> -		relocate_to_adr_full(RK3562_BAREBOX_LOAD_ADDRESS);
> -	else
> -		relocate_to_current_adr();
> +	relocate_to_current_adr();
>  
>  	setup_c();
>  
> diff --git a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c
> index 12c2445287..021438e12f 100644
> --- a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c
> +++ b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c
> @@ -26,10 +26,7 @@ ENTRY_FUNCTION(start_rk3568_bpi_r2pro, r0, r1, r2)
>  	//clear bit 6 for 3v3 as it was set to 1v8
>  	writel(RK_CLRBITS(BIT(6)), PMU_GRF_IO_VSEL1);
>  
> -	if (current_el() == 3)
> -		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
> -	else
> -		relocate_to_current_adr();
> +	relocate_to_current_adr();
>  
>  	setup_c();
>  
> diff --git a/arch/arm/boards/rockchip-rk3568-evb/lowlevel.c b/arch/arm/boards/rockchip-rk3568-evb/lowlevel.c
> index d5ae70049e..a238f8bd73 100644
> --- a/arch/arm/boards/rockchip-rk3568-evb/lowlevel.c
> +++ b/arch/arm/boards/rockchip-rk3568-evb/lowlevel.c
> @@ -22,10 +22,7 @@ ENTRY_FUNCTION(start_rk3568_evb, r0, r1, r2)
>  
>  	putc_ll('>');
>  
> -	if (current_el() == 3)
> -		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
> -	else
> -		relocate_to_current_adr();
> +	relocate_to_current_adr();
>  
>  	setup_c();
>  
> diff --git a/arch/arm/boards/wolfvision-pf5/lowlevel.c b/arch/arm/boards/wolfvision-pf5/lowlevel.c
> index c20ca4ae13..49fb2143d7 100644
> --- a/arch/arm/boards/wolfvision-pf5/lowlevel.c
> +++ b/arch/arm/boards/wolfvision-pf5/lowlevel.c
> @@ -21,14 +21,7 @@ ENTRY_FUNCTION(start_rk3568_wolfvision_pf5, r0, r1, r2)
>  	 */
>  	writel(RK_SETBITS(0x30), 0xfdc20140);
>  
> -	/*
> -	 * Image execution starts at 0x0, but this is used for ATF and
> -	 * OP-TEE later, so move away from here.
> -	 */
> -	if (current_el() == 3)
> -		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
> -	else
> -		relocate_to_current_adr();
> +	relocate_to_current_adr();
>  
>  	setup_c();
>  
> diff --git a/arch/arm/boards/xunlong-orangepi-5-plus/lowlevel.c b/arch/arm/boards/xunlong-orangepi-5-plus/lowlevel.c
> index 2fa921eee0..45ba471d24 100644
> --- a/arch/arm/boards/xunlong-orangepi-5-plus/lowlevel.c
> +++ b/arch/arm/boards/xunlong-orangepi-5-plus/lowlevel.c
> @@ -14,10 +14,7 @@ ENTRY_FUNCTION(start_orangepi_5_plus, r0, r1, r2)
>  {
>  	putc_ll('>');
>  
> -	if (current_el() == 3)
> -		relocate_to_adr_full(RK3588_BAREBOX_LOAD_ADDRESS);
> -	else
> -		relocate_to_current_adr();
> +	relocate_to_current_adr();
>  
>  	setup_c();
>  
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



