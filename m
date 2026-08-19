Delivery-date: Wed, 19 Aug 2026 11:27:39 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wwcaA-004okD-1u
	for lore@lore.pengutronix.de;
	Wed, 19 Aug 2026 11:27:39 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id CFCD6201EBE
	for <lore@pengutronix.de>; Wed, 19 Aug 2026 11:27:38 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=FJgkxr0r;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nSt8dE/mKBiZGseMaBwqc/bYFCYP0nYNTCM78/a66cY=; b=FJgkxr0rtO9XM/Y2QGUIMg2RsN
	GG2lZdf9by9QGNi/cisC7xWgPng/3Ef85380Q9IOmjgTnyxGAU0AYrZCB1YVEQpHAzu3v0HJ8pEU0
	UTX4B1EAtVTtKj0gX9MNsCs6W68ZkhqpP3OpCD9/0MJkpgQjBceP0tNnqtfnl37zEK/nFQZZ3ng8Y
	Pv1svFcequas1iXVHwFfZeN/4+vMjGMXlzfVclRDxCygPUU+HidO3hEiNW2QXTNs4BJ0GU1sDqDuM
	EXwNdy9ZsQm5w/Vz4P/f/E1WYXbX5CtodCpDqB4PgiWmIlIXW3KTJXslmjnsAP73b1tsYf5YkOIF9
	5LcH8FMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwcZ3-00000009PQF-1X7u;
	Wed, 19 Aug 2026 09:26:29 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwcYz-00000009PPd-2LFo
	for barebox@lists.infradead.org;
	Wed, 19 Aug 2026 09:26:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 1FE9920128B;
	Wed, 19 Aug 2026 11:26:23 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wwcYx-002Gp7-09;
	Wed, 19 Aug 2026 11:26:23 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wwcYw-00000007FXq-47tS;
	Wed, 19 Aug 2026 11:26:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
References: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
Subject: Re: [PATCH 00/27] ARM: Add pxa3xx and Raumfeld Speaker support
Message-Id: <178713158298.1727987.5252152791438927907.b4-ty@pengutronix.de>
Date: Wed, 19 Aug 2026 11:26:22 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260819_022625_774726_03CAA4BE 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sun, 16 Aug 2026 19:56:20 +0200, Sascha Hauer wrote: >
    This series drops unused for longer remnants of the PXA2xx support and >
   adds device tree based PXA3xx support instead. The PXA2xx boards hav [...]
    
 
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: fi7w4fsm69w7s4znphcma3uhd4gmki3y
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: CFCD6201EBE


On Sun, 16 Aug 2026 19:56:20 +0200, Sascha Hauer wrote:
> This series drops unused for longer remnants of the PXA2xx support and
> adds device tree based PXA3xx support instead. The PXA2xx boards have
> been removed already earlier leaving the remaining SoC code unused.
> Should anybody have interest in PXA2xx it should be straight forward
> adding back based on the new device tree code.
> 
> The board supported with this series is a Raumfeld Speaker which I had
> lying under my desk catching dust, but now serves me as a music player
> again. The PXA3xx support is fairly complete:
> 
> [...]

Applied, thanks!

[01/27] ARM: pxa: remove PXA25x and PXA27x support
        https://git.pengutronix.de/cgit/barebox/commit/?id=fbf83af6624a (link may not be stable)
[02/27] video: remove the PXA framebuffer driver
        https://git.pengutronix.de/cgit/barebox/commit/?id=a2f81413c1b8 (link may not be stable)
[03/27] ARM: cache: drive the XSC3 cache with the ARMv4 functions
        https://git.pengutronix.de/cgit/barebox/commit/?id=81946d495a4b (link may not be stable)
[04/27] mci: pxamci: get the clock from the clk API
        https://git.pengutronix.de/cgit/barebox/commit/?id=b092d5603fb1 (link may not be stable)
[05/27] pwm: pxa: get the clock from the clk API
        https://git.pengutronix.de/cgit/barebox/commit/?id=ac8fbcec25d5 (link may not be stable)
