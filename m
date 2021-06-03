Delivery-date: Thu, 03 Jun 2021 08:30:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1logsB-0001Jc-1g
	for lore@lore.pengutronix.de; Thu, 03 Jun 2021 08:30:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1logs9-0000Qs-Lv
	for lore@pengutronix.de; Thu, 03 Jun 2021 08:30:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=T2glQJkQ8lnj7mxs5oNoeZJeuGUx4Gu+b4NQQpnPLRw=; b=5EIBT0A7B+XvdVRnlYd9YdBedJ
	f01TUgPsQ97mISI01sFpD1bciKy3b+/nQUgVvQp2vx2ZwQrwRr3Vphgd6Kvkzg/6CcG8N4vN8WrC+
	HRwW2T/iRbgNwuyPnQrqtQ1a6JmYJSZQJgsQPGU7D6HfSymTeaNhCvgq9aqWgIXUm0JYnimZ1mQ69
	3TEFLxSVkVzOKZ11Oh4Iog3bzKepxI7xaDkWElAbSQ0DcUvqXBfyUK2TFpHAdMeI1PLJeSzlNdiUm
	Pbm+bAw4x65caTnxKRxGJpFDSDZXeY0tEaFsX1RlUk3QPOz3CpzJ+m70mKy4DlfL3MPqEZJgROu2o
	qinD7Ypw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1logqf-007KJt-N7; Thu, 03 Jun 2021 06:28:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1logqZ-007KJQ-Ah
 for barebox@lists.infradead.org; Thu, 03 Jun 2021 06:28:53 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1logqX-0000A6-0V; Thu, 03 Jun 2021 08:28:49 +0200
To: barebox@lists.infradead.org, mgr@pengutronix.de, ore@pengutronix.de
References: <20210602102524.20034-1-a.fatoum@pengutronix.de>
 <20210602102524.20034-2-a.fatoum@pengutronix.de>
 <YLhp/edqhhkc5hEp@ada-deb-carambola.ifak-system.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <0b45648b-cbc9-cc72-6004-f82a4909153f@pengutronix.de>
Date: Thu, 3 Jun 2021 08:28:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <YLhp/edqhhkc5hEp@ada-deb-carambola.ifak-system.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_232851_571391_690C5C3B 
X-CRM114-Status: GOOD (  40.62  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/3] ARM: at91: mmc-xload: allow overriding card capacity
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hei hei Alex,

On 03.06.21 07:34, Alexander Dahl wrote:
> Am Wed, Jun 02, 2021 at 12:25:23PM +0200 schrieb Ahmad Fatoum:
>> The PBL MMC driver works with the assumption that the BootROM has left
>> the SD-Card in transfer mode. There seems to be no definitive way
>> to find out whether a running card is high capacity (> 2G) or not,
>> but we need this info when reading, because default capacities accept
>> their read offset in bytes while high capacity deal in 512 byte blocks.
> 
> I'm a little surprised there's not.  Once like ten years ago I had to
> write a SD card driver for a small microcontroller.  In the firmware I
> switched to high capacity mode just based on the Card Capacity Status
> (CCS) bit in the Operation Conditions Register (OCR) of the SD card.
> Got that after sending advanced command 41 (send op cond) to the card.

barebox proper does that in sd_send_op_cond() as well.

> Not sure if it's that easy, or if that command was only sent under
> certain conditions, but I can not remember just guessing high capacity
> based on some heuristics nor hard code it. 

When you build at91_multi_defconfig, multiple images are generated, currently:

barebox-at91sam9x5ek.img
barebox-at91sam9263ek.img
barebox-microchip-ksz9477-evb.img
barebox-microchip-ksz9477-evb-xload-mmc.img
barebox-sama5d27-som1-ek.img
barebox-sama5d27-som1-ek-xload-mmc.img
barebox-groboards-sama5d27-giantboard.img
barebox-groboards-sama5d27-giantboard-xload-mmc.img
barebox-skov-arm9cpu.img

This patch here is for the xload-mmc.img's, which result from the barebox
prebootloader. The PBL sets up SDRAM and chainloads barebox proper from the
same boot medium that itself came from. Because of this limited scope, it can
reuse here the SD-card setup done by the BootROM. The BootROM leaves the
SD-Card in transfer mode, allowing the PBL to directly read blocks off the
SD-Card without a full MMC/SD-Card driver.

> We certainly used low
> capacity (like 32 MB for example) and high capacity cards (4G or more)
> with that system.
> 
> You probably already looked for a reliable way to detect this.  I was
> just curious why this needs to be hardcoded.

It's been a while since I wrote the sama5d27 PBL support (which the
sama5d3 support I am patching here is based on), but I recall that
the send op cond did not work in transfer mode, the card must be sent
into idle first, i.e. reset. I'd be happy if there happens to be indeed
a way to deduce high capacity mode without resetting and having to repeat
the SD-Card setup in the first boot stage.

