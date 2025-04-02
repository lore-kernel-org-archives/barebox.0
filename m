Delivery-date: Wed, 02 Apr 2025 10:24:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tztP5-007KcR-1y
	for lore@lore.pengutronix.de;
	Wed, 02 Apr 2025 10:24:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tztP5-0001vr-2V
	for lore@pengutronix.de; Wed, 02 Apr 2025 10:24:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UcPA57TUrth045YmYxwOZTYthTyLGXD58gqN2F37b+E=; b=XKmKM0ovaeshKE68fMl4upKe7k
	AE2i+eOfWCj4VYWSQm/oUEtflWWJeJjMAy2BhYNdfRz8EqQbpJRzL+aKIg8/SyFIIhSn9j/gb7d6B
	envtvfzqOFrV5jMOW4iF53yV/tYnH3AleNRKQjDOH6nAotesYNROFXCnR1/cGy0Qz6VpoMcWW0JfV
	dJcWc2eR5u3MUsrMavVtxOeO29mHjdW1pBhfXTBn/LI+C3jhMcItXj1eO1jy9N5spBFcxtyWiITg0
	ssPzojRmOy/nWHLpyMczAWM/kgu4s45CtRFMH+VxSa2Dtur1DllYaOaVmfIKB9Adj9MRpXf5IAfOg
	YlEJauSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tztOa-00000005W82-1fvh;
	Wed, 02 Apr 2025 08:24:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tztOY-00000005W7h-0acM
	for barebox@lists.infradead.org;
	Wed, 02 Apr 2025 08:24:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tztOW-0001lr-TH; Wed, 02 Apr 2025 10:24:20 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tztOW-002u7P-2K;
	Wed, 02 Apr 2025 10:24:20 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tztOW-00ESbD-27;
	Wed, 02 Apr 2025 10:24:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250401120725.3127460-1-o.rempel@pengutronix.de>
References: <20250401120725.3127460-1-o.rempel@pengutronix.de>
Message-Id: <174358226065.3446488.12694374491764373675.b4-ty@pengutronix.de>
Date: Wed, 02 Apr 2025 10:24:20 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250402_012422_186025_871658CC 
X-CRM114-Status: UNSURE (   6.22  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] spi: add STM32F7 QSPI controller driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 01 Apr 2025 14:07:25 +0200, Oleksij Rempel wrote:
> Introduce support for the STM32F7 QSPI controller, compatible with
> "st,stm32f469-qspi".
> 
> Validated on STM32MP133-based MECT1S r1 board, which includes an
> F7-compatible QSPI peripheral
> 
> 
> [...]

Applied, thanks!

[1/1] spi: add STM32F7 QSPI controller driver
      https://git.pengutronix.de/cgit/barebox/commit/?id=b330a252639d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



