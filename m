Delivery-date: Mon, 23 Jan 2023 10:34:35 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJtDo-002z0p-Ll
	for lore@lore.pengutronix.de; Mon, 23 Jan 2023 10:34:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJtDm-0001rl-Js
	for lore@pengutronix.de; Mon, 23 Jan 2023 10:34:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cwtiYR3HXhuSfHAxnT+5UqFogHVaU50Y6D+A0CQOyPY=; b=jbpICS5MDBoi8dn3EmkNQneCfx
	odgrhosMZQ5tvd8/TqaTdCez3G58Gh7F7VCMHu//gD8ZgjIfjm/OhS1XMxYH/JAWyyK6pAZiUv3nR
	y8RlQzJv7mJbHGIMwbMFfUDqPMfJvA/59xM4Wh+HM3Ea1pIKypmofg7UvZPh+rl916vKt5U2U/bgC
	FPoHii7X5iXGR04ayyiTqq9EWKHDSzbwRg3n9AYoySjMga5ZMIkexzx4FuwNpVwT2UX1MnGtFD/VZ
	4AZtOiZ0eippNCyPDLQKXOO9+aBue/NspbZBbNVuoF7BmXw4P1Xltg4t3c7GlLb+OdcSTS80gQLLv
	+3c0TlBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJtCS-00GXGM-0O; Mon, 23 Jan 2023 09:33:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJtCM-00GXF8-SH
	for barebox@lists.infradead.org; Mon, 23 Jan 2023 09:33:08 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pJtCL-0001k7-J7; Mon, 23 Jan 2023 10:33:05 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pJtCL-0001b1-54; Mon, 23 Jan 2023 10:33:05 +0100
Date: Mon, 23 Jan 2023 10:33:05 +0100
To: John Watts <contact@jookia.org>
Cc: barebox@lists.infradead.org
Message-ID: <20230123093305.GS24755@pengutronix.de>
References: <20230122175141.119834-1-contact@jookia.org>
 <20230122175141.119834-5-contact@jookia.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230122175141.119834-5-contact@jookia.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_013306_948629_F755CE29 
X-CRM114-Status: GOOD (  24.21  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/5] ARM: novena: Read Ethernet MAC address from EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 23, 2023 at 04:51:40AM +1100, John Watts wrote:
> The Novena has an EEPROM used for storing information about the board,
> including the Ethernet MAC address.
> 
> The reference for the EEPROM fields is the novena-eeprom source code.
> 
> Signed-off-by: John Watts <contact@jookia.org>
> ---
>  arch/arm/boards/novena/board.c | 68 ++++++++++++++++++++++++++++++++++
>  arch/arm/dts/imx6q-novena.dts  | 15 ++++++++
>  2 files changed, 83 insertions(+)
> 
> diff --git a/arch/arm/boards/novena/board.c b/arch/arm/boards/novena/board.c
> index 186f91093f..0341117c46 100644
> --- a/arch/arm/boards/novena/board.c
> +++ b/arch/arm/boards/novena/board.c
> @@ -2,12 +2,80 @@
>  // SPDX-FileCopyrightText: 2023 John Watts
>  
>  #include <common.h>
> +#include <fs.h>
> +#include <libfile.h>
> +#include <net.h>
> +
> +struct novena_eeprom {
> +	uint8_t signature[6]; /* 'Novena' */
> +	uint8_t version; /* 1 or 2, not checked */
> +	uint8_t page_size; /* v2 only: EEPROM read/write page */
> +	uint32_t serial; /* 32-bit serial number */
> +	uint8_t mac[6]; /* Gigabit MAC address */
> +	uint16_t features; /* features */
> +	/* ... extra fields omitted ... */
> +} __packed;
> +
> +static struct novena_eeprom *novena_read_eeprom(void)
> +{
> +	size_t read;
> +	loff_t max = sizeof(struct novena_eeprom);
> +	void *eeprom;
> +
> +	int rc = read_file_2("/dev/eeprom0", &read, &eeprom, max);

And here is the point where you have to request that the EEPROM is
actually availabe to support the deep probe mechanism. Before reading
the EEPROM add a call to:

	of_device_ensure_probed_by_alias("eeprom0");

Nowadays the read-MAC-address-from-EEPROM thingy would likely be done
using nvmem cells which would boil this code down to device tree changes
only. If you're feeling brave you could change this, I won't insist on
it though.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


