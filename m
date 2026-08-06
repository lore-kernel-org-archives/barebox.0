Delivery-date: Thu, 06 Aug 2026 15:08:45 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wrxq0-000BdZ-1Y
	for lore@lore.pengutronix.de;
	Thu, 06 Aug 2026 15:08:45 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 097062020FE
	for <lore@pengutronix.de>; Thu, 06 Aug 2026 15:08:41 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=UtIRQAl1;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ieFzkdZ3xxTt7WYk0UbQKRf4Tfj0f0Z0Dyb3FlYIa8c=; b=UtIRQAl1z0Xq3ZyJSISNCjWvxL
	+KgwEkSs1oswfDZ9mhIb9xRWo4r916ki+vL5jqQrt9tcFMzcSv1svHJhsW8nKkjRPebRAc9gem7Vf
	OUFRd0/eLG/lpSZRzWFJiKyutCh9YwT6o69v2ga/5KKjXqfgOEgE43HBRIyxFt089M8erEKpBj5No
	FDd8u6GfChgzXwC55b75JkJ6GBqGEo8IVdozQBODvVeMIPvr8GHDGjJ6y9vSz9wHv86Pu1sZYJECO
	dwUBspG3wK4y+wvGTS1m5D8EY6lA78zdag5GNsD0yubbH3GjLYy3PUpt+1hfk+XV5aBm/P/sXHdXV
	yI+XNxCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrxoa-00000005qsG-1Pvh;
	Thu, 06 Aug 2026 13:07:16 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrxoW-00000005qrv-1V5G
	for barebox@lists.infradead.org;
	Thu, 06 Aug 2026 13:07:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id DEE45201FAA;
	Thu, 06 Aug 2026 15:07:05 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wrxoP-00065E-2h;
	Thu, 06 Aug 2026 15:07:05 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wrxoP-00000009Mf2-3Hk3;
	Thu, 06 Aug 2026 15:07:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260806110658.3761972-1-a.fatoum@pengutronix.de>
References: <20260806110658.3761972-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH] efi: payload: gracefully handle OOM in initrd
 allocation
Message-Id: <178602162578.2230182.3946651143555991502.b4-ty@pengutronix.de>
Date: Thu, 06 Aug 2026 15:07:05 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_060712_550184_931E4807 
X-CRM114-Status: UNSURE (   4.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, 06 Aug 2026 13:06:55 +0200, Ahmad Fatoum wrote: >
    An initrd can get quite big, so we should not assume that this an > infallible
    allocation and instead propagate any OOM error code. > > Applied, thanks!
    
 
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 097062020FE
X-Stat-Signature: peq714m5eou88mh87yy4d95khpzb8azq
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action


On Thu, 06 Aug 2026 13:06:55 +0200, Ahmad Fatoum wrote:
> An initrd can get quite big, so we should not assume that this an
> infallible allocation and instead propagate any OOM error code.
> 
> 

Applied, thanks!

[1/1] efi: payload: gracefully handle OOM in initrd allocation
      https://git.pengutronix.de/cgit/barebox/commit/?id=4ca87477ca95 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



