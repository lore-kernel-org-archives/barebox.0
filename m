Delivery-date: Tue, 02 Jul 2024 08:40:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOXBI-000lEd-0o
	for lore@lore.pengutronix.de;
	Tue, 02 Jul 2024 08:40:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOXBH-0001qt-Lo
	for lore@pengutronix.de; Tue, 02 Jul 2024 08:40:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ueRDNB4rECWKjndh2suZeBvy3fmqTw7qjxLoiRNfz5M=; b=nK/l3xCW/osBSyDpCmMWM3A3Tj
	Xwzc2FvTHSLMixBjQUtcU8c3YCG4zFXm9h4V8zLFiKnMIAUy6JB6Zu7Kf1+kynqF37fhjMnfOMi3o
	bLPEjZtRTPinYB2w5jiaRlKWQI95VLzBmSdGcHSEc0FQAmrYpWrHQ8H/hwVZ5haNyYdEdECtoVrRS
	oYd2AxrsBQ/b7C2KAtaJj30MbAPudvR3C81aBVmXwv4ji7t5nTjUsHDRQZA2A0BHRVMXdwgU7yK47
	XToxaZQDUFHlL9mNwzW2Jl8B1hd4zAxioOgT2IN5i/0kIVi3hwUWsSYra4un8wyKJYONQpwPyx13r
	lSp3jBrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOXAo-00000005jzn-3BNz;
	Tue, 02 Jul 2024 06:39:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOXAl-00000005jxb-2Z3i
	for barebox@lists.infradead.org;
	Tue, 02 Jul 2024 06:39:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOXAj-0001lr-TM; Tue, 02 Jul 2024 08:39:25 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOXAj-006Y9o-Gq; Tue, 02 Jul 2024 08:39:25 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOXAj-00FKpU-1T;
	Tue, 02 Jul 2024 08:39:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240701135030.543204-1-a.fatoum@pengutronix.de>
References: <20240701135030.543204-1-a.fatoum@pengutronix.de>
Message-Id: <171990236545.3654797.17421860387211922611.b4-ty@pengutronix.de>
Date: Tue, 02 Jul 2024 08:39:25 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_233927_680605_424E23AA 
X-CRM114-Status: UNSURE (   8.58  )
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
Subject: Re: [PATCH] usb: Use well-known descriptor sizes when parsing
 configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 01 Jul 2024 15:50:30 +0200, Ahmad Fatoum wrote:
> This is a port of U-Boot commit eaf3e613ea6f0dc95c94a93997ad62785fe2969c:
> 
>   | Author: Julius Werner <jwerner@chromium.org>
>   | Date: Fri Jul 19 13:12:08 2013 -0700
>   |
>   | usb: Use well-known descriptor sizes when parsing configuration
>   |
>   | The existing USB configuration parsing code relies on the descriptors'
>   | own length values when reading through the configuration blob. Since the
>   | size of those descriptors is always well-defined, we should rather use
>   | the known sizes instead of trusting device-provided values to be
>   | correct. Also adds some safety to potential out-of-order descriptors.
>   |
>   | Change-Id: I16f69dfdd6793aa0fe930b5148d4521f3e5c3090
>   | Signed-off-by: Julius Werner <jwerner@chromium.org>
> 
> [...]

Applied, thanks!

[1/1] usb: Use well-known descriptor sizes when parsing configuration
      https://git.pengutronix.de/cgit/barebox/commit/?id=b6a510525e63 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



