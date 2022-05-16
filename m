Delivery-date: Mon, 16 May 2022 12:49:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqYIG-00FUPD-L7
	for lore@lore.pengutronix.de; Mon, 16 May 2022 12:49:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqYIF-0006lS-5X
	for lore@pengutronix.de; Mon, 16 May 2022 12:49:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nZIzwOtal5Y0UASNlem90q2NxQL6wIQvukPHECrFdis=; b=Te+tOFipy+Qmx+
	Ue3BZ0StkzpSJUCRg8d5C7EI3kB8M/35sHAFx7dEQpXkj9LcpbLewVfZGBhevZ5t+DiwPgzr+zF78
	Kcz3KhxoAOWsLlF4vX6/JVKwtnCN8wJ3IRWaqnTNPulgpg1+QXc1W2GQ406v75R0XE472E1KiFTKS
	mEYZL5V20snqLKILhHTqadyhh6VRGDbFK50PDvM12YNEbU+TbugsSmfTn1Q7wTl9X4TkPswcxYIJs
	HuJkZHuspvN1US0UPgsIDgvTIr2TUH3FS850AzPQNeEjLo76VMmbOdMtg7DBBUfiWQGBT86jWM/Jz
	k+LAT8ADibYVt2dlzlkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqYGh-007BxT-PQ; Mon, 16 May 2022 10:48:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqYGc-007Bvh-QI
 for barebox@lists.infradead.org; Mon, 16 May 2022 10:48:00 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77]
 helo=[127.0.0.1]) by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nqYGX-0006g2-DK; Mon, 16 May 2022 12:47:53 +0200
Message-ID: <24dc9774-0a3e-b699-e933-1bbb4e3d65e7@pengutronix.de>
Date: Mon, 16 May 2022 12:47:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Sam Ravnborg <sam@ravnborg.org>, barebox@lists.infradead.org
References: <20220515193807.354903-1-sam@ravnborg.org>
 <20220515193807.354903-8-sam@ravnborg.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220515193807.354903-8-sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220516_034758_898002_788D0747 
X-CRM114-Status: GOOD (  23.39  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v1 7/8] ARM: at91: Add initialize function to sdramc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sam,

On 15.05.22 21:38, Sam Ravnborg wrote:
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
> +	for (i = 0; i < 1000; i++) ;

This and similar instances below must be replaced by proper delays.
You can use early_udelay for this as you already initialize the PIT.

Did you test SDRAM worked with this setup? I assumed this to be at least
one of the reasons current at91bootstrap fails to work with current compilers
for the 9263. (Newer SoCs use a different DRAM controller and thus a different
driver that doesn't use compile-time removable delay loops).

> +
> +	/* Step#5 A NOP command is issued to the SDRAM devices */
> +	sdramc_wr(config, AT91_SDRAMC_MR, AT91_SDRAMC_MODE_NOP);
> +	writel(0x00000000, sdram_address);
> +
> +	/* Step#6 An All Banks Precharge command is issued to the SDRAM devices  */
> +	sdramc_wr(config, AT91_SDRAMC_MR, AT91_SDRAMC_MODE_PRECHARGE);
> +	writel(0x00000000, sdram_address);
> +
> +	for (i = 0; i < 10000; i++) ;
> +
> +	/* Step#7 Eight auto-refresh cycles are provided */
> +	for (i = 0; i < 8; i++) {
> +		sdramc_wr(config, AT91_SDRAMC_MR, AT91_SDRAMC_MODE_REFRESH);
> +		writel(0x00000001 + i, sdram_address + 4 + 4 * i);
> +	}
> +
> +	/*  Pause cycles */
> +	for (i = 0; i < 1000; i++) ;
> +
> +	/* Step#8 A Mode Register set (MRS) cyscle is issued to program the SDRAM parameters(TCSR, PASR, DS) */
> +	sdramc_wr(config, AT91_SDRAMC_MR, AT91_SDRAMC_MODE_LMR);
> +	writel(0xcafedede, sdram_address + 0x24);
> +
> +	/*  Pause cycles */
> +	for (i = 0; i < 1000; i++) ;
> +
> +	/* Step#9 For mobile SDRAM initialization, an Extended Mode Register set cycle is issued to ... */
> +
> +	/* Step#10 The application must go into Normal Mode, setting Mode to 0 in the Mode Register
> +	   and perform a write access at any location in the SDRAM. */
> +	sdramc_wr(config, AT91_SDRAMC_MR, AT91_SDRAMC_MODE_NORMAL);	// Set Normal mode
> +	writel(0x00000000, sdram_address);	// Perform Normal mode
> +
> +	/* Step#11 Write the refresh rate into the count field in the SDRAMC Refresh Timer Rgister. */
> +	sdramc_wr(config, AT91_SDRAMC_TR, config->tr);
> +
> +	return 0;
> +}
> diff --git a/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h b/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h
> index fe76f60b0..0e05387aa 100644
> --- a/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h
> +++ b/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h
> @@ -181,6 +181,18 @@
>  #include <mach/at91sam9261.h>
>  #include <mach/at91sam9263.h>
>  
> +struct at91sam9_sdramc_config {
> +	void __iomem *sdramc;
> +	unsigned int mr;
> +	unsigned int tr;
> +	unsigned int cr;
> +	unsigned int lpr;
> +	unsigned int mdr;
> +};
> +
> +int at91sam9_sdramc_initialize(const struct at91sam9_sdramc_config *config,
> +			       unsigned int sdram_address);
> +
>  static inline u32 at91_get_sdram_size(void *base)
>  {
>  	u32 val;


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

