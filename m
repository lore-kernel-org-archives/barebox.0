Delivery-date: Thu, 28 Aug 2025 12:39:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ura2B-005PlW-0L
	for lore@lore.pengutronix.de;
	Thu, 28 Aug 2025 12:39:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ura29-0002dc-U4
	for lore@pengutronix.de; Thu, 28 Aug 2025 12:39:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YPb9SlIgybG5kb5/yyFh949Z2/MDmYhyc/CtNIOJ4Xk=; b=nGJRfv7nhiO8vDlQxS53m6yoSb
	qWinHYdOq+B7XZhULUtv/9WAug+xJr9k5PtrvlSS3kvYMyMuEQ2NScGp/S8dq7AUaqLTOP5Jgr0mM
	JHqaxjswEPCSkOBIYiUGQIVfzy6RXRcqYhnSg8MpBCz8D3K8tBsFrLdLqj1DGNGnOEqsC8dh69wdg
	bVgcZZMdFzyn9QLl5ZJHOPHQOcmCmX/BJBrGCSOU+Kw6xN+/s1thJigH85+M25Je/EIjkQVi9k1Se
	DZIxLYGpO7wbixCr/IwetvTgM1ks2/MDK/4g9uq9UgNBbhKwhDWfvAsPkwEsCQ9Z9dbvhthlZmXxZ
	lFm7HjKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ura1g-00000001Bxi-2O4n;
	Thu, 28 Aug 2025 10:38:40 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urZ6z-000000010C9-1sDX
	for barebox@bombadil.infradead.org;
	Thu, 28 Aug 2025 09:40:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=YPb9SlIgybG5kb5/yyFh949Z2/MDmYhyc/CtNIOJ4Xk=; b=IpXcSfsZ5jobtiSM5sqLB2rhab
	WjNJxjG8QMllRilth43J5/gibsqmcxMV/Yryhnrtuk14uRx3acQmxMjPfSMD9WqTinPjfII2/dMHe
	P5JgHB2MHEUYKjdRW1syyHFUyV5nAIJxGyaF4aWPKJKCw4Y0BYdtpNR+q+Ka/ixbtO3dKBY8+XZKd
	uMNio+kp6XjXAG49nKIx5I3SVZIVoXB0rrmTe1R6bACbDKKpJAyY7YUrAsJIAypbIYF6ZZAXS9sS+
	BLbOdsjvfADW1zdmFssodXvyhkgj/TvMTvCOWwrid2wfTbZTJV4R2EzPpAg9jJCwJXZIUilSgPc1p
	uL509qgQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urZ6w-00000002gaV-10tO
	for barebox@lists.infradead.org;
	Thu, 28 Aug 2025 09:40:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1urZ6v-0006S9-UC; Thu, 28 Aug 2025 11:40:01 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1urZ6v-002XQP-2Q;
	Thu, 28 Aug 2025 11:40:01 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1urZ6v-00000008Dye-2uYy;
	Thu, 28 Aug 2025 11:40:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: chalianis1@gmail.com
Cc: barebox@lists.infradead.org
In-Reply-To: <20250827155307.764061-1-chalianis1@gmail.com>
References: <20250827155307.764061-1-chalianis1@gmail.com>
Message-Id: <175637400168.1960326.16254111292336848400.b4-ty@pengutronix.de>
Date: Thu, 28 Aug 2025 11:40:01 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250828_104002_464237_938365CF 
X-CRM114-Status: UNSURE (   7.78  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] arm: crypto: add a check for crypto extensions
 support.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 27 Aug 2025 11:53:07 -0400, chalianis1@gmail.com wrote:
> In some configuration the CPU may raise an exception bacause of an
> unknown instruction if it does not support Crypto Extensions for
> example in some BCM281X (RPi3B in my case) when running barebox
> as an EFI Payload, where the EFI stops with a synchronous execption
> See bellow:
> Synchronous Exception at 0x0000000037BFF548
> SP 0x0000000037F798C0 ELR 0x0000000037BFF548
> SPSR 0x20000209 FPSR 0x00000000
> ESR 0x02000000 FAR 0x14F64325185430BF
> ESR : EC 0x00 IL 0x1 ISS 0x00000000
> 
> [...]

Applied, thanks!

[1/1] arm: crypto: add a check for crypto extensions support.
      https://git.pengutronix.de/cgit/barebox/commit/?id=20d75a6f932f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



