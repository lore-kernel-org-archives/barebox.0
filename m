Delivery-date: Fri, 29 May 2026 13:44:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSvdk-000AdU-2X
	for lore@lore.pengutronix.de;
	Fri, 29 May 2026 13:44:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSvdk-0000j5-7R
	for lore@pengutronix.de; Fri, 29 May 2026 13:44:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8xjVRlBYVnUtWm0n737zllvBphghsL/MbwHstVraBDE=; b=P1dll9wiPh6JLd5zVNk78kYxoX
	/VPwDwTa+RPRwL1mkJL+PhCxGhpgVsg2tQr/XrNLVFzEBzDVVzJJxeHr35w3vagMkXLCFzbiJZqsY
	Mr8gRfdpCZSS5vAjj7rSbqeQr6Y4eK47flF3ole32mjmhftu4Y4zTnCVxYyk2WKTvv5bndsmTcjyM
	82m9YCsJzTyV0I3Hxk1OAcwLltojQTafnEk0Qz3NxNSTQd8IIjaV+k334rvCNXvd3Upiw6CqwNQ//
	RUqz1X/RO73+raAKgfk63vK8rgv/UphPcnADZFOoh/d0cRRU74JJsEJ6BagHMgiW3+b4qFWSRnWLq
	ZezaQR4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSvcc-00000007Irw-2e6m;
	Fri, 29 May 2026 11:43:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSvca-00000007IqC-1dfW
	for barebox@lists.infradead.org;
	Fri, 29 May 2026 11:43:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wSvcY-0000SP-UB; Fri, 29 May 2026 13:43:22 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wSvcY-0005KE-2G;
	Fri, 29 May 2026 13:43:22 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wSvcY-0000000At4X-2f6i;
	Fri, 29 May 2026 13:43:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Lucas Sinn <lucas.sinn@wolfvision.net>
In-Reply-To: <20260528122902.3523883-1-s.hauer@pengutronix.de>
References: <20260528122902.3523883-1-s.hauer@pengutronix.de>
Message-Id: <178005500262.2594942.14552683743468226225.b4-ty@pengutronix.de>
Date: Fri, 29 May 2026 13:43:22 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260529_044324_436622_1E19E170 
X-CRM114-Status: UNSURE (   6.29  )
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
Subject: Re: [PATCH] drivers: mci: rockchip: fix HS400 DLL strobe and clock
 gate config
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 28 May 2026 14:29:02 +0200, Sascha Hauer wrote:
> Align two register writes with the Linux kernel (sdhci-of-dwcmshc.c):
> 
> - DLL_STRBIN_TAPNUM_DEFAULT: 0x8 -> 0x4
>   The strobe tap number was twice the value used by Linux, placing the
>   DS sampling point at the wrong phase at 200 MHz and causing DMA
>   timeouts in HS400/HS400-ES mode.
> 
> [...]

Applied, thanks!

[1/1] drivers: mci: rockchip: fix HS400 DLL strobe and clock gate config
      https://git.pengutronix.de/cgit/barebox/commit/?id=63850c699649 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



