Delivery-date: Mon, 01 Jul 2024 15:20:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOGxj-000VzT-0H
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 15:20:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOGxi-000780-Hr
	for lore@pengutronix.de; Mon, 01 Jul 2024 15:20:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f0ItgfH+LFcsJXVAquEeDvYuGfDRfaxVkZ4DjeagcZ0=; b=CE15e+NHIyUOPGaXCpUMrCxnQ+
	MMuKScOevv1vZa/8IB11VAR+mhmdUdYiTEQkHvzE8fOdJ/f5LCxwMvBWZvyMkLRc275uqA1mqphrD
	AwM7fbl9o+xnGIB2C0RQqi5FuLBJg6OMmtU13Q1sZIzdVobtpehyyBckBQoQwIyp8oH+gZPvnn9TQ
	cU2PHexFryM2d2Oy7tMK23Wr+XjNXi8vXmH9f1iDoaU1pvZadIH/F1vHi1KBePfhT2nD0NGaMQ5gq
	0NmGbSvfXSJnxCkhy0Cce/7biKgH48gHixRunlxU5BfjlhRXI/YZgT9eqfLVAtBjxMjBaFLEVLt9S
	72d7cLtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOGxI-00000003Rly-07Xb;
	Mon, 01 Jul 2024 13:20:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOGvg-00000003Qlm-4AoD
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 13:18:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOGvf-0006iI-DU; Mon, 01 Jul 2024 15:18:47 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOGvf-006Nhu-0k; Mon, 01 Jul 2024 15:18:47 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOGve-00CkCz-34;
	Mon, 01 Jul 2024 15:18:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Antony Pavlov <antonynpavlov@gmail.com>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240618213357.389435-1-antonynpavlov@gmail.com>
References: <20240618213357.389435-1-antonynpavlov@gmail.com>
Message-Id: <171983992694.3037454.2582479822625508289.b4-ty@pengutronix.de>
Date: Mon, 01 Jul 2024 15:18:46 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_061849_136545_BC68D4D5 
X-CRM114-Status: UNSURE (   7.33  )
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
Subject: Re: [RFC] spi: spi-fsl-qspi: fix dev_request_mem_resource() usage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 19 Jun 2024 00:33:57 +0300, Antony Pavlov wrote:
> Here is the code from drivers/spi/spi-fsl-qspi.c:
> 
> > res = dev_request_mem_resource(dev, 0);
> > q->iobase = IOMEM(res->start);
> > if (IS_ERR(q->iobase)) {
> >         ret = PTR_ERR(q->iobase);
> >         goto err_put_ctrl;
> > }
> 
> [...]

Applied, thanks!

[1/1] spi: spi-fsl-qspi: fix dev_request_mem_resource() usage
      https://git.pengutronix.de/cgit/barebox/commit/?id=3104ea021aef (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



