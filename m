Delivery-date: Wed, 29 Jun 2022 08:51:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6RY8-000wi8-P3
	for lore@lore.pengutronix.de; Wed, 29 Jun 2022 08:51:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6RYA-0008Ty-Oo
	for lore@pengutronix.de; Wed, 29 Jun 2022 08:51:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0zlYnnijyiv0EpsBlZQBDCmpv5GM/vniBiZy5pAOP5A=; b=Kb8lBfCh93scj8F6uqXPgEbioq
	C+FpeYvsVoX69lPLbipz/71ljRKeIDagFuCEgYJvNXb7qt09nANYkhgdj/ldDoH+RxA235IlIB14N
	sNvlUozPqrpn7MxYcjSp0IJHAbcKCne9GVG8m5KiTTK1QByL7WDj07ab9Mze3Q5QSueilusfu3EoC
	qs5rylrwVoZYpM5/Uxnh4+ImTCIiAhvSiEy+SkDy/O+5LPNB3q/IxifC/rqarBgi/Lm2NAJdcly2u
	RjmLdfZyFO6+adWO7LGMZTjsfTQ5hPrPIPv/ycpBbKEAzUF7T9R22X9b0ML4HWPNO0B5fOBEufCTl
	aywfXKXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6RWu-009td6-W5; Wed, 29 Jun 2022 06:50:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6RWp-009tb1-QG
	for barebox@lists.infradead.org; Wed, 29 Jun 2022 06:50:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1o6RWo-0007wB-K9; Wed, 29 Jun 2022 08:50:22 +0200
Message-ID: <5ad122b8-b50f-91b5-683c-f85b752f53a9@pengutronix.de>
Date: Wed, 29 Jun 2022 08:50:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Sam Ravnborg <sam@ravnborg.org>, barebox@lists.infradead.org
References: <20220628203849.2785611-1-sam@ravnborg.org>
 <20220628203849.2785611-4-sam@ravnborg.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220628203849.2785611-4-sam@ravnborg.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_235023_907236_C71E55A1 
X-CRM114-Status: GOOD (  20.41  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 03/11] ARM: at91: Add initialize function to sdramc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 28.06.22 22:38, Sam Ravnborg wrote:
> Port the sdramc initialize function from at91bootstrap.
> It is needed from lowlevel code and is a replacement for the
> sdramc init code in at91sam926x_board_init.h
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> +int at91sam9_sdramc_initialize(const struct at91sam9_sdramc_config *config,
> +			       unsigned int sdram_address)
> +{
> +	unsigned int i;
> +
> +	/* Step#1 SDRAM feature must be in the configuration register */
> +	sdramc_wr(config, AT91_SDRAMC_CR, config->cr);
> +
> +	/* Step#2 For mobile SDRAM, temperature-compensated self refresh(TCSR),... */
> +
> +	/* Step#3 The SDRAM memory type must be set in the Memory Device Register */
> +	sdramc_wr(config, AT91_SDRAMC_MDR, config->mdr);
> +
> +	/* Step#4 The minimum pause of 200 us is provided to precede any single toggle */
> +	early_udelay(200);
> +
> +	/* Step#5 A NOP command is issued to the SDRAM devices */
> +	sdramc_wr(config, AT91_SDRAMC_MR, AT91_SDRAMC_MODE_NOP);
> +	writel(0x00000000, sdram_address);
> +
> +	/* Step#6 An All Banks Precharge command is issued to the SDRAM devices  */
> +	sdramc_wr(config, AT91_SDRAMC_MR, AT91_SDRAMC_MODE_PRECHARGE);
> +	writel(0x00000000, sdram_address);
> +
> +	/* Pause cycles */
> +	early_udelay(2000);
> +
> +	/* Step#7 Eight auto-refresh cycles are provided */
> +	for (i = 0; i < 8; i++) {
> +		sdramc_wr(config, AT91_SDRAMC_MR, AT91_SDRAMC_MODE_REFRESH);
> +		writel(0x00000001 + i, sdram_address + 4 + 4 * i);
> +	}
> +
> +	/* Pause cycles */
> +	early_udelay(200);
> +
> +	/* Step#8 A Mode Register set (MRS) cycle is issued to program (TCSR, PASR, DS) */
> +	sdramc_wr(config, AT91_SDRAMC_MR, AT91_SDRAMC_MODE_LMR);
> +	writel(0xcafedede, sdram_address + 0x24);
> +
> +	/*  Pause cycles */
> +	early_udelay(200);
> +
> +	/* Step#9 For mobile SDRAM initialization, an Extended Mode Register set ... */
> +
> +	/* Step#10 The application must go into Normal Mode, setting Mode to 0
> +	 * and perform a write access at any location in the SDRAM.
> +	 */
> +	sdramc_wr(config, AT91_SDRAMC_MR, AT91_SDRAMC_MODE_NORMAL);	// Set mode
> +	writel(0x00000000, sdram_address);				// Perform mode
> +
> +	/* Step#11 Write the refresh rate into the count field in the Refresh Register. */
> +	sdramc_wr(config, AT91_SDRAMC_TR, config->tr);
> +
> +	return 0;

Nitpick: Function can be void if it always reports success.

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


