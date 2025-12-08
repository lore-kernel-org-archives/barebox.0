Delivery-date: Mon, 08 Dec 2025 08:43:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSVu9-0098qv-1s
	for lore@lore.pengutronix.de;
	Mon, 08 Dec 2025 08:43:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSVu9-0003Lh-2L
	for lore@pengutronix.de; Mon, 08 Dec 2025 08:43:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iT5+hIp9+C/WEQMNHXvgG7a57Fri4CDpDbfWqhRb9DQ=; b=cnTFCtM8AVePqmyy1vhoZgwV7E
	yxjDoLSbEPem2SAxhbmT6wr3PyyOIZ9LqtiaFmjHHG4AHNwaEFWGI7tRmWInTgSTO13StHrJhx24Y
	JKy7nNnLd9FnFfbR2zye19epApVNchLDikAVowL+FQ39/et0KDltbmJrIdNP2v8VfbdY4+uluGLKb
	cEOUFOgnCX01OHURnu6V4AHcR0OfVU7npUhOaIC4E+W0EpYRolB8plGvzcEjpnXilvn/CjFvTsJOX
	E66NGJfoiCOchJL1Hb9SH4stkx+It4TAofbsBTCiNbN1Ia0lykqBe0Vcq1s8pxZF/vybh1LxSzwOd
	C8dX3bDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSVte-0000000CmOH-2ntA;
	Mon, 08 Dec 2025 07:43:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSVtb-0000000CmNX-3sA6
	for barebox@lists.infradead.org;
	Mon, 08 Dec 2025 07:43:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSVta-0003FE-Aa; Mon, 08 Dec 2025 08:42:58 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSVta-004ZdU-0R;
	Mon, 08 Dec 2025 08:42:58 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSVta-00000001JVS-0JGz;
	Mon, 08 Dec 2025 08:42:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>, 
 Sohaib Mohamed <sohaib.amhmd@gmail.com>
In-Reply-To: <20251203-avenger96-v2-0-95f0cfa50aaa@gmail.com>
References: <20251203-avenger96-v2-0-95f0cfa50aaa@gmail.com>
Message-Id: <176517977807.313233.17200734244940665814.b4-ty@pengutronix.de>
Date: Mon, 08 Dec 2025 08:42:58 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251207_234300_047858_74231AB4 
X-CRM114-Status: UNSURE (   7.51  )
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
Subject: Re: [PATCH v2 0/3] ARM: stm32mp: Add Avenger96 board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 03 Dec 2025 18:13:15 +0100, Sohaib Mohamed wrote:
> Add support for Arrow STM32MP157A Avenger96 board with bootloader
> update handlers for MMC and NOR flash.
> 
> 

Applied, thanks!

[1/3] common: bbu: refactor flash operations into separate function
      https://git.pengutronix.de/cgit/barebox/commit/?id=8efd705a65bf (link may not be stable)
[2/3] ARM: stm32mp: bbu: add NOR flash FIP update handler
      https://git.pengutronix.de/cgit/barebox/commit/?id=d3e05db632b8 (link may not be stable)
[3/3] ARM: stm32mp: add support for STM32MP157A Avenger96 board
      https://git.pengutronix.de/cgit/barebox/commit/?id=0f9bb90b24af (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



