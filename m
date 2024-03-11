Delivery-date: Mon, 11 Mar 2024 09:24:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjaxN-000mUw-1f
	for lore@lore.pengutronix.de;
	Mon, 11 Mar 2024 09:24:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjaxM-0005Lz-ND
	for lore@pengutronix.de; Mon, 11 Mar 2024 09:24:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5sHtiKOHVe9Td7fl7OXs38kLrKi9xsI0kWu0EZYa33g=; b=q+iEctr2gvj4+k19LqIasc7aFH
	fbyslXm9VZ2Vvek1fmSEjEk3Z0hPwO0Skww/swUDSHJVE4yI1MK0iOls52CdBSKsg/nQ5EOQQoJFY
	6ml2MPTCtJpe0UBT4blI7WbvbnAnS6btmcLE6vIXiCFiHpaZJvMYWzCGjotHWDwgXRNyCTbfVt7R9
	K0lKciZvbimy7jlI2qK+2y6gOOfJoR9HBnq7OvLPhOrZ1Si3pqSrESV9qN4Ot33oPZRJdi3x54nZ0
	BFqa5++a/RJkMDtjeRA7Am03/qvML7AwJOi+FTesv4QFEDxD8H3UhbVdKNQP8RyR3Lmv1OwR93MN4
	InxX7fZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjawr-00000000cDC-1syX;
	Mon, 11 Mar 2024 08:23:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjawo-00000000cCP-1BV5
	for barebox@lists.infradead.org;
	Mon, 11 Mar 2024 08:23:52 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rjawm-0004xU-QQ; Mon, 11 Mar 2024 09:23:48 +0100
Message-ID: <715e191a-bd9b-471f-9c64-e302b2e9db28@pengutronix.de>
Date: Mon, 11 Mar 2024 09:23:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>, barebox@lists.infradead.org
References: <20240308-v2024-02-0-topic-arasan-hs200-support-v1-0-6d50c90485f3@pengutronix.de>
 <20240308-v2024-02-0-topic-arasan-hs200-support-v1-8-6d50c90485f3@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240308-v2024-02-0-topic-arasan-hs200-support-v1-8-6d50c90485f3@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240311_012350_353955_99C970D7 
X-CRM114-Status: GOOD (  17.17  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 08/12] mci: core: parse more host capabilities from DT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Steffen,

