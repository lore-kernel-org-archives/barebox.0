Delivery-date: Thu, 18 Sep 2025 09:09:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uz8mA-004NOX-0R
	for lore@lore.pengutronix.de;
	Thu, 18 Sep 2025 09:09:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uz8m9-00061y-Cp
	for lore@pengutronix.de; Thu, 18 Sep 2025 09:09:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zg/WpNcSdarsQfUoR+4XbZdSDJ9rcDZKMO4/K8M2XEs=; b=Pr4dNGCqH/pbVo4I4sdClyYTb6
	8VPSiNc4YB56uln++wFV7ntjdl1aU0UjJaFg69u71V3LbFeMOInA6PStB0rWdQJNgcAgFtW7ZSGXP
	vNFpmfvvw27LWLpK9HiDXSX78i1wd8Pis7Bu/DJSuDMcgCNI+tDPyEikGcGEaVZR3VOa1vepkIX2V
	CIzavIU58iY7+5t7QDsIE9JW4Y+e0ogsKXkc0TFJHgQwDPy+8neLwSWBAOJpZguhFlMIAWzfPIwgH
	tQMM5nAV+BzC1U7F3aCTX6KkgEFbNL5P3v30rjeAGwtIONX1+ZEY5CrWTXdnjR4GV/SnKWepgJ0wS
	0dtg2ftw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz8lc-0000000GVcx-04UD;
	Thu, 18 Sep 2025 07:09:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz8lZ-0000000GVcQ-1tal
	for barebox@lists.infradead.org;
	Thu, 18 Sep 2025 07:09:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uz8lX-0005vf-S9; Thu, 18 Sep 2025 09:09:15 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uz8lX-001tSV-2D;
	Thu, 18 Sep 2025 09:09:15 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uz8lX-00FmIo-1m;
	Thu, 18 Sep 2025 09:09:15 +0200
Date: Thu, 18 Sep 2025 09:09:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: David Picard <david.picard@clermont.in2p3.fr>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aMuwGwllOI0GEy7k@pengutronix.de>
References: <20250917-boards-enclustra-sa2-add-support-v1-0-2de8f69107a1@clermont.in2p3.fr>
 <20250917-boards-enclustra-sa2-add-support-v1-10-2de8f69107a1@clermont.in2p3.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250917-boards-enclustra-sa2-add-support-v1-10-2de8f69107a1@clermont.in2p3.fr>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_000917_490507_3F8D352C 
X-CRM114-Status: GOOD (  28.81  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 10/11] boards: enclustra-sa2: configure SI5338
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Sep 17, 2025 at 05:22:13PM +0200, David Picard wrote:
> Configure the SI5338 clock generator on the ST1 baseboard.
> 
> Signed-off-by: David Picard <david.picard@clermont.in2p3.fr>
> ---
>  arch/arm/boards/enclustra-sa2/Makefile             |   2 +-
>  .../boards/enclustra-sa2/Si5338-RevB-Registers.h   | 433 +++++++++++++++++++++
>  arch/arm/boards/enclustra-sa2/board.c              |   6 +
>  arch/arm/boards/enclustra-sa2/si5338_config.c      | 326 ++++++++++++++++
>  arch/arm/boards/enclustra-sa2/si5338_config.h      |  22 ++
>  arch/arm/mach-socfpga/Kconfig                      |   4 +
>  6 files changed, 792 insertions(+), 1 deletion(-)
> 
> +/**
> + * @brief Write a single byte to a register in the SI5338
> + * @param[in] dev The I²C device.
> + * @param[in] addr The register address.
> + * @param[in] data The byte to be written to the register.
> + * @return 0 on success, a negative value from `asm-generic/errno.h` on error.
> + */
> +static int i2c_write_simple(struct device *dev, u8 addr, u8 data)
> +{
> +	int ret;
> +	struct i2c_client *client;
> +
> +	client = to_i2c_client(dev);
> +	u8 buffer[2];
> +
> +	buffer[0] = addr;
> +	buffer[1] = data;
> +
> +	struct i2c_msg msg[] = {
> +		{
> +			.addr = client->addr,
> +			.buf = buffer,
> +			.len = 2,
> +			.flags = 0,
> +		}
> +	};
> +	debug("%s() >> dev addr = 0x%02x\n", __func__, client->addr);
> +
> +	ret = i2c_transfer(client->adapter, msg, ARRAY_SIZE(msg));
> +	if (ret < 0) {
> +		printf("%s() >> ERROR: SI5338 write failed addr: %02x, data: %02x\n",
> +			   __func__, addr,
> +			   data);
> +		return ret;
> +	}
> +
> +	return 0;
> +}

This looks like it could greatly benefit from regmap. Look for
regmap_init_i2c(). It will give you most of the boiler plate here for
free.

The above will become regmap_write()

> +
> +/**
> + * @brief Change some bits in a register in the SI5338
> + * @param[in] dev The I²C device.
> + * @param[in] addr The register address.
> + * @param[in] data The byte to be written to the register.
> + * @param[in] mask Sets which bits in the register will change.
> + *
> + * The bits in the register are allowed to change if the corresponding bit in \a
> + *mask is 1.
> + *
> + * @return 0 on success, a negative value from `asm-generic/errno.h` on error.
> + */
> +static int i2c_write_masked(struct device *dev, u8 addr, u8 data, u8 mask)

Could be replaced by regmap_update_bits(), regmap_set_bits(),
regmap_clear_bits().

> +static int i2c_read_register(struct device *dev, u8 addr, u8 *data)

regmap_read()

> diff --git a/arch/arm/mach-socfpga/Kconfig b/arch/arm/mach-socfpga/Kconfig
> index fbd7d5c4abb1c6d598adf9209535f6f8fbd060e2..5060fc9b72af39d9e3d8ab3eca4b6fae37e62cef 100644
> --- a/arch/arm/mach-socfpga/Kconfig
> +++ b/arch/arm/mach-socfpga/Kconfig
> @@ -39,6 +39,10 @@ config MACH_SOCFPGA_ENCLUSTRA_SA2
>  	select BITREV
>  	bool "Enclustra SA2"
>  
> +config MACH_SOCFPGA_ENCLUSTRA_SA2_SI5338
> +	depends on MACH_SOCFPGA_ENCLUSTRA_SA2
> +	bool "Configure the SI5338 clock generator on ST1 baseboard"
> +

Why is this optional? Is this not available on all board variants?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


