Delivery-date: Tue, 18 Apr 2023 09:37:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pofuV-007PHJ-UA
	for lore@lore.pengutronix.de; Tue, 18 Apr 2023 09:37:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pofuV-0004vf-Jv
	for lore@pengutronix.de; Tue, 18 Apr 2023 09:37:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:Subject:From:References:Cc:To:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZdrYcu9Edh+cRc9yz3TRym3ccJ8KAA9H8j0fPKCzg28=; b=YnvQ5rRaA3pk1RWB02sV89N0YX
	RB0TtZsKhwyw65t7Yn+J1PAJWn7L2YGZ9jVBpy+UQW+VZirNlSrA2OCl2mVvi5D9FzsBozsPxruNQ
	o3Txutq+nvrDa3epVAPdAXl9yGOyIVKnMJybBStSrKxPfamtaVbuVuSm7sqs/ghQ5MQM2at/5Ityx
	9lvQS5euXEK2JNLkZ/d5iKD1DFvS2azd8qlmslIrtcp4OvYwfCz2TCOTn+fFoIMUwp6KrcjwpTgNW
	X4gcad1AUrCoriwaYs+obrKy7N++exs8QyJZdR7uPYQSF52UO2VdAIABL+HsnJQQ/JMp1M4DRHRKi
	Y+48lhew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poftK-0018yz-2t;
	Tue, 18 Apr 2023 07:36:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poftE-0018yU-0L
	for barebox@lists.infradead.org;
	Tue, 18 Apr 2023 07:36:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1poftA-0004lW-N2; Tue, 18 Apr 2023 09:36:32 +0200
Message-ID: <8bdc6be0-497a-8442-4694-5024a797fd64@pengutronix.de>
Date: Tue, 18 Apr 2023 09:36:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230417164255.1070012-1-a.fatoum@pengutronix.de>
 <20230418072712.pijqhlrlcyrkzoiy@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230418072712.pijqhlrlcyrkzoiy@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_003638_803980_0A2ACE8C 
X-CRM114-Status: GOOD (  30.33  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] mci: add eMMC DDR52 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Marco,

