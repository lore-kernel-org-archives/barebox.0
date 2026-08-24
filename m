Delivery-date: Mon, 24 Aug 2026 12:23:02 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyRpW-006fRD-0U
	for lore@lore.pengutronix.de;
	Mon, 24 Aug 2026 12:23:02 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E8B012006E0
	for <lore@pengutronix.de>; Mon, 24 Aug 2026 12:23:01 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="plcx2m/r";
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+kftUKLQ1OOwVGc8ZEvFIRL+MNbJ3beyjrwypac8mfw=; b=plcx2m/rpbudjliTpMW0K8aAnG
	WzzA1oUf0qLd6Cpc3pCxn8SH0H0UI4HHGAh5OAssFd9CTYcgEgp+ob6PJ9tJvigbQbdRLiBMPLWNI
	mTRaaw419koIY6zWI9eDq1YZkPYqGlCIJyI7yRACNaWIjAKBunI067N0kpwvsk4S+3MSpZJKYhZZM
	mkU6J6chc386jeufh7cUe79DF4M3F/gc0lu9zUAERdgTE+IzGhDzs+T2UeFHxGpBmZji/G+d+LkZ2
	kea08wgOgP7HEodFOoLDOg7tcsC1uWpc5UI8YY4tk5gYSZqUTLInx5RIQKj2PtuRcFmM7iN8EC9qY
	flHH5FBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyRoQ-0000000GO6D-1mpU;
	Mon, 24 Aug 2026 10:21:54 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyRoO-0000000GO5P-1QoD
	for barebox@lists.infradead.org;
	Mon, 24 Aug 2026 10:21:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 7D6B4201288;
	Mon, 24 Aug 2026 12:21:50 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wyRoM-0035YR-1G;
	Mon, 24 Aug 2026 12:21:50 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wyRoM-0000000EFMq-1I8F;
	Mon, 24 Aug 2026 12:21:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Stephano Cetola <stephano@cetola.net>
In-Reply-To: <20260822-send-mmu-remap-order-v1-1-4ec8375941c5@cetola.net>
References: <20260822-send-mmu-remap-order-v1-1-4ec8375941c5@cetola.net>
Subject: Re: [PATCH] ARM: mmu64: fix arch_remap_range permission-strip
 order
Message-Id: <178756691030.3394682.1089709718239045944.b4-ty@pengutronix.de>
Date: Mon, 24 Aug 2026 12:21:50 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_032152_534183_AB6C78DC 
X-CRM114-Status: UNSURE (   6.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sat, 22 Aug 2026 07:07:31 -0700, Stephano Cetola wrote:
    > arch_remap_range() reassigned map_type via > arm_mmu_maybe_skip_permissions()
    before checking > maptype_is_compatible(map_type, MAP_CACHED [...] 
 
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
X-Stat-Signature: 9txi1nrnqcxygs9jo71o65o3b9nutdnc
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[99.98%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: E8B012006E0


On Sat, 22 Aug 2026 07:07:31 -0700, Stephano Cetola wrote:
> arch_remap_range() reassigned map_type via
> arm_mmu_maybe_skip_permissions() before checking
> maptype_is_compatible(map_type, MAP_CACHED) to decide whether to
> flush. arm_mmu_maybe_skip_permissions() can turn MAP_CACHED into
> MAP_CACHED_RWX, so the compatibility check ran against the
> already-stripped value instead of the caller's original request. A
> plain cached remap could silently skip the cache flush whenever
> permission-skipping is active, because MAP_CACHED_RWX no longer
> compares equal to MAP_CACHED.
> 
> [...]

Applied, thanks!

[1/1] ARM: mmu64: fix arch_remap_range permission-strip order
      https://git.pengutronix.de/cgit/barebox/commit/?id=9594f6449bff (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



