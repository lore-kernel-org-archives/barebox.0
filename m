Delivery-date: Mon, 24 Aug 2026 12:16:59 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyRje-006fMd-1h
	for lore@lore.pengutronix.de;
	Mon, 24 Aug 2026 12:16:59 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 212EA201288
	for <lore@pengutronix.de>; Mon, 24 Aug 2026 12:16:59 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="eds71Op/";
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:To:Subject:From
	:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YKncuNWIqRaBHjVcvo8q1aD1VIapbPOmyUexkd5W86k=; b=eds71Op/I70u8gMZCuGHT0N3gb
	POG0xWuWs/xSbxAfvnzZAKYeBjw5EleoznNzTa+49KBiWTX++rjlOG2NylgzdYL06vVdwihGera5O
	Uy+0kdfsAC4giG5BBSLdYlPfTAHrGcucW0cKO+ZXvr9LKYisGKHBEdgo105Mv374KvUHXzuW89jEY
	Gfih8gPZupQ++1WF1hJA3yq42rHd3hXDEl93LS/BlS1tGJqFY0wqS6UHOp7x20s1fCxGbtMHGSgs8
	EWzAdCBawdT4OiNjzqYbhhLhnXS2qaNlH6LMelxi3tDovPfltSmkcb5r9KCuPEASLpHBqljp3vkbj
	RlRrkSiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyRjN-0000000GNUv-0yBx;
	Mon, 24 Aug 2026 10:16:41 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyRjJ-0000000GNUE-2ypN
	for barebox@lists.infradead.org;
	Mon, 24 Aug 2026 10:16:39 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 95F032010D6;
	Mon, 24 Aug 2026 12:16:35 +0200 (CEST)
Message-ID: <aded2a54-e040-4334-86d5-9790315613f0@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH] efi: payload: gracefully handle OOM in initrd
 allocation
To: "Ahmad Fatoum" <a.fatoum@pengutronix.de>
In-Reply-To: <99cfd733-1bcf-4b27-ae77-94b5820253d6@pengutronix.de>
References: <20260806110658.3761972-1-a.fatoum@pengutronix.de>
 <178602162578.2230182.3946651143555991502.b4-ty@pengutronix.de>
 <99cfd733-1bcf-4b27-ae77-94b5820253d6@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Mon, 24 Aug 2026 10:16:35 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_031637_906493_B684CC97 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-08-21 15:35, Ahmad Fatoum wrote: > Hello Sascha, >
    > On 8/6/26 3:07 PM, Sascha Hauer wrote: > > > > On Thu, 06 Aug 2026 13:06:55
    +0200, Ahmad Fatoum wrote: > >> An initrd can get quite big, so [...] 
 
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
Cc: barebox@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 9hhffd5eh96kjg7q1gwuyakisdzdwfns
X-Spamd-Result: default: False [-5.41 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 212EA201288

On 2026-08-21 15:35, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 8/6/26 3:07 PM, Sascha Hauer wrote:
> > 
> > On Thu, 06 Aug 2026 13:06:55 +0200, Ahmad Fatoum wrote:
> >> An initrd can get quite big, so we should not assume that this an
> >> infallible allocation and instead propagate any OOM error code.
> >>
> >>
> > 
> > Applied, thanks!
> 
> I can't find this patch on next.

I don't know how this slipped through the cracks. Should be there now.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



