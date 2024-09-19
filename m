Delivery-date: Thu, 19 Sep 2024 08:48:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1srAxW-005xNU-0J
	for lore@lore.pengutronix.de;
	Thu, 19 Sep 2024 08:48:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1srAxV-0005Qc-2G
	for lore@pengutronix.de; Thu, 19 Sep 2024 08:48:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Jdu7TBVmIW1aAIo89v3HW8H3U7JNEO2xB72rUGQMAKo=; b=tdm0i/CV+mfNx36i5AM379yGqC
	lye7B9QDA6bRDZ2d3+0T7EESJK+qewntRw2eeAF52y5m8Tgv0XUdvUMMEULv1vCm+90RCSADqm6e8
	+laV/6a2vpq2uTGjvc2coNwgGRFt4tssyg8HdHQmjI/K4rDXuS5qC8HoGvhlz5hyO506ewncF1bQn
	vth1yvz3O5nTw3u0GgFLnq8sJXgZTeEB9fy9yGiBN4nHiLFmKv5zNabmNqM4nzClgJnz8R1LFd/DB
	FmchrMDDb+fjDR20ERsahI/LOJFNxc+FVu9SiUfcvYG5IbVhNPhkLFkidISaza0+2+c8fHFqPgDr7
	8XkpltrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1srAx6-00000009aPD-0tYU;
	Thu, 19 Sep 2024 06:47:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1srAx2-00000009aOq-1Uc6
	for barebox@lists.infradead.org;
	Thu, 19 Sep 2024 06:47:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1srAx1-0005Kh-2A; Thu, 19 Sep 2024 08:47:39 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1srAx0-008zaN-Bk; Thu, 19 Sep 2024 08:47:38 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1srAx0-0097lk-10;
	Thu, 19 Sep 2024 08:47:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Michael Riesch <michael.riesch@wolfvision.net>
In-Reply-To: <20240918-feature-orange-pi-5-plus-v1-1-58d47cb2ade8@wolfvision.net>
References: <20240918-feature-orange-pi-5-plus-v1-1-58d47cb2ade8@wolfvision.net>
Message-Id: <172672845831.2174793.7891957376731133745.b4-ty@pengutronix.de>
Date: Thu, 19 Sep 2024 08:47:38 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240918_234740_430503_6D1DFA9A 
X-CRM114-Status: UNSURE (   8.51  )
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
Subject: Re: [PATCH] arm: rockchip: add support for the xulong orangepi 5
 plus
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 18 Sep 2024 16:47:02 +0200, Michael Riesch wrote:
> Add basic support for the Xulong OrangePi 5 Plus (featuring the
> Rockchip RK3588 SoC). It should be noted that barebox boots and
> one Ethernet port is functional, but apart from that several
> features do not work yet (PMIC, SPI flash, USB, other PCIe
> peripherals such as the second Ethernet port, ...).
> 
> 
> [...]

Applied, thanks!

[1/1] arm: rockchip: add support for the xulong orangepi 5 plus
      https://git.pengutronix.de/cgit/barebox/commit/?id=86d4445820a7 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



