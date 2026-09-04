Delivery-date: Fri, 04 Sep 2026 12:35:33 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x2RGe-00AhW2-0u
	for lore@lore.pengutronix.de;
	Fri, 04 Sep 2026 12:35:33 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="g/08OFX+";
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D554420583D
	for <lore@pengutronix.de>; Fri, 04 Sep 2026 12:35:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ca38XB6LMdBJFkCvwhOnDQ1IpOFnuBMrEG1+CFabwOs=; b=g/08OFX+AYO4xPWJhGGS33JT6t
	wAQeb49DF34wSAKgc+AzOSnthM0gfQzQVH/xrCGhAEhEgqHxx53ddYoCwFyDCEOpeabh6TfqrYYG/
	vWCgYXbDiphKizJ4fnseL0GxRmZDdSqoEURDyZGnhr6xheGscK5Pw5Ey2pHwxlgccuYmB7EblAYcO
	naQfzqblYMbuveoiAxDIC12zcyc/5uSMWXGz2KMzry8iAAtXickQzAGAeN294w8CElBrPAuGjBbZP
	Ej7V6bJ9n8s1Mjn3EnePhhvbrf2aBbfjI5IONufgtCAeAuoPHekL9GzwseIqABeQqU9ce95+Wtqmo
	h+F/67ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2RFO-00000001gCt-09mt;
	Fri, 04 Sep 2026 10:34:14 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2RFJ-00000001gAf-39wp
	for barebox@lists.infradead.org;
	Fri, 04 Sep 2026 10:34:11 +0000
Received: from ptx.office.stw.pengutronix.de (ptx.office.stw.4.pengutronix.de [10.9.0.3])
	(Authenticated sender: relay-from-ptx.office.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 75F0120583D;
	Fri, 04 Sep 2026 12:34:07 +0200 (CEST)
Received: by ptx.office.stw.pengutronix.de (Postfix, from userid 1056)
	id 5F3241BF581; Fri, 04 Sep 2026 12:34:07 +0200 (CEST)
Date: Fri, 4 Sep 2026 12:34:07 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Subject: Re: [PATCH master] ARM64: clocksource: drop too early error message
Message-ID: <apqenz5N2A29VIXa@pengutronix.de>
References: <20260904101345.399568-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260904101345.399568-1-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_033409_949615_6C8D577C 
X-CRM114-Status: GOOD (  17.04  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, 04 Sep 2026 12:13:45 +0200, Ahmad Fatoum wrote: >
   Constructors are executed directly after relocations were applied. > But only
    after applying relocations is it safe to run arbitrary C code. > [...] 
 
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
X-Stat-Signature: sitf8bnk373djj7k6x1y9ocqqxiyz48t
X-Rspamd-Queue-Id: D554420583D
X-Spamd-Result: default: False [-57.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]

On Fri, 04 Sep 2026 12:13:45 +0200, Ahmad Fatoum wrote:
> Constructors are executed directly after relocations were applied.
> But only after applying relocations is it safe to run arbitrary C code.
> 
> This causes an issue: If arm_arch_timer_init() fails and CONFIG_DEBUG_LL
> is enabled, the hardcoded serial port will be used, which may hang the
> system if serial setup has not happened yet.
> 
> Avoid this issue by skipping the error message.
> 
> I have declarative PBL entry point support in the works, which would side
> step this issue anyway, so doing anything fancy here right now is not
> worth the effort.
> 
> Reported-by: Michael Tretter <m.tretter@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Tested-by: Michael Tretter <m.tretter@pengutronix.de>

> ---
>  arch/arm/lib64/clocksource.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/arch/arm/lib64/clocksource.c b/arch/arm/lib64/clocksource.c
> index f992be09b8a7..f5fef1f3d410 100644
> --- a/arch/arm/lib64/clocksource.c
> +++ b/arch/arm/lib64/clocksource.c
> @@ -5,6 +5,5 @@
>  
>  __attribute__((constructor)) static void init_arch_clock(void)
>  {
> -	if (arm_arch_timer_init(0))
> -		puts_ll("Failed to setup architected timer\n");
> +	arm_arch_timer_init(0);
>  }
> -- 
> 2.47.3
> 


