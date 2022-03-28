Delivery-date: Mon, 28 Mar 2022 11:50:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nYm0x-008rLy-NR
	for lore@lore.pengutronix.de; Mon, 28 Mar 2022 11:50:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nYm0z-0007ja-U7
	for lore@pengutronix.de; Mon, 28 Mar 2022 11:50:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fsx27WlgLTVwNXWRLEa8LbstkIqtNGcQfy0GtQ+pJ6c=; b=VEfeJjH96Uk/dW
	s5JA6DYhlwDpfzpAzOj4jSWs02LYru0yuD1HL8UH0iTbr+mQ5wWBims2DUkyanxr0iwaLjHdgS5go
	f/tOlBN9CkPz/l/NezrjwzS/BrCW+0hVPUFDuRKu+5DPwLquOTw35o20/oJvNVDKOCAWD2ag/b/LX
	n6AK5FsUZqoS0WXlAbQCW8tm3wv0VNyIeeanFAJ985L4xSBcp8G1hb219585IUNGbuYSGVsMyITuA
	ZaHeXIFkZbeN3Fi8cDJOE4h6Z0sjgVRY9/f9O3iF2Np15rdpi+jTTcbxzJQZGY9nc4j6fxwX3b74/
	4khLTBOBSkGjMGL6IgYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYlzh-0084Zn-7T; Mon, 28 Mar 2022 09:49:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYlzc-0084ZS-1Q
 for barebox@lists.infradead.org; Mon, 28 Mar 2022 09:48:57 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nYlza-0007VT-EL; Mon, 28 Mar 2022 11:48:54 +0200
Message-ID: <ae55929b-a6c3-1c3f-5b0b-a85054f1266c@pengutronix.de>
Date: Mon, 28 Mar 2022 11:48:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>, Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
References: <20220319072410.1310723-1-ahmad@a3f.at>
 <20220319072410.1310723-2-ahmad@a3f.at>
 <20220328094432.GR12181@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220328094432.GR12181@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_024856_142164_58363CDF 
X-CRM114-Status: GOOD (  22.87  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/4] mci: mci_spi: extend driver for device tree probing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 28.03.22 11:44, Sascha Hauer wrote:
> On Sat, Mar 19, 2022 at 08:24:08AM +0100, Ahmad Fatoum wrote:
>> Driver has been matched by name only so far, add optional support for
>> the device tree binding.
>>
>> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
>> ---
>>  drivers/mci/mci_spi.c | 31 +++++++++++++++++++++++++++++++
>>  1 file changed, 31 insertions(+)
> 
> Applied 2-4, thanks

Please drop patch 4 too as it would introduce a non-existent symbol
into the defconfig. I will resend both together after incorporating
your feedback.

Thanks for the review,
Ahmad

> 
> Sascha
> 
>>
>> diff --git a/drivers/mci/mci_spi.c b/drivers/mci/mci_spi.c
>> index ed3ddf890f7f..6ae2824eddc8 100644
>> --- a/drivers/mci/mci_spi.c
>> +++ b/drivers/mci/mci_spi.c
>> @@ -18,6 +18,8 @@
>>  #include <mci.h>
>>  #include <crc.h>
>>  #include <crc7.h>
>> +#include <of.h>
>> +#include <gpiod.h>
>>  
>>  #define to_spi_host(mci) container_of(mci, struct mmc_spi_host, mci)
>>  #define spi_setup(spi) spi->master->setup(spi)
>> @@ -47,6 +49,7 @@ struct mmc_spi_host {
>>  	struct mci_host	mci;
>>  	struct spi_device	*spi;
>>  	struct device_d	*dev;
>> +	int detect_pin;
>>  
>>  	/* for bulk data transfers */
>>  	struct spi_transfer	t_tx;
>> @@ -351,8 +354,23 @@ static int mmc_spi_init(struct mci_host *mci, struct device_d *mci_dev)
>>  	return 0;
>>  }
>>  
>> +static int spi_mci_card_present(struct mci_host *mci)
>> +{
>> +	struct mmc_spi_host	*host = to_spi_host(mci);
>> +	int			ret;
>> +
>> +	/* No gpio, assume card is present */
>> +	if (!gpio_is_valid(host->detect_pin))
>> +		return 1;
>> +
>> +	ret = gpio_get_value(host->detect_pin);
>> +
>> +	return ret == 0 ? 1 : 0;
>> +}
>> +
>>  static int spi_mci_probe(struct device_d *dev)
>>  {
>> +	struct device_node	*np = dev_of_node(dev);
>>  	struct spi_device	*spi = (struct spi_device *)dev->type_data;
>>  	struct mmc_spi_host	*host;
>>  	void			*ones;
>> @@ -362,6 +380,7 @@ static int spi_mci_probe(struct device_d *dev)
>>  	host->mci.send_cmd = mmc_spi_request;
>>  	host->mci.set_ios = mmc_spi_set_ios;
>>  	host->mci.init = mmc_spi_init;
>> +	host->mci.card_present = spi_mci_card_present;
>>  	host->mci.hw_dev = dev;
>>  
>>  	/* MMC and SD specs only seem to care that sampling is on the
>> @@ -415,14 +434,26 @@ static int spi_mci_probe(struct device_d *dev)
>>  
>>  	host->mci.voltages = MMC_VDD_32_33 | MMC_VDD_33_34;
>>  	host->mci.host_caps = MMC_CAP_SPI;
>> +	host->detect_pin = -EINVAL;
>> +
>> +	if (np) {
>> +		host->mci.devname = xstrdup(of_alias_get(np));
>> +		host->detect_pin = gpiod_get(dev, NULL, GPIOD_IN);
>> +	}
>>  
>>  	mci_register(&host->mci);
>>  
>>  	return 0;
>>  }
>>  
>> +static __maybe_unused struct of_device_id spi_mci_compatible[] = {
>> +	{ .compatible = "mmc-spi-slot" },
>> +	{ /* sentinel */ }
>> +};
>> +
>>  static struct driver_d spi_mci_driver = {
>>  	.name	= "spi_mci",
>>  	.probe	= spi_mci_probe,
>> +	.of_compatible = DRV_OF_COMPAT(spi_mci_compatible),
>>  };
>>  device_spi_driver(spi_mci_driver);
>> -- 
>> 2.34.1
>>
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
>>
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

