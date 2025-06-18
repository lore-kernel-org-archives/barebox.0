Delivery-date: Wed, 18 Jun 2025 12:54:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRqQz-008aLo-0E
	for lore@lore.pengutronix.de;
	Wed, 18 Jun 2025 12:54:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRqQy-0001ld-I4
	for lore@pengutronix.de; Wed, 18 Jun 2025 12:54:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FzEyjhDluUtRA63TEcLRuT4/I9MTCnmb2bUA+TFBfDI=; b=pqWtsducUwuO+bMPZA4X4ejSz0
	m2qtd2mLQwDOaSibyQsgGmfzHrHA67yQItDA7P83EdtOOsU3okT7teB0LbRtL2LYhzp6rzJp+M7Eq
	B3I56NufQ3gvUShZTJ7YXNm1UCfGoKLY6/C7UAd1/0eqVskl3Qiwg5yR51Gsm8LwreTVw8W7na9tm
	Lzvve423Mu/Em1sIvQDq8j4exVPnjgX/0A0m9eChxinXJMZyAFBSZlQLG0B266a9uzACAPpBuqdCs
	Hsbj8l7Fit1BZ8W020mLCNMh9nJfvtmzIxGz85/A+rO7Z8XLI9Y+w62QVFQue9g3li4TLE4p+/ezz
	Ws0XUWHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRqQU-00000009qgu-03LL;
	Wed, 18 Jun 2025 10:53:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRpnB-00000009jaW-0Kyz
	for barebox@lists.infradead.org;
	Wed, 18 Jun 2025 10:13:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRpn9-0005dB-VS; Wed, 18 Jun 2025 12:13:15 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRpn9-0047Qf-26;
	Wed, 18 Jun 2025 12:13:15 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRpn9-0066Nv-1q;
	Wed, 18 Jun 2025 12:13:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20250618063552.23777-1-eagle.alexander923@gmail.com>
References: <20250618063552.23777-1-eagle.alexander923@gmail.com>
Message-Id: <175024159556.1454277.1975198892554964969.b4-ty@pengutronix.de>
Date: Wed, 18 Jun 2025 12:13:15 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250618_031317_252630_0BB24AC0 
X-CRM114-Status: UNSURE (   7.52  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: (subset) [PATCH] ARM: at91: clock: remove unused
 SAMA5D2/SAMA5D3 support from legacy clock driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 18 Jun 2025 09:35:48 +0300, Alexander Shiyan wrote:
> This driver is not used for DT-based boards and only affects legacy non-DT
> platforms. Remove support for SAMA5D2/SAMA5D3 SoCs as they are exclusively
> supported through DT-based boot in current configurations.
> 
> 

Applied, thanks!

[1/1] ARM: at91: clock: remove unused SAMA5D2/SAMA5D3 support from legacy clock driver
      https://git.pengutronix.de/cgit/barebox/commit/?id=349fbab3a464 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



