Delivery-date: Mon, 01 Jul 2024 14:45:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOGPk-000VOX-2C
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 14:45:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOGPk-0003ms-5k
	for lore@pengutronix.de; Mon, 01 Jul 2024 14:45:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EnejSWkRiCXeBRjVUiapyI1L55votxAhuSF8VBh4wpc=; b=pmx0/Gbmh77br1Xjzrq4s7g+f+
	bgfoPCB3PYSNKAhzYQ+4dNI0KOERq1qhSU34EVT67UlYw0FxJ4AtsQjejZtVYtu+4w9hSBpkdT3PL
	eBl22XS2WdyEZzpynoSYM0a7mw0UBGAHXAE8yqYUzwhzZKTGefUMhsX72pT4Z5C3en+2rWa3DGN5p
	LYmVxYTsNgFT/kFh1HU+fSMdUc5OgO4CgiW4CbEbwCcW3WrOU4sWClZxkRPZU4CJqnrcZMKda+ZIT
	XVQpJ5ffqJvKKSktezEH0EnOeSEpv95ibWJfgbeohhcrAisKM/sfXcMndr5HF9fSQNYOUbHKlG4Bi
	5hpLcqRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOGPM-00000003K51-1czk;
	Mon, 01 Jul 2024 12:45:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOGPJ-00000003K3X-0P3J
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 12:45:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOGPH-0003hs-Vo; Mon, 01 Jul 2024 14:45:19 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOGPH-006NJT-JG; Mon, 01 Jul 2024 14:45:19 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOGPH-009X0s-1i;
	Mon, 01 Jul 2024 14:45:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20240620074920.14780-1-eagle.alexander923@gmail.com>
References: <20240620074920.14780-1-eagle.alexander923@gmail.com>
Message-Id: <171983791953.2271691.9800017301021238757.b4-ty@pengutronix.de>
Date: Mon, 01 Jul 2024 14:45:19 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_054521_174523_4DE4E357 
X-CRM114-Status: UNSURE (   4.62  )
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
Subject: Re: [PATCH] mfd: rk808: Fix poweroff handler name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 20 Jun 2024 10:49:20 +0300, Alexander Shiyan wrote:
> 


Applied, thanks!

[1/1] mfd: rk808: Fix poweroff handler name
      https://git.pengutronix.de/cgit/barebox/commit/?id=af28a9d08323 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



