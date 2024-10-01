Delivery-date: Tue, 01 Oct 2024 12:36:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1svaEa-004vsC-1c
	for lore@lore.pengutronix.de;
	Tue, 01 Oct 2024 12:36:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1svaEb-0000ki-0F
	for lore@pengutronix.de; Tue, 01 Oct 2024 12:36:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BFCajH49cwqMK+h55OTHlPQUPwP/0TvggkdDtbBSG7w=; b=jFPWBGtkKz38vXvBhGEoXue8rh
	0TdhZh77b0jqFZU7PBwlhnkuQO0vV8puTFDHitesTt7CVlynr9DWEM4hZtkU/5KMxWpKKLewfv05M
	EyXH9odCEJ6iXlUSMLLJd5VD4CmHXT8y6QULP2FiETKlhXktYqDSdFMHEGmxRB8TMYgrRDD+3Ah7f
	m3qSRKRVUFKh5ZF5fNRO5rGvs4muJpJTBwMK6bbwfkHHPKwUuEHgUlInmIClxVGU38Y5tV2ygJuuP
	x+BirtfnfsK8eL7Wda7fIxVKZE+hd3RWx+dlY9N5iLcwPXLY2+UvfsYOaSuV40YWx9qAqMSAj4iYb
	YPz4lAAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svaE7-00000002Mj8-1vzc;
	Tue, 01 Oct 2024 10:35:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svaE4-00000002Mht-0qtg
	for barebox@lists.infradead.org;
	Tue, 01 Oct 2024 10:35:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svaE3-0000SV-2E; Tue, 01 Oct 2024 12:35:27 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svaE2-002qzs-Lr; Tue, 01 Oct 2024 12:35:26 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svaE2-004Kb1-21;
	Tue, 01 Oct 2024 12:35:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20241001085208.522095-1-s.hauer@pengutronix.de>
References: <20241001085208.522095-1-s.hauer@pengutronix.de>
Message-Id: <172777892662.1032471.10716562397001742809.b4-ty@pengutronix.de>
Date: Tue, 01 Oct 2024 12:35:26 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241001_033528_284815_BF8A66E8 
X-CRM114-Status: UNSURE (   8.76  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] test: arm: qemu-sabrelite: Use qemu specific device
 tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 01 Oct 2024 10:52:08 +0200, Sascha Hauer wrote:
> The sabrelite board has some GPIOs registered as buttons. These GPIOs
> are not properly emulated in QEMU and read as low. The buttons are
> active low as well, so in barebox we detect all buttons as pressed. One
> of these buttons is registered as KEY_POWER. Depending on the
> initialization order it can happen that barebox tries to power down the
> board during startup. Avoid this pitfall by passing a device tree to
> QEMU which has the gpio-keys driver disabled.
> 
> [...]

Applied, thanks!

[1/1] test: arm: qemu-sabrelite: Use qemu specific device tree
      https://git.pengutronix.de/cgit/barebox/commit/?id=38dbe309f536 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



