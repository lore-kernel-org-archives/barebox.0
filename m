Delivery-date: Tue, 28 May 2024 10:59:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBsg5-000slc-1R
	for lore@lore.pengutronix.de;
	Tue, 28 May 2024 10:59:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBsg4-0001dl-Rm
	for lore@pengutronix.de; Tue, 28 May 2024 10:59:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9d0U7apAcNmrYMWZEYJYBrleMTZZmDiL4hyEy9eWLo0=; b=y4OaZ8BwF21/EMYovyUEsIL8Y5
	QbzdV44shcd48ii7xD3ydF7MitRq3/KGiT0KDeG1qlfJPpcHTgibXtwVW5ECcv0ng0QTNfGz12c5v
	8qtnnBtOJYsGxN2HeOiVBPHbnwDdxylcl4+FjoU9gQesHHU3B3aplfghuomPYbK3I0fxllMJ2TAAD
	4vcnHU9MRKpX/WEYM/pSt1y/0yYHjRnULVq/fz1lSYf+Z3yIs2b1fmPzOHtVRHeCaUH/PVfP7/LtW
	N9QzIR5YTJ7RgkrQ9Rrppu17pyze4XsWvE+WVXrP/LwFbO9XcForMXFoFUSc6clbJTssmkBFQq9il
	H4VYWOxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBsfi-0000000HZDl-1VoP;
	Tue, 28 May 2024 08:59:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBsfc-0000000HZAo-413Y
	for barebox@lists.infradead.org;
	Tue, 28 May 2024 08:59:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBsfb-0001N0-L5; Tue, 28 May 2024 10:58:59 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBsfb-003Isz-5y; Tue, 28 May 2024 10:58:59 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBsfb-004vAH-0N;
	Tue, 28 May 2024 10:58:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240527095057.3418435-1-s.hauer@pengutronix.de>
References: <20240527095057.3418435-1-s.hauer@pengutronix.de>
Message-Id: <171688673911.1172868.63250949119883197.b4-ty@pengutronix.de>
Date: Tue, 28 May 2024 10:58:59 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_015901_083000_83BCC21B 
X-CRM114-Status: UNSURE (   8.61  )
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
Subject: Re: [PATCH 1/2] watchdog: dw_wdt: do not register restart handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 27 May 2024 11:50:56 +0200, Sascha Hauer wrote:
> The designware watchdog driver doesn't have a special reset function,
> instead it only uses the regular watchdog to reset the SoC. Since
> 0ed7bb09f2ef7b ("watchdog: add option to provide fall-back restart handler")
> the watchdog core provides the same functionality, so just drop the
> restart functionality from the driver.
> 
> 
> [...]

Applied, thanks!

[1/2] watchdog: dw_wdt: do not register restart handler
      https://git.pengutronix.de/cgit/barebox/commit/?id=421ac5c9ec21 (link may not be stable)
[2/2] watchdog: fix watchdog restart handler when autoping is enabled
      https://git.pengutronix.de/cgit/barebox/commit/?id=77a000225df4 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



