Delivery-date: Tue, 07 Jul 2026 09:00:11 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wgzmt-00189v-27
	for lore@lore.pengutronix.de;
	Tue, 07 Jul 2026 09:00:11 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 79F3B202590
	for <lore@pengutronix.de>; Tue, 07 Jul 2026 09:00:11 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=r7cfxt17;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gyQQL14JEztLjW2d58cg8jorzuS3oolN3tnj7EsFTI0=; b=r7cfxt17ArgfVBs4qYEm0wUpHk
	3nypVjqwJcXL36tKDxOYSSvre6XlxD0Dh9uBrytwwg2O7s/cbQr1f9qdlYhHM/jgADbFCEPsgqoCo
	ZMzSH7TQIrMfFP53WadciFvoOKiP3RqI2MbfihtT8Z0MIOK895mtzizH7RTwMyWn6YCNsX67YwK9A
	ByniwMtqeu67pBPq2HJuOQL7lRxIFr4LsVIlBb1UXo27ETlab36EpdYgle6cB5yQTEANQj9zmymys
	i72bMPtVzTAFml4ikOyXME6IG9xF1TjEiJ+q/bvTAIJsrMkk7xFFUWhmlqpGto4Ck6EfNP05Fth8p
	SUgYBlYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgzls-0000000EHJr-11fC;
	Tue, 07 Jul 2026 06:59:08 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgzln-0000000EHIR-1fq0
	for barebox@lists.infradead.org;
	Tue, 07 Jul 2026 06:59:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 9A8C220240C;
	Tue, 07 Jul 2026 08:59:01 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wgzll-000Wv9-1m;
	Tue, 07 Jul 2026 08:59:01 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wgzll-0000000FFzS-22uu;
	Tue, 07 Jul 2026 08:59:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Johannes Schneider <johannes.schneider@leica-geosystems.com>
In-Reply-To: <20260623192017.3338905-1-johannes.schneider@leica-geosystems.com>
References: <20260623192017.3338905-1-johannes.schneider@leica-geosystems.com>
Subject: Re: [PATCH] video: lcdif: skip framebuffer registration when no
 display modes available
Message-Id: <178340754148.3636134.3535358681395505430.b4-ty@pengutronix.de>
Date: Tue, 07 Jul 2026 08:59:01 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_235903_604023_AF0392FA 
X-CRM114-Status: UNSURE (   7.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, 23 Jun 2026 19:20:17 +0000, Johannes Schneider wrote:
    > When the downstream VPL chain reports no modes (e.g. the panel-lvds > node
    was runtime-disabled by board code on a unit shipped without [...] 
 
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
X-Spamd-Result: default: False [-6.70 / 15.00];
	BAYES_HAM(-2.99)[99.95%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 79F3B202590
X-Stat-Signature: zyuzhcffaugqzz4pnzx5su7ybtdxtm5u


On Tue, 23 Jun 2026 19:20:17 +0000, Johannes Schneider wrote:
> When the downstream VPL chain reports no modes (e.g. the panel-lvds
> node was runtime-disabled by board code on a unit shipped without a
> panel), the driver previously fell back to a 640x480 default,
> allocated a framebuffer, registered /dev/fb0, exported a (bogus)
> simplefb DT fixup to the kernel, and tried to fb_enable() the
> controller.  fb_enable() then bailed because info->mode was NULL,
> but only after we'd already exported a non-functional simplefb to
> Linux's DRM_SIMPLEDRM and wasted ~1.2 MB on a buffer nothing
> scans out.
> 
> [...]

Applied, thanks!

[1/1] video: lcdif: skip framebuffer registration when no display modes available
      https://git.pengutronix.de/cgit/barebox/commit/?id=54878fe93a12 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



