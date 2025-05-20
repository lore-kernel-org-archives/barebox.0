Delivery-date: Tue, 20 May 2025 10:02:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHHw9-000lqM-38
	for lore@lore.pengutronix.de;
	Tue, 20 May 2025 10:02:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHHw9-0001Lc-FQ
	for lore@pengutronix.de; Tue, 20 May 2025 10:02:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+SdpFojToGZl90sYTzDCIqc0Rk5l00mOVhiBnvpKDwg=; b=MyqXd0n1Swyl0rhN0Cp/Uxjx9x
	KpngIIOuxEMT11TSZLN6NRyBpqK+yoXzfVrvqBWMVSgYqz2XXLHy/i1zwuT8CunTtS4P9s/1M+DVO
	auXonMFL1QJlnzyQ1cJ1CVCSUpisHXAR9Nahqy/p+sS02rG4zQCB1d3MhR7hPCwdsLf5AzrRhd1Dp
	9ReHBdIr6g/gaQ2gAHymdYTHH/N4Kt7OvxLyJ0yyfK3htl2PKKQ5zrWcVUMu3K5+fSzD85g753LQd
	qzBwcP2v5osgJEjTuSdrwfOIimquWFoLFh9JaywLUxM5gY1hq/vz4PxOrLrQu9tG09WRDXufa8dJ8
	2iFrPzyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHHva-0000000BxIe-1rJd;
	Tue, 20 May 2025 08:02:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHHvX-0000000BxIF-2O3s
	for barebox@lists.infradead.org;
	Tue, 20 May 2025 08:02:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uHHvV-00011q-Qe; Tue, 20 May 2025 10:02:17 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uHHvV-000NJa-23;
	Tue, 20 May 2025 10:02:17 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uHHvV-00560Y-1q;
	Tue, 20 May 2025 10:02:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250506115652.1134337-1-a.fatoum@pengutronix.de>
References: <20250506115652.1134337-1-a.fatoum@pengutronix.de>
Message-Id: <174772813756.1214725.12850731292057998941.b4-ty@pengutronix.de>
Date: Tue, 20 May 2025 10:02:17 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250520_010219_611127_8DDEF0D0 
X-CRM114-Status: UNSURE (   6.47  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] ARM: at91: xload: make capacity an argument to
 at91_mci_bio_set_highcapacity
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 06 May 2025 13:56:51 +0200, Ahmad Fatoum wrote:
> In preparation for a switch to the common mci-pbl support, merge
> at91_mci_bio_init & at91_mci_bio_set_highcapacity, because
> pbl_mci_bio_init() expects these parameters to be already set.
> 
> 

Applied, thanks!

[1/2] ARM: at91: xload: make capacity an argument to at91_mci_bio_set_highcapacity
      https://git.pengutronix.de/cgit/barebox/commit/?id=697cdeb5573f (link may not be stable)
[2/2] mci: atmel_mci: switch PBL implementation to common mci-pbl support
      https://git.pengutronix.de/cgit/barebox/commit/?id=d7a713ae985b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



