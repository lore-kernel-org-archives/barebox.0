Delivery-date: Tue, 26 May 2026 09:22:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wRm7D-003vSW-2m
	for lore@lore.pengutronix.de;
	Tue, 26 May 2026 09:22:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wRm7D-0007S8-9Y
	for lore@pengutronix.de; Tue, 26 May 2026 09:22:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sYyQYheBE5U6CbdjV77Cp2v6+aE5SqQf0/ag098DI1I=; b=M5Y8S1wPSsEOPh6hJgf0Y2wQ4/
	dPMhvrE7untWJw88/7q5xHJMhDuE4Zeig7IpxXmL/W49a4XiU6brUOfkFXLDkt9+oLmrwtt/QDzit
	yQDZ78BvlPAaimSTwfETAP75uw5YVZkYNYbgF+tTrUBUuNcCwh5aVkPkF83QLD7YxfHVvjdW7Ux3I
	WKLicdXbOBp8buL+ZAhiEAVZVy2btHVyeRX88p35TjK05wSFXIKZaTt0svmSxtLpex3zvJWiTiDZP
	lkYqmWYkuVeRsHm+RwF8LUaSGdzE/R4crpyS6e3bwIlRG3glZ8Y+gYGtH+bjxQ2v9l1kgcu26W6sn
	qDKODbeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRlkb-00000001DVn-3ukv;
	Tue, 26 May 2026 06:58:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRlkZ-00000001DUi-1VxC
	for barebox@lists.infradead.org;
	Tue, 26 May 2026 06:58:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wRlkY-00059b-0F; Tue, 26 May 2026 08:58:50 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wRlkX-001sCp-1F;
	Tue, 26 May 2026 08:58:49 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wRlkX-0000000Gao2-3ll3;
	Tue, 26 May 2026 08:58:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260521-rockchip-emmc-fixes-v1-0-c91908ca1fb5@pengutronix.de>
References: <20260521-rockchip-emmc-fixes-v1-0-c91908ca1fb5@pengutronix.de>
Message-Id: <177977872989.3954644.2024658560779739696.b4-ty@pengutronix.de>
Date: Tue, 26 May 2026 08:58:49 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260525_235851_431114_750C65DB 
X-CRM114-Status: UNSURE (   7.86  )
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
Subject: Re: [PATCH 0/3] mci: sdhci Rockchip tuning fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 21 May 2026 10:05:04 +0200, Sascha Hauer wrote:
> Tuning operation on Rockchip used to fail. I never noticed because
> errors from tuning were not properly propagated. This is fixed in [1]
> and since this commit HSx00 speeds do not work work anymore. HS400
> modes worked for me despite the tuning failed, but with likely
> suboptimal timing. This series fixes this and we now pass tuning.
> 
> Also switch the Rockchip SDHCI controller to the recently introduced
> sdhci_send_command() helper.
> 
> [...]

Applied, thanks!

[1/3] mci: rockchip-dwcmshc-sdhci: poll DATA_AVAIL for tuning commands
      https://git.pengutronix.de/cgit/barebox/commit/?id=e6932512834b (link may not be stable)
[2/3] mci: sdhci: Fix TIMEOUT_CONTROL register value
      https://git.pengutronix.de/cgit/barebox/commit/?id=5290098d1266 (link may not be stable)
[3/3] mci: sdhci: rockchip: Use generic sdhci_send_command()
      https://git.pengutronix.de/cgit/barebox/commit/?id=19ce0bdebf48 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



