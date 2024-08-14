Delivery-date: Wed, 14 Aug 2024 12:45:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seBV9-009Vfm-02
	for lore@lore.pengutronix.de;
	Wed, 14 Aug 2024 12:45:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seBV8-0007I1-Ea
	for lore@pengutronix.de; Wed, 14 Aug 2024 12:45:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GhCBOtpJ7fSgtPWY/4l95dZK72BSESbNcTISMwbgONQ=; b=wF1TrShyWNLLYXDkjsYyo34DuN
	shPhBDdR3G7ykvie0UawUGISgl8sIF2HYMTPCtmOHT4cRTxQTWVTV6VZlw9KzNGel4+DmlrUWKuuZ
	MMqqGYd3iaqbgdCjqcdTiAgJAqG7tGGfT99S0IPRbxisNeCy7y4ze33HKzduEHVslITYnnROF4Mq8
	bWVIxVJlOptzvFVqrTQZ12hPATDBnSvFSb3aNNlKF0qwV3t9xCW0a0cdumP2R5ZY/R+jeogzFyq0m
	IXwC3nZpcl2rW0rNMH5I2g0tCU1kTfuMAVOM4WPSnFCqNXvpUI4gWr5T4Ifo/9uGU733QQgkAzx32
	glOOwZoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seBUg-00000006faO-2bQ9;
	Wed, 14 Aug 2024 10:44:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seBRz-00000006edw-3la2
	for barebox@lists.infradead.org;
	Wed, 14 Aug 2024 10:42:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1seBRy-0006oE-FU; Wed, 14 Aug 2024 12:41:54 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1seBRy-000L9e-2m; Wed, 14 Aug 2024 12:41:54 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1seBRy-005V9a-07;
	Wed, 14 Aug 2024 12:41:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240814092438.40485-1-a.fatoum@pengutronix.de>
References: <20240814092438.40485-1-a.fatoum@pengutronix.de>
Message-Id: <172363211403.1311361.14015899306332158305.b4-ty@pengutronix.de>
Date: Wed, 14 Aug 2024 12:41:54 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_034155_969546_57ED87AD 
X-CRM114-Status: UNSURE (   4.99  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ci: container: make wget less verbose
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 14 Aug 2024 11:24:38 +0200, Ahmad Fatoum wrote:
> When downloading toolchains, we already use the wget -nv (non-verbose) option
> to avoid a lot of progress indication clutter in the logs:
> 
>   12300K .......... .......... .......... .......... .......... 19%  165M 0s
>   12350K .......... .......... .......... .......... .......... 19%  138M 0s
>   12400K .......... .......... .......... .......... .......... 19%  151M 0s
>   12450K .......... .......... .......... .......... .......... 19%  155M 0s
> 
> [...]

Applied, thanks!

[1/1] ci: container: make wget less verbose
      https://git.pengutronix.de/cgit/barebox/commit/?id=768003bf90f2 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