On 18.04.23 09:27, Marco Felsch wrote:
> Hi Ahmad,
> 
> On 23-04-17, Ahmad Fatoum wrote:
>> The maximum card frequency that can be configured by barebox currently
>> is 50MHz for SD and 52MHz for eMMC. Higher speed modes require runtime
>> voltage switching or tuning sequences, which are not yet implemented.
>>
>> Only exception is eMMC's DDR52: This mode was first introduced with
>> MMC 4.4 and can be used even at 3.3V.
> 
> Nice :)
> 
>> This commit adds DDR52 support to the core. This introduces no functional
>> change, because host controllers must opt-in by setting the appropriate
>> host capabilities.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/mci/mci-core.c | 54 +++++++++++++++++++++++++++++++++++-------
>>  include/mci.h          | 19 +++++++++++++++
>>  2 files changed, 64 insertions(+), 9 deletions(-)
>>
>> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
>> index f647cae8203b..86f468edfea6 100644
>> --- a/drivers/mci/mci-core.c
>> +++ b/drivers/mci/mci-core.c
>> @@ -135,6 +135,9 @@ static int mci_set_blocklen(struct mci *mci, unsigned len)
>>  {
>>  	struct mci_cmd cmd;
>>  
>> +	if (mci->host->timing == MMC_TIMING_MMC_DDR52)
>> +		return 0;
>> +
>>  	mci_setup_cmd(&cmd, MMC_CMD_SET_BLOCKLEN, len, MMC_RSP_R1);
>>  	return mci_send_cmd(mci, &cmd, NULL);
>>  }
>> @@ -649,11 +652,15 @@ static int mmc_change_freq(struct mci *mci)
>>  		return 0;
>>  	}
>>  
>> -	/* High Speed is set, there are two types: 52MHz and 26MHz */
>> -	if (cardtype & EXT_CSD_CARD_TYPE_52)
>> -		mci->card_caps |= MMC_CAP_MMC_HIGHSPEED_52MHZ | MMC_CAP_MMC_HIGHSPEED;
>> -	else
>> -		mci->card_caps |= MMC_CAP_MMC_HIGHSPEED;
>> +	mci->card_caps |= MMC_CAP_MMC_HIGHSPEED;
>> +
>> +	/* High Speed is set, there are three types: 26MHz, 52MHz, 52MHz DDR */
>> +	if (cardtype & EXT_CSD_CARD_TYPE_52) {
>> +		mci->card_caps |= MMC_CAP_MMC_HIGHSPEED_52MHZ;
>> +
>> +		if (cardtype & EXT_CSD_CARD_TYPE_DDR_1_8V)
>> +			mci->card_caps |= MMC_CAP_MMC_3_3V_DDR | MMC_CAP_MMC_1_8V_DDR;
>> +	}
>>  
>>  	if (IS_ENABLED(CONFIG_MCI_MMC_BOOT_PARTITIONS) &&
>>  			mci->ext_csd[EXT_CSD_REV] >= 3 && mci->ext_csd[EXT_CSD_BOOT_SIZE_MULT]) {
>> @@ -1170,15 +1177,20 @@ static int mci_startup_sd(struct mci *mci)
>>  static int mci_startup_mmc(struct mci *mci)
>>  {
>>  	struct mci_host *host = mci->host;
>> +	enum mci_timing timing_orig;
>>  	int err;
>>  	int idx = 0;
>>  	static unsigned ext_csd_bits[] = {
>>  		EXT_CSD_BUS_WIDTH_4,
>>  		EXT_CSD_BUS_WIDTH_8,
>> +		EXT_CSD_DDR_BUS_WIDTH_4,
>> +		EXT_CSD_DDR_BUS_WIDTH_8,
>>  	};
>>  	static unsigned bus_widths[] = {
>>  		MMC_BUS_WIDTH_4,
>>  		MMC_BUS_WIDTH_8,
>> +		MMC_BUS_WIDTH_4,
>> +		MMC_BUS_WIDTH_8,
> 
> This is duplicated or should it be MMC_DDR_BUS_WIDTH_4/8?

The trial sequence I had in mind originally was:

  DDR 8-bit -> DDR 4-bit -> SDR 8-bit -> SDR 4-bit

That's how U-Boot does it. I compared with Linux and there we have:

  SDR 8-bit -> SDR 4-bit and then depending on the result, either
  DDR 8-bit or DDR 4-bit

Given that DDR is not a 100% improvement in my testing, I should
rather do it like Linux does and prefer SDR 8-bit over DDR 4-bit.

I will do this for v2.

This also fixes a bug with the code: If host doesn't support 8-bit
MMC, we would still not test for 8-bit SDR, but would for 8-bit DDR.

>> @@ -1661,12 +1694,15 @@ static const char *mci_timing_tostr(unsigned timing)
>>  
>>  static void mci_print_caps(unsigned caps)
>>  {
>> -	printf("  capabilities: %s%s%s%s%s\n",
>> +	printf("  capabilities: %s%s%s%s%s%s%s%s\n",
>>  		caps & MMC_CAP_4_BIT_DATA ? "4bit " : "",
>>  		caps & MMC_CAP_8_BIT_DATA ? "8bit " : "",
>>  		caps & MMC_CAP_SD_HIGHSPEED ? "sd-hs " : "",
>>  		caps & MMC_CAP_MMC_HIGHSPEED ? "mmc-hs " : "",
>> -		caps & MMC_CAP_MMC_HIGHSPEED_52MHZ ? "mmc-52MHz " : "");
>> +		caps & MMC_CAP_MMC_HIGHSPEED_52MHZ ? "mmc-52MHz " : "",
>> +		caps & MMC_CAP_MMC_3_3V_DDR ? "ddr-3.3v " : "",
>> +		caps & MMC_CAP_MMC_1_8V_DDR ? "ddr-1.8v " : "",
>> +		caps & MMC_CAP_MMC_1_2V_DDR ? "ddr-1.2v " : "");
> 
> At the moment we only report what barebox does support, ddr-1.8v and
> ddr-1.2v isn't supported. Do we really want to report this?

DDR 1.8V on eMMC is not dynamically selected, but 1.2v is. So this
series works for both 3.3v and 1.8v. I don't see a problem with reporting
1.2v support for cards. No host will set this as long we don't have
voltage switching.

Cheers,
Ahmad

> 
> Regards,
>   Marco
> 
>>  }
>>  
>>  /**
>> diff --git a/include/mci.h b/include/mci.h
>> index d356f071f7f2..88712c35492e 100644
>> --- a/include/mci.h
>> +++ b/include/mci.h
>> @@ -51,6 +51,11 @@
>>  #define MMC_CAP_SD_HIGHSPEED		(1 << 3)
>>  #define MMC_CAP_MMC_HIGHSPEED		(1 << 4)
>>  #define MMC_CAP_MMC_HIGHSPEED_52MHZ	(1 << 5)
>> +#define MMC_CAP_MMC_3_3V_DDR		(1 << 7)	/* Host supports eMMC DDR 3.3V */
>> +#define MMC_CAP_MMC_1_8V_DDR		(1 << 8)	/* Host supports eMMC DDR 1.8V */
>> +#define MMC_CAP_MMC_1_2V_DDR		(1 << 9)	/* Host supports eMMC DDR 1.2V */
>> +#define MMC_CAP_DDR			(MMC_CAP_3_3V_DDR | MMC_CAP_1_8V_DDR | \
>> +					 MMC_CAP_1_2V_DDR)
>>  /* Mask of all caps for bus width */
>>  #define MMC_CAP_BIT_DATA_MASK		(MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA)
>>  
>> @@ -308,6 +313,7 @@
>>  #define EXT_CSD_BUS_WIDTH_8	2	/* Card is in 8 bit mode */
>>  #define EXT_CSD_DDR_BUS_WIDTH_4	5	/* Card is in 4 bit DDR mode */
>>  #define EXT_CSD_DDR_BUS_WIDTH_8	6	/* Card is in 8 bit DDR mode */
>> +#define EXT_CSD_DDR_FLAG	BIT(2)	/* Flag for DDR mode */
>>  
>>  #define R1_ILLEGAL_COMMAND		(1 << 22)
>>  #define R1_STATUS(x)			(x & 0xFFF9A000)
>> @@ -410,6 +416,19 @@ enum mci_timing {
>>  	MMC_TIMING_MMC_HS400	= 8,
>>  };
>>  
>> +static inline bool mci_timing_is_ddr(enum mci_timing timing)
>> +{
>> +	switch (timing) {
>> +	case MMC_TIMING_UHS_DDR50:
>> +	case MMC_TIMING_MMC_HS200:
>> +	case MMC_TIMING_MMC_DDR52:
>> +	case MMC_TIMING_MMC_HS400:
>> +		return true;
>> +	default:
>> +		return false;
>> +	}
>> +}
>> +
>>  struct mci_ios {
>>  	unsigned int	clock;			/* clock rate */
>>  
>> -- 
>> 2.39.2
>>
>>
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



