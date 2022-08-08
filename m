Delivery-date: Mon, 08 Aug 2022 15:44:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL33i-00GE7a-5y
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 15:44:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL33i-0004qE-Oy
	for lore@pengutronix.de; Mon, 08 Aug 2022 15:44:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DQpqQylW2umbt1BbkyZgksdJEmWezj3fDllBnld/fsg=; b=YFA5IVO+q5jp872RGl7C8sGSGC
	MGulrvePMWfGVebHX4DsZ2QSPdXp8oEWz4eW7AGbJrPSoQMOpOZkEtskYw/X/YwfleRm0to1ZnMpQ
	Z4/5ukAQ608UbDXDofDXH0KsOS9iiMP3HNpELIVorJy2OgP9sOus9cDgTkW6ztOmOernmeEBCxtFj
	qDz//JJRUZilUDX6dJbePUTq83emfZv/EdKrWe8GwvZgGR5Xx5F7f9PmiBaFoIzneKYOXA0glx6Ak
	83aIP9oVhk3U653cBCLfivTmvkikPKsF/7iGV0YTQIdUhoGjs4+wNRi6YCXFU3umyd1QSBbbILp0W
	yWH9l/Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL32S-00EAgH-VP; Mon, 08 Aug 2022 13:43:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL32N-00EAez-Om
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 13:43:22 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oL32M-0004kd-6C; Mon, 08 Aug 2022 15:43:18 +0200
Message-ID: <c8b16aab-e4a1-3ed3-1502-ac5e16884311@pengutronix.de>
Date: Mon, 8 Aug 2022 15:43:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20220725115856.1288819-1-a.fatoum@pengutronix.de>
 <20220808134048.GS31528@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220808134048.GS31528@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_064319_834270_573589A8 
X-CRM114-Status: GOOD (  27.66  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] mci: add new MCI_BROKEN_CD option for testing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 08.08.22 15:40, Sascha Hauer wrote:
> On Mon, Jul 25, 2022 at 01:58:56PM +0200, Ahmad Fatoum wrote:
>> In remote labs co-located with other hardware, we've observed card
>> detect levers of different boards to sporadically fail to detect
>> the card, e.g. because the cable on the usbsdmux was yanked around
>> by accident. When this happens, barebox usually boots up normally as
>> the card detect is ignored and then Linux waits indefinitely for
>> the card-detect to turn active. Add a new config option that can be
>> enabled to avoid these issues altogether.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>> v1 -> v2:
>>   - use early exit instead of if-else
>>   - don't fail mci_card_probe if of_register_fixup fails
>> ---
>>  drivers/mci/Kconfig    | 15 +++++++++++++++
>>  drivers/mci/mci-core.c | 36 ++++++++++++++++++++++++++++++++----
>>  2 files changed, 47 insertions(+), 4 deletions(-)
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
>> index 82e2f82f5377..4db2253c3a80 100644
>> --- a/drivers/mci/mci-core.c
>> +++ b/drivers/mci/mci-core.c
>> @@ -1727,6 +1727,27 @@ static int mci_register_partition(struct mci_part *part)
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
>> @@ -1737,10 +1758,13 @@ static int mci_card_probe(struct mci *mci)
>>  	struct mci_host *host = mci->host;
>>  	int i, rc, disknum, ret;
>>  
>> -	if (host->card_present && !host->card_present(host) &&
>> -	    !host->non_removable) {
>> -		dev_err(&mci->dev, "no card inserted\n");
>> -		return -ENODEV;
>> +	if (host->card_present && !host->card_present(host) && !host->non_removable) {
>> +		if (!IS_ENABLED(CONFIG_MCI_BROKEN_CD)) {
>> +			dev_err(&mci->dev, "no card inserted\n");
>> +			return -ENODEV;
>> +		}
>> +
>> +		dev_info(&mci->dev, "no card inserted (ignoring)\n");
>>  	}
>>  
>>  	ret = regulator_enable(host->supply);
>> @@ -1818,6 +1842,10 @@ static int mci_card_probe(struct mci *mci)
>>  		}
>>  	}
>>  
>> +	if (IS_ENABLED(CONFIG_MCI_BROKEN_CD) && !host->no_sd &&
>> +	    dev_of_node(host->hw_dev))
>> +		of_register_fixup(of_broken_cd_fixup, host->hw_dev);
> 
> This fixup is only registered when the card is probed, i.e. when it's
> used in barebox. Shouldn't it be registered in mci_register() instead?

This is intentional. We only know that cards barebox successfully probed
are indeed available.

Cheers,
Ahmad

> 
> Sascha
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


