Delivery-date: Thu, 27 Nov 2025 12:43:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOaOz-005Pk0-23
	for lore@lore.pengutronix.de;
	Thu, 27 Nov 2025 12:43:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOaOz-0002vu-3x
	for lore@pengutronix.de; Thu, 27 Nov 2025 12:43:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aDiC4mvPuj3j72SQoC9GPrs7/xtLUXFQMzTAiAirSFo=; b=3uuO7sNVflRAn4Vv2gjnScN5s5
	5HOH8Glr+S+zScMP2ai34SrN+89g8pwK2jeATJ4xorn+PvwzWmkBY6Sdxt77IUBOPK2Y8lCbXN4IA
	eYMzVhLxZpbzAQI/pbS+in4XCBeTT1XuF7hz6pB+4Sh8PuJvBxMz+FdABKdGMpRmVk30lZzUaSwAo
	nmt1lY9w7UV9gvgeipDoqsXJ43BPGE9XVhjrom+njKW5ELv9IGIpL+WN3coAqeM0J6DGhBztDigEc
	ioOlTqXDwbkRm35nuwBsfEZq7IV1QGxo+EVcQiT/6NzgEDCXMkuyRLOOnrV4zD/p9HHt+Ve34dnkE
	TRVC9Huw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOaOX-0000000GTaO-2mKW;
	Thu, 27 Nov 2025 11:42:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOaOV-0000000GTZX-0VVt
	for barebox@lists.infradead.org;
	Thu, 27 Nov 2025 11:42:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOaOT-0002qX-Jh; Thu, 27 Nov 2025 12:42:37 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOaOT-002mUZ-1N;
	Thu, 27 Nov 2025 12:42:37 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOaOT-0000000BV9v-3NjT;
	Thu, 27 Nov 2025 12:42:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: chalianis1@gmail.com
Cc: barebox@lists.infradead.org
In-Reply-To: <20251127045417.3490877-1-chalianis1@gmail.com>
References: <20251127045417.3490877-1-chalianis1@gmail.com>
Message-Id: <176424375735.2741376.1246425938918846674.b4-ty@pengutronix.de>
Date: Thu, 27 Nov 2025 12:42:37 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_034239_204251_85DE3874 
X-CRM114-Status: UNSURE (   5.36  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ehci-zynq: variscite: tee: fix many typos struct
 device.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 26 Nov 2025 23:54:17 -0500, chalianis1@gmail.com wrote:
> fix struct device_d to struct device.
> 
> 

Applied, thanks!

[1/1] ehci-zynq: variscite: tee: fix many typos struct device.
      https://git.pengutronix.de/cgit/barebox/commit/?id=6816b9c4cdf6 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



