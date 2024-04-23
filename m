Delivery-date: Tue, 23 Apr 2024 08:26:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rz9bu-00CXN7-16
	for lore@lore.pengutronix.de;
	Tue, 23 Apr 2024 08:26:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rz9bt-0004Gg-Ph
	for lore@pengutronix.de; Tue, 23 Apr 2024 08:26:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZJx8mhHb7hjUviHOs0Fz//vSjY4EExj0z3qtUhakoCw=; b=KM6Ey1ieqSExq/c64BsOMqwaSM
	RLN2nc0Iai+MRRGjkSi2jzs657g0sp75Sr7vDQ4HN83qc8mzTHgt1kjjlEFUJChrmyJRgSKmf/nbG
	f2cVTgn5YomZ7pdO+V69mkT0S3FSydIg+ZxzYP82vd+TnumQk6JDUJKgGKmKJNdvXc3fBrP2pLPAr
	06e40QzXLMBuieZUqER5Z3O0P+LxMx6p43vO9wXZseWALGQPkaUIa2ZVE3B91t2lm8rToD0BiHVyS
	tpXxEsc1UDZtbsrQ3L3PMFcAOpIntKu6ORWQPOoB8fI8eLlvKRbsMP3zcChc74eOOanDSw5fxCyzR
	G74yeaWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rz9bU-0000000G8RS-2ezT;
	Tue, 23 Apr 2024 06:26:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rz9bQ-0000000G8Pp-1PdB
	for barebox@lists.infradead.org;
	Tue, 23 Apr 2024 06:26:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rz9bP-000492-3f; Tue, 23 Apr 2024 08:26:03 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rz9bO-00DpOZ-NK; Tue, 23 Apr 2024 08:26:02 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rz9bO-007B2Z-28;
	Tue, 23 Apr 2024 08:26:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
In-Reply-To: <20240423060435.1514644-1-a.fatoum@pengutronix.de>
References: <20240423060435.1514644-1-a.fatoum@pengutronix.de>
Message-Id: <171385356265.1710700.8314634744900159518.b4-ty@pengutronix.de>
Date: Tue, 23 Apr 2024 08:26:02 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_232604_595165_D7D5068B 
X-CRM114-Status: UNSURE (   9.57  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] mci: core: allocate memory used for DMA with
 dma_alloc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 23 Apr 2024 08:04:35 +0200, Ahmad Fatoum wrote:
> Memory allocated by normal malloc may not fulfill the alignment
> requirements for DMA.
> 
> This fixes memory corruption observed on the i.MX8MP when the
> DMA-enabled eSDHC driver attempts to probe an eMMC.
> 
> This issues always existed, but only after commit 65ef5d885263
> ("ARM64: let 'end' point after the range in cache functions"), the whole
> 512 bytes were getting invalidated, which corrupted the TLSF malloc
> header of the block after it.
> 
> [...]

Applied, thanks!

[1/1] mci: core: allocate memory used for DMA with dma_alloc
      https://git.pengutronix.de/cgit/barebox/commit/?id=b986aad24ab8 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



