Delivery-date: Fri, 10 Jul 2026 23:31:57 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wiIpB-002Nhv-2t
	for lore@lore.pengutronix.de;
	Fri, 10 Jul 2026 23:31:57 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B74E120067E
	for <lore@pengutronix.de>; Fri, 10 Jul 2026 23:31:57 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=YuYuzn7Y;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jvoAYbMhqO9QrKHktsHnqXxUzNhfyvE92KlnfBkLPFc=; b=YuYuzn7Y0zxkhCqWbEH1jC40cS
	DQm4Lfqh+E9PuRH3t8aQHULh+P/mFrHN5jIIyDUgrMJxDVGDJ4GEt1qNC0bQ6/pnXfwQ5gBPeIzNZ
	GGmmekAKLkGSWKalaZanWHV0vIE0ANI2Yk3y/mpnEuxDzI6y11Lykf9AmbduuOh1sJkmYecI5xgd9
	0FaB+gYVqZnUl5FnuYo1o8ttGqzmzd7EZE/MWzdoJ81/4MaTtxFVAi/BUJeojqgYN8AbyPP4to4DH
	UGlwmI1TEd+rhSDAANcX69ELFxEeFMGoles2CX0mHpaQ2vxAoiKi++CRkd1fXt50ufvL1rHSctlC0
	CISHRuRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIo9-00000005qna-3J2w;
	Fri, 10 Jul 2026 21:30:53 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIo7-00000005qn8-2Zp2
	for barebox@lists.infradead.org;
	Fri, 10 Jul 2026 21:30:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id C109820067E;
	Fri, 10 Jul 2026 23:30:49 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wiIo5-0018lU-2I;
	Fri, 10 Jul 2026 23:30:49 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wiIo5-0000000Eqpa-2gFm;
	Fri, 10 Jul 2026 23:30:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260710052813.607073-1-s.hauer@pengutronix.de>
References: <20260710052813.607073-1-s.hauer@pengutronix.de>
Subject: Re: [PATCH] ARM: dts: imx8mp-debix: use upstream dts files
 directly
Message-Id: <178371904963.3539664.2194812923810686320.b4-ty@pengutronix.de>
Date: Fri, 10 Jul 2026 23:30:49 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260710_143051_808167_72393BD3 
X-CRM114-Status: UNSURE (   6.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, 10 Jul 2026 07:28:12 +0200, Sascha Hauer wrote: >
    The Debix Model A and SOM A on BMB-08 board files carried private copies
   > of the upstream device trees (imx8mp-debix-*-upstream.*) in arch/a [...]
    
 
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
X-Spamd-Result: default: False [-6.61 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TO_DN_ALL(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:0:c01:1d::a2:received];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: B74E120067E
X-Stat-Signature: kfeejf5n153fijdcewgsyozf83q9ry7g


On Fri, 10 Jul 2026 07:28:12 +0200, Sascha Hauer wrote:
> The Debix Model A and SOM A on BMB-08 board files carried private copies
> of the upstream device trees (imx8mp-debix-*-upstream.*) in arch/arm/dts.
> barebox already imports the corresponding kernel device trees under
> dts/src, so include those directly and drop the stale local copies.
> 
> Besides removing the duplication, this pulls in the fixes and additions
> that accumulated upstream, most notably:
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: imx8mp-debix: use upstream dts files directly
      https://git.pengutronix.de/cgit/barebox/commit/?id=7761c47d8afa (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



