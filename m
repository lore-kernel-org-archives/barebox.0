Delivery-date: Tue, 20 Feb 2024 12:07:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcNyX-00Fwke-0h
	for lore@lore.pengutronix.de;
	Tue, 20 Feb 2024 12:07:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcNyW-0004ji-Jl
	for lore@pengutronix.de; Tue, 20 Feb 2024 12:07:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SxNzDZR60uK2XhA78Jun3F/onCEMSK1ih6jg9PVhO1Q=; b=lpE6D+TAuici4zujUX3SR+KX2t
	mBxqzmGjM4euYPWAMpqdYjpsVoFO/3BMD+zZDC9DPKp/wrC7jSFsXJzKf/kShTL0Yja83SwnDw9kt
	JwT58qph0JIrmxOxhmWHJRE4xzC5DViULQhA/+qof0AiymqKVOvQQ5Af4CudXML03NuSvGmYW4mlO
	fx921lFTD1kQtgQbO0sDzvqjC0x0um2gMVc55VVRXxdzmtp50byO6Ways7q9HhpPf9jI9V61l+XVX
	kg2PVoJ36pEZU47nn2jB1XAevKGBlxehrAGqchKrsauyn+aGPMfDlMPypCYLiZy9TsbO5xB7xIhrP
	uloU9dqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcNxz-0000000ENhr-0aPe;
	Tue, 20 Feb 2024 11:07:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcNxv-0000000ENgH-3zkC
	for barebox@lists.infradead.org;
	Tue, 20 Feb 2024 11:07:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rcNxu-0004Wi-KJ; Tue, 20 Feb 2024 12:07:10 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rcNxu-001pO2-7f; Tue, 20 Feb 2024 12:07:10 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rcNxu-00CBnV-0Y;
	Tue, 20 Feb 2024 12:07:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240219133835.3886399-1-a.fatoum@pengutronix.de>
References: <20240219133835.3886399-1-a.fatoum@pengutronix.de>
Message-Id: <170842723016.2905158.9549269258145733653.b4-ty@pengutronix.de>
Date: Tue, 20 Feb 2024 12:07:10 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_030712_031658_F10DDA07 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 00/15] usb: xhci: pull in fixes from U-Boot v2024.01
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 19 Feb 2024 14:38:20 +0100, Ahmad Fatoum wrote:
> The latest U-Boot release saw some fixes to the xHCI driver contributed
> by the Asahi Linux project to improve robustness in case of errors.
> 
> Port these to barebox as well as a couple of cleanup commits that make
> the code in barebox look more similar to changes that happened to U-Boot
> in the meantime.
> 
> [...]

Applied, thanks!

[01/15] usb: xhci: usb: xhci: avoid type conversion of void *
        https://git.pengutronix.de/cgit/barebox/commit/?id=13509f24774c (link may not be stable)
[02/15] usb: xhci: add various debugging prints
        https://git.pengutronix.de/cgit/barebox/commit/?id=86da740d096c (link may not be stable)
[03/15] usb: xhci: call xhci_flush_cache where appropriate
        https://git.pengutronix.de/cgit/barebox/commit/?id=c4a99e4bfb48 (link may not be stable)
[04/15] usb: xhci: use macros for formatting values
        https://git.pengutronix.de/cgit/barebox/commit/?id=ad69d4395d97 (link may not be stable)
[05/15] usb: xhci: Add missing endian conversions (cpu_to_leXX / leXX_to_cpu)
        https://git.pengutronix.de/cgit/barebox/commit/?id=668cefb5fa19 (link may not be stable)
[06/15] usb: xhci: Add missing xhci_readl()
        https://git.pengutronix.de/cgit/barebox/commit/?id=97d839040fcc (link may not be stable)
[07/15] usb: xhci: don't use xhci_writeq for normal SDRAM
        https://git.pengutronix.de/cgit/barebox/commit/?id=fb4e864c0726 (link may not be stable)
[08/15] usb: xhci: support non-1:1 mapped xHCI
        https://git.pengutronix.de/cgit/barebox/commit/?id=6fba5a3b0bd7 (link may not be stable)
[09/15] usb: xhci: reset endpoint on USB stall
        https://git.pengutronix.de/cgit/barebox/commit/?id=be01454be27a (link may not be stable)
[10/15] usb: xhci: Fix root hub descriptor
        https://git.pengutronix.de/cgit/barebox/commit/?id=cb1ead123c45 (link may not be stable)
[11/15] usb: xhci: Guard all calls to xhci_wait_for_event
        https://git.pengutronix.de/cgit/barebox/commit/?id=2708f615e75b (link may not be stable)
[12/15] usb: xhci: Better error handling in abort_td()
        https://git.pengutronix.de/cgit/barebox/commit/?id=0a2bf109353e (link may not be stable)
[13/15] usb: xhci: Allow context state errors when halting an endpoint
        https://git.pengutronix.de/cgit/barebox/commit/?id=3b3af837338f (link may not be stable)
[14/15] usb: xhci: Recover from halted bulk endpoints
        https://git.pengutronix.de/cgit/barebox/commit/?id=42db38526b2c (link may not be stable)
[15/15] usb: xhci: Do not panic on event timeouts
        https://git.pengutronix.de/cgit/barebox/commit/?id=43a3850ed840 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



