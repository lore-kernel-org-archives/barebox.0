Delivery-date: Fri, 28 Nov 2025 08:12:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOsec-005hrJ-1j
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 08:12:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOseb-0003xD-V1
	for lore@pengutronix.de; Fri, 28 Nov 2025 08:12:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CGNaXYH/ZtB2r+KhwgIwGk3XKFYuJ6xcMcRslYmixq4=; b=C1wSrLRTAJlVn0Jy3tcKWPkdDZ
	PV9Ue3HOu8X+zZQFTluPT7ep0lhZnqFAWD7Odgp/p02LccGnyVXAd6RduNEQTDi58zKGcDxfjmzBG
	/2gb3PCHziTJEwqEEdCY1rUlpsClNZ5fqUTi30qerHmY87Z4JsU0KC86urGSMKtfNNs/GfSqL/t0h
	lFmeQeDAbUJ4n8rNsgfxTIyhHbjoX/D10kPZqIKWrE46gcOKkwtjjpoOlmMp7Nkixxh6e60Eyi80z
	uZhqxfrjGADQ6yt1Dw/lKbwrIi2fNYdHruh7P0xuDAc51+KNwmhGs03pJ36MS1dJaajOuUZqoACyP
	hYoJxP4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOseC-0000000058I-145y;
	Fri, 28 Nov 2025 07:12:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOse9-0000000055r-1JNh
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 07:12:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOse7-0003ew-SV; Fri, 28 Nov 2025 08:11:59 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOse7-002uyB-2B;
	Fri, 28 Nov 2025 08:11:59 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOse8-00000009Ptv-0FAX;
	Fri, 28 Nov 2025 08:11:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20251125114007.1198441-1-s.hauer@pengutronix.de>
References: <20251125114007.1198441-1-s.hauer@pengutronix.de>
Message-Id: <176431391961.2244508.694416599466943905.b4-ty@pengutronix.de>
Date: Fri, 28 Nov 2025 08:11:59 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_231201_569226_EDF7A3D2 
X-CRM114-Status: GOOD (  12.11  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] nvmem: k3: add fuse support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 25 Nov 2025 12:40:07 +0100, Sascha Hauer wrote:
> This driver reads/writes to the extended OTP area using TF-A calls.
> 
> The driver has been tested on AM625 and AM62L, but should work on other
> SoCs as well. The driver needs the SIP calls K3_SIP_OTP_READ and
> K3_SIP_OTP_WRITE. These are currently only implemented in the TI
> downstream TF-A for AM62L. For AM625 these calls need to be enabled with
> additional TF-A patches. The driver is activated in the AM62L/AM625
> device trees, but due to the limited availability of the SIP calls
> the driver remains silent when the TF-A doesn't have support for
> manipulating fuses.
> 
> [...]

Applied, thanks!

[1/1] nvmem: k3: add fuse support
      https://git.pengutronix.de/cgit/barebox/commit/?id=eb449a3cd91c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



