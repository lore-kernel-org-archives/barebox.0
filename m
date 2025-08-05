Delivery-date: Tue, 05 Aug 2025 11:34:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujE3u-007FS5-0W
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 11:34:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujE3r-0003GU-7h
	for lore@pengutronix.de; Tue, 05 Aug 2025 11:34:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TDSRFeaSmAGRAU3EKHJRlYi+KAUm0LStvr3cTgtk0OI=; b=Npl3bJbASn6ZP3n4LUfqnHSy1m
	jmEO8hHF6Zpd5PXOhldwwcugUZmQsU/8ok6Yy81uQcnDmwfwxpQZY4NTw9JsIiI7l50kNmJyL7f3d
	AhsWiKcHJjnbjGAalNeAW/i+0iiQC0wmF9R/Cg4gcGOUENHPIYuCEXQykrHrWs/Bz+eTrqucmWopG
	i1VqkYotlbLglerRCrLUPr/mHYmhM459woEP+7Yp8qxScUXnkDFyAUCeEkUVwKda1n/FTJhBj5kLw
	Oo0Whk4np9FRdFwzURmC2MiuxIs+d7HRSuIrM55SeM2FKSprSGELvXp4ciR2MEoQ8SNIezMOQUY+X
	TmmSaT9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujE38-0000000CMbU-3Ddx;
	Tue, 05 Aug 2025 09:33:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujDdI-0000000CJ2m-2oLu
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 09:06:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDdH-0007z5-9X; Tue, 05 Aug 2025 11:06:55 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDdG-00C16p-2n;
	Tue, 05 Aug 2025 11:06:54 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDdG-00EhhW-2c;
	Tue, 05 Aug 2025 11:06:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Antony Pavlov <antonynpavlov@gmail.com>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250721050045.17310-1-antonynpavlov@gmail.com>
References: <20250721050045.17310-1-antonynpavlov@gmail.com>
Message-Id: <175438481480.3504547.5196387311071104038.b4-ty@pengutronix.de>
Date: Tue, 05 Aug 2025 11:06:54 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_020656_748169_9D1CDA06 
X-CRM114-Status: UNSURE (   6.66  )
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
Subject: Re: [PATCH 0/4] drop unused declarations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 21 Jul 2025 08:00:41 +0300, Antony Pavlov wrote:
> Antony Pavlov (4):
>   include/stdio.h: drop serial_printf() declaration
>   include/scsi.h: drop unused declarations
>   include/of.h: drop of_parse_dtb() declaration
>   include/driver.h: drop unused declarations
> 
> include/driver.h |  9 ---------
>  include/of.h     |  1 -
>  include/scsi.h   | 14 --------------
>  include/stdio.h  |  4 ----
>  4 files changed, 28 deletions(-)
> 
> [...]

Applied, thanks!

[1/4] include/stdio.h: drop serial_printf() declaration
      https://git.pengutronix.de/cgit/barebox/commit/?id=be8c8f03aa49 (link may not be stable)
[2/4] include/scsi.h: drop unused declarations
      https://git.pengutronix.de/cgit/barebox/commit/?id=7f58b924f64b (link may not be stable)
[3/4] include/of.h: drop of_parse_dtb() declaration
      https://git.pengutronix.de/cgit/barebox/commit/?id=03e3d2b050e4 (link may not be stable)
[4/4] include/driver.h: drop unused declarations
      https://git.pengutronix.de/cgit/barebox/commit/?id=d4d15c91e32e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



