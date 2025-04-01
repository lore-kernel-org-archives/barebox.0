Delivery-date: Tue, 01 Apr 2025 10:07:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzWf8-006uhw-1j
	for lore@lore.pengutronix.de;
	Tue, 01 Apr 2025 10:07:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzWf7-0002cV-UZ
	for lore@pengutronix.de; Tue, 01 Apr 2025 10:07:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Zu2s4+aS3j9LBjVM73sIbLdylIK7IfZLbiULEaaU05M=; b=lzt9Z5ejGrjBJS5ZVCuB3ZaO+p
	622l/ylJ+mR5FYkqpOHlEIL2CP7xPqMZb29P2Q3LtwNYOaV4vntOXeujy/a9RXwNSXScmoVqnp+eh
	GxeswM0nC7bL6QXj7xvVpTbEbTCoyMRJS26eeX5+7StL4i5ZwRPkHqzs/k34iaXxEjADK79T3LdqL
	KdTF3sm7AVHWPfiCV8EuEg7wjGLfpLM+JZ7oNq3U85H3G5LAlECVkVLJlzjpHVL6RUARMfxzYs07F
	JVJihJ8N8HmSSrubW2M7p7dYXJkKjlcvDXU/FqKtDldDfN/Zw6HOfbnc4NWAcR3wpr79Dbeu2opc4
	ixfmm1kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzWed-00000002HQd-498r;
	Tue, 01 Apr 2025 08:07:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzWea-00000002HQE-4App
	for barebox@lists.infradead.org;
	Tue, 01 Apr 2025 08:07:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tzWeZ-0002Vc-1H; Tue, 01 Apr 2025 10:07:23 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tzWeY-002jRm-2i;
	Tue, 01 Apr 2025 10:07:22 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tzWeY-00B3Hi-2M;
	Tue, 01 Apr 2025 10:07:22 +0200
Date: Tue, 1 Apr 2025 10:07:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <Z-ueuhmDq-gYUmcQ@pengutronix.de>
References: <20250331122918.564304-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250331122918.564304-1-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_010725_036293_A97ED77A 
X-CRM114-Status: GOOD (  21.84  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1] spi: add STM32F7 QSPI controller driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Mar 31, 2025 at 02:29:18PM +0200, Oleksij Rempel wrote:
> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> Introduce support for the STM32F7 QSPI controller, compatible with
> "st,stm32f469-qspi".
> 
> Validated on STM32MP133-based MECT1S r1 board, which includes an
> F7-compatible QSPI peripheral
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/spi/Kconfig          |   8 +
>  drivers/spi/Makefile         |   1 +
>  drivers/spi/spi-stm32-qspi.c | 496 +++++++++++++++++++++++++++++++++++
>  3 files changed, 505 insertions(+)
>  create mode 100644 drivers/spi/spi-stm32-qspi.c
> 
> diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
> index aebfe30a1343..d6e8bea13c9c 100644
> --- a/drivers/spi/Kconfig
> +++ b/drivers/spi/Kconfig
> @@ -114,6 +114,14 @@ config SPI_ZYNQ_QSPI
>  	  This enables support for the Zynq Quad SPI controller in master mode.
>  	  This controller only supports SPI memory interface.
>  
> +config STM32_QSPI
> +	bool "STM32F7 QSPI driver"
> +	depends on ARCH_STM32

Shall we add a || COMPILE_TEST here?

Sascha


> +	help
> +	  Enable the STM32F7 Quad-SPI (QSPI) driver. This driver can be
> +	  used to access the SPI NOR flash chips on platforms embedding
> +	  this ST IP core.
> +

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


