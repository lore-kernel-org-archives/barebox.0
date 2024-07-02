Delivery-date: Tue, 02 Jul 2024 08:34:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOX62-000lCc-00
	for lore@lore.pengutronix.de;
	Tue, 02 Jul 2024 08:34:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOX61-0001S3-DN
	for lore@pengutronix.de; Tue, 02 Jul 2024 08:34:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+h2J9ZWTbU1grY2D38TAP8YxGJdIwvbwRsSHkBkhUkw=; b=2TUs+V7nwIIDPVmNCFENNV6oz9
	i5lVQvgHCWZKGbO9i6T0iUzmd4W7/1XuscjthxC/4L2Q8AJZyhpjvULFU01B87Ort0oJypaYQoTbo
	gd3eCzWeEuzSG/ESKg7qTUYTKudzzE/RToRKLDxB8I5/Zcm8yP2nCI7ncT+q9+Qya8IjOrBdEk4FV
	AbCkOG3SqyZfkOyh9xWO3F4853DYV0lFYKkEXidyyY0DRJiz5C5vgKujH1XrbuY4LkIfaUPeB3VkZ
	4MKO8nZB2aECOCtOdBCriJD2QKq+alwCWUp3ZtyBS3OafUn8vBz7RC+q116TO3EKQ1Yo6lv/67sAU
	3u3WaG9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOX5c-00000005ioF-3f7g;
	Tue, 02 Jul 2024 06:34:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOX5Y-00000005inF-3hV3
	for barebox@lists.infradead.org;
	Tue, 02 Jul 2024 06:34:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOX5X-0001NW-8p; Tue, 02 Jul 2024 08:34:03 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOX5W-006Y2s-NF; Tue, 02 Jul 2024 08:34:02 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOX5W-00EtRI-27;
	Tue, 02 Jul 2024 08:34:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20240701181239.1189755-1-a.fatoum@pengutronix.de>
References: <20240701181239.1189755-1-a.fatoum@pengutronix.de>
Message-Id: <171990204265.3549618.1121384604497149566.b4-ty@pengutronix.de>
Date: Tue, 02 Jul 2024 08:34:02 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_233404_940402_E3D554AA 
X-CRM114-Status: UNSURE (   7.94  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! regulator: Add Fairchild FAN53555 driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 01 Jul 2024 20:12:39 +0200, Ahmad Fatoum wrote:
> GCC reports:
> 
> drivers/regulator/fan53555.c:362:17: warning: ‘mode_reg’ may be used
> uninitialized [-Wmaybe-uninitialized]
> 362 |                 regmap_update_bits(di->rdev.regmap, mode_reg, mode_mask, 0);
> 
> Fix this by returning -EINVAL in that case, which is the error code used
> earlier if the vendor is an unexpected value.
> 
> [...]

Applied, thanks!

[1/1] fixup! regulator: Add Fairchild FAN53555 driver
      https://git.pengutronix.de/cgit/barebox/commit/?id=b6c1399875d6 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