On 08.03.24 12:17, Steffen Trumtrar wrote:
> @@ -2322,9 +2322,31 @@ void mci_of_parse_node(struct mci_host *host,
>  
>  	host->broken_cd = of_property_read_bool(np, "broken-cd");
>  	host->non_removable = of_property_read_bool(np, "non-removable");
> -	host->no_sd = of_property_read_bool(np, "no-sd");
> -	host->no_sdio = of_property_read_bool(np, "no-sdio");
>  	host->disable_wp = of_property_read_bool(np, "disable-wp");
> +
> +	if (of_property_read_bool(np, "full-pwr-cycle"))
> +		host->caps2 |= MMC_CAP2_FULL_PWR_CYCLE;
> +	if (of_property_read_bool(np, "full-pwr-cycle-in-suspend"))
> +		host->caps2 |= MMC_CAP2_FULL_PWR_CYCLE_IN_SUSPEND;
> +	if (of_property_read_bool(np, "mmc-hs200-1_8v"))
> +		host->caps2 |= MMC_CAP2_HS200_1_8V_SDR;
> +	if (of_property_read_bool(np, "mmc-hs200-1_2v"))
> +		host->caps2 |= MMC_CAP2_HS200_1_2V_SDR;
> +	if (of_property_read_bool(np, "mmc-hs400-1_8v"))
> +		host->caps2 |= MMC_CAP2_HS400_1_8V | MMC_CAP2_HS200_1_8V_SDR;
> +	if (of_property_read_bool(np, "mmc-hs400-1_2v"))
> +		host->caps2 |= MMC_CAP2_HS400_1_2V | MMC_CAP2_HS200_1_2V_SDR;
> +	if (of_property_read_bool(np, "mmc-hs400-enhanced-strobe"))
> +		host->caps2 |= MMC_CAP2_HS400_ES;
> +	if (of_property_read_bool(np, "no-sdio"))
> +		host->caps2 |= MMC_CAP2_NO_SDIO;
> +	if (of_property_read_bool(np, "no-sd"))
> +		host->caps2 |= MMC_CAP2_NO_SD;
> +	if (of_property_read_bool(np, "no-mmc"))
> +		host->caps2 |= MMC_CAP2_NO_MMC;
> +	if (of_property_read_bool(np, "no-mmc-hs400"))
> +		host->caps2 &= ~(MMC_CAP2_HS400_1_8V | MMC_CAP2_HS400_1_2V |
> +				 MMC_CAP2_HS400_ES);

Can you move all the stuff with hs200 and hs400 into it into
an IS_ENABLED(CONFIG_MCI_TUNING)?

With this done: Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

>  }
>  
>  void mci_of_parse(struct mci_host *host)
> diff --git a/include/mci.h b/include/mci.h
> index 9a52e3f360..ed2967c889 100644
> --- a/include/mci.h
> +++ b/include/mci.h
> @@ -468,6 +468,36 @@ struct mci_host {
>  	const char *devname;		/**< the devicename for the card, defaults to disk%d */
>  	unsigned voltages;
>  	unsigned host_caps;	/**< Host's interface capabilities, refer MMC_VDD_* */
> +	unsigned caps2;		/* More host capabilities */
> +#define MMC_CAP2_BOOTPART_NOACC	(1 << 0)	/* Boot partition no access */
> +#define MMC_CAP2_FULL_PWR_CYCLE	(1 << 2)	/* Can do full power cycle */
> +#define MMC_CAP2_FULL_PWR_CYCLE_IN_SUSPEND (1 << 3) /* Can do full power cycle in suspend */
> +#define MMC_CAP2_HS200_1_8V_SDR	(1 << 5)        /* can support */
> +#define MMC_CAP2_HS200_1_2V_SDR	(1 << 6)        /* can support */
> +#define MMC_CAP2_HS200		(MMC_CAP2_HS200_1_8V_SDR | \
> +				 MMC_CAP2_HS200_1_2V_SDR)
> +#define MMC_CAP2_SD_EXP		(1 << 7)	/* SD express via PCIe */
> +#define MMC_CAP2_SD_EXP_1_2V	(1 << 8)	/* SD express 1.2V */
> +#define MMC_CAP2_CD_ACTIVE_HIGH	(1 << 10)	/* Card-detect signal active high */
> +#define MMC_CAP2_RO_ACTIVE_HIGH	(1 << 11)	/* Write-protect signal active high */
> +#define MMC_CAP2_NO_PRESCAN_POWERUP (1 << 14)	/* Don't power up before scan */
> +#define MMC_CAP2_HS400_1_8V	(1 << 15)	/* Can support HS400 1.8V */
> +#define MMC_CAP2_HS400_1_2V	(1 << 16)	/* Can support HS400 1.2V */
> +#define MMC_CAP2_HS400		(MMC_CAP2_HS400_1_8V | \
> +				 MMC_CAP2_HS400_1_2V)
> +#define MMC_CAP2_HSX00_1_8V	(MMC_CAP2_HS200_1_8V_SDR | MMC_CAP2_HS400_1_8V)
> +#define MMC_CAP2_HSX00_1_2V	(MMC_CAP2_HS200_1_2V_SDR | MMC_CAP2_HS400_1_2V)
> +#define MMC_CAP2_SDIO_IRQ_NOTHREAD (1 << 17)
> +#define MMC_CAP2_NO_WRITE_PROTECT (1 << 18)	/* No physical write protect pin, assume that card is always read-write */
> +#define MMC_CAP2_NO_SDIO	(1 << 19)	/* Do not send SDIO commands during initialization */
> +#define MMC_CAP2_HS400_ES	(1 << 20)	/* Host supports enhanced strobe */
> +#define MMC_CAP2_NO_SD		(1 << 21)	/* Do not send SD commands during initialization */
> +#define MMC_CAP2_NO_MMC		(1 << 22)	/* Do not send (e)MMC commands during initialization */
> +#define MMC_CAP2_CQE		(1 << 23)	/* Has eMMC command queue engine */
> +#define MMC_CAP2_CQE_DCMD	(1 << 24)	/* CQE can issue a direct command */
> +#define MMC_CAP2_AVOID_3_3V	(1 << 25)	/* Host must negotiate down from 3.3V */
> +#define MMC_CAP2_MERGE_CAPABLE	(1 << 26)	/* Host can merge a segment over the segment size */
> +#define MMC_CAP2_CRYPTO		0
>  	unsigned f_min;		/**< host interface lower limit */
>  	unsigned f_max;		/**< host interface upper limit */
>  	unsigned clock;		/**< Current clock used to talk to the card */
> @@ -478,8 +508,6 @@ struct mci_host {
>  	int use_dsr;		/**< optional dsr usage flag */
>  	int broken_cd;		/**< card detect is broken */
>  	bool non_removable;	/**< device is non removable */
> -	bool no_sd;		/**< do not send SD commands during initialization */
> -	bool no_sdio;		/**< do not send SDIO commands during initialization */
>  	bool disable_wp;	/**< ignore write-protect detection logic */
>  	struct regulator *supply;
>  
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



