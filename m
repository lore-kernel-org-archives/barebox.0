Delivery-date: Tue, 02 Apr 2024 10:41:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrZiH-0037Ou-0O
	for lore@lore.pengutronix.de;
	Tue, 02 Apr 2024 10:41:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrZiG-0005pJ-Im
	for lore@pengutronix.de; Tue, 02 Apr 2024 10:41:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qI1KtjFSLmxaM3jcOfGCy9JG8XZlfUTLgCQK7lf0KYg=; b=04x9TDpvdDyiYwN4QUmJoSms02
	QI7iKcQYsbtoejJ9hU5K2sx1ikL+P3ulbQ4eOPpLKJap7EFoyRViM+2CiL0c6TV8wi7of63BPxOvv
	DkIGGPvaJ7dtc17567IUsG34F8ZpOe4gyUF/YZPnmlvwj/E5BLctcUXxWiO3uBvOz9zAeGwJIux0x
	v2vIjk5wnvFiCugCccGr1CKCvRsjnyuY5mg8BSbLQvAjP41eTGeH/aopATDrJ+uDu8aVo2tllnzGY
	W83kLWMGFU4b+5ohPQj01Gm3+tZP9PuCbzi6TVtBRmARR9O0/+BTh2HZlLv/86Dj12Dp869myDsGB
	A7XJeK2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrZho-0000000AHmz-37cN;
	Tue, 02 Apr 2024 08:41:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrZhk-0000000AHm6-41Cj
	for barebox@lists.infradead.org;
	Tue, 02 Apr 2024 08:41:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rrZhj-0005Fn-MU; Tue, 02 Apr 2024 10:41:15 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rrZhj-009wkI-A9; Tue, 02 Apr 2024 10:41:15 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rrZhj-00E2XG-0l;
	Tue, 02 Apr 2024 10:41:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Lucas Stach <l.stach@pengutronix.de>
In-Reply-To: <20240327165554.894805-1-l.stach@pengutronix.de>
References: <20240327165554.894805-1-l.stach@pengutronix.de>
Message-Id: <171204727523.3346081.4947144136808718865.b4-ty@pengutronix.de>
Date: Tue, 02 Apr 2024 10:41:15 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240402_014117_119736_77251928 
X-CRM114-Status: UNSURE (   8.52  )
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
Subject: Re: [PATCH] usb: onboard-hub: bail out if peer hub is already
 probed
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 27 Mar 2024 17:55:54 +0100, Lucas Stach wrote:
> Many physical hub chips include multiple logical hubs to handle both
> USB and 2 and 3. Both logical hubs will then match the onboard hub
> driver, which means we'll end up with two driver instances trying to
> control the reset GPIO that is only present once on the physical chip.
> 
> As this doesn't make sense, just bail out of the probe function when
> the peer-hub is already probed and can be assumed to handle power,
> clocks and reset resources of the chip.
> 
> [...]

Applied, thanks!

[1/1] usb: onboard-hub: bail out if peer hub is already probed
      https://git.pengutronix.de/cgit/barebox/commit/?id=5423885658da (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



