Delivery-date: Wed, 20 Jul 2022 11:01:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oE5aN-00FQPe-LK
	for lore@lore.pengutronix.de; Wed, 20 Jul 2022 11:01:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oE5aK-0001fm-SY
	for lore@pengutronix.de; Wed, 20 Jul 2022 11:01:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r/yUkadug03qTS7/9UskRdNsQW8nkwTzTvcrMabC91A=; b=J2uEXTSnSdO6N2bDpDRDyUNndM
	VUo7RdXopUFrgj2AbtI2ZlMvVmC7tYN///SNDHqyoPpWKnc+q8AJeKFYVHey8pd8gIqc8Sk/abwEC
	rcuO3pkdM7P0d56Uf5cxelPXOrSoNO9uG5EgWVYNU1XROG9PFNgUVyb8WEAfncjLdei39tg86voVr
	gRh6C3RUWOTILkuA+94pup9dlPly0qCKCUloZv1nDgqJFIHpU0XAe9oX7cV3VoiMngF6xjF8BymW4
	tjVARU4nh0k2wNPOxaclzq61jdBIbW8PP7UPCkjTOdIKKBUwbOe8z1NoagzCvEKJb8ykoH1QJ8U8w
	vw+hMz3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE5Yj-002wtX-Fg; Wed, 20 Jul 2022 08:59:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE5Xi-002vqQ-G4
	for barebox@lists.infradead.org; Wed, 20 Jul 2022 08:58:56 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oE5Xf-00015x-Ad; Wed, 20 Jul 2022 10:58:51 +0200
Message-ID: <10f95445-50d5-2cf8-ec2a-c85198c70ef4@pengutronix.de>
Date: Wed, 20 Jul 2022 10:58:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20220720041525.3454022-1-a.fatoum@pengutronix.de>
 <20220720082326.jxs7rawn3nfaj72q@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220720082326.jxs7rawn3nfaj72q@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220720_015854_613716_6A829BBA 
X-CRM114-Status: GOOD (  31.38  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mci: add new MCI_BROKEN_CD option for testing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Marco,

On 20.07.22 10:23, Marco Felsch wrote:
> Hi Ahmad,
> 
> On 22-07-20, Ahmad Fatoum wrote:
>> In remote labs co-located with other hardware, we've observed card
>> detect levers of different boards to sporadically fail to detect
>> the card, e.g. because the cable on the usbsdmux was yanked around
>> by accident. When this happens, barebox usually boots up normally as
>> the card detect is ignored and then Linux waits indefinitely for
>> the card-detect to turn active. Add a new config option that can be
>> enabled to avoid these issues altogether.
> 
> what do you think about to have a device property instead of a compile
> time depend behaviour? One use case could be a field return customer
> board and the customer didn't enabled this Kconfig option since he had
> no issues. This board can't be reprogrammed because it is secure locked.
> It would be cool to have your live-patching on such boards.

I thought about making it a device parameter, but decided against it.
It's IMO a very specific use case that most don't care for and that
can be scripted if needed, so no need to bloat all configurations
that use a SD card.

As for your particular example, just bend the lever, so it always touches
ground or solder it so it has no other choice. :)

Cheers,
Ahmad


> 
> Regards,
>   Marco
> 
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/mci/Kconfig    | 15 +++++++++++++++
>>  drivers/mci/mci-core.c | 35 +++++++++++++++++++++++++++++++----
>>  2 files changed, 46 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
>> index 21d53c0c3f0b..651e59259790 100644
>> --- a/drivers/mci/Kconfig
>> +++ b/drivers/mci/Kconfig
>> @@ -56,6 +56,21 @@ config MCI_MMC_GPP_PARTITIONS
>>  	  Note: by default, 'MMC' devices have no 'general purpose partitions',
>>  	  it requires a special one-time configuration step to enable them.
>>  
>> +config MCI_BROKEN_CD
>> +	bool "ignore card-detect pin on boot and in OS"
>> +	help
>> +	  Say 'y' here to have barebox unconditionally ignore the
>> +	  card-detect pin for its own operation and manipulate the
>> +	  kernel DT, so all detected MCI cards are polled instead
>> +	  of expecting the card detect lever to behave correctly.
>> +	  If you need more fine grained control use of_property
>> +	  in an init script:
>> +
>> +	    of_property -fd mmc0 cd-gpios
>> +	    of_property -fs mmc0 broken-cd
>> +
>> +	  If unsure, say 'n' here.
>> +
>>  comment "--- MCI host drivers ---"
>>  
>>  config MCI_DW
>> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
>> index b8f71e15986e..6018391e1abb 100644
>> --- a/drivers/mci/mci-core.c
>> +++ b/drivers/mci/mci-core.c
>> @@ -1739,6 +1739,27 @@ static int mci_register_partition(struct mci_part *part)
>>  	return 0;
>>  }
>>  
>> +static int of_broken_cd_fixup(struct device_node *root, void *ctx)
>> +{
>> +	struct device_d *hw_dev = ctx;
>> +	struct device_node *np;
>> +	char *name;
>> +
>> +	name = of_get_reproducible_name(hw_dev->device_node);
>> +	np = of_find_node_by_reproducible_name(root, name);
>> +	free(name);
>> +	if (!np) {
>> +		dev_warn(hw_dev, "Cannot find nodepath %s, cannot fixup\n",
>> +			 hw_dev->device_node->full_name);
>> +		return -EINVAL;
>> +	}
>> +
>> +	of_property_write_bool(np, "cd-gpios", false);
>> +	of_property_write_bool(np, "broken-cd", true);
>> +
>> +	return 0;
>> +}
>> +
>>  /**
>>   * Probe an MCI card at the given host interface
>>   * @param mci MCI device instance
>> @@ -1750,10 +1771,13 @@ static int mci_card_probe(struct mci *mci)
>>  	int i, rc, disknum, ret;
>>  	bool has_bootpart = false;
>>  
>> -	if (host->card_present && !host->card_present(host) &&
>> -	    !host->non_removable) {
>> -		dev_err(&mci->dev, "no card inserted\n");
>> -		return -ENODEV;
>> +	if (host->card_present && !host->card_present(host) && !host->non_removable) {
>> +		if (IS_ENABLED(CONFIG_MCI_BROKEN_CD)) {
>> +			dev_info(&mci->dev, "no card inserted (ignoring)\n");
>> +		} else {
>> +			dev_err(&mci->dev, "no card inserted\n");
>> +			return -ENODEV;
>> +		}
>>  	}
>>  
>>  	ret = regulator_enable(host->supply);
>> @@ -1839,6 +1863,9 @@ static int mci_card_probe(struct mci *mci)
>>  					   &mci->boot_ack_enable, mci);
>>  	}
>>  
>> +	if (IS_ENABLED(CONFIG_MCI_BROKEN_CD) && !host->no_sd && dev_of_node(host->hw_dev))
>> +		return of_register_fixup(of_broken_cd_fixup, host->hw_dev);
>> +
>>  	dev_dbg(&mci->dev, "SD Card successfully added\n");
>>  
>>  on_error:
>> -- 
>> 2.30.2
>>
>>
>>
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


