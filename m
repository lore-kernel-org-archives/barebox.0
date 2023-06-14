Delivery-date: Wed, 14 Jun 2023 16:20:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9RMm-006kjH-TZ
	for lore@lore.pengutronix.de; Wed, 14 Jun 2023 16:20:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9RMk-0001uN-IM
	for lore@pengutronix.de; Wed, 14 Jun 2023 16:20:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=su/wj4IAb1RELaDldwGvXPAC++3jjfPxZEBRc5W3tMg=; b=u+C6nFydqgZLN0l7yz+7EtZWlU
	wai9edFVXCKDGH1NpLawy1x8uRBNDQ6Hwidu0Jzotv1Ne7gJJ857Q204A6UHDb3Gkwz0MLhztnoJB
	5HFLrXlbB0K5rvfHzBi5jMX5NVPR0zQehetiX08WOacJ5qbLi0hbliE6dxJ0PVyvmS27HQ0RvDmhC
	zvLml7sAlUCXJy9XPeeDfhZ4bY9oxO1iomS2c7YFMfUQ/moU5QYi2nva0oPrrec9Q27Cp9RKwoUB1
	01qz2Jds4UBHKYlsDb8aTPpYAHIwi7xgJ+DSS2zacWnj1tyNjigxG6D4971Meft7Govfwiof6hqsw
	4WDpayCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9RLg-00Bt2C-1m;
	Wed, 14 Jun 2023 14:19:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9RLd-00Bt1Q-30
	for barebox@lists.infradead.org;
	Wed, 14 Jun 2023 14:19:47 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q9RLc-0001PS-Dq; Wed, 14 Jun 2023 16:19:44 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q9RLc-0001l7-0g; Wed, 14 Jun 2023 16:19:44 +0200
Date: Wed, 14 Jun 2023 16:19:43 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, mfe@pengutronix.de,
	Jules Maselbas <jmaselbas@kalray.eu>
Message-ID: <20230614141943.GZ18491@pengutronix.de>
References: <20230614100747.3368109-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230614100747.3368109-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_071945_972937_740E6A3C 
X-CRM114-Status: GOOD (  23.30  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 00/10] Fix gpio-hogs and sync with Linux gpiolib
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jun 14, 2023 at 12:07:37PM +0200, Ahmad Fatoum wrote:
> Quoting v1:
> 
>   the purpose of this series is to fix the gpio-hogs mechanism since this
>   is broken since commit 3641d381e6 ("gpiolib: Add of_xlate support").
>   
>   Patch1: Revert the above mentioned commit to make the gpio-hogs working
>           again.
>   
>   Patch2-10: Add the of_xlate support required for the upcoming sunxi
>              pinctrl driver. The mechanism is now more in sync with kernel
>              gpiolib. This allows to sync easier with the kernel gpiolib
>              in case of new features or fixes.
> 
> I've incorporated feedback and tested this still works on a i.mx8mn.
> Patch 1 should be ok to go into master and the rest to next IMO.
> 
> Changelog in each patch.
> 
> Marco Felsch (10):
>   gpiolib: fix gpio-hog functionality
>   gpiolib: simplify for loop break condition
>   gpiolib: rename local gpio-line-names variable
>   gpiolib: fix gpio name memory leak
>   gpiolib: fix missing error check while query gpio-line-names
>   gpiolib: refactor gpio-line-names parsing
>   gpiolib: introduce of_gpiochip_add to bundle all of functions
>   OF: gpio: sync of_get_named_gpio_flags variable with kernel
>   OF: gpio: call of_node_put in of_get_named_gpio_flags
>   gpiolib: add of_xlate support
> 
>  drivers/gpio/gpiolib.c | 207 ++++++++++++++++++++++++++++++-----------
>  drivers/of/of_gpio.c   |  69 ++++++++++----
>  include/gpio.h         |  30 +++++-
>  3 files changed, 231 insertions(+), 75 deletions(-)

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


