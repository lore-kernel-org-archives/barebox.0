Delivery-date: Mon, 15 Dec 2025 08:16:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV2od-00Benb-18
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 08:16:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV2ob-00014T-5D
	for lore@pengutronix.de; Mon, 15 Dec 2025 08:16:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=to+Z2CZsgrBEdGic5XdzJ+8qVNi1q289hq/dzC/LAzo=; b=O+A/yXZBbuySZFkXWeIMd2bEwf
	AWw/tkiNJYgORiBRy3zgoBIhuug220BcPufpmsShK8odaPNMdTrUAJ7/ncW6W9GbSYzg8PIfouG/1
	cFbvVB6zwaZuGQPOvjVzUFhTB3W/WNBbwz5BwJmQu500HT/LO0hT3nN2GkAWHxg9NZ1B1ZgeLNVNY
	41dBp7SO6jMHmRSxrqo0oFW3jIHNytqhLAQSxgRK1DrMAn0ftleWlcHARa57zlMc9/YnRfGh3EKPE
	GK0gEijV72Ug0PtjWrRx4w1Chkck7flBtbdy2t69oP6WuFhUI+8wj0QoEOcFNNMAZ8OcP2ZR+rUwK
	udyqJ9Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV2ny-00000003Bgx-0p4G;
	Mon, 15 Dec 2025 07:15:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV2nt-00000003BgF-4BBu
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 07:15:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV2ns-0000wB-DW; Mon, 15 Dec 2025 08:15:32 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV2ns-005k12-0k;
	Mon, 15 Dec 2025 08:15:32 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV2ns-000000010zV-0i8O;
	Mon, 15 Dec 2025 08:15:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251211203927.2506115-1-a.fatoum@pengutronix.de>
References: <20251211203927.2506115-1-a.fatoum@pengutronix.de>
Message-Id: <176578293216.242130.14313775942120387264.b4-ty@pengutronix.de>
Date: Mon, 15 Dec 2025 08:15:32 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251214_231534_037589_38E20D89 
X-CRM114-Status: UNSURE (   6.27  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] clk: rk3568: sync driver with Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 11 Dec 2025 21:39:26 +0100, Ahmad Fatoum wrote:
> The driver has gained  some more PLL rates, a new clock and three
> additions to the list of critical clocks. Import these changes.
> 
> 

Applied, thanks!

[1/1] clk: rk3568: sync driver with Linux
      https://git.pengutronix.de/cgit/barebox/commit/?id=07aa96ec1e9e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



