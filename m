Delivery-date: Mon, 16 Dec 2024 09:29:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tN6UA-008ked-2L
	for lore@lore.pengutronix.de;
	Mon, 16 Dec 2024 09:29:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tN6UA-00011d-N0
	for lore@pengutronix.de; Mon, 16 Dec 2024 09:29:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eYQunfJFwOFIqNmxfshmwQftgTIZ+6+MgTg9DTCam0c=; b=Q1mRME2RuHXxgEKkQr53EXr1Xx
	sv1AiSK8aTSmf9V0nmVKyFJMqxbWNsyog63AtwZ4Kd4qfwsfDiVvF1vRdOUKvvgE30VlicjcVXiUf
	lZvd90RvymFy7KF3+2udMLNLxW5OwaWqCKKAbyXgj62VZUJlkcCSHNQ4xEmM0uloCIgEQmPYh71uJ
	uMghE3swKuagU11a29MftQLD8/xyTtogAdoJgvzbtJF+O2vLmLyEOr70Xl4jKm1gF+NASStGa76Rj
	9DMczdC3gfeNKJBHx6YpgL/ldUXk3PeFWSaIq6TuMpcCV5iy2dFPrzk3AZadqntpWK1oFAAvu0dMt
	kpldDBDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN6Tk-00000009Ois-1I4o;
	Mon, 16 Dec 2024 08:29:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN6Ti-00000009OiU-1wHJ
	for barebox@lists.infradead.org;
	Mon, 16 Dec 2024 08:29:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tN6Th-0000uu-AO; Mon, 16 Dec 2024 09:29:21 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tN6Tg-003f6i-1C;
	Mon, 16 Dec 2024 09:29:21 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tN6Th-006Amr-0G;
	Mon, 16 Dec 2024 09:29:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Lucas Stach <dev@lynxeye.de>
In-Reply-To: <20241213205815.356903-1-dev@lynxeye.de>
References: <20241213205815.356903-1-dev@lynxeye.de>
Message-Id: <173433776107.1471330.15629280685433372007.b4-ty@pengutronix.de>
Date: Mon, 16 Dec 2024 09:29:21 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_002922_504191_C23DCF0C 
X-CRM114-Status: UNSURE (   8.41  )
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
Subject: Re: [PATCH] mci: sdhci: initialize dma state on non-data commands
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 13 Dec 2024 21:58:15 +0100, Lucas Stach wrote:
> Commands without data will leave the dma parameter uninitialized
> in sdhci_setup_data_dma(). Drivers then decide whether to set
> SDHCI_DMA_EN based on this uninitialized data. This seems to be
> mostly harmless as the host controllers seem to ignore this bit
> on non-data commands, but it's still a bit confusing. Make sure
> to always return a valid state.
> 
> [...]

Applied, thanks!

[1/1] mci: sdhci: initialize dma state on non-data commands
      https://git.pengutronix.de/cgit/barebox/commit/?id=ce07b7ed0266 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



