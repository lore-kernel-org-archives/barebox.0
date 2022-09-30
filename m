Delivery-date: Fri, 30 Sep 2022 16:30:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeH2I-001UPM-P5
	for lore@lore.pengutronix.de; Fri, 30 Sep 2022 16:30:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeH2H-0005h1-Gb
	for lore@pengutronix.de; Fri, 30 Sep 2022 16:30:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p4lF/xU2Cw7Bz+aYBKwrESTH4u8JOplXzdbiHjAZKVc=; b=O3WaIhC8j09MjTNpU6SnkWTiwe
	B2bAdpWlQ8L/x1IgoXUDFvzFqyoxA3isf7w0v8M7rqGueL+yF6UCJsw46nnxqVEfPewhxk8YOHH4k
	8rdzoJIgqJZRIFzt5DVW1Cbs/blgHE98ifQUIU8CPHMVUgV6w1I2KXxtp0LQiT3I83YZIIwrLTBaV
	Zhdi99KHT9s/qTHbcJ3oTYJVgfVi4MuOGnjNkhuXoRWP0njnj+lv7SWUnZveQH9QA/L2T7iknfK3D
	laAqBxEhIWOGMlfLqnPidJfucydRDZ+u8c/gkvkytxtc+GwyEzxjGCYl+jIHzpqyqbFdlf2KCpZx2
	vZnzaTEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeH0a-009lrN-VE; Fri, 30 Sep 2022 14:28:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeGqf-009fio-1E
	for barebox@lists.infradead.org; Fri, 30 Sep 2022 14:18:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oeGqb-00037O-IR; Fri, 30 Sep 2022 16:18:37 +0200
Message-ID: <e6743279-3842-5595-66bc-4b2d793ab8ba@pengutronix.de>
Date: Fri, 30 Sep 2022 15:18:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20220930111940.1323140-1-a.fatoum@pengutronix.de>
 <20220930122414.GZ986@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220930122414.GZ986@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_071841_118078_3D0AA6DD 
X-CRM114-Status: GOOD (  21.89  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] mci: bcm2835: reset host controller on barebox
 shutdown
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 30.09.22 13:24, Sascha Hauer wrote:
> On Fri, Sep 30, 2022 at 01:19:40PM +0200, Ahmad Fatoum wrote:
>> We don't usually disable MMC controllers on barebox shutdown, because
>> they don't DMA on their own, unlike e.g. network controllers.
>>
>> Booting Linux v5.17.0 on a Raspberry Pi 4 in 32-bit mode still has the
>> MMC host controller driver complain:
>>
>>   [   22.464887] mmc1: Got data interrupt 0x00000002 even though no
>>   			data operation was in progress.
>>
>> Fix this by resetting the SDHCI once barebox is done with it.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/mci/mci-bcm2835.c | 12 ++++++++++++
>>  1 file changed, 12 insertions(+)
> 
> Applied, thanks

Please drop again. The warning is spurious and it just happened to not
show up in my testing runs afterwards. I am looking into a proper fix
and will let it do more reboot cycles to make sure issue is indeed
resolved.

> 
> Sascha
> 
>>
>> diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
>> index f092156f9a83..c5b226ba033c 100644
>> --- a/drivers/mci/mci-bcm2835.c
>> +++ b/drivers/mci/mci-bcm2835.c
>> @@ -385,6 +385,8 @@ static int bcm2835_mci_probe(struct device_d *hw_dev)
>>  	host->sdhci.read32 = bcm2835_sdhci_read32;
>>  	host->sdhci.write32 = bcm2835_sdhci_write32;
>>  
>> +	hw_dev->priv = host;
>> +
>>  	mci_of_parse(&host->mci);
>>  
>>  	iores = dev_request_mem_resource(hw_dev, 0);
>> @@ -420,6 +422,15 @@ static int bcm2835_mci_probe(struct device_d *hw_dev)
>>  	return mci_register(&host->mci);
>>  }
>>  
>> +static void bcm2835_mci_remove(struct device_d *dev)
>> +{
>> +	struct bcm2835_mci_host *host = dev->priv;
>> +
>> +	sdhci_write32(&host->sdhci,
>> +		      SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
>> +		      0x00);
>> +}
>> +
>>  static __maybe_unused struct of_device_id bcm2835_mci_compatible[] = {
>>  	{
>>  		.compatible = "brcm,bcm2835-sdhci",
>> @@ -433,6 +444,7 @@ static __maybe_unused struct of_device_id bcm2835_mci_compatible[] = {
>>  static struct driver_d bcm2835_mci_driver = {
>>  	.name = "bcm2835_mci",
>>  	.probe = bcm2835_mci_probe,
>> +	.remove = bcm2835_mci_remove,
>>  	.of_compatible = DRV_OF_COMPAT(bcm2835_mci_compatible),
>>  };
>>  
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


