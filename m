Delivery-date: Mon, 30 Jun 2025 10:10:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uW9ab-00CYh4-0I
	for lore@lore.pengutronix.de;
	Mon, 30 Jun 2025 10:10:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uW9aa-0001ZF-Hu
	for lore@pengutronix.de; Mon, 30 Jun 2025 10:10:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x1LZvaxCB6tl9xvfJjNdovf0BFf+4ZIh2zQnhVMTDSk=; b=tfxEmPyAUBB0XVgF/az0venQhv
	eck6EHEDFqIW2cTS6aM1jqPc/AD8XAdGei37uJvgVbgpHdPxoEEWJ6KVA8r/RRtMAZZXnkAlAgnVi
	GHu4VSOuOoXUnvsPTkWA0uTaoSCjapj3+KzuB4a/2obCJZ3FeTzI+4IfyQQ7HrGRqf/6bP6nez9v7
	eEPrJU+vWOpsYA0m5BkrFktY7Hb6XIhu4NA+A+/j5LvB+cdZVPev2eM0DQZLSniRoLCjw72fFD//Y
	k3njLk5aP/69k+b+Z1d+Y176YjdJvJ0sC84w8Q3f/7RDFT88uz3JYYM73B1jrovgOMwBRLxyEZBDV
	pZLmVIUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uW9a3-00000001Zps-2fUo;
	Mon, 30 Jun 2025 08:09:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uW9Yp-00000001ZgW-41sy
	for barebox@lists.infradead.org;
	Mon, 30 Jun 2025 08:08:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uW9Yn-0008MG-EV; Mon, 30 Jun 2025 10:08:17 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uW9Yn-0064RJ-0q;
	Mon, 30 Jun 2025 10:08:17 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uW9Yn-009O3u-0P;
	Mon, 30 Jun 2025 10:08:17 +0200
Date: Mon, 30 Jun 2025 10:08:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Bo Sun <bo@mboxify.com>
Cc: barebox@lists.infradead.org
Message-ID: <aGJF8Ta5BPke9Rqz@pengutronix.de>
References: <20250627122811.1051283-1-bo@mboxify.com>
 <20250627122811.1051283-2-bo@mboxify.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250627122811.1051283-2-bo@mboxify.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_010819_998939_FD5210CF 
X-CRM114-Status: GOOD (  21.51  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/1] spi: convert transfer delay to new spi_delay struct
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On Fri, Jun 27, 2025 at 08:28:11PM +0800, Bo Sun wrote:
> Replace the deprecated delay_usecs field with the new spi_delay struct
> in spi_transfer structure. Update spi_transfer_one_message to use
> spi_delay_exec and the mc13xxx driver to use the new structure.
> 
> Signed-off-by: Bo Sun <bo@mboxify.com>
> ---
>  drivers/mfd/mc13xxx.c | 5 ++++-
>  drivers/spi/spi.c     | 4 +---
>  include/spi/spi.h     | 8 ++++----
>  3 files changed, 9 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/mfd/mc13xxx.c b/drivers/mfd/mc13xxx.c
> index 288bd407ff..393f163671 100644
> --- a/drivers/mfd/mc13xxx.c
> +++ b/drivers/mfd/mc13xxx.c
> @@ -84,7 +84,10 @@ static int spi_rw(struct spi_device *spi, void * buf, size_t len)
>  		.rx_buf = buf,
>  		.len = len,
>  		.cs_change = 0,
> -		.delay_usecs = 0,

It's initialized to 0, so

             if (xfer->delay_usecs)
                     udelay(xfer->delay_usecs);

will do just nothing.

> +		.delay = {
> +			.value = 0,
> +			.unit = SPI_DELAY_UNIT_USECS,
> +		},

I just dropped this and adjusted the commit message accordingly.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


