Delivery-date: Fri, 28 Aug 2026 16:25:49 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wzxWe-008BaB-35
	for lore@lore.pengutronix.de;
	Fri, 28 Aug 2026 16:25:49 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 8BEF1201D34
	for <lore@pengutronix.de>; Fri, 28 Aug 2026 16:25:49 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=RrJyCExY;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gt0sDR+ll3alzAJFchLtYZf9vuo/GKq9NIotgiNi+ec=; b=RrJyCExYsNNwtL6RRz2d4o2lJd
	m+CigiTTY8egCnN4IpupN4Ycm0MawcbrDWbtqwL+bq809Dsl35psxfsMO2Gk4UX91LaqrqGjWYh8M
	42mjBA24cTWB2uGNI9B+Q9yMQ7GmNvT78AUt5ew/omS+Yc+pnwXNYmU++RxB44Hjx5AiVyaijWgt+
	Tpfx/oXtcqW8/dBdwDQNUlwbqjuw1DU3OkL1jQBceeLHcYdX2Ksckf72p/S/K6iQQQ9hu9AX92wf4
	9/RK9RxBa0l6Op54acjVbJFTWZhYARhsMy+Ze4u2lOVnr1iNTedB1eGsrkOfAdfCChcrKyHo/6NoQ
	ixUswMhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzxVX-00000005yW7-2RRC;
	Fri, 28 Aug 2026 14:24:39 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzxVV-00000005yVW-3oz5
	for barebox@lists.infradead.org;
	Fri, 28 Aug 2026 14:24:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 2901E201D34;
	Fri, 28 Aug 2026 16:24:36 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wzxVU-003mfe-0I;
	Fri, 28 Aug 2026 16:24:36 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wzxVU-00000002C0U-07Gu;
	Fri, 28 Aug 2026 16:24:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260825081533.1240832-1-a.fatoum@pengutronix.de>
References: <20260825081533.1240832-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH v2 1/3] ARM: cpu: suppress
 arm_early_mmu_cache_invalidate if dcache enabled
Message-Id: <178792707602.522687.2245679892700328339.b4-ty@pengutronix.de>
Date: Fri, 28 Aug 2026 16:24:36 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_072438_103979_BE8D223C 
X-CRM114-Status: UNSURE (   7.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, 25 Aug 2026 10:13:15 +0200, Ahmad Fatoum wrote: >
    barebox built as EFI payload on ARM invalidates the data caches inside >
   barebox_arm_entry(), which may lead to memory corruption. > > Genera [...]
    
 
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
X-Spamd-Result: default: False [-57.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received,2a0a:edc0:0:c01:1d::a2:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-0.993];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: db8ot76n37ewbjq111kjccsi83c6qp3x
X-Rspamd-Queue-Id: 8BEF1201D34


On Tue, 25 Aug 2026 10:13:15 +0200, Ahmad Fatoum wrote:
> barebox built as EFI payload on ARM invalidates the data caches inside
> barebox_arm_entry(), which may lead to memory corruption.
> 
> Generally, calling arm_early_mmu_cache_invalidate() while the caches are
> enabled is a bad idea, so add a function that protects against that and
> use it in common code.
> 
> [...]

Applied, thanks!

[1/3] ARM: cpu: suppress arm_early_mmu_cache_invalidate if dcache enabled
      https://git.pengutronix.de/cgit/barebox/commit/?id=72faea821232 (link may not be stable)
[2/3] ARM: v7r: factor out armv7r_cache_enable
      https://git.pengutronix.de/cgit/barebox/commit/?id=14eafd21e89b (link may not be stable)
[3/3] ARM: always call cache_invalidate_stale before enabling D-Cache
      https://git.pengutronix.de/cgit/barebox/commit/?id=fcec14feed91 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



