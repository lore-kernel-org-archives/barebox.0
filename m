Delivery-date: Thu, 29 Feb 2024 09:11:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfbVW-00F3H9-0o
	for lore@lore.pengutronix.de;
	Thu, 29 Feb 2024 09:11:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfbVV-000562-Lg
	for lore@pengutronix.de; Thu, 29 Feb 2024 09:11:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TQAHP2vALH5fDXGnCLRS0oqIDa6xSjFSuGJ0eVckUiE=; b=HlfUY2sSh+XdMgpFVQkaJmwCNk
	J0klP6c/injZXEpX5Pds/oNcXTPu9rEHyIb5do7xhIhZs4jxzmobHHuDd+NF1bWnYZ+ZTJHddnnva
	t0lnmheEU/J9j4PXwlmebFd5BVPktGKmIzMlZl/lo2sc3oEic96Nn1lxBTAl3ulLQQ3dWtmBGJb+P
	nb8zXGTyATlWEZ95jVSV8uQXFLkbIyZmVhielr9tfs+aNuzmqjrw/vZUBOc0QPq1TnNzN0j5BUF8T
	DgKV+ni33V1W6zuUVszV21aS5aiUhWb5sf4ZrziKRVGJ2kJPIdrM82YU4UPrUP5xbsHXq2/4nL0PJ
	8v6OMOKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfbV7-0000000Cazj-40xU;
	Thu, 29 Feb 2024 08:10:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfbV4-0000000Caxs-3wVE
	for barebox@lists.infradead.org;
	Thu, 29 Feb 2024 08:10:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfbV3-0004zf-Ot; Thu, 29 Feb 2024 09:10:41 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfbV3-003YF2-CG; Thu, 29 Feb 2024 09:10:41 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfbV3-006ywX-11;
	Thu, 29 Feb 2024 09:10:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: mfe@pengutronix.de
In-Reply-To: <20240228160518.1589193-1-a.fatoum@pengutronix.de>
References: <20240228160518.1589193-1-a.fatoum@pengutronix.de>
Message-Id: <170919424131.1664207.12843256365344264527.b4-ty@pengutronix.de>
Date: Thu, 29 Feb 2024 09:10:41 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_001043_031597_7C8ECB38 
X-CRM114-Status: UNSURE (   8.36  )
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
Subject: Re: [PATCH 1/6] driver: make struct bus_type::match optional
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 28 Feb 2024 17:05:13 +0100, Ahmad Fatoum wrote:
> Newly introduce soc_bus_type doesn't define .match, which would crash
> once a driver is registered on that bus. Do as Linux does and treat a
> non-existent match callback as meaning that all drivers should be
> matched and that the probe function should indicate via -ENODEV/-ENXIO
> whether a device is indeed suitable.
> 
> 
> [...]

Applied, thanks!

[1/6] driver: make struct bus_type::match optional
      https://git.pengutronix.de/cgit/barebox/commit/?id=78096501a5f9 (link may not be stable)
[2/6] driver: make struct bus_type::probe optional
      https://git.pengutronix.de/cgit/barebox/commit/?id=15a18149a615 (link may not be stable)
[3/6] treewide: remove bus probe functions that just call driver probe
      https://git.pengutronix.de/cgit/barebox/commit/?id=5ec36ba8cad4 (link may not be stable)
[4/6] usb: otg: maintain list of USB OTG controllers
      https://git.pengutronix.de/cgit/barebox/commit/?id=8489b552f071 (link may not be stable)
[5/6] usb: otg: turn global otg device into device alias
      https://git.pengutronix.de/cgit/barebox/commit/?id=eb633952b0be (link may not be stable)
[6/6] usb: print number of skipped OTG controllers when scanning
      https://git.pengutronix.de/cgit/barebox/commit/?id=0b90c781d183 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



