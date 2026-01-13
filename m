Delivery-date: Tue, 13 Jan 2026 12:09:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfcHP-000rLL-2R
	for lore@lore.pengutronix.de;
	Tue, 13 Jan 2026 12:09:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfcHO-0003ZD-Q9
	for lore@pengutronix.de; Tue, 13 Jan 2026 12:09:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uCK+VAfFoHC8TQdefKNOW9dphCfm6x5qR/5w8LZqG5Y=; b=BHoEFJFqTBh10pRYHreLWr/gG+
	Z4JrsDxfcWdXUPRzlgbUJm4BpOIKek4bRtawRwyY/J2BsTX01j9bqt4qhdrPpkBca6CqIraxH32Te
	fnqrIaxkJD2a+bYQOa4Lwfp2Yy5B40y2zQODEsU9miYD2yg1bOmjJoJqvnE4A8uZMhJAsMqt9Jr9L
	UzMzyUL7+72dvBskTwkeXI99VUWuCXSxEm4sYyEaOVqBzM1LqD8ceoMr8I2EbUjdR9npGO/rMnMgU
	P1q79mugJu0krrVgAWqdEBcJRfR9xjf0mdX1a4yl1DOdo3paB5N+WhtyK//8EL+UGhB3OUABSWTpk
	CfH/jkug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfcGy-00000006zef-1kfo;
	Tue, 13 Jan 2026 11:09:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfcGw-00000006zeC-0wmM
	for barebox@lists.infradead.org;
	Tue, 13 Jan 2026 11:09:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfcGu-0003P9-Nj; Tue, 13 Jan 2026 12:09:12 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfcGv-000PeY-0d;
	Tue, 13 Jan 2026 12:09:12 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfcGu-00000006PAF-1woD;
	Tue, 13 Jan 2026 12:09:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260109132903.769111-1-s.hauer@pengutronix.de>
References: <20260109132903.769111-1-s.hauer@pengutronix.de>
Message-Id: <176830255246.1526662.11508977117085262625.b4-ty@pengutronix.de>
Date: Tue, 13 Jan 2026 12:09:12 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_030914_265394_65C0C7A9 
X-CRM114-Status: UNSURE (   6.68  )
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
Subject: Re: [PATCH] scripts/k3img: Add workaround for erratum i2474
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 09 Jan 2026 14:29:03 +0100, Sascha Hauer wrote:
> The AM62Lx 1.0 is affected by erratum i2474:
> 
> | Boot: Certain second stage binaries fail for block based boot modes
> |
> | ROM fails to boot on SD, eMMC, USB-DFU, Serial NAND, GPMC NAND, and UART
> | if certificate size is aligned to 128 Bytes.
> | Certificate size must not be aligned to 128 bytes, however, individual
> | components must be aligned to 128 bytes.
> 
> [...]

Applied, thanks!

[1/1] scripts/k3img: Add workaround for erratum i2474
      https://git.pengutronix.de/cgit/barebox/commit/?id=33ec8dce2c27 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



