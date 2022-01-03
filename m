Delivery-date: Mon, 03 Jan 2022 09:08:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4IOS-009eMl-DT
	for lore@lore.pengutronix.de; Mon, 03 Jan 2022 09:08:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4IOR-0000Y3-2F
	for lore@pengutronix.de; Mon, 03 Jan 2022 09:08:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HuvBYfTMWMQEpsRY2H6n69DENWmjF26Ro/JcinlUuUs=; b=FMwMBaIJ6iSHFe5nQBEwjqbIdB
	Ev+emxsaQTGcAA7vqx6f5iKnkMUbZBJzpg/YDH/Kk89c5DqIILgYuvPRkOlNEh35gUWCMmw9RWQ+9
	ENWNYvZQXd0B5TofoZZ3oZ2XXpbttNAvEDX1VpRkjb6hQ/UIvKnq1OO6Y3zcazxJ/7XKNu99nmv7h
	cLmvkeg7I1UjQvC/7Bqnt5H/UtDbkS9OwRe6WWSycqUUblq27zZlxtzAW9uzBxZxyJfrbXmi8go/a
	7Z3PSyvVmTosU2PodYH8bjEfLpaa9xM87wFEHOlyg2Ja6lqlxvKh2MfMEK2ztFeatT0YcM/cq/tQ6
	HQuBP7GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n4IMh-008ZFx-2b; Mon, 03 Jan 2022 08:06:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n4IMb-008ZFN-Ih
 for barebox@lists.infradead.org; Mon, 03 Jan 2022 08:06:44 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n4IMX-0000Ta-Ou; Mon, 03 Jan 2022 09:06:37 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n4IMX-0003As-G8; Mon, 03 Jan 2022 09:06:37 +0100
Date: Mon, 3 Jan 2022 09:06:37 +0100
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220103080637.GD6003@pengutronix.de>
References: <20211223160404.119970-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211223160404.119970-1-m.tretter@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:06:22 up 23 days, 16:51, 50 users,  load average: 1.10, 1.22, 1.15
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220103_000641_660480_7B31CA1E 
X-CRM114-Status: GOOD (  31.47  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/8] video: ssd1307fb: Add SPI support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Dec 23, 2021 at 05:03:56PM +0100, Michael Tretter wrote:
> Hello,
> 
> The Solomon single-chip CMOS OLED/PLED driver with controller can be connected
> to I2C or SPI. The driver already supports I2C. This series adds support for
> SPI connected displays to the driver.
> 
> The bindings for the SPI connected display are still not documented. The
> driver uses the (undocumented) solomon,ssd1306 compatible of the staging
> driver in Linux, but uses properties defined for the solomon,ssd1306fb-i2c
> compatible of the I2C driver. I moved the warning about the compatible from
> the commit message into the driver to have it in the same place as the use of
> the compatible and to allow to eventually remove it.
> 
> The driver still allows to use SPI and I2C with its own hand-rolled
> abstraction, because the controller does not actually expose registers, but
> simply accepts commands or data. I followed Ahmad's suggestions how to remove
> the ugly #ifdefs and the driver looks a lot nicer now.
> 
> Patches 1-3 adjust the SPI and I2C frameworks to make them nicer to use for
> drivers that support devices that may be connected via SPI or I2C.
> 
> Patches 4-7 refactor the driver to have fewer locations that refer to I2C to
> simplify disabling the I2C support.
> 
> Patch 8 actually adds the SPI support and makes I2C optional.
> 
> Michael
> 
> ---
> 
> Changelog:
> 
> v2:
> 
> - add new Patches 1-3 for the SPI and I2C frameworks
> - use new SPI and I2C helpers to get rid of use of config macros
> - move warning about undocumented compatible into driver
> 
> Michael Tretter (8):
>   spi: stub device_spi_driver if SPI is disabled
>   spi: add to_spi_device helper
>   i2c: stub device_i2c_driver if I2C is disabled
>   video: ssd1307fb: pass par instead of i2c client to write
>   video: ssd1307fb: don't use i2c client for logging
>   video: ssd1307fb: move i2c setup to single place
>   video: ssd1307fb: use function pointer for write
>   video: ssd1307fb: add spi support

Applied, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

