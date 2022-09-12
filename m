Delivery-date: Mon, 12 Sep 2022 11:14:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXfWk-0024Hp-L5
	for lore@lore.pengutronix.de; Mon, 12 Sep 2022 11:14:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXfWj-00027w-4n
	for lore@pengutronix.de; Mon, 12 Sep 2022 11:14:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Cs1BZCJwg0p35bBnACpJt3gF9/1I8uOi96p7XF6FT7s=; b=IE51mE5iqZs7WTdGNeqJDgoFZE
	lJTtn3ZwX9zl1vxbXSq1PQltLGZWNZi3Ko530Oky/JJjpMp9XBxnqgJy66cfJARajOuwY5+i+1zyy
	kbhtkqcyFkByNfqAORx/vUnzFCwxpzqwrVlcuOj8WcB3jtr3PTQWd9SpWDryZMX5J9R+Tgut4lMyJ
	U4kwjWh+l5FL0XSKRmSA1zLccsjMga1cnBauGNz8f/OyUw/WjXIlUlYnzvtiHNWVMu2NjYmfn34Uh
	ktvwypPbl+aXTsvs96PEwc+c3toF6A5n9b1p+amzTW/jHGw5nBaJf0HAb/2F/V/zM/7NVluu90n+Q
	aApIUUfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXfVT-00895K-0o; Mon, 12 Sep 2022 09:13:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXfVM-00892W-Nb
	for barebox@lists.infradead.org; Mon, 12 Sep 2022 09:13:26 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oXfVL-00024c-4Y; Mon, 12 Sep 2022 11:13:23 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oXfVK-0007Df-SK; Mon, 12 Sep 2022 11:13:22 +0200
Date: Mon, 12 Sep 2022 11:13:22 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220912091322.GJ24324@pengutronix.de>
References: <20220905103546.1476277-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220905103546.1476277-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_021324_815995_1BC90E76 
X-CRM114-Status: GOOD (  17.29  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/5] commands: gpio: add controller as optional argument
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Sep 05, 2022 at 12:35:41PM +0200, Ahmad Fatoum wrote:
> gpioinfo currently displays all GPIOs and the rest of the GPIO commands
> like gpio_direction_output expects either a GPIO label or a global GPIO
> number to act upon.
> 
> With this series, the gpio commands now accept an optional argument,
> e.g.:
> 
>   gpioinfo gpio4
>   gpio_direction_output -d gpio4 20 1
> 
> Controllers are identified by either device name, full path to the
> device tree node backing it or an alias pointing at it.
> 
> Ahmad Fatoum (5):
>   gpiolib: implement gpio_get_chip_by_dev()
>   of: platform: optimize of_find_device_by_node when deep probing
>   driver: implement find_device() helper
>   commands: gpio: add -d argument to set/get commands
>   gpiolib: gpioinfo: add optional CONTROLLER command line argument

Applied, thanks

Sascha

> 
>  commands/gpio.c        | 51 +++++++++++++++++++++++++++++-------
>  drivers/base/driver.c  | 16 ++++++++++++
>  drivers/gpio/gpiolib.c | 59 ++++++++++++++++++++++++++++++++----------
>  drivers/of/platform.c  |  3 +++
>  include/driver.h       |  5 ++++
>  include/gpio.h         |  1 +
>  6 files changed, 111 insertions(+), 24 deletions(-)
> 
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


