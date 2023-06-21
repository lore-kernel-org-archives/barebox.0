Delivery-date: Wed, 21 Jun 2023 11:28:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBu8M-00FUHw-V0
	for lore@lore.pengutronix.de; Wed, 21 Jun 2023 11:28:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBu8K-0005kk-9P
	for lore@pengutronix.de; Wed, 21 Jun 2023 11:28:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tGrU2OqtvpRTHvNZPEzF9rztg6uQcTy/sXT7+MpgWRY=; b=275bl7tStuGAwNMhpB07L6tkOm
	eXTvv4otwpMYzZ8HVlbXtPyJrXUiUjCjpJ/yHSMSPSM7q2kk+iMtwjvpIEOBsIwoNyDVMxjEcrZZQ
	NBaDSjwDUK5zocpMKQhx4cTq/uVJgrUQcibDQTV+1yCiWJfBHuEqKtCG0mdHoQi+Pdg/oQ71laUKB
	7h/dFYcK+oJwCk/0vJlnX1hzq3nvdRIxtZFpDfyeHni7IpZxwJw6cCeSa0THDA6LQt6jZqwdE92F/
	NSxS3ad+LpxfiZ/uqjcMrqo6dT58N1TqXBY9RSgOjIwEUT/aINBeerNagevo/+aRVsZ/1kERUY8RS
	baZKc5iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBu7F-00DqzY-2R;
	Wed, 21 Jun 2023 09:27:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBu7C-00Dqyc-0W
	for barebox@lists.infradead.org;
	Wed, 21 Jun 2023 09:27:03 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qBu7A-0005ag-Mc; Wed, 21 Jun 2023 11:27:00 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qBu7A-0000XW-Fs; Wed, 21 Jun 2023 11:27:00 +0200
Date: Wed, 21 Jun 2023 11:27:00 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230621092700.GE18491@pengutronix.de>
References: <20230614135452.1884124-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230614135452.1884124-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_022702_194336_B776BD8F 
X-CRM114-Status: GOOD (  19.46  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 00/10] gpio: add proper gpiod API and gpio-mux support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jun 14, 2023 at 03:54:42PM +0200, Ahmad Fatoum wrote:
> The gpiod_ (GPIO descriptor) API used with Linux differs from barebox'
> normal GPIO API:
> 
>  - gpiod handles are opaque pointers and not an integer, which users
>    have an expectation of stability for
> 
>  - gpiod API uses logic levels by default with separate raw API for
>    physical level instead of physical level by default and separate
>    API taking active level into account.
> 
> The barebox gpiod_ API mimics the latter point, but still uses integers
> requiring ugly and arguably error prone conversions when porting kernel
> code.
> 
> This series fixes that by adding proper struct gpio_desc API like in
> Linux and then builds upon that to port the kernel gpio-mux driver.
> 
> Ahmad Fatoum (10):
>   driver: include dev_print and family from <driver.h>
>   include: linux/printk: define new dev_errp_probe
>   gpio: have gpiod_ functions return and accept pointers
>   gpio: gpiolib: rename struct gpio_info to gpio_desc
>   gpiolib: export proper gpio descriptor API
>   bitmap: implement bitmap_{to,from}_arr{32,64}
>   commands: help: ignore options after first regular argument
>   gpiolib: factor out finding gpio property
>   gpiolib: add support for requesting and setting gpiod arrays
>   drivers: port Linux mux framework and gpio-mux driver

Applied 1-6 and 8-9, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


