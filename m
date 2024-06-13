Delivery-date: Thu, 13 Jun 2024 09:19:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHeji-005FE3-2n
	for lore@lore.pengutronix.de;
	Thu, 13 Jun 2024 09:19:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHeji-0005MK-5U
	for lore@pengutronix.de; Thu, 13 Jun 2024 09:19:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wcBnR+HHvlAqq8D4vIBp2B+ic2XdeIpTytVb2LzV/7g=; b=J0ui3ikD6qC7OYRJ6wMkIq+pK+
	DG+7wnWuo7SCJuWVsFi0UegGnNBLBe7QTETBOW68hCMnKE+dUuFTlDtE1iClBJ1olwIEioLtyc9hO
	J/RDDVydkk78/9cpvLfitS/pUtGmmiMDKbkFDxQ0RyaHbFxPW8HlkqD7boYBla3KDlR91S/imiy/I
	UKacgqSY4hh8pb+GA1vhm4TXnRDlmPUiakIqfGPbbo4oywz+Id1YCpCrBqaACrZMdnPrySI7QATQI
	M8wpNSnODvkZBBqfG7nHP+l9NYUGD6ny3jyFJpNdwGDUNv2K2MIqn2cGNxpDbvpUu6Ffff3j2ofxG
	JUkQNsIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHejA-0000000FRNk-4A5c;
	Thu, 13 Jun 2024 07:18:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHej7-0000000FRNI-1b8s
	for barebox@lists.infradead.org;
	Thu, 13 Jun 2024 07:18:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sHej5-0005Jg-Ry; Thu, 13 Jun 2024 09:18:27 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sHej5-001yP3-F6; Thu, 13 Jun 2024 09:18:27 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sHej5-00BTZY-1I;
	Thu, 13 Jun 2024 09:18:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240611065923.2900168-1-a.fatoum@pengutronix.de>
References: <20240611065923.2900168-1-a.fatoum@pengutronix.de>
Message-Id: <171826310739.2735251.16861775276380736572.b4-ty@pengutronix.de>
Date: Thu, 13 Jun 2024 09:18:27 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_001829_461179_FB7782FA 
X-CRM114-Status: UNSURE (   8.56  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/6] semihosting: extend support for ARM64, console
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 11 Jun 2024 08:59:17 +0200, Ahmad Fatoum wrote:
> So far, we limited semihosting support to 32-bit ARM, but it's also
> usable on ARM64 and even RISC-V.
> 
> This series does the first step by making it compile for ARM64 and also
> adds DEBUG_LL and console drivers.
> 
> Ahmad Fatoum (6):
>   ARM: lib32: semihosting: prepare for more general use
>   firmware: semihosting: add ARMv8-A semihosting support
>   firmware: semihosting: don't return error code from writec/write0
>   firmware: semihosting: translate return values in wrappers
>   ARM: semihosting: add DEBUG_LL implementation
>   serial: add semihosting console
> 
> [...]

Applied, thanks!

[1/6] ARM: lib32: semihosting: prepare for more general use
      https://git.pengutronix.de/cgit/barebox/commit/?id=b31058d41bb9 (link may not be stable)
[2/6] firmware: semihosting: add ARMv8-A semihosting support
      https://git.pengutronix.de/cgit/barebox/commit/?id=ea71e603e460 (link may not be stable)
[3/6] firmware: semihosting: don't return error code from writec/write0
      https://git.pengutronix.de/cgit/barebox/commit/?id=8f79ab770a4c (link may not be stable)
[4/6] firmware: semihosting: translate return values in wrappers
      https://git.pengutronix.de/cgit/barebox/commit/?id=5f87fad31eef (link may not be stable)
[5/6] ARM: semihosting: add DEBUG_LL implementation
      https://git.pengutronix.de/cgit/barebox/commit/?id=0e87c409e354 (link may not be stable)
[6/6] serial: add semihosting console
      https://git.pengutronix.de/cgit/barebox/commit/?id=1d2df6d26c35 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



