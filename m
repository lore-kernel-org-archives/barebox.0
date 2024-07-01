Delivery-date: Mon, 01 Jul 2024 14:44:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOGO8-000VJW-0H
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 14:44:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOGO7-0003TJ-E3
	for lore@pengutronix.de; Mon, 01 Jul 2024 14:44:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TvKQff95i61Pesu/MyjV4O3rtBzc7Lx0aNTOPmdtiTo=; b=ifdhX/hWw4ifAn7Ai0cb1jeiD9
	5gRjPlNuDS1pmiTOrfhWQrb61mqFWAJzzz7/Qj88HiaIsn1mXmlI3caegKhGRI3zGKF1EIGKUalr1
	YKYzwihgasa9+Yab95eHeT9D8f7b7q1ee5XSxfS4jhU9bsMXAHL+sQktPKpvGzUyMPwVF2PDUsVY9
	IQsnm/scTG9git6qv7XoRPMEA8kJSmanqrMWIe3hiEEkgsJoh7B0PHBrmfh/fVn+odwZFVApbifxL
	rXTmWWjwjJV0o/7n/f3je2tTDygj/81mM5GRIVrKs8SjpjRGUrLb3nANyGzCx2dScESaFEGCiiHQy
	pyJmqi5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOGNg-00000003JVC-146d;
	Mon, 01 Jul 2024 12:43:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOGNY-00000003JSE-0zsv
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 12:43:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1sOGNU-0003Pw-RD; Mon, 01 Jul 2024 14:43:28 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1sOGNU-006NJI-Eg; Mon, 01 Jul 2024 14:43:28 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1sOGNU-008RkB-1B;
	Mon, 01 Jul 2024 14:43:28 +0200
Date: Mon, 1 Jul 2024 14:43:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZoKkcEXiY6_lyDXy@pengutronix.de>
References: <20240622174815.3130885-1-o.rempel@pengutronix.de>
 <20240622174815.3130885-2-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240622174815.3130885-2-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_054336_094707_1EA62B4A 
X-CRM114-Status: GOOD (  22.44  )
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
Subject: Re: [PATCH v2 2/2] ARM: at91: microchip-sama5d3-eds: implement MDIO
 and SPI extension boards detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Oleksij,

Some small nitpicks inside.

On Sat, Jun 22, 2024 at 07:48:15PM +0200, Oleksij Rempel wrote:
> +++ b/arch/arm/boards/microchip-sama5d3-eds/board.c
> @@ -0,0 +1,414 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +// SPDX-FileCopyrightText: 2024 Oleksij Rempel <o.rempel@pengutronix.de>
> +
> +#include <common.h>
> +#include <deep-probe.h>
> +#include <envfs.h>
> +#include <environment.h>
> +#include <gpio.h>
> +#include <init.h>
> +#include <linux/phy.h>
> +#include <spi/spi.h>
> +
> +#define BASE_BOARD_NAME_SIZE 100
> +static char base_board_name[BASE_BOARD_NAME_SIZE] = "MCP_S5D3_EDS";
> +
> +extern char __dtbo_sama5d3_eds_rgmii_phy_start[];
> +extern char __dtbo_sama5d3_eds_lan9370_start[];
> +
> +#define MCP_S5D3_EDS_MDIO_EXT_BOARD_FLAG_IGNGORE	BIT(0)

s/IGNGORE/IGNORE/

> +static int mcp_s5d3_eds_spi_find_ksz_switch(struct device *dev, int bus_idx,
> +					    int chip_select, u8 *response,
> +					    size_t response_size)
> +{
> +	struct device_node *spi_node;
> +	struct spi_device spi = {
> +		.max_speed_hz = 1 * 1000 * 1000,  /* 1 MHz */
> +		.bits_per_word = 8,
> +		.chip_select = chip_select,
> +	};
> +	/* read command for ksz switch */
> +	u8 tx_buf[4] = {0x60, 0x00, 0x00, 0x00};
> +	u8 rx_buf[4] = {0};
> +	int ret, i;
> +	bool all_zeros = true, all_ones = true;
> +	char spi_alias[] = "spiX";
> +
> +	snprintf(spi_alias, sizeof(spi_alias), "spi%d", bus_idx);
> +
> +	spi_node = of_find_node_by_alias(NULL, spi_alias);
> +	if (!spi_node)
> +		return -ENODEV;
> +
> +	of_device_ensure_probed(spi_node);
> +
> +	spi.controller = spi_get_controller(bus_idx);
> +	spi.master = spi.controller;
> +
> +	if (!spi.controller) {
> +		dev_err(dev, "SPI bus %d not found\n", bus_idx);
> +		return -ENODEV;
> +	}
> +
> +	ret = spi.controller->setup(&spi);
> +	if (ret) {
> +		dev_err(dev, "Cannot setup SPI controller %d (%d)\n", bus_idx,
> +			ret);

You can use ": %pe\n", ERR_PTR(ret) here.

> +		return ret;
> +	}
> +
> +	ret = spi_write_then_read(&spi, tx_buf, sizeof(tx_buf), rx_buf,
> +				  sizeof(rx_buf));
> +	if (ret) {
> +		dev_err(dev, "Failed to communicate with SPI device on bus %d chip select %d\n",
> +			bus_idx, chip_select);
> +		return ret;
> +	}
> +
> +	for (i = 0; i < sizeof(rx_buf); i++) {
> +		if (rx_buf[i] != 0x00) {
> +			all_zeros = false;
> +		}
> +		if (rx_buf[i] != 0xFF) {
> +			all_ones = false;
> +		}
> +	}
> +
> +	if (all_zeros || all_ones)
> +		return 0;
> +
> +	if (response_size < sizeof(rx_buf)) {
> +		dev_err(dev, "Response storage is too small\n");

No need to print this message, it's more a sanity check if your code is
correct. Also, you can move this up and catch this before you are
sending SPI messages.

> +							scan->spi_bus_idx,
> +							scan->spi_chip_select,
> +							response);
> +		if (!found)
> +			dev_warn(dev, "No match for SPI device on bus %d chip select %d, response: %02x %02x %02x %02x\n",
> +				 scan->spi_bus_idx, scan->spi_chip_select,
> +				 response[0], response[1], response[2],
> +				 response[3]);

printf can print (small) hexdumps now using "%*ph" whic comes in handy
here.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


