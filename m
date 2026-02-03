Delivery-date: Tue, 03 Feb 2026 11:36:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnDll-008N1E-17
	for lore@lore.pengutronix.de;
	Tue, 03 Feb 2026 11:36:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnDlk-0004j7-Cf
	for lore@pengutronix.de; Tue, 03 Feb 2026 11:36:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=N0QcrQDirdsOUHN8bDThIXfxTbKWjKUsgNYlt2yKgck=; b=0WulfEZRTj8iLDxL3cJvCaMUfd
	xj5gg7jNJB6EDvgpmoCrxgcraHaZmxsyOgjhtTDKhivyqKHrthjo8vAbwNFrbHm23eUInDhYRaEjl
	RZUOznGjFtpnZmGXAzmHcZW4v3e12skV1i4tcPsu0yKghcl+IiMgxj1lYNXHT4dL77U1A2KCiCVtX
	pQrznuC4ZVkBsXdMhJtRtjlAt5ysbm91JqGRFyd+uBra2RiixzgznsGVNS0Er0uH+q/6ScZ6FfaxT
	cxQgDXdX6R8vpwFnEgFLVCjvWHaIsUcWQ3bDmgTjz9/7WZkCZ29T9S2H9ZigHxr8JeLy40GaSU5Yi
	Skiw85RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnDlJ-00000006U85-2i2r;
	Tue, 03 Feb 2026 10:36:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnDlC-00000006U6E-2Z5h
	for barebox@lists.infradead.org;
	Tue, 03 Feb 2026 10:35:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vnDl8-0004cw-7h; Tue, 03 Feb 2026 11:35:50 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vnDl8-003tHo-2I;
	Tue, 03 Feb 2026 11:35:50 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vnDl8-00000004skr-1kfb;
	Tue, 03 Feb 2026 11:35:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20260203-stm32-generic-v1-1-6fa7a2df3cee@pengutronix.de>
References: <20260203-stm32-generic-v1-1-6fa7a2df3cee@pengutronix.de>
Message-Id: <177011494994.1163780.11668281331366069338.b4-ty@pengutronix.de>
Date: Tue, 03 Feb 2026 11:35:49 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260203_023554_971747_65C87013 
X-CRM114-Status: UNSURE (   7.81  )
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
Subject: Re: [PATCH] ARM: stm32mp: Make ARCH_STM32MP13 and ARCH_STM32MP157
 selectable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 03 Feb 2026 11:19:17 +0100, Jonas Rebmann wrote:
> ARCH_STM32MP13 and ARCH_STM32MP157 are automatically selected if a
> dependent machine is selected. However, without any machine selected,
> CONFIG_ARCH_STM32MP still enables build of the
> barebox-stm32mp-generic.img image, which, provided a dtb, is functional
> without requiring further board specific code.
> 
> In this case ARCH_STM32MP13 and/or ARCH_STM32MP157 need to be explicitly
> enabled for the SoC to be fully functional (e.g. clocks).
> 
> [...]

Applied, thanks!

[1/1] ARM: stm32mp: Make ARCH_STM32MP13 and ARCH_STM32MP157 selectable
      https://git.pengutronix.de/cgit/barebox/commit/?id=ab3e677a2be3 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



