Delivery-date: Fri, 07 Feb 2025 09:26:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tgJgX-009Z6Q-0b
	for lore@lore.pengutronix.de;
	Fri, 07 Feb 2025 09:26:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tgJgX-0000u5-BO
	for lore@pengutronix.de; Fri, 07 Feb 2025 09:26:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UXuP2JcoYAfVQR8iSl1OMBnay7ytjrLofp67Kd94GPk=; b=qSR+v48kOOoVOhVijdqCw359ZM
	G2DppZawCgZ5SNUKZHceNrMMt9AsA/p8C2q7H65K+GttTtGOvwWt5MMOiF1mrQXIifd/ZZgiGlB75
	8sSo7pgVSPLwd/xLK4t6PC5cMMOIFSnAZfUfSup6TWk16zFrcBrCyLMnyxxmp2x6wdxOoJmB3egxS
	CRbSNaI181hUnjVDea+gIXN0PRT+IetzDbhqDleSXCjtBUzsv0qn9RFOoPYLjQoy+tOZrVU/98PjZ
	kADFGVCVU63TceUj7QMGE0FfaddwbEq4+A+zgbLEkb42DtlMT8WtsI0AUye2BoavNx2F5THUkt/uh
	BqMSf9ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgJfz-00000008o4T-3Bu7;
	Fri, 07 Feb 2025 08:25:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgJfq-00000008o0J-2Rym
	for barebox@lists.infradead.org;
	Fri, 07 Feb 2025 08:25:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tgJfp-0000gC-BG; Fri, 07 Feb 2025 09:25:17 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tgJfo-003whX-38;
	Fri, 07 Feb 2025 09:25:16 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tgJfo-0010Et-2v;
	Fri, 07 Feb 2025 09:25:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20250204132207.332918-1-eagle.alexander923@gmail.com>
References: <20250204132207.332918-1-eagle.alexander923@gmail.com>
Message-Id: <173891671690.239230.12036155929737942355.b4-ty@pengutronix.de>
Date: Fri, 07 Feb 2025 09:25:16 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250207_002518_631211_9FC0DEA6 
X-CRM114-Status: GOOD (  11.88  )
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
Subject: Re: [PATCH] i2c: rockchip: Replace driver from kernel repository
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 04 Feb 2025 16:22:07 +0300, Alexander Shiyan wrote:
> The current Rockchip i2c driver was taken from the u-boot repository,
> so it has minimal functionality and is designed to be the simplest.
> Development with the Rockchip SOC led to the idea that it is not
> sufficient to handle some i2c devices (in my case, this i2c EEPROMs
> and i2c MUXes).
> This patch replaces the driver code from the Linux kernel repository
> to make the driver more flexible with SDA/SCL setup/hold settings and
> as a result, more stable across boards.
> Tested with cusom rk3568-based board.
> 
> [...]

Applied, thanks!

[1/1] i2c: rockchip: Replace driver from kernel repository
      https://git.pengutronix.de/cgit/barebox/commit/?id=840b074cdab9 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



