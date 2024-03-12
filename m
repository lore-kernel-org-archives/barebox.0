Delivery-date: Tue, 12 Mar 2024 09:21:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjxOQ-002K0H-0S
	for lore@lore.pengutronix.de;
	Tue, 12 Mar 2024 09:21:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjxOO-0002p3-TB
	for lore@pengutronix.de; Tue, 12 Mar 2024 09:21:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=82qxns7wnCh/Wi3kdtBs23n2x3Ut5z8acM0n3JiKWjc=; b=MDkt3KtweaKB0Bureu3tonmUr2
	PWgCA8PsL8rVxoa7/PJ1MsLX2WZNFN7A22LtNdMa39AxvRghZnP6vFmHRHPgyqaTztAF5kVNvyGdO
	D6Ki1aFXE6qLP9nEwPt2/ayZDjw5luEgL6kJ07lvk8uffCSlsrX6J7dHJM9XQMR2u/v8eDk7t4vuc
	InKq1fWND7UAbO+i1tHeXrW6b05SqtXqV26lpnaPWNYsic4DpIcGK2WVqVeV+PZ/Y3bwYF3FxzIoi
	T/ThLl1Cyuy47RsBfLOyBBQ8Tln500L8ca/Fs+d+4KhyrqMhWxv2qUgkBA5rF3HuYG7cyuXpke7b0
	eoI8Ajhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjxNh-00000004rPb-1ZmT;
	Tue, 12 Mar 2024 08:21:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjxNb-00000004rO5-1lru
	for barebox@lists.infradead.org;
	Tue, 12 Mar 2024 08:21:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rjxNW-0002H0-NR; Tue, 12 Mar 2024 09:20:54 +0100
Message-ID: <43adb568-5485-4d50-bad0-1c9bee45b8b3@pengutronix.de>
Date: Tue, 12 Mar 2024 09:20:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>, barebox@lists.infradead.org
References: <20240308-v2024-02-0-topic-arasan-hs200-support-v1-0-6d50c90485f3@pengutronix.de>
 <20240308-v2024-02-0-topic-arasan-hs200-support-v1-9-6d50c90485f3@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240308-v2024-02-0-topic-arasan-hs200-support-v1-9-6d50c90485f3@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240312_012059_808799_2A1F2030 
X-CRM114-Status: GOOD (  45.67  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 09/12] mci: mci-core: add HS200 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Steffen,

On 08.03.24 12:17, Steffen Trumtrar wrote:
> +	switch (bus_width) {
> +		case MMC_BUS_WIDTH_8:
> +			mci->card_caps |= MMC_CAP_8_BIT_DATA;
> +			break;
> +		case MMC_BUS_WIDTH_4:
> +			mci->card_caps |= MMC_CAP_4_BIT_DATA;
> +			break;
> +		default:
> +			break;
> +	}

This is needed to make devinfo output less confusing, right?

> +#ifdef CONFIG_MCI_TUNING

For compile-time coverage, drop the #ifdef and reference the code
inside a if (IS_ENABLED(CONFIG_MCI_TUNING)) {}

> +/*
> + * Switch to the high-speed mode
> + */
> +static int mmc_select_hs(struct mci *mci)
> +{
> +	int err;
> +
> +	err = mci_switch(mci, EXT_CSD_HS_TIMING, EXT_CSD_TIMING_HS);
> +	if (err)
> +		dev_warn(&mci->dev, "switch to high-speed failed, err:%d\n", err);
> +
> +	return err;
> +}

This duplicate codes already existing in mmc_change_freq. 

