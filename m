Delivery-date: Thu, 30 May 2024 15:24:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sCflh-0004Rl-2Z
	for lore@lore.pengutronix.de;
	Thu, 30 May 2024 15:24:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sCflh-0007Iz-7V
	for lore@pengutronix.de; Thu, 30 May 2024 15:24:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WlcuLrMyN7T81GHEs/nGgTBFoC0txMtASuKliSoRH2U=; b=dJpo6psZFzE8RleKQM6ivt0BSf
	/GwC9fLgFheA0Ko/zyvpmn3yjEqy5Fd1SyBYKIqY/OWTvwSY9iOwKReU72rH+G2MA1rQMiiWsaK84
	5zc7rYVK72pOZ9YQYIH3nlSdWYOrnUh7EXcpEoycHsh4qJ/r6WxjO+4dvwhlnzE1KfYZ9FPSYjbP8
	xtmWjr8SbcT8bejKxEkT20sifrxbehvsEu0DfAqCJQG0TTF+zsyxU2MZO00blOjl4iI/QKdJ+SM43
	BHbnYNRqXjQFdUB5bqqzojvCAM08F0Xxjafhaga9R/y3Kxhkk3ArZqR5AAfAG0QmD3cuYPIvbiwOJ
	Ji5BwOKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCflG-00000007Lli-3dCW;
	Thu, 30 May 2024 13:24:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCflD-00000007Lki-3tNB
	for barebox@lists.infradead.org;
	Thu, 30 May 2024 13:24:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sCflC-0007FC-Of; Thu, 30 May 2024 15:24:02 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sCflC-003bOs-8U; Thu, 30 May 2024 15:24:02 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sCflC-008gkO-0e;
	Thu, 30 May 2024 15:24:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Oleksij Rempel <o.rempel@pengutronix.de>
Cc: David Jander <david@protonic.nl>
In-Reply-To: <20240529100838.551840-1-o.rempel@pengutronix.de>
References: <20240529100838.551840-1-o.rempel@pengutronix.de>
Message-Id: <171707544219.2070692.5571978277298286575.b4-ty@pengutronix.de>
Date: Thu, 30 May 2024 15:24:02 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240530_062404_005448_1F78E1FC 
X-CRM114-Status: UNSURE (   8.30  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v1] spi: stm32: avoid enabling SPI in setup to allow
 register configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 29 May 2024 12:08:38 +0200, Oleksij Rempel wrote:
> The stm32_spi_setup function configures the STM32 SPI engine by setting
> the SPI mode and speed. However, enabling the SPI peripheral during this
> process blocks all changes to configuration registers, causing the
> configuration writes to be ignored.
> 
> Remove stm32_spi_enable calls from stm32_spi_setup to ensure proper
> configuration of the SPI registers before enabling the peripheral.
> 
> [...]

Applied, thanks!

[1/1] spi: stm32: avoid enabling SPI in setup to allow register configuration
      https://git.pengutronix.de/cgit/barebox/commit/?id=e548c6f567f2 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



