Delivery-date: Thu, 26 Sep 2024 15:17:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stoMd-0030uW-0P
	for lore@lore.pengutronix.de;
	Thu, 26 Sep 2024 15:17:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stoMc-0006i1-VA
	for lore@pengutronix.de; Thu, 26 Sep 2024 15:17:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=27MkOVi+kpvZg7WB+YHEIrv3gqMCo5FqKCeawKU/5C4=; b=qQQgDw/z8dzFzhGolCR82oW7Sn
	3k8wMREQQHvxLLtT7tQqqRH7OQrb+qouab0q17TXKpJSDwf8VnzUgNvKuv+emmAFmI7R21CIwEqxP
	tRkCCvbo6QVhRtZ6JqlM5GuNzmwPgc9tZeL84j3aiIm8tqM9LPOkSFYmk8lAalrz6IuUCMUZFcUnN
	yoZTcJTBYnXjpPMzSTcFuQCcUjMoNFO4HeP6GH86lx+63upbXmUhhO/hTGg92pl4epek61NYXofKI
	eyMsyjy+gy2vdxf45+lgvdQ+88MMnevnRd37g4X8CCJL4zY9zyWiKffOL6zbJv0pO/Q6OHPwSt8vM
	rJ/26UYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stoLz-00000008RYw-295F;
	Thu, 26 Sep 2024 13:16:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stoLv-00000008RY4-39KS
	for barebox@lists.infradead.org;
	Thu, 26 Sep 2024 13:16:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stoLu-00064g-4N; Thu, 26 Sep 2024 15:16:14 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stoLt-001h7v-CO; Thu, 26 Sep 2024 15:16:13 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stoLt-00GaNl-2U;
	Thu, 26 Sep 2024 15:16:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: lst@pengutronix.de
In-Reply-To: <20240910114832.2984195-1-a.fatoum@pengutronix.de>
References: <20240910114832.2984195-1-a.fatoum@pengutronix.de>
Message-Id: <172735657332.3953088.17407106050155705134.b4-ty@pengutronix.de>
Date: Thu, 26 Sep 2024 15:16:13 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_061615_827444_28D87DAC 
X-CRM114-Status: GOOD (  11.49  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/4] dma: debug: track DMA buffer ownership with KASAN
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 10 Sep 2024 13:48:28 +0200, Ahmad Fatoum wrote:
> There is litte we can do in software if a DMA master decides to corrupt
> memory that is owned by the CPU. What we could do, however, is to ensure
> that code doesn't access memory while not owned by the CPU.
> 
> This is done by recording ownership information into the KASAN shadow memory.
> That way accessing a device mapped buffer before sync'ing it to the CPU is
> detected like KASAN would detect a use-after-free. Below is the output
> after adding a (void)readl(packet) into the network device send routing just
> after mapping it to the device:
> 
> [...]

Applied, thanks!

[1/4] Revert "dma: debug: detect repeated DMA sync"
      https://git.pengutronix.de/cgit/barebox/commit/?id=77bf74ca6d5d (link may not be stable)
[2/4] KASan: implement non-warning kasan_is_poisoned_shadow
      https://git.pengutronix.de/cgit/barebox/commit/?id=f82c8cfcdf31 (link may not be stable)
[3/4] dma: debug: poison DMA buffers with KASAN while owned by device
      https://git.pengutronix.de/cgit/barebox/commit/?id=77b1f08efbb0 (link may not be stable)
[4/4] dma: debug: detect repeated DMA sync using KASAN
      https://git.pengutronix.de/cgit/barebox/commit/?id=6de8f0188126 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



