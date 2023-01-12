Delivery-date: Thu, 12 Jan 2023 15:59:39 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFz3M-009s8z-G5
	for lore@lore.pengutronix.de; Thu, 12 Jan 2023 15:59:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFz3K-0003if-MH
	for lore@pengutronix.de; Thu, 12 Jan 2023 15:59:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k+rOi/i8urqO6AMDNtQqpNhWnrBgox3fVbQWOVsyvTk=; b=zKwRo1NbcrFZk33yZyjRcA75iX
	wH3RbVNyIyn32COlP+ko4Leq5gszOCUJ+zynsrfMz/ryu3Da0OZqfHCCNo7djRbnZwHtcemYWbfbZ
	kHVaeHMRYg99GAerjuCyCptBM7FM/2Rx15ZbunpLDw5xY/24pAQ1eTrR1WmdrVNp9nqDuWd9YY4Tc
	4KIsKdfqwX5aKBxFP0E1XjMG4/VTvJxpS81625QlY0ThgAypcZZ9726ojLoqAuxiwylp5P5ZIiReE
	toVu1XWWlaQFwHiiZ+Tet/fhZJTeSzcAga+t870SbfjFGAq29bhoQ9uHErSRsOxGtVRe07gAWt80F
	EhBvkaFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFz1u-00FUsJ-Se; Thu, 12 Jan 2023 14:58:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFz1p-00FUr5-LF
	for barebox@lists.infradead.org; Thu, 12 Jan 2023 14:58:07 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFz1o-0003YJ-9c; Thu, 12 Jan 2023 15:58:04 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFz1o-0003aH-26; Thu, 12 Jan 2023 15:58:04 +0100
Date: Thu, 12 Jan 2023 15:58:04 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230112145804.GX24755@pengutronix.de>
References: <20230111132956.1153359-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230111132956.1153359-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_065805_718483_12EE65B1 
X-CRM114-Status: GOOD (  24.35  )
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
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 00/11] net: dsa: ksz9477: use regmap to add I2C
 support next to SPI
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jan 11, 2023 at 02:29:45PM +0100, Ahmad Fatoum wrote:
> The Linux DSA driver supports both I2C and SPI as management interface
> by using regmaps as abstraction. barebox regmaps were not quite that
> powerful yet, so we rework our regmaps to support optional formatting
> and then use that to make the KSZ driver work with either I2C or SPI
> transports.
> 
> This series has been tested with both an I2C-connected KSZ8563 and
> a SPI-connected KSZ9563, both of which are supported by the barebox
> KSZ9477 driver.
> 
> v1 -> v2:
>   - Use cdev access size encoded in flags to arrive at correct
>     regmap to use (md -b / md -w works correctly now)
>   - Changed regmap_init_multi prototype to not take an array
>   - Added option for 64bit regmap in regmap_init_multi
>   - Have regmap_init return -ENOSYS if formatted regmap support
>     is needed, but is not compiled in (previously it crashed).
> 
> Ahmad Fatoum (11):
>   regmap: consolidate reg/val format into regmap_format
>   regmap: support formatted read and write
>   regmap: port regmap_init_spi
>   regmap: factor out regmap cdev size calculation
>   net: dsa: ksz9477: switch to regmap_init_spi
>   net: dsa: ksz9477: create regmap cdev for switch registers
>   drivers: base: regmap: introduce REGMAP_I2C
>   dev: add dev_bus_is_spi/i2c helpers
>   net: dsa: ksz9477: refactor to prepare i2c support
>   regmap: i2c: use formatted I/O
>   net: ksz9477: add I2C support

Applied, thanks

Sascha

> 
>  drivers/base/Kconfig               |   2 +
>  drivers/base/regmap/Kconfig        |  14 +
>  drivers/base/regmap/Makefile       |   5 +-
>  drivers/base/regmap/internal.h     |  35 +-
>  drivers/base/regmap/regmap-fmt.c   | 574 +++++++++++++++++++++++++++++
>  drivers/base/regmap/regmap-i2c.c   |  50 ++-
>  drivers/base/regmap/regmap-multi.c | 104 ++++++
>  drivers/base/regmap/regmap-spi.c   |  42 +++
>  drivers/base/regmap/regmap.c       |  66 +++-
>  drivers/mfd/Kconfig                |   4 +
>  drivers/net/Kconfig                |   4 +-
>  drivers/net/ksz9477.c              | 190 +++-------
>  drivers/net/ksz_common.h           | 154 ++++++++
>  drivers/rtc/Kconfig                |   1 +
>  drivers/video/ssd1307fb.c          |   4 +-
>  include/i2c/i2c.h                  |   5 +
>  include/regmap.h                   |  82 +++++
>  include/spi/spi.h                  |   5 +
>  18 files changed, 1166 insertions(+), 175 deletions(-)
>  create mode 100644 drivers/base/regmap/Kconfig
>  create mode 100644 drivers/base/regmap/regmap-fmt.c
>  create mode 100644 drivers/base/regmap/regmap-multi.c
>  create mode 100644 drivers/base/regmap/regmap-spi.c
>  create mode 100644 drivers/net/ksz_common.h
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


