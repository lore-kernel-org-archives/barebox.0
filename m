Delivery-date: Mon, 31 Aug 2026 14:16:10 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x10vp-009GyV-0e
	for lore@lore.pengutronix.de;
	Mon, 31 Aug 2026 14:16:09 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C1588201BCA
	for <lore@pengutronix.de>; Mon, 31 Aug 2026 14:16:09 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=DUqx9zpB;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w9ai6UrYuXB+qfc18KCqEOPJFOWk7Q0HvZM4hzOhPvQ=; b=DUqx9zpB41IYV5iI8yGgge81vd
	Lh44OW28vwqaxe+Wp1YLCcYsz+rcOwB5FbMq7E8v2j6gJ02QeK+eBdsQm3KGWTvXzSXBBwnZKf/69
	4uvLGGbVKtGKFfq7hg/Vb67tBV7oZGRA6mPq5VPghq6kJyAaQTxLiJwDn9u5ztAsNOqRi3dD414mU
	G9831ysoevQAM6htIDnVoQ1VboCBhtRZS2YW3ST3fDgebk1AVKWAeiNUwCdLpL7kic0wWfhJTgFjj
	u4Vk0ptEekvprgEUYMLl2a96x2qJHCgB74WH5DZOzpA2vz9+ptsOJ8CTn6dz91gFCo1JBGaCJDwcM
	+VE3shaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x10ue-00000009HBo-3E5x;
	Mon, 31 Aug 2026 12:14:56 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x10ub-00000009HAs-1tDr
	for barebox@lists.infradead.org;
	Mon, 31 Aug 2026 12:14:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 8373320071A;
	Mon, 31 Aug 2026 14:14:51 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x10uZ-004Fqk-1P;
	Mon, 31 Aug 2026 14:14:51 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x10uZ-0000000H4MA-1YYz;
	Mon, 31 Aug 2026 14:14:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260831100336.490064-1-a.fatoum@pengutronix.de>
References: <20260831100336.490064-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH master] ARM64: lds: place relocation tables explicitly
Message-Id: <178817849136.4068238.10465491206741072588.b4-ty@pengutronix.de>
Date: Mon, 31 Aug 2026 14:14:51 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_051453_644470_4B650299 
X-CRM114-Status: UNSURE (   5.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, 31 Aug 2026 12:03:32 +0200, Ahmad Fatoum wrote: >
    arch/arm/lib64/barebox.lds.S names PHDRS, but doesn't mention .rela.dyn,
   > .relr.dyn or .dynsym, so the linker places them as orphans. > > Wi [...]
    
 
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
X-Stat-Signature: oaicic7bztefikoebp185ebk9mitpmbf
X-Rspamd-Queue-Id: C1588201BCA
X-Spamd-Result: default: False [-57.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:c01:1d::a2:received,2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
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
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action


On Mon, 31 Aug 2026 12:03:32 +0200, Ahmad Fatoum wrote:
> arch/arm/lib64/barebox.lds.S names PHDRS, but doesn't mention .rela.dyn,
> .relr.dyn or .dynsym, so the linker places them as orphans.
> 
> With CONFIG_RELR disabled and a RELA table of several hundred KiB, GNU ld
> squeezes it in-between .efi_runtime.text and .efi_runtime.data.
> The latter, which starts its own PT_LOAD segment, ends then at an
> unaligned address:
> 
> [...]

Applied, thanks!

[1/1] ARM64: lds: place relocation tables explicitly
      https://git.pengutronix.de/cgit/barebox/commit/?id=39ce98f9cb1c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



