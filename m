Delivery-date: Mon, 01 Jul 2024 15:04:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOGi0-000VZT-1F
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 15:04:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOGhz-0005c0-SS
	for lore@pengutronix.de; Mon, 01 Jul 2024 15:04:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=14SuxnVa5t17HGpzQMKZ8G3VQRATu8Hry82rqgr/CJ4=; b=WOiTy6pEXGlhmFm7wTiIjHu0Yo
	HyqulLVIuH/V6gYL/o5Xo3Fuot6L6U7RyaSxXRZVunN2dx/MRinwTjL17of8ZV0J48XP6UeQ2hc9G
	qCQYsbBLJEmI99iiPHbLj5H0cm8zqZajcTZUyvxvmQMbm7T++gu1BvmGtzsoaG1c+bf465Bq6zGob
	7c7WLIsNKq5SJ4tprwTYCWJm3v0i5glK5OvC+wZ4rHaDbF1sUdQos9ooO54ndBNQs8RkYUqmW+zcs
	2UFCOWjmflZFBGsN40h+9BF7xRgehQC2hqd2cKdwVUCvME/f+XiJJoCzShCVpE9tUtWjLML4RxGAZ
	QTswF/iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOGhQ-00000003OQ5-1eSy;
	Mon, 01 Jul 2024 13:04:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOGhM-00000003OPJ-2SoA
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 13:04:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOGhK-0005Wx-Dp; Mon, 01 Jul 2024 15:03:58 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOGhJ-006NPX-SW; Mon, 01 Jul 2024 15:03:57 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOGhJ-00BMbI-2e;
	Mon, 01 Jul 2024 15:03:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20240621051806.5660-1-eagle.alexander923@gmail.com>
References: <20240621051806.5660-1-eagle.alexander923@gmail.com>
Message-Id: <171983903781.2707662.6304602200565429466.b4-ty@pengutronix.de>
Date: Mon, 01 Jul 2024 15:03:57 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_060400_658275_79424091 
X-CRM114-Status: UNSURE (   8.00  )
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
Subject: Re: [PATCH] regulator: Add Fairchild FAN53555 driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 21 Jun 2024 08:18:06 +0300, Alexander Shiyan wrote:
> This driver supports Fairchild FAN53555 Digitally Programmable TinyBuck Regulator.
> 
> Supported ICs:
> fan53526, fan53555, rk8600, rk8602, syr827, syr828, tcs4525, tcs4526.
> 
> The driver is written based on the fan53555.c linux kernel driver.
> Widely used in new developments based on Rockchip SOCs RK35xx.
> 
> [...]

Applied, thanks!

[1/1] regulator: Add Fairchild FAN53555 driver
      https://git.pengutronix.de/cgit/barebox/commit/?id=89c910777dd5 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