[06/27] serial: pxa: get the clock from the clk API
        https://git.pengutronix.de/cgit/barebox/commit/?id=bea10f91081d (link may not be stable)
[07/27] clk: pxa: add a device tree clock driver for PXA3xx
        https://git.pengutronix.de/cgit/barebox/commit/?id=67746dc67853 (link may not be stable)
[08/27] mtd: nand: nand_mrvl_nfc: honour marvell,nand-keep-config
        https://git.pengutronix.de/cgit/barebox/commit/?id=6d6c443a4fbb (link may not be stable)
[09/27] mtd: nand: nand_mrvl_nfc: support the nand-controller bindings
        https://git.pengutronix.de/cgit/barebox/commit/?id=4e8b7516de1f (link may not be stable)
[10/27] mtd: nand: mrvl_nfc: keep the ready latch across a STATUS command
        https://git.pengutronix.de/cgit/barebox/commit/?id=c16739526aed (link may not be stable)
[11/27] mtd: nand: mrvl_nfc: do not report a command timeout as an error
        https://git.pengutronix.de/cgit/barebox/commit/?id=97505ef63828 (link may not be stable)
[12/27] mci: pxamci: probe from the device tree
        https://git.pengutronix.de/cgit/barebox/commit/?id=58ad9e48dbf8 (link may not be stable)
[13/27] serial: pxa: add device tree support
        https://git.pengutronix.de/cgit/barebox/commit/?id=b4ad4bc4203e (link may not be stable)
[14/27] serial: pxa: provide the Linux console name
        https://git.pengutronix.de/cgit/barebox/commit/?id=ecb4cebe15d6 (link may not be stable)
[15/27] gpio: pxa: add a driver and switch the architecture to GPIOLIB
        https://git.pengutronix.de/cgit/barebox/commit/?id=4d01bdd2023b (link may not be stable)
[16/27] ARM: pxa: add DEBUG_LL support
        https://git.pengutronix.de/cgit/barebox/commit/?id=7c984e8ae930 (link may not be stable)
[17/27] ARM: pxa: let the board select the SoC
        https://git.pengutronix.de/cgit/barebox/commit/?id=b7a78c72b332 (link may not be stable)
[18/27] ARM: pxa: enable device tree support
        https://git.pengutronix.de/cgit/barebox/commit/?id=642f2cc3b1cc (link may not be stable)
[19/27] scripts: add pxa-image
        https://git.pengutronix.de/cgit/barebox/commit/?id=bcfcce3499ed (link may not be stable)
[20/27] ARM: pxa: add a NAND first stage loader
        https://git.pengutronix.de/cgit/barebox/commit/?id=2e81de15f9c6 (link may not be stable)
[21/27] filetype: detect PXA3xx NTIM images
        https://git.pengutronix.de/cgit/barebox/commit/?id=7a1f2a4e787c (link may not be stable)
[22/27] ARM: pxa: add a barebox update handler for NAND
        https://git.pengutronix.de/cgit/barebox/commit/?id=772b16118429 (link may not be stable)
[23/27] clocksource: add a driver for the PXA OS timer and its watchdog
        https://git.pengutronix.de/cgit/barebox/commit/?id=f593d9fadebb (link may not be stable)
[24/27] ARM: pxa: move over to MULTIARCH
        https://git.pengutronix.de/cgit/barebox/commit/?id=27292387963d (link may not be stable)
[25/27] ARM: pxa: reset straight away and without complaining
        https://git.pengutronix.de/cgit/barebox/commit/?id=4c21b99c838f (link may not be stable)
[26/27] ARM: pxa: add Raumfeld Speaker board support
        https://git.pengutronix.de/cgit/barebox/commit/?id=74b245df5e0e (link may not be stable)
[27/27] ARM: multi_v5_v6_defconfig: enable PXA support
        https://git.pengutronix.de/cgit/barebox/commit/?id=f5e40b66cd3b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



