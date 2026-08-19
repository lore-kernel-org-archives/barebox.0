Delivery-date: Wed, 19 Aug 2026 17:03:17 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wwhoy-004tiZ-1U
	for lore@lore.pengutronix.de;
	Wed, 19 Aug 2026 17:03:17 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id EB614201EB9
	for <lore@pengutronix.de>; Wed, 19 Aug 2026 17:03:12 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=RxmrsFd6;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:To:Subject:From
	:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nhu5+j76ylTsnrByIanHMIYKK9OeTm0/gqDVvz5yuh8=; b=RxmrsFd6ffv2+3Hh3t/zYXrSH5
	+tdC6oswn3pRtPXENYmN01XHHCPST4JphQ6uA1nMwwzfQnevvxq6DBj5wvJNy4XAcAHWY3P/uVn1h
	wDNuTQ4gCb44MTGrNqgdSpmhhfpDNx1uksOv8oQ4GcDIeTFIonbS5y2kVOIwaeuRomLk5KOE14L5z
	5AVYhlCfYZLBnM9arulP7Y/QrhDYZAYNwQzLIOXLBgsWcG23XBsYPJv+cLSqHlbTD6rfor08nu6xN
	YfLgvKVoFX2jFGdbi0p2I0DYJTVbjEyFt32j7uSOenPmh/8kFlEzpM4xeRTYNijRoS8ElPRINGkmm
	Q9J9xrZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwhnT-0000000A2UY-0Gl3;
	Wed, 19 Aug 2026 15:01:43 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwhnP-0000000A2U9-0hAG
	for barebox@lists.infradead.org;
	Wed, 19 Aug 2026 15:01:41 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 06F83200C90;
	Wed, 19 Aug 2026 17:01:33 +0200 (CEST)
Message-ID: <0c26bfcc-deb4-400c-aa46-e20f839d4194@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH 0/2] PBL: constructor fixes
To: "Ahmad Fatoum" <a.fatoum@pengutronix.de>
In-Reply-To: <f5d7e406-0e95-4da0-a0e2-208a4bddfdc4@pengutronix.de>
References: <20260819-next-v1-0-c1a1a8b44d02@pengutronix.de>
 <f5d7e406-0e95-4da0-a0e2-208a4bddfdc4@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Wed, 19 Aug 2026 15:01:32 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260819_080139_389176_4AD97E56 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-08-19 16:16, Ahmad Fatoum wrote: > Hi, > > On 8/19/26
    4:12 PM, Stefan Kerkmann wrote: > > Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
    > > --- > > Stefan Kerkmann (2): > > ARM/AR [...] 
 
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
Cc: =?utf-8?b?b3BlbiBsaXN0OkJBUkVCT1g=?= <barebox@lists.infradead.org>, Stefan Kerkmann <s.kerkmann@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 1f49wopqrr533fwuh3cbjsxufoaxshnf
X-Spamd-Result: default: False [-3.91 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	CC_EXCESS_BASE64(1.50)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: EB614201EB9

On 2026-08-19 16:16, Ahmad Fatoum wrote:
> Hi,
> 
> On 8/19/26 4:12 PM, Stefan Kerkmann wrote:
> > Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
> > ---
> > Stefan Kerkmann (2):
> >       ARM/ARM64/RISC-V: pbl: guard constructor support
> >       ARM64: setup_c: abi safe link register storage
> 
> if these are applied after what's in next, we would have intermittent
> breakage when doing a bisect right?
> 
> I would suggest either turning these into fixups or just resend the
> whole series.

I just squashed them into the original commit. But next time, yes, you
can send --fixup patches for patches in next.

I just learned there's also --fixup=amend:<commit> for replacing the
original commit message along with the fixup. There's even
--fixup=reword:<commit> for just rewording the commit message without
changing the patch content.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



