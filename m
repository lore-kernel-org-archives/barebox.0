Delivery-date: Tue, 16 Apr 2024 15:42:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwj4g-003R2Y-07
	for lore@lore.pengutronix.de;
	Tue, 16 Apr 2024 15:42:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwj4f-0001FR-Fw
	for lore@pengutronix.de; Tue, 16 Apr 2024 15:42:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wSRifnd4S+LhOaEfsAkgbl71FMQ4Kf+F9l2B2hQ2Fe0=; b=wUhcMO9wSjSHF0F5UnAe5XABTW
	uM6Y0g2DF1zLMhZgNthKO4+SmvhzLXkODx7trw9AXo606uBWflzalBPa9nkhdV1MwcoxDzkA3XVPZ
	0GTLhZzxd7E19n9w896+eU2bh5vbqxPOd9LQ+MxBJ2z2+q1gRy+QYt8GXF3a4Jn4ATHRLuI2cctAO
	+VuIOKpYR5STOz/NKKdwZGb7U2N5EqdXhhoyXxPwO9/1yACpfQfe7bP/v13CriGMY5TELEZPjD2Sz
	w7JHF5IQtZK7tcYPPZ7WeejtUBExDJQg+DmauQ4G7WTgPpxD/i/5gBGWdldFioFgo9b2uyXVo/sk8
	40tu7BGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwj4J-0000000CMVh-1LLN;
	Tue, 16 Apr 2024 13:41:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwj4F-0000000CMTi-1rJg
	for barebox@lists.infradead.org;
	Tue, 16 Apr 2024 13:41:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwj4E-0000Pc-2K; Tue, 16 Apr 2024 15:41:46 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwj4D-00CcUl-M8; Tue, 16 Apr 2024 15:41:45 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwj4D-008lj3-21;
	Tue, 16 Apr 2024 15:41:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240416063126.1345967-1-s.hauer@pengutronix.de>
References: <20240416063126.1345967-1-s.hauer@pengutronix.de>
Message-Id: <171327490562.2089976.13950792403257235808.b4-ty@pengutronix.de>
Date: Tue, 16 Apr 2024 15:41:45 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_064147_610846_A6F11912 
X-CRM114-Status: UNSURE (   6.81  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] clk: imx27: add nand clock
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 16 Apr 2024 08:31:25 +0200, Sascha Hauer wrote:
> The NAND clock is currently missing. The NAND driver doesn't use it
> currently, but will be using it later once we update the driver. Add
> this missing clock.
> 
> 

Applied, thanks!

[1/2] clk: imx27: add nand clock
      https://git.pengutronix.de/cgit/barebox/commit/?id=c817f57bd873 (link may not be stable)
[2/2] clk: imx27: add watchdog clock
      https://git.pengutronix.de/cgit/barebox/commit/?id=f40319c8e157 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



