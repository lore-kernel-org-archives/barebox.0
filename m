Delivery-date: Tue, 07 Jul 2026 08:48:45 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wgzbp-00180x-26
	for lore@lore.pengutronix.de;
	Tue, 07 Jul 2026 08:48:45 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 50503202590
	for <lore@pengutronix.de>; Tue, 07 Jul 2026 08:48:45 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=VJG3biWO;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PpVI22CBwI5aeo71XEbDR18kRzj/0vbZSX3GaimPXD0=; b=VJG3biWO6qP3Jyk8QskOuucqa1
	ZISrDRf2UA1pVUy6K2WJ1abg4ByH9JuMR328MNI7ON/ORU/YMm96GUnZYi5QSwAXOLncaAU4UG+VM
	WvyMkPIXjaZTt6bWDg7Ng5gOm3/AjAdSyqt126PboP5LXW9vsmbrISztezqb63OORBvQ13I4Vj0XI
	TlGSmy5dCtRARCYSJ05voH56dGSB6GN4mhuKew92QReZaZ9CB6UBqj6SDJ8nuVjWiF1fWmS5bc0R4
	t7lpZxrhndfWepAYYlGBRz+QEjo/CXER+PAheR2Ju1zh8OgSpE/Dgx5Bio4nINIPYMR2p5Z1HlCpP
	bGSebE0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgzab-0000000EFRd-3R0U;
	Tue, 07 Jul 2026 06:47:29 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgzaY-0000000EFR8-1plD
	for barebox@lists.infradead.org;
	Tue, 07 Jul 2026 06:47:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 806AC202429;
	Tue, 07 Jul 2026 08:47:22 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wgzaU-000Wtp-1M;
	Tue, 07 Jul 2026 08:47:22 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wgzaU-0000000Dyip-1War;
	Tue, 07 Jul 2026 08:47:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260630-usb-disk-alias-v1-0-d23318bcb684@pengutronix.de>
References: <20260630-usb-disk-alias-v1-0-d23318bcb684@pengutronix.de>
Subject: Re: [PATCH 0/2] USB: storage: add usbdisk alias for USB storage
 devices
Message-Id: <178340684235.3331320.7189050804017118512.b4-ty@pengutronix.de>
Date: Tue, 07 Jul 2026 08:47:22 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_234726_632493_ACF6437E 
X-CRM114-Status: UNSURE (   7.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, 30 Jun 2026 14:39:54 +0200, Sascha Hauer wrote: >
    This is an alternative approach for: > > https://lore.kernel.org/p/20260623142646.87173-1-chalianis1@gmail.com
    > > Instead of adding a new Kc [...] 
 
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
X-Spamd-Result: default: False [-6.71 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 50503202590
X-Stat-Signature: 8py43n88mcwhorpibeybhef7wg55pkkq


On Tue, 30 Jun 2026 14:39:54 +0200, Sascha Hauer wrote:
> This is an alternative approach for:
> 
> https://lore.kernel.org/p/20260623142646.87173-1-chalianis1@gmail.com
> 
> Instead of adding a new Kconfig variable we add a /dev/usbdiskx alias
> for each USB storage device. This allows us to easily use the first USB
> storage device instead of stumbling upon other devices which are also
> registered as /dev/diskx.
> 
> [...]

Applied, thanks!

[1/2] fs: devfs: make cdev_find_free_index() return 0 instead of an error
      https://git.pengutronix.de/cgit/barebox/commit/?id=3555017d7539 (link may not be stable)
[2/2] usb: storage: add usbdisk alias for USB storage devices
      https://git.pengutronix.de/cgit/barebox/commit/?id=9b7c7f7b18d7 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



