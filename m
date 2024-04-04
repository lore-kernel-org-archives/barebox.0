Delivery-date: Thu, 04 Apr 2024 15:42:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsNLy-009rEP-0T
	for lore@lore.pengutronix.de;
	Thu, 04 Apr 2024 15:42:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsNLx-0005ze-IN
	for lore@pengutronix.de; Thu, 04 Apr 2024 15:42:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PEFpc7I9gvdnNGTo8vHmIO7wR2diwCwUzYYZtFVBznE=; b=PQFSuA87OTgFxqmpyQDUoCsqyy
	mnJ9LSPuhuBLaxeq1BymZXL4LGBGsVtoZw+5wA84bnI7mkAbCMJjjivO5yfRrL7gpOXKHlMWoFORg
	xts7ir9XNu/bxaJnLZj6N3ZLTmLxTsSBslOvfbF9//TuagKchJIb4JvKc7YAU1jRNAQAJU9ioJ0Lr
	F6egGPEdTo9/Y7yVFKL4FLWhfNSFrhe7hb7YddTXUCXiVIq8aBB/Jtt4OKD7ZUxB+FOjYS2DnSipL
	L9a54T14L3mpQfDqkbpj2xaf9FOU+8Li+k+wLrUIw+5dLankzjcFrxZiL+LfLvZO9ORCDB0lLKGjW
	VG+Mq9YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsNLX-00000002rA9-3Wrw;
	Thu, 04 Apr 2024 13:41:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsNLU-00000002r8x-0kDY
	for barebox@lists.infradead.org;
	Thu, 04 Apr 2024 13:41:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsNLS-0005Ou-N7; Thu, 04 Apr 2024 15:41:34 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsNLS-00ANxw-Ag; Thu, 04 Apr 2024 15:41:34 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsNLS-0034zF-0t;
	Thu, 04 Apr 2024 15:41:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Marco Felsch <m.felsch@pengutronix.de>
In-Reply-To: <20240403153151.2859387-1-m.felsch@pengutronix.de>
References: <20240403153151.2859387-1-m.felsch@pengutronix.de>
Message-Id: <171223809427.734068.15290752261893872905.b4-ty@pengutronix.de>
Date: Thu, 04 Apr 2024 15:41:34 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_064136_443115_E2720890 
X-CRM114-Status: UNSURE (   9.64  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] pmdomain: imx8mp-blk-ctrl: fix adb handshake handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 03 Apr 2024 17:31:51 +0200, Marco Felsch wrote:
> Fix powering the DWC3 USB subsystem which is part of the HSIO BLKCTRL.
> Currently we enable the USB clocks and the USB module clock within the
> HSIO BLKCTRL. The later get stuck during the first call of
> imx8mp_blk_ctrl_power_on() since the parent GPCv2 device is not powered
> yet.
> 
> Fix this by porting the Linux imx8mp_blk_ctrl::power_nb notifier_block
> logic. The Linux driver enable/disable the USB module to propagate the
> ADB handshake instead of powering it permanently. The logic is executed
> after the parent GPCv2 power domain is powered so we can access the HSIO
> BLKCTRL registers.
> 
> [...]

Applied, thanks!

[1/1] pmdomain: imx8mp-blk-ctrl: fix adb handshake handling
      https://git.pengutronix.de/cgit/barebox/commit/?id=aa03dc194997 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



