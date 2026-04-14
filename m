Delivery-date: Tue, 14 Apr 2026 12:06:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCafV-00C2W3-1t
	for lore@lore.pengutronix.de;
	Tue, 14 Apr 2026 12:06:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCafV-0003Nx-14
	for lore@pengutronix.de; Tue, 14 Apr 2026 12:06:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xoYUUKmSlXnBfRA7rgp9VkisBPQf/3P+qAMinTSAx4w=; b=FLfouSt6wHlU0l9jeDCkB2RiGi
	bD660ydM1CNcg6jhs/njcb05XVeW6ZK0qqLCKuWW32Vagmicfa12V5Q5Lg3WgBYEetJYMx7m+dUUg
	5tzF3FFdSfC1vAydthlGevSHZVlLLSGRaURtwlkBnLySVbrPAMv2ExA26lkbintSRvdg/UUgTQB/W
	2zAznXfRDHmzVafggpLlRmfPuB6MNyOi6RX0XEmCLio1OyqHYOGfv7jJWwq8WSDkwRGO8W8xrvZX7
	uGZ6tQCYaEXDXwjnIEDDvkhyKNbPZsb++wtjnhEvVi0wRmDIoaqEjWpDnq8ERWIJXUY3qGyMy9oNR
	Agu3eJIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCaew-0000000H6ml-2sUQ;
	Tue, 14 Apr 2026 10:06:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCaet-0000000H6mD-2uas
	for barebox@lists.infradead.org;
	Tue, 14 Apr 2026 10:06:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCaer-0003FF-J0; Tue, 14 Apr 2026 12:06:13 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCaer-005K6x-0k;
	Tue, 14 Apr 2026 12:06:13 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCaer-0000000FTvN-0WYs;
	Tue, 14 Apr 2026 12:06:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Sascha Hauer <sascha@saschahauer.de>, 
 "Claude Opus 4.6 (1M context)" <noreply@anthropic.com>
In-Reply-To: <20260413123646.3552086-1-s.hauer@pengutronix.de>
References: <20260413123646.3552086-1-s.hauer@pengutronix.de>
Message-Id: <177616117311.3688696.6921807790929253229.b4-ty@pengutronix.de>
Date: Tue, 14 Apr 2026 12:06:13 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260414_030615_736005_7CA95D04 
X-CRM114-Status: UNSURE (   5.04  )
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
Subject: Re: [PATCH 1/4] efi: loader: fix integer overflow in PE virt_size
 calculation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 13 Apr 2026 14:36:43 +0200, Sascha Hauer wrote:
> sec->VirtualAddress and section_size() are both u32. Their addition can
> wrap on overflow before being widened to unsigned long by max_t. For
> example VirtualAddress=0xFFFF0000 + VirtualSize=0x20000 wraps to
> 0x10000, producing an undersized allocation. The subsequent memset and
> memcpy to efi_reloc + sec->VirtualAddress then write far past the
> allocated buffer.
> 
> [...]

Applied, thanks!

[1/4] efi: loader: fix integer overflow in PE virt_size calculation
      https://git.pengutronix.de/cgit/barebox/commit/?id=b6598389d46d (link may not be stable)
[2/4] efi: loader: validate section raw data bounds against image size
      https://git.pengutronix.de/cgit/barebox/commit/?id=552a54e4d357 (link may not be stable)
[3/4] efi: loader: fix SizeOfBlock underflow in relocation processing
      https://git.pengutronix.de/cgit/barebox/commit/?id=a848b6109544 (link may not be stable)
[4/4] efi: loader: bounds-check relocation offsets against image size
      https://git.pengutronix.de/cgit/barebox/commit/?id=1e97eec23476 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