> +
> +int mci_execute_tuning(struct mci *mci)
> +{
> +	struct mci_host *host = mci->host;
> +	u32 opcode;
> +	int err;
> +
> +	if (!host->execute_tuning)
> +		return 0;
> +
> +	/* Tuning is only supported for MMC / HS200 */
> +	if (mmc_card_hs200(mci))
> +		opcode = MMC_SEND_TUNING_BLOCK_HS200;
> +	else
> +		return 0;
> +
> +	err = host->execute_tuning(host, opcode);
> +	return err;

You can return host->execute_tuning(host, opcode); directly here.

> +static int mmc_select_max_dtr(struct mci *mci)
> +{
> +	u8 card_type = mci->ext_csd[EXT_CSD_DEVICE_TYPE];
> +	u32 caps2 = mci->host->caps2;
> +	u32 caps = mci->card_caps;
> +	unsigned int hs_max_dtr = 0;
> +	unsigned int hs200_max_dtr = 0;
> +
> +	if (caps & MMC_CAP_MMC_HIGHSPEED &&
> +	    card_type & EXT_CSD_CARD_TYPE_26) {

Nitpick: Parenthesis around the terms on both side of && for clarity.

> +		hs_max_dtr = MMC_HIGH_26_MAX_DTR;
> +	}
> +
> +	if (caps & MMC_CAP_MMC_HIGHSPEED &&
> +	    card_type & EXT_CSD_CARD_TYPE_52) {
> +		hs_max_dtr = MMC_HIGH_52_MAX_DTR;
> +	}
> +
> +	if (caps2 & MMC_CAP2_HS200_1_8V_SDR &&
> +	    card_type & EXT_CSD_CARD_TYPE_HS200_1_8V) {
> +		hs200_max_dtr = MMC_HS200_MAX_DTR;
> +	}
> +
> +	if (caps2 & MMC_CAP2_HS200_1_2V_SDR &&
> +	    card_type & EXT_CSD_CARD_TYPE_HS200_1_2V) {
> +		hs200_max_dtr = MMC_HS200_MAX_DTR;
> +	}
> +
> +	mci->host->hs200_max_dtr = hs200_max_dtr;
> +	mci->host->hs_max_dtr = hs_max_dtr;
> +
> +	return 0;

Can be void instead.

> +}
> +/*
> + * For device supporting HS200 mode, the following sequence
> + * should be done before executing the tuning process.
> + * 1. set the desired bus width(4-bit or 8-bit, 1-bit is not supported)
> + * 2. switch to HS200 mode
> + * 3. set the clock to > 52Mhz and <=200MHz
> + */
> +static int mmc_select_hs200(struct mci *mci)
> +{
> +	unsigned int old_timing, old_clock;
> +	int err = -EINVAL;
> +	u8 val;
> +
> +	/*
> +	 * Set the bus width(4 or 8) with host's support and
> +	 * switch to HS200 mode if bus width is set successfully.
> +	 */
> +	/* find out maximum bus width and then try DDR if supported */
> +	err = mci_mmc_select_bus_width(mci);
> +	if (err > 0) {
> +		u32 status;
> +
> +		/* TODO  actually set drive strength instead of 0. Currently unsupported. */
> +		val = EXT_CSD_TIMING_HS200 | 0 << EXT_CSD_DRV_STR_SHIFT;
> +		err = mci_switch(mci, EXT_CSD_HS_TIMING, val);
> +		if (err)
> +			goto err;
> +
> +		/*
> +		 * Bump to HS timing and frequency. Some cards don't handle
> +		 * SEND_STATUS reliably at the initial frequency.
> +		 * NB: We can't move to full (HS200) speeds until after we've
> +		 * successfully switched over.
> +		 */
> +		old_timing = mci->host->timing;
> +		old_clock = mci->host->clock;
> +
> +		mci->host->timing = MMC_TIMING_MMC_HS200;
> +		mci_set_ios(mci);
> +		mci_set_clock(mci, mci->host->hs_max_dtr);
> +
> +		/*
> +		 * For HS200, CRC errors are not a reliable way to know the
> +		 * switch failed. If there really is a problem, we would expect
> +		 * tuning will fail and the result ends up the same.
> +		 */

Linux comment no longer aligns with barebox code. The comment explains why the kernel
doesn't fail on CRC errors here, but mci_send_status returns -EILSEQ normally.

While not relevant to your Arasan use case, other drivers return -EILSEQ on
CRC errors and SDHCI drivers might start doing so too in future, so please
port mmc_switch_status() from Linux and use below.

> +		err = mci_send_status(mci, &status);
> +
> +		/*
> +		 * mmc_select_timing() assumes timing has not changed if
> +		 * it is a switch error.
> +		 */
> +		if (err == -EBADMSG) {
> +			mci->host->clock = old_clock;
> +			mci->host->timing = old_timing;
> +			mci_set_ios(mci);
> +		}
> +	}
> +err:
> +	if (err) {
> +		dev_err(&mci->dev, "%s failed, error %d\n", __func__, err);
> +	}
> +	return err;
> +}
> +
> +/*
> + * Set the bus speed for the selected speed mode.
> + */
> +static void mmc_set_bus_speed(struct mci *mci)
> +{
> +	unsigned int max_dtr = (unsigned int)-1;
> +
> +	if (mmc_card_hs200(mci) &&
> +		max_dtr > mci->host->hs200_max_dtr)
> +		max_dtr = mci->host->hs200_max_dtr;
> +	else if (mmc_card_hs(mci) && max_dtr > mci->host->hs_max_dtr)
> +		max_dtr = mci->host->hs_max_dtr;
> +	else if (max_dtr > 26000000)
> +		max_dtr = 26000000;

Why hardcode this when Linux uses card->csd.max_dtr?

> +
> +	mci_set_clock(mci, max_dtr);
> +}
> +
> +/*
> + * Activate High Speed, HS200 or HS400ES mode if supported.
> + */
> +int mmc_select_timing(struct mci *mci)
> +{
> +	unsigned int mmc_avail_type;
> +	int err = 0;
> +
> +	mmc_select_max_dtr(mci);
> +
> +	mmc_avail_type = mci->ext_csd[EXT_CSD_DEVICE_TYPE] & EXT_CSD_CARD_TYPE_MASK;
> +	if (mmc_avail_type & EXT_CSD_CARD_TYPE_HS200) {
> +		err = mmc_select_hs200(mci);
> +		if (err == -EBADMSG)
> +			mmc_avail_type &= ~EXT_CSD_CARD_TYPE_HS200;
> +		else
> +			goto out;
> +	}

If HS200 doesn't succeed, DDR52 should be tried next. This is what mci_startup_mmc
is already doing, so it seems to me you should incorporate this code and remove
the mmc_select_hs duplication. 

> +
> +	if (mmc_avail_type & EXT_CSD_CARD_TYPE_HS)
> +		err = mmc_select_hs(mci);
> +
> +out:
> +	if (err && err != -EBADMSG)
> +		return err;
> +
> +	/*
> +	 * Set the bus speed to the selected bus timing.
> +	 * If timing is not selected, backward compatible is the default.
> +	 */
> +	mmc_set_bus_speed(mci);
> +
> +	return 0;
> +}
> +
> +int mmc_hs200_tuning(struct mci *mci)
> +{
> +	return mci_execute_tuning(mci);
> +}
> +#endif
> +
>  static int mci_startup_mmc(struct mci *mci)
>  {
>  	struct mci_host *host = mci->host;
> -	int ret;
> +	int ret = 0;
>  
>  	/* if possible, speed up the transfer */
>  	if (mci_caps(mci) & MMC_CAP_MMC_HIGHSPEED) {
> @@ -1316,19 +1537,32 @@ static int mci_startup_mmc(struct mci *mci)
>  		host->timing = MMC_TIMING_MMC_HS;
>  	}
>  
> -	mci_set_clock(mci, mci->tran_speed);
> +	if (IS_ENABLED(CONFIG_MCI_TUNING)) {
> +		/*
> +		 * Select timing interface
> +		 */
> +		ret = mmc_select_timing(mci);
> +		if (ret)
> +			return ret;
>  
> -	/* find out maximum bus width and then try DDR if supported */
> -	ret = mci_mmc_select_bus_width(mci);
> -	if (ret > MMC_BUS_WIDTH_1 && mci->tran_speed == 52000000)
> -		ret = mci_mmc_select_hs_ddr(mci);
> +		if (mmc_card_hs200(mci))
> +			ret = mmc_hs200_tuning(mci);
> +	}
>  
> -	if (ret < 0) {
> -		dev_warn(&mci->dev, "Changing MMC bus width failed: %d\n", ret);
> -		return ret;
> +	if (ret || !IS_ENABLED(CONFIG_MCI_TUNING)) {

As mentioned above, this duplicates code and precludes use of DDR52 when CONFIG_MCI_TUNING
is enabled.

> +		mci_set_clock(mci, mci->tran_speed);
> +
> +		/* find out maximum bus width and then try DDR if supported */
> +		ret = mci_mmc_select_bus_width(mci);
> +		if (ret > MMC_BUS_WIDTH_1 && mci->tran_speed == 52000000)
> +			ret = mci_mmc_select_hs_ddr(mci);
> +
> +		if (ret < 0) {
> +			dev_warn(&mci->dev, "Changing MMC bus width failed: %d\n", ret);
> +		}
>  	}
>  
> -	return 0;
> +	return ret;
>  }
>  
>  /**
> @@ -1756,6 +1990,8 @@ static const char *mci_timing_tostr(unsigned timing)
>  		return "SD HS";
>  	case MMC_TIMING_MMC_DDR52:
>  		return "MMC DDR52";
> +	case MMC_TIMING_MMC_HS200:
> +		return "HS200";
>  	default:
>  		return "unknown"; /* shouldn't happen */
>  	}
> diff --git a/include/mci.h b/include/mci.h
> index ed2967c889..734e1239fb 100644
> --- a/include/mci.h
> +++ b/include/mci.h
> @@ -82,6 +82,8 @@
>  #define MMC_CMD_SET_BLOCKLEN		16
>  #define MMC_CMD_READ_SINGLE_BLOCK	17
>  #define MMC_CMD_READ_MULTIPLE_BLOCK	18
> +#define MMC_SEND_TUNING_BLOCK		19   /* adtc R1  */
> +#define MMC_SEND_TUNING_BLOCK_HS200	21   /* adtc R1  */
>  #define MMC_CMD_WRITE_SINGLE_BLOCK	24
>  #define MMC_CMD_WRITE_MULTIPLE_BLOCK	25
>  #define MMC_CMD_APP_CMD			55
> @@ -293,8 +295,8 @@
>  #define EXT_CSD_CARD_TYPE_MASK		0x3f
>  #define EXT_CSD_CARD_TYPE_26		(1<<0)	/* Card can run at 26MHz */
>  #define EXT_CSD_CARD_TYPE_52		(1<<1)	/* Card can run at 52MHz */
> -#define EXT_CSD_CARD_TYPE_HS		(EXT_CSD_CARD_TYPE_HS_26 |	\
> -					 EXT_CSD_CARD_TYPE_HS_52)
> +#define EXT_CSD_CARD_TYPE_HS		(EXT_CSD_CARD_TYPE_26 |	\
> +					 EXT_CSD_CARD_TYPE_52)
>  #define EXT_CSD_CARD_TYPE_DDR_1_8V	(1<<2)	/* Card can run at 52MHz */
>  						/* DDR mode @1.8V or 3V I/O */
>  #define EXT_CSD_CARD_TYPE_DDR_1_2V	(1<<3)	/* Card can run at 52MHz */
> @@ -330,6 +332,12 @@
>  #define EXT_CSD_DDR_BUS_WIDTH_8	6	/* Card is in 8 bit DDR mode */
>  #define EXT_CSD_DDR_FLAG	BIT(2)	/* Flag for DDR mode */
>  
> +#define EXT_CSD_TIMING_BC	0	/* Backwards compatility */
> +#define EXT_CSD_TIMING_HS	1	/* High speed */
> +#define EXT_CSD_TIMING_HS200	2	/* HS200 */
> +#define EXT_CSD_TIMING_HS400	3	/* HS400 */
> +#define EXT_CSD_DRV_STR_SHIFT	4	/* Driver Strength shift */
> +
>  #define R1_ILLEGAL_COMMAND		(1 << 22)
>  #define R1_STATUS(x)			(x & 0xFFF9A000)
>  #define R1_CURRENT_STATE(x)		((x & 0x00001E00) >> 9)	/* sx, b (4 bits) */
> @@ -503,6 +511,8 @@ struct mci_host {
>  	unsigned clock;		/**< Current clock used to talk to the card */
>  	enum mci_bus_width bus_width;	/**< used data bus width to the card */
>  	enum mci_timing timing;	/**< used timing specification to the card */
> +	unsigned hs_max_dtr;
> +	unsigned hs200_max_dtr;
>  	unsigned max_req_size;
>  	unsigned dsr_val;	/**< optional dsr value */
>  	int use_dsr;		/**< optional dsr usage flag */
> @@ -521,6 +531,9 @@ struct mci_host {
>  	int (*card_present)(struct mci_host *);
>  	/** check if a card is write protected */
>  	int (*card_write_protected)(struct mci_host *);
> +	/* The tuning command opcode value is different for SD and eMMC cards */
> +	int (*execute_tuning)(struct mci_host *, u32);
> +	int (*platform_execute_tuning)(struct mci_host *host, u32 opcode);

In Linux, this is a member of struct sdhci_ops, which in barebox would be struct sdhci.
Adding in here is out-of-place.

>  };
>  
>  #define MMC_NUM_BOOT_PARTITION	2
> @@ -603,4 +616,40 @@ static inline struct mci *mci_get_device_by_devpath(const char *devpath)
>  	return mci_get_device_by_name(devpath_to_name(devpath));
>  }
>  
> +#define MMC_HIGH_26_MAX_DTR	26000000
> +#define MMC_HIGH_52_MAX_DTR	52000000
> +#define MMC_HIGH_DDR_MAX_DTR	52000000
> +#define MMC_HS200_MAX_DTR	200000000
> +
> +static inline int mmc_card_hs(struct mci *mci)
> +{
> +	return mci->host->timing == MMC_TIMING_SD_HS ||
> +		mci->host->timing == MMC_TIMING_MMC_HS;
> +}
> +
> +#ifdef CONFIG_MCI_TUNING
> +/*
> + * Execute tuning sequence to seek the proper bus operating
> + * conditions for HS200 and HS400, which sends CMD21 to the device.
> + */
> +int mmc_hs200_tuning(struct mci *mci);
> +int mci_execute_tuning(struct mci *mci);
> +int mci_send_abort_tuning(struct mci *mci, u32 opcode);
> +int mmc_select_timing(struct mci *mci);
> +#else
> +static inline int mmc_hs200_tuning(struct mci *mci)
> +{
> +	return -ENOSYS;
> +}
> +static inline int mmc_select_timing(struct mci *mci)
> +{
> +	return -ENOSYS;
> +}
> +#endif
> +
> +static inline bool mmc_card_hs200(struct mci *mci)
> +{
> +	return mci->host->timing == MMC_TIMING_MMC_HS200;
> +}

You can drop this once the #ifdef in the source is removed.

Cheers,
Ahmad

> +
>  #endif /* _MCI_H_ */
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



