Delivery-date: Fri, 30 Jan 2026 13:42:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vlnpf-006z9V-2H
	for lore@lore.pengutronix.de;
	Fri, 30 Jan 2026 13:42:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vlnpe-0007uc-Og
	for lore@pengutronix.de; Fri, 30 Jan 2026 13:42:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BodYL9gSRD7wvxn7RBj74GJhrJuX19Ra0S1SbkFegkg=; b=P2MTSX3Pk2N0ib8+wPQtc3UNrI
	mOAB2EEhr3oAP0JbovluZD6iHzO3mHaO2nsGORxlxjpqcTqoBFjeBJNhjwnea3MVoZcm1B/pWpZ5P
	00L6eQR6+T2Cq4/4J4qcfUPzZXtdmZGPznGJeucHTBjG9ikxhui/5akQSpDJZpsj77BgwKQQyV+a6
	Gx1Vo+6AMUN8pQeaV66MaKfz2Ucp/qqY4UW72mURiqfdyUMT3LMG2LYPpmWjb5T4ntuNGXNa6lxop
	6w/Jl31tJVC0devAd7WyW1vPKBMwLjBWBgrl0tAXYduhzgrYHNk39TARjjcsJQR3CUGNvdCCp1MHD
	Qbc4NYzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlnpH-00000001UNO-43nR;
	Fri, 30 Jan 2026 12:42:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlnpF-00000001UN5-0yjG
	for barebox@lists.infradead.org;
	Fri, 30 Jan 2026 12:42:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vlnpC-0007qy-8H; Fri, 30 Jan 2026 13:42:10 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vlnpC-003Fad-2M;
	Fri, 30 Jan 2026 13:42:10 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vlnpC-00000000BlD-1tZU;
	Fri, 30 Jan 2026 13:42:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260127153639.3390850-1-a.fatoum@pengutronix.de>
References: <20260127153639.3390850-1-a.fatoum@pengutronix.de>
Message-Id: <176977692997.45184.16369921482587770812.b4-ty@pengutronix.de>
Date: Fri, 30 Jan 2026 13:42:09 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260130_044213_279637_6FAB15F0 
X-CRM114-Status: UNSURE (   6.82  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] efi: loader: reduce warning about non-persistent EFI
 variables to notice
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 27 Jan 2026 16:36:38 +0100, Ahmad Fatoum wrote:
> When booting an EFI-stubbed kernel outside of an ESP, we always get:
> 
>   WARNING: efi-loader: var-file: Cannot persist EFI variables without
>   system partition
> 
> A warning is arguably a bit harsh, because one still benefits from
> keeping the MMU enabled and the other EFI runtime services, so bump to a
> notice log level instead.
> 
> [...]

Applied, thanks!

[1/1] efi: loader: reduce warning about non-persistent EFI variables to notice
      https://git.pengutronix.de/cgit/barebox/commit/?id=c15db8e3b01c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



