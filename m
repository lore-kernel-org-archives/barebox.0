Delivery-date: Thu, 02 Jul 2026 09:00:23 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wfBPL-00CAe6-1p
	for lore@lore.pengutronix.de;
	Thu, 02 Jul 2026 09:00:23 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 4C35E200498
	for <lore@pengutronix.de>; Thu, 02 Jul 2026 09:00:22 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=njdN9Eg4;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CYwCnOoExlHUxsDNRChef7FKsgFWuwm6bUKPIQClKwk=; b=njdN9Eg4GRn/dPZc8/9iDuyeHM
	6VFzQgwNe7dfagA1LvrOazukTiGT19LigL5BFzDFTVjRJoyY1Hi1eJbgZRdoJ2l2Wx/kOhdcCoQer
	XcKbhxr18nMCCSKDyf2LmNZ2iov1576J9DneZOQiIF+LQKJuPF5teG6/MDHxO58LowkM8k0i+4HfF
	fZtl0WwGA0M3Alpl8wS+uGaJe/f8dHFa6jPlZWp6344pM+eN1Z3VwKqCsQ9AHEVZ6KXjzCuItq3iB
	cAKcAaMQDRTFNsn7Wtf74fNQR9ozeRjGhVozAdEoi0M+atFUhu6GBvGEPxiJnzqLz4er6e2CBMl6Y
	y9UdRulQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfBO3-00000003gZS-2xpZ;
	Thu, 02 Jul 2026 06:59:03 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfBNz-00000003gXq-2AMr
	for barebox@lists.infradead.org;
	Thu, 02 Jul 2026 06:59:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 9917A200498;
	Thu, 02 Jul 2026 08:58:55 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wfBNv-005hhC-1d;
	Thu, 02 Jul 2026 08:58:55 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wfBNv-00000008Uwj-1rJA;
	Thu, 02 Jul 2026 08:58:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260629124631.689090-1-a.fatoum@barebox.org>
References: <20260629124631.689090-1-a.fatoum@barebox.org>
Subject: Re: [PATCH v3 01/10] scripts: duplicate conftest.py as
 qemu_interactive.py
Message-Id: <178297553543.2025550.11679151357938219652.b4-ty@pengutronix.de>
Date: Thu, 02 Jul 2026 08:58:55 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_235859_738710_464A64FD 
X-CRM114-Status: UNSURE (   5.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, 29 Jun 2026 14:45:20 +0200, Ahmad Fatoum wrote: >
    To make the change splitting pytest --interactive into its own script > easier
    to follow, duplicate the existing code under the new name. > > [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
X-Rspamd-Queue-Id: 4C35E200498
X-Spamd-Result: default: False [-6.71 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: s6ndpbeqyw1j7sot8m5k3nzyhnjurj8s
X-Rspamd-Server: mx1


On Mon, 29 Jun 2026 14:45:20 +0200, Ahmad Fatoum wrote:
> To make the change splitting pytest --interactive into its own script
> easier to follow, duplicate the existing code under the new name.
> 
> No functional change.
> 
> 

Applied, thanks!

[01/10] scripts: duplicate conftest.py as qemu_interactive.py
        https://git.pengutronix.de/cgit/barebox/commit/?id=d441f4a2068b (link may not be stable)
[02/10] test: move interactive QEMU launcher out of pytest
        https://git.pengutronix.de/cgit/barebox/commit/?id=8b1d70b64199 (link may not be stable)
[03/10] usb: xhci-hcd: add XHCI over PCI driver
        https://git.pengutronix.de/cgit/barebox/commit/?id=fcb6345b3882 (link may not be stable)
[04/10] scripts: qemu_interactive.py: add new --usbblk option
        https://git.pengutronix.de/cgit/barebox/commit/?id=bdc6e2fa7341 (link may not be stable)
[05/10] scripts: qemu_interactive.py: add new --nvmeblk option
        https://git.pengutronix.de/cgit/barebox/commit/?id=0fe30f1bfb41 (link may not be stable)
[06/10] mci: do not look up OF partitions for DT-less host controllers
        https://git.pengutronix.de/cgit/barebox/commit/?id=7623e715fcba (link may not be stable)
[07/10] mci: sdhci: define same SDHCI_INT_* constants as Linux
        https://git.pengutronix.de/cgit/barebox/commit/?id=29ac18bbced2 (link may not be stable)
[08/10] mci: add PCI SDHCI controller support
        https://git.pengutronix.de/cgit/barebox/commit/?id=4de8c91148c8 (link may not be stable)
[09/10] ARM: multi_v8_defconfig: enable OP-TEE and RPMB support
        https://git.pengutronix.de/cgit/barebox/commit/?id=c8b84e685d94 (link may not be stable)
[10/10] scripts: qemu_interactive.py: add new --sdblk and --emmcblk options
        https://git.pengutronix.de/cgit/barebox/commit/?id=0741b9f22170 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



