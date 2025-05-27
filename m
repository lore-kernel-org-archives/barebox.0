Delivery-date: Tue, 27 May 2025 14:38:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJtZx-000qpW-2Q
	for lore@lore.pengutronix.de;
	Tue, 27 May 2025 14:38:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJtZw-0000QW-I4
	for lore@pengutronix.de; Tue, 27 May 2025 14:38:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V1cayCREwAyN4CA5okDLcPnBEeJeFlVJXIRvWiVbNnM=; b=BU/j6h6w4PJ/LxmN8XtkTQzuH1
	fWzS/ORRf3G/RptzBxZkjUbq/1IdLjFaQRQOJk2ApnSBSCZ8uzmh0AitYdVGnellJZcnbSxxFS8pD
	HaX6BkmjnSPt8zL+QYVw1tFbC0AQo6DQyJ4gAybfo57PzATW0agN+wo6P4hx0OgP6W5ERbPEG+glY
	GCZ1gcGE//oX0IozoeDHrhlXBR34dtRZKjQqpGTn0KzDHX9THo9fhipldc9yLOD/+EsQw0TzFhXqE
	fesGanQdAYoHe+g7FJHIX1djTAP6rqzNo1dyR6UnckBAfNeKelBg3HRn54po+Y40oQcxMgR1pAxwC
	p8562Vbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJtZV-0000000Aimq-1V6o;
	Tue, 27 May 2025 12:38:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJtZS-0000000AimL-3tuP
	for barebox@lists.infradead.org;
	Tue, 27 May 2025 12:38:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uJtZQ-0000Ic-NN; Tue, 27 May 2025 14:38:16 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uJtZQ-000QDn-1j;
	Tue, 27 May 2025 14:38:16 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uJtZQ-000Lpg-1T;
	Tue, 27 May 2025 14:38:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Lars Schmidt <l.schmidt@pengutronix.de>
In-Reply-To: <20250515143219.1633351-1-s.hauer@pengutronix.de>
References: <20250515143219.1633351-1-s.hauer@pengutronix.de>
Message-Id: <174834949645.83881.4811460348523768024.b4-ty@pengutronix.de>
Date: Tue, 27 May 2025 14:38:16 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_053818_974853_3F9F1FE0 
X-CRM114-Status: UNSURE (   8.99  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mci: am654-sdhci: Clear SDHCI_CTRL_HISPD bit for some
 speed modes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 15 May 2025 16:32:19 +0200, Sascha Hauer wrote:
> Normally we would set the SDHCI_CTRL_HISPD bit for MMC_TIMING_SD_HS and
> MMC_TIMING_MMC_HS. This however doesn't seem to work on AM62x and AM62L
> SoCs.
> 
> Based on U-Boot commit 27a87c834fd ("mmc: am654_sdhci: Fix HISPD bit
> configuration in some lower speed modes") clear the SDHCI_CTRL_HISPD bit
> in these modes. Unfortunately I can't find the information in the data
> sheet referenced in that commit, so I can't verify it, but it seems
> to be necessary not only on AM6548, but on other SoCs as well.
> 
> [...]

Applied, thanks!

[1/1] mci: am654-sdhci: Clear SDHCI_CTRL_HISPD bit for some speed modes
      https://git.pengutronix.de/cgit/barebox/commit/?id=ddfc40f2137f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



