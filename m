Delivery-date: Tue, 02 Jan 2024 12:35:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKd2z-000Wtc-0E
	for lore@lore.pengutronix.de;
	Tue, 02 Jan 2024 12:35:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKd2y-0006oj-25
	for lore@pengutronix.de; Tue, 02 Jan 2024 12:35:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+GKbHry23byGgSAMPLkMD8WyE+omtq1yN0IKxP4gPf4=; b=gJSP6EwbL22KCOpaI2tou0cRx5
	ggJHKphClPUUx9eO9rzJ7pXkypSFmn8n2928a2HGDIdSXKM59JqxzCC24G+DKxa0EydwmY+WGDjKx
	3o9BXNi7DvELrCZQbv7qZtSKFIIunU0ZZL1DnomvpLcY4UMCLpQHFP+hPlTe7ADv+DKfXz60XUl5o
	IVJGVw+8I7ZlV9e2wnsa4N9sfbPTPn4hQtbhv41LNLqGVyjPv0FSWOKqIkDoXGvaYfUJhkszmvscs
	MOSWCHF82ivJgaRWm2YCEmQHrkR444AMPYMQnBXsg/E9F+b/q2H9P4XMAZcgD+Hqj3WN72m7HIsiK
	O53MuNdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKd1y-007jPq-2F;
	Tue, 02 Jan 2024 11:33:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKd1v-007jOd-1m
	for barebox@lists.infradead.org;
	Tue, 02 Jan 2024 11:33:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rKd1u-0006da-BY; Tue, 02 Jan 2024 12:33:54 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rKd1s-003AbW-SM; Tue, 02 Jan 2024 12:33:53 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rKd1t-009uDW-T1; Tue, 02 Jan 2024 12:33:53 +0100
Date: Tue, 2 Jan 2024 12:33:53 +0100
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240102113353.GC1318922@pengutronix.de>
References: <20240102091837.250238-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240102091837.250238-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240102_033355_665908_5CC3215F 
X-CRM114-Status: GOOD (  20.51  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] mtd: spi-nor: add support for Winbond w25q256jwm
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Jan 02, 2024 at 10:18:37AM +0100, Marco Felsch wrote:
> Add entry for Winbond w25q256jwm. Flags are aligned with the Linux
> spi-nor/winbond driver.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  drivers/mtd/spi-nor/spi-nor.c | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index 5ad95ff50d1b..1773db09a1ab 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -874,6 +874,8 @@ static const struct spi_device_id spi_nor_ids[] = {
>  	{ "w25q128", INFO(0xef7018, 0, 64 * 1024, 256, SECT_4K) },
>  	{ "w25q256", INFO(0xef4019, 0, 64 * 1024, 512, SECT_4K |
>  		SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ | SPI_NOR_QUAD_WRITE | SPI_NOR_4B_OPCODES) },
> +	{ "w25q256jwm", INFO(0xef8019, 0, 64 * 1024, 512, SECT_4K |
> +		SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
>  
>  	/* Catalyst / On Semiconductor -- non-JEDEC */
>  	{ "cat25c11", CAT25_INFO(  16, 8, 16, 1, SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


