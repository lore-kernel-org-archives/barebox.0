Delivery-date: Wed, 19 Aug 2026 16:17:59 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wwh78-004tCb-1s
	for lore@lore.pengutronix.de;
	Wed, 19 Aug 2026 16:17:59 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 17AB920190E
	for <lore@pengutronix.de>; Wed, 19 Aug 2026 16:17:55 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=3h6FUNjs;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8LMs2bXzBodq96r5JNv2885+rNUVY9M31G3aK7tF/Hk=; b=3h6FUNjsV8Rh5vMEhhhAy/st6p
	kDyjaR+6VjA5cJVGm8hnXruCo9E0LsjJH1oLr01gNN23ZnH7JWTXo2Eq7t3dZgxvJ5N61akKbx+HV
	6R4PrshTA2Z5bX/5BshzCUKaKr9Pbj6T3nHhBkFJN6dHWvt0uhIX42U/BBWX4vPfYuGuQxQEoR2ba
	/GHJiA9/OeiEMHUVDVA4WJbUIbHNMJH+ZUl2R8H1oYxZ9PLiuOwixKrQbKK8G2Mqu2IOjuErEffBF
	vIeGRLJ7l97XVjX+7v9j4TvqMXCBb/TcFj6GbkJTXzLv0Kv2Jz6yelo9yB8avc9FhEsXKr2yFNPjj
	6ni3qVGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwh5q-00000009xHy-3jPa;
	Wed, 19 Aug 2026 14:16:38 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwh5m-00000009xHQ-3Fby
	for barebox@lists.infradead.org;
	Wed, 19 Aug 2026 14:16:37 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 9E9B92010F9;
	Wed, 19 Aug 2026 16:16:28 +0200 (CEST)
Message-ID: <f5d7e406-0e95-4da0-a0e2-208a4bddfdc4@pengutronix.de>
Date: Wed, 19 Aug 2026 16:16:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] PBL: constructor fixes
To: Stefan Kerkmann <s.kerkmann@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20260819-next-v1-0-c1a1a8b44d02@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260819-next-v1-0-c1a1a8b44d02@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260819_071634_981686_F3A3C0E1 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On 8/19/26 4:12 PM, Stefan Kerkmann wrote: > Signed-off-by:
    Stefan Kerkmann <s.kerkmann@pengutronix.de> > --- > Stefan Kerkmann (2):
   > ARM/ARM64/RISC-V: pbl: guard constructor support > ARM64: setup_c [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
X-Stat-Signature: n4gcunu4on9rtqcj7k6x4j9eztszpxfs
X-Spamd-Result: default: False [-7.51 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:900:1d::77:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
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
X-Rspamd-Queue-Id: 17AB920190E

Hi,

On 8/19/26 4:12 PM, Stefan Kerkmann wrote:
> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
> ---
> Stefan Kerkmann (2):
>       ARM/ARM64/RISC-V: pbl: guard constructor support
>       ARM64: setup_c: abi safe link register storage

if these are applied after what's in next, we would have intermittent
breakage when doing a bisect right?

I would suggest either turning these into fixups or just resend the
whole series.

Cheers,
Ahmad

> 
>  arch/arm/Kconfig         | 1 +
>  arch/arm/cpu/setupc_64.S | 7 ++++---
>  arch/riscv/Kconfig       | 1 +
>  pbl/Kconfig              | 3 +++
>  pbl/Makefile             | 2 +-
>  5 files changed, 10 insertions(+), 4 deletions(-)
> ---
> base-commit: a3b5e97691e58ccea5c597a3fef03429ff078b02
> change-id: 20260819-next-17bc0fe12a43
> 
> Best regards,
> --  
> Stefan Kerkmann <s.kerkmann@pengutronix.de>
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