There are of course alternatives to this:
  - build barebox twice with different configs for first and second stage:
    There is already code for this (chainload code that uses barebox proper
    driver that fully re-initializes card). The first stage config needs to
    be small to fit into SRAM, so we can no longer generate both stages from
    the same multi-image config as we already do.

  - provide full MMC support in PBL:
    The objective so far was to keep PBL code to the bare minimum. Doing
    full MMC setup there violates that.


AFAIK, all barebox platforms, except for i.MX, went for the first alternative
of having multiple configs. barebox on i.MX doesn't have this issue, because
it reads barebox from offset 0 of the SD/MMC, which works equally well whether
booting off default or high capacity cards.

I like how the i.MX defconfig generates more than a hundred images in one go and
wanted AT91 to have something similar, but the fact that FAT needs to seek around
(offsets != 0) complicates this.
The trade off I took then was assuming high capacity cards and postpone the decision
on how to deal with default capacity cards in PBL into the future.

Cheers,
Ahmad

> 
> Have a nice day
> Alex
> 
>> For i.MX, this is elegantly solved by just reading from sector 0.
>> For AT91, we chainload barebox from FAT, so we need to seek around.
>> So far, we just had an assumption buried in the driver that we are
>> always highcapacity.
>>
>> Export a knob to change this, so we can move the hardcoding from
>> driver to board code, where it's more prominent. This is done
>> in a follow-up commit.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  arch/arm/mach-at91/include/mach/xload.h | 3 +++
>>  drivers/mci/atmel-sdhci-pbl.c           | 8 +++++++-
>>  drivers/mci/atmel_mci_pbl.c             | 8 +++++++-
>>  3 files changed, 17 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm/mach-at91/include/mach/xload.h b/arch/arm/mach-at91/include/mach/xload.h
>> index bbc70af2108a..038f32554568 100644
>> --- a/arch/arm/mach-at91/include/mach/xload.h
>> +++ b/arch/arm/mach-at91/include/mach/xload.h
>> @@ -12,4 +12,7 @@ int at91_sdhci_bio_init(struct pbl_bio *bio, void __iomem *base);
>>  int at91_mci_bio_init(struct pbl_bio *bio, void __iomem *base,
>>  		      unsigned int clock, unsigned int slot);
>>  
>> +void at91_mci_set_highcapacity(struct pbl_bio *bio, bool highcap);
>> +void at91_sdhci_set_highcapacity(struct pbl_bio *bio, bool highcap);
>> +
>>  #endif /* __MACH_XLOAD_H */
>> diff --git a/drivers/mci/atmel-sdhci-pbl.c b/drivers/mci/atmel-sdhci-pbl.c
>> index 626e4008fe85..317f26f8af0d 100644
>> --- a/drivers/mci/atmel-sdhci-pbl.c
>> +++ b/drivers/mci/atmel-sdhci-pbl.c
>> @@ -99,6 +99,12 @@ static int at91_sdhci_bio_read(struct pbl_bio *bio, off_t start,
>>  	return blocks_done;
>>  }
>>  
>> +void at91_sdhci_set_highcapacity(struct pbl_bio *bio, bool highcap)
>> +{
>> +	struct at91_sdhci_priv *priv = bio->priv;
>> +	priv->highcapacity_card = highcap;
>> +}
>> +
>>  static struct at91_sdhci_priv atmel_sdcard;
>>  
>>  int at91_sdhci_bio_init(struct pbl_bio *bio, void __iomem *base)
>> @@ -122,7 +128,7 @@ int at91_sdhci_bio_init(struct pbl_bio *bio, void __iomem *base)
>>  	ret = at91_sdhci_set_ios(host, &ios);
>>  
>>  	 // FIXME can we determine this without leaving SD transfer mode?
>> -	priv->highcapacity_card = 1;
>> +	at91_sdhci_set_highcapacity(bio, true);
>>  
>>  	return 0;
>>  }
>> diff --git a/drivers/mci/atmel_mci_pbl.c b/drivers/mci/atmel_mci_pbl.c
>> index 767d6f3ce2d7..82e45fd4e89e 100644
>> --- a/drivers/mci/atmel_mci_pbl.c
>> +++ b/drivers/mci/atmel_mci_pbl.c
>> @@ -82,6 +82,12 @@ static int at91_mci_bio_read(struct pbl_bio *bio, off_t start,
>>  	return blocks_done;
>>  }
>>  
>> +void at91_mci_set_highcapacity(struct pbl_bio *bio, bool highcap)
>> +{
>> +	struct atmel_mci_priv *priv = bio->priv;
>> +	priv->highcapacity_card = highcap;
>> +}
>> +
>>  int at91_mci_bio_init(struct pbl_bio *bio, void __iomem *base,
>>  		      unsigned int clock, unsigned int slot)
>>  {
>> @@ -110,7 +116,7 @@ int at91_mci_bio_init(struct pbl_bio *bio, void __iomem *base,
>>  
>>  	atmci_common_set_ios(host, &ios);
>>  
>> -	priv->highcapacity_card = 1;
>> +	at91_mci_set_highcapacity(bio, true);
>>  
>>  	return 0;
>>  }
>> -- 
>> 2.29.2
>>
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

