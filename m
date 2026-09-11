Delivery-date: Fri, 11 Sep 2026 16:00:49 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x51o9-000y29-2y
	for lore@lore.pengutronix.de;
	Fri, 11 Sep 2026 16:00:49 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="XYFP6/cF";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 81ACE20004A
	for <lore@pengutronix.de>; Fri, 11 Sep 2026 16:00:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iv4olLtVmO2239L4MnvJXEmrrY652ZKpMHh2HBV75vc=; b=XYFP6/cFzuSCp72BJN41HbrR9n
	6lESLW5WzmcqBAJpLP8yAk88/xd0eXiqKiT+q8f1jLtOch4JWiAQlJI3Kx/yLwcbHvevj2ep41fq0
	PzXBkU2G5pmEOqVL/taIId//Je4TVPGtosEB+vVKSTXCs3qy6GxnDpGujcLbvXeSExfx2Z+SPNEmT
	HtSgVDGobBPbMQ5g4c2MT+V3fqu4H7a+Ia+oIndQEqFazP6xj8RLQfziIoCnImPcFLySVBlS5QHDn
	+aCt1Q1l7V3EE1Qpj6y1FO0TQt4aLWstUIlnUuO9DGCvjwMgzjVNW8OjujxTO/7kUlF5GKrCZcvE9
	fbw8JB5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x51mz-0000000GqKO-3bb5;
	Fri, 11 Sep 2026 13:59:37 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x51mw-0000000GqJh-48hv
	for barebox@lists.infradead.org;
	Fri, 11 Sep 2026 13:59:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 4C6A120268F;
	Fri, 11 Sep 2026 15:59:33 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x51mv-000Qdu-0j;
	Fri, 11 Sep 2026 15:59:33 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x51mv-0000000A8zL-0dlL;
	Fri, 11 Sep 2026 15:59:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: ske@pengutronix.de, mtr@pengutronix.de
In-Reply-To: <20260909114242.4099220-1-a.fatoum@pengutronix.de>
References: <20260909114242.4099220-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH master 1/2] clock: make udelay(), get_time_ns() and
 is_timeout() weak aliases
Message-Id: <178913517314.2417822.7794059177698860512.b4-ty@pengutronix.de>
Date: Fri, 11 Sep 2026 15:59:33 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_065935_173105_A49C6EA4 
X-CRM114-Status: UNSURE (   5.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, 09 Sep 2026 13:42:38 +0200, Ahmad Fatoum wrote: >
    The ARM64 PBL is about to override these three for the time before a > clocksource
    is registered. Give the clocksource based implementations [...] 
 
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
X-Rspamd-Server: mx1
X-Stat-Signature: iwej3su3jtnn3ixusmwr4dk5nt7qgtj6
X-Rspamd-Queue-Id: 81ACE20004A
X-Spamd-Result: default: False [-57.78 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.97)[99.88%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action


On Wed, 09 Sep 2026 13:42:38 +0200, Ahmad Fatoum wrote:
> The ARM64 PBL is about to override these three for the time before a
> clocksource is registered. Give the clocksource based implementations
> names of their own and turn the generic ones into weak aliases, so an
> override can still call the clocksource based version. No functional
> change.
> 
> 
> [...]

Applied, thanks!

[1/2] clock: make udelay(), get_time_ns() and is_timeout() weak aliases
      https://git.pengutronix.de/cgit/barebox/commit/?id=b87df7225a0b (link may not be stable)
[2/2] ARM64: fall back to reading the counter directly in the PBL udelay()
      https://git.pengutronix.de/cgit/barebox/commit/?id=50d84c8dd865 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



