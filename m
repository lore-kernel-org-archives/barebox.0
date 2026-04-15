Delivery-date: Wed, 15 Apr 2026 08:30:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCtlX-00CKEE-1g
	for lore@lore.pengutronix.de;
	Wed, 15 Apr 2026 08:30:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCtlX-0005vg-07
	for lore@pengutronix.de; Wed, 15 Apr 2026 08:30:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kuaJC5zTEOGfa5Xa5Uyc9/VjH3l1fWVrI+mt7CvGxiE=; b=nYJSNEySCmfA9TZYN4IpM2Cz3P
	bsfirLIixyIVr0T/dJXtosm0pIOAI3rc4FP3pgnqwm6imIULbYf9/f6uVUfsyQzKRcGnORa94YIdX
	STAYfSaUZV5kUSgLOj1S+mwUlNBgXzuG6us1Poh2cNUSSarr5syrEoprgUWxV0iM7vqlQCVPWMN+Q
	pFSPe62+XXrF4yrMIJR5s//myL2WaMvBFFNCqzbIniNKd0U6NirSRltZXGAfkFCJAxl4PZzHa4cK5
	kvDZlebFcPzbW2VWMyw2cJGTFaywL00+vMVgSuYrClMyRahde36Bdj+tPnMhyqV2kf/v7AZiNGkU8
	L58+B5rQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCtlB-00000000eMm-2xdC;
	Wed, 15 Apr 2026 06:30:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCtl9-00000000eMB-0mlu
	for barebox@lists.infradead.org;
	Wed, 15 Apr 2026 06:30:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCtl7-0005pB-KC; Wed, 15 Apr 2026 08:29:57 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCtl7-005StK-0v;
	Wed, 15 Apr 2026 08:29:57 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCtl7-0000000DphS-0wKK;
	Wed, 15 Apr 2026 08:29:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Chali Anis <chalianis1@gmail.com>
In-Reply-To: <20260414142634.744542-1-a.fatoum@pengutronix.de>
References: <20260414142634.744542-1-a.fatoum@pengutronix.de>
Message-Id: <177623459722.3296907.13857623555501791092.b4-ty@pengutronix.de>
Date: Wed, 15 Apr 2026 08:29:57 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260414_232959_253033_9BA746C9 
X-CRM114-Status: UNSURE (   7.51  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] efi: payload: image: exit if kernel image returned
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 14 Apr 2026 16:26:29 +0200, Ahmad Fatoum wrote:
> EFI applications can exit and return to the EFI application that started
> them and barebox can handle that, except for the case that it was a
> EFI-stubbed kernel and barebox has already called shutdown_barebox().
> 
> In that case, the safest way is to just propagate the exit code instead
> of attempting to execute code as if nothing happened.
> 
> [...]

Applied, thanks!

[1/2] efi: payload: image: exit if kernel image returned
      https://git.pengutronix.de/cgit/barebox/commit/?id=7ffcd41e49f2 (link may not be stable)
[2/2] efi: payload: bootm: fix potential double-unload for image
      https://git.pengutronix.de/cgit/barebox/commit/?id=a8e1ff641524 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



