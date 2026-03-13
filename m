Delivery-date: Fri, 13 Mar 2026 14:21:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12SK-000D40-0c
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:21:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12SJ-0003IP-26
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:21:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3rbbp5wRKCHYhDwJr3Q9pbpNj0pOvY8TA32DTtc2l7U=; b=XuNcI4U89gSPs3Lziit5clQdAt
	gwFATfpfwVYjqwMzfpN8+of17YHJYCIEcgLehwVFWDQ8zH7bY5pjlYKP7LRIfLfp65AvVrpkPeiqU
	pqiFIAdpNXLV5lsmJ9yDeRpd7apilirG7OhzZibR9XxeghLI4rhfIcHh0OmJDgPX1Ivy3KSTYQZPb
	jWJM5VlG8P5/o1yDyrqbnNuvneibrEukLd4ASdFTF4D1ZaHbwJT66QLhGIO9RrvhWYGcw6EdSVMQE
	80dS3yQNgei3ZpWSogJrhTpgHVWc4NURxkOAezg2G88Ns3uZMENziaWWErDvJ6s/B+WYs1b6iIGmO
	5pWzIdKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12R8-00000000D7I-1zVw;
	Fri, 13 Mar 2026 13:20:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12R5-00000000D6B-0oF1
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:20:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1w12Qt-0002yp-U1; Fri, 13 Mar 2026 14:20:03 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1w12Qt-0005Qk-2Q;
	Fri, 13 Mar 2026 14:20:03 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1w12Qt-0000000HEXn-2l9h;
	Fri, 13 Mar 2026 14:20:03 +0100
Date: Fri, 13 Mar 2026 14:20:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Fabian Pflug <f.pflug@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
	Marco Felsch <m.felsch@pengutronix.de>
Message-ID: <abQPA1BFyCN4M51O@pengutronix.de>
References: <20260312-v2026-01-0-topic-tqma8mpxs-v4-0-88472a13347d@pengutronix.de>
 <20260312-v2026-01-0-topic-tqma8mpxs-v4-2-88472a13347d@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260312-v2026-01-0-topic-tqma8mpxs-v4-2-88472a13347d@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_062015_263428_96609C43 
X-CRM114-Status: GOOD (  25.77  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v4 2/3] ARM: boards: tqma8mpxl: extend with support for xs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Mar 12, 2026 at 12:34:32PM +0100, Fabian Pflug wrote:
> The TQMA8MPxS is another board from TQ with the same processor, but a
> different formfactor. Nevertheless they share a lot of code and can be
> used from the same barebox resulting in the rename of tqma8mpxl to
> tqma8mpxx.
> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> ---
>  arch/arm/boards/tqma8mpxx/board.c                  |    1 +
>  arch/arm/boards/tqma8mpxx/lowlevel.c               |   97 +-
>  arch/arm/dts/Makefile                              |    2 +-
>  .../dts/imx8mp-tqma8mpqs-mb-smarc-2-upstream.dts   |  402 ++++++++
>  arch/arm/dts/imx8mp-tqma8mpqs-mba8mpxs.dts         |   15 +
>  arch/arm/dts/imx8mp-tqma8mpqs-upstream.dtsi        | 1075 ++++++++++++++++++++
>  arch/arm/mach-imx/Kconfig                          |    3 +-
>  7 files changed, 1574 insertions(+), 21 deletions(-)
> 
> -static void power_init_board(void)
> +static bool tqma_is_eeprom_valid(struct tq_eeprom *eeprom)
>  {
> -	struct pbl_i2c *i2c;
> +	int ramsize;
>  
> -	imx8mp_setup_pad(MX8MP_PAD_I2C1_SCL__I2C1_SCL | I2C_PAD_CTRL);
> -	imx8mp_setup_pad(MX8MP_PAD_I2C1_SDA__I2C1_SDA | I2C_PAD_CTRL);
> -
> -	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_I2C1);
> -
> -	i2c = imx8m_i2c_early_init(IOMEM(MX8MP_I2C1_BASE_ADDR));
> -
> -	pmic_configure(i2c, 0x25, pca9450_cfg, ARRAY_SIZE(pca9450_cfg));
> +	if (!*eeprom->serial || !*eeprom->id)
> +		return false;
> +	ramsize = tq_vard_ramsize(&eeprom->vard) / (SZ_1G);
> +	if (ramsize != 1 && ramsize != 2 && ramsize != 4 && ramsize != 8)
> +		return false;
> +	return true;
>  }
>  
> -static __noreturn noinline void tqma8mpxx_start(void)
> +static noinline void tqma8mpxx_start(void)
>  {
>  	extern char __dtb_z_imx8mp_tqma8mpql_mba8mpxl_start[];
> +	extern char __dtb_z_imx8mp_tqma8mpqs_mba8mpxs_start[];
>  
> -	setup_uart();
> +	struct tq_eeprom *eeprom;
> +	struct pbl_i2c *i2c;
> +	void *boarddata;
> +
> +	i2c = tqma_i2c1_init();
> +
> +	/**
> +	 * The difference for the lowlevel code between xS and xL is:
> +	 * PMIC: xS on i2c2, xL on i2C1
> +	 * VARD: address 0x50 on xS, address 0x53 on xL.
> +	 *       offset 0x1000 on xS, offset 0x0 on xL
> +	 */
> +
> +	eeprom = pbl_tq_read_eeprom(i2c, 0x50, 0x1000 | I2C_ADDR_16_BIT);
> +	if (tqma_is_eeprom_valid(eeprom)) {
> +		/* found xS board */
> +		i2c = tqma_i2c2_init();

Something is mixed up here. You come here when you find a valid EEPROM
on I2C1 which according to the comment indicates you're on a xL board.
Also i2c is set here but unused for the rest of this function.

Have you tested this on both boards? If not I would prefer that you look
for an EEPROM on the board that you don't have first so that we can be
sure that looking up a non existent EEPROM doesn't hang the board.

> +		boarddata = __dtb_z_imx8mp_tqma8mpqs_mba8mpxs_start;
> +		setup_uart(IOMEM(MX8M_UART3_BASE_ADDR),
> +			   MX8MP_PAD_SD1_DATA6__UART3_DCE_TX,
> +			   MX8MP_PAD_SD1_DATA7__UART3_DCE_RX);
> +	} else {
> +		eeprom = pbl_tq_read_eeprom(i2c, 0x53, 0);
> +		if (!tqma_is_eeprom_valid(eeprom))
> +			panic("Could not read VARD!\n");
> +
> +		/* found xL board */
> +		boarddata = __dtb_z_imx8mp_tqma8mpql_mba8mpxl_start;
> +		setup_uart(IOMEM(MX8M_UART4_BASE_ADDR),
> +			   MX8MP_PAD_UART4_TXD__UART4_DCE_TX,
> +			   MX8MP_PAD_UART4_RXD__UART4_DCE_RX);
> +
> +	}
>  

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


