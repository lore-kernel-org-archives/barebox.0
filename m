Delivery-date: Mon, 19 Jan 2026 10:57:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhm0V-002zJP-2n
	for lore@lore.pengutronix.de;
	Mon, 19 Jan 2026 10:57:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhm0U-0006Ve-SC
	for lore@pengutronix.de; Mon, 19 Jan 2026 10:57:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d3CUMzxTNxuh0W8hZX8dn6cIOQw3v7KIAwNSYf7iDME=; b=j1mGwh+Ie9ZxdC5xZx8F2UPil9
	zG8bmt83GZ82ebiO0yqNoaRDeZxoGygXyc5B2VaD+09B01ebXtDSGQAU15/5pyn6mbIWW/0ufAgxi
	sNA92heO4VgOG7PsrTa66ThZYHeTyTlMyFgbaw9evFP0XMUAupsWfsRHC6urO5iJ5hItr/Qa0CjIB
	bK2Y9yTU5BQn1+bCPEwk8iWndlh5Tq9UrjDRv3Eh9Oe7dxDa0Leub2jBlDq8yEOwzVvMOADDSRGIk
	8ZFyCeFtIGA1a1JUqOn4F3Wda0ED2K2sMC/+NxACjANy6J2ZycxQPk0BpNRDxgCvQN19/+gsk0Yj+
	5ovbEqjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhlzw-00000001gRb-3doN;
	Mon, 19 Jan 2026 09:56:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhlzm-00000001gLB-0PA1
	for barebox@lists.infradead.org;
	Mon, 19 Jan 2026 09:56:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vhlzk-0006CC-86; Mon, 19 Jan 2026 10:56:24 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vhlzk-001ODy-28;
	Mon, 19 Jan 2026 10:56:24 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vhlzj-00000003kUA-3uNG;
	Mon, 19 Jan 2026 10:56:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260115120333.3432231-1-a.fatoum@barebox.org>
References: <20260115120333.3432231-1-a.fatoum@barebox.org>
Message-Id: <176881658392.893641.6595053194481152383.b4-ty@pengutronix.de>
Date: Mon, 19 Jan 2026 10:56:23 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_015626_136554_DC41F3D3 
X-CRM114-Status: UNSURE (   6.46  )
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
Subject: Re: [PATCH] efi: payload: enable both efi loader and payload for
 *_efi_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 15 Jan 2026 13:03:33 +0100, Ahmad Fatoum wrote:
> We already have an efi_defconfig that's only for use as EFI payload/app.
> Let's have all _efi_defconfig thus enable both efi-payload and efi
> loader support for extra coverage.
> 
> 

Applied, thanks!

[1/1] efi: payload: enable both efi loader and payload for *_efi_defconfig
      https://git.pengutronix.de/cgit/barebox/commit/?id=5c4b95900e27 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



