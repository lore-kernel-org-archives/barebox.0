Delivery-date: Sat, 18 Dec 2021 07:22:46 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1myT7G-00AFiH-Do
	for lore@lore.pengutronix.de; Sat, 18 Dec 2021 07:22:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1myT7F-0000Bc-1b
	for lore@pengutronix.de; Sat, 18 Dec 2021 07:22:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:Cc:To:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yg71gFDxX+exEhlQflI/CrdUilVzMy0MgwT7cRhBPYs=; b=0gdrlFVtm40eBOB8z8khGdsiM3
	ktGpUGi0HCsNdjqgtNJQJ9cfvKuTaV987Bp0iFtMLKpakarIA+b/eM/Ac2Yzyj10xjm4T1igKDDe0
	JovkLhJ7xxamG2NTvWWc3L60K+hNCOAtXTAoMXZjX9tzyvth1vOf+F5/3b0jp9bDZbfROlK3nwHX/
	3vPLocxrQjakPAWe8Q8gMo5SrXK8pAWEHmMO3n9KueYPpYRfA7tlUonQjgkWG2TUXa8XgBbL7us37
	FfljPZIGtmx/nFY9HLAQXwbRJ317Myx7AkzpNOztYhSnLHwDu5DpVlDcmBuJUTNqG+kW0wH4IHu7y
	mAVdfxbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1myT5Z-00D6Cr-5b; Sat, 18 Dec 2021 06:21:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1myT5S-00D6CU-06
 for barebox@lists.infradead.org; Sat, 18 Dec 2021 06:20:57 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1myT5O-00005n-JM; Sat, 18 Dec 2021 07:20:50 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20211217182300.3768235-1-m.tretter@pengutronix.de>
 <20211217182300.3768235-6-m.tretter@pengutronix.de>
 <93e07d58-4536-9a03-436b-c95f8df1c96a@pengutronix.de>
 <20211217211346.GF29518@pengutronix.de>
Message-ID: <ab81b5e2-15c6-c632-ed25-87e1af2a6e4e@pengutronix.de>
Date: Sat, 18 Dec 2021 07:20:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211217211346.GF29518@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211217_222055_300028_3FE4235F 
X-CRM114-Status: GOOD (  31.94  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/5] video: ssd1307fb: add spi support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17.12.21 22:13, Michael Tretter wrote:
> On Fri, 17 Dec 2021 20:00:16 +0100, Ahmad Fatoum wrote:
>> On 17.12.21 19:23, Michael Tretter wrote:
>>> The Solomon display drivers also support SPI in addition to the I2C.
>>> Add SPI support to the driver that already supports I2C by implementing
>>> the bus write function for SPI and registering an SPI driver.
>>>
>>> While the driver needs I2C or SPI, either subsystem is optional as long
>>> as one is enabled.
>>>
>>> WARNING: The device tree bindings for the ssd1306 with SPI are not
>>> documented!
>>>
>>> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
>>> ---
>>>  drivers/video/Kconfig     |  2 +-
>>>  drivers/video/ssd1307fb.c | 72 +++++++++++++++++++++++++++++++++++----
>>>  2 files changed, 67 insertions(+), 7 deletions(-)
>>>
>>> diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
>>> index a87e8c063899..cfbd541a956e 100644
>>> --- a/drivers/video/Kconfig
>>> +++ b/drivers/video/Kconfig
>>> @@ -15,7 +15,7 @@ config FRAMEBUFFER_CONSOLE
>>>  
>>>  config DRIVER_VIDEO_FB_SSD1307
>>>  	bool "Solomon SSD1307 framebuffer support"
>>> -	depends on I2C && GPIOLIB
>>> +	depends on (I2C || SPI) && GPIOLIB
>>>  
>>>  config VIDEO_VPL
>>>  	depends on OFTREE
>>> diff --git a/drivers/video/ssd1307fb.c b/drivers/video/ssd1307fb.c
>>> index d0df073b8ef2..2939d4348405 100644
>>> --- a/drivers/video/ssd1307fb.c
>>> +++ b/drivers/video/ssd1307fb.c
>>> @@ -23,6 +23,7 @@
>>>  #include <gpio.h>
>>>  #include <of_gpio.h>
>>>  #include <regulator.h>
>>> +#include <spi/spi.h>
>>>  
>>>  #define SSD1307FB_DATA                          0x40
>>>  #define SSD1307FB_COMMAND                       0x80
>>> @@ -73,12 +74,14 @@ struct ssd1307fb_par {
>>>  	u32 dclk_frq;
>>>  	const struct ssd1307fb_deviceinfo *device_info;
>>>  	struct i2c_client *client;
>>> +	struct spi_device *spi;
>>>  	u32 height;
>>>  	struct fb_info *info;
>>>  	u32 page_offset;
>>>  	u32 prechargep1;
>>>  	u32 prechargep2;
>>>  	int reset;
>>> +	int dc;
>>>  	struct regulator *vbat;
>>>  	u32 seg_remap;
>>>  	u32 vcomh;
>>> @@ -100,6 +103,30 @@ static struct ssd1307fb_array *ssd1307fb_alloc_array(u32 len, u8 type)
>>>  	return array;
>>>  }
>>>  
>>> +#if IS_ENABLED(CONFIG_SPI)
>>> +static int ssd1307fb_spi_write_array(struct ssd1307fb_par *par,
>>> +				     struct ssd1307fb_array *array, u32 len)
>>
>> __maybe_unused and drop the #if?

Ah, you could even drop __maybe_unused altogether as the #ifdef farther down
is replaced with an IS_ENABLED.

> Why doesn't this fail to link? The function uses spi_write, which is static
> inline, but spi_write uses spi_sync, which is only defined in spi.c and is not
> stubbed if !CONFIG_SPI. I would have expected to not be able to use spi_write
> if CONFIG_SPI is disabled. Is there some dead code elimination happening
> before linking?

Dead code elimination would discard this function at compile time, because it's
internal linkage and unreferenced. You could even make it global and it
wouldn't fail to link, but for another reason: barebox places all functions in
separate function sections and linker will garbage-collect unreferenced sections
leading to the same outcome: It never needs to resolve spi_sync.

If you want to break the build, you need to have an actual user
(or enable module support and EXPORT_SYMBOL(ssd1307fb_spi_write_array)).

Cheers,
Ahmad

> 
> Michael
> 
>>
>>> +{
>>> +	struct spi_device *spi = par->spi;
>>> +	int ret;
>>> +
>>> +	if (array->type == SSD1307FB_COMMAND)
>>> +		gpio_direction_output(par->dc, 0);
>>> +	else
>>> +		gpio_direction_output(par->dc, 1);
>>> +
>>> +	ret = spi_write(spi, array->data, len);
>>> +	if (ret)
>>> +		dev_err(&spi->dev, "Couldn't send SPI command.\n");
>>> +
>>> +	/* Ensure that we remain in data mode. */
>>> +	gpio_direction_output(par->dc, 1);
>>> +
>>> +	return ret;
>>> +}
>>> +#endif
>>> +
>>> +#if IS_ENABLED(CONFIG_I2C)
>>
>> Ditto
>>
>>>  static int ssd1307fb_i2c_write_array(struct ssd1307fb_par *par,
>>>  				     struct ssd1307fb_array *array, u32 len)
>>>  {
>>> @@ -116,6 +143,7 @@ static int ssd1307fb_i2c_write_array(struct ssd1307fb_par *par,
>>>  
>>>  	return 0;
>>>  }
>>> +#endif
>>>  
>>>  static inline int ssd1307fb_write_cmd(struct ssd1307fb_par *par, u8 cmd)
>>>  {
>>> @@ -385,6 +413,10 @@ static const struct of_device_id ssd1307fb_of_match[] = {
>>>  		.compatible = "solomon,ssd1306fb-i2c",
>>>  		.data = (void *)&ssd1307fb_ssd1306_deviceinfo,
>>>  	},
>>> +	{
>>> +		.compatible = "solomon,ssd1306",
>>> +		.data = (void *)&ssd1307fb_ssd1306_deviceinfo,
>>> +	},
>>>  	{
>>>  		.compatible = "solomon,ssd1309fb-i2c",
>>>  		.data = (void *)&ssd1307fb_ssd1309_deviceinfo,
>>> @@ -419,9 +451,24 @@ static int ssd1307fb_probe(struct device_d *dev)
>>>  
>>>  	par->device_info = (struct ssd1307fb_deviceinfo *)match->data;
>>>  
>>> -	par->client = to_i2c_client(dev);
>>> -	i2c_set_clientdata(par->client, par);
>>> -	par->write_array = ssd1307fb_i2c_write_array;
>>> +#if IS_ENABLED(CONFIG_I2C)
>>> +	if (dev->bus == &i2c_bus) {
>>
>> if (IS_ENABLED(CONFIG_I2C) && dev->bus == &i2c_bus) {
>>
>>> +		par->client = to_i2c_client(dev);
>>> +		i2c_set_clientdata(par->client, par);
>>> +		par->write_array = ssd1307fb_i2c_write_array;
>>> +	}
>>> +#endif
>>> +#if IS_ENABLED(CONFIG_SPI)
>>> +	if (dev->bus == &spi_bus) {
>>
>> Ditto
>>
>>> +		par->spi = (struct spi_device *)dev->type_data;
>>> +		par->dc = of_get_named_gpio(node, "dc-gpios", 0);
>>> +		if (!gpio_is_valid(par->dc)) {
>>> +			ret = par->dc;
>>> +			goto fb_alloc_error;
>>> +		}
>>> +		par->write_array = ssd1307fb_spi_write_array;
>>> +	}
>>> +#endif
>>>  
>>>  	par->reset = of_get_named_gpio_flags(node,
>>>  					 "reset-gpios", 0, &of_flags);
>>> @@ -591,9 +638,22 @@ fb_alloc_error:
>>>  	return ret;
>>>  }
>>>  
>>> -static struct driver_d ssd1307fb_driver = {
>>> -	.name = "ssd1307fb",
>>> +static __maybe_unused struct driver_d ssd1307fb_i2c_driver = {
>>> +	.name = "ssd1307fb-i2c",
>>>  	.probe = ssd1307fb_probe,
>>>  	.of_compatible = DRV_OF_COMPAT(ssd1307fb_of_match),
>>>  };
>>> -device_i2c_driver(ssd1307fb_driver);
>>> +
>>> +#if IS_ENABLED(CONFIG_I2C)
>>> +device_i2c_driver(ssd1307fb_i2c_driver);
>>> +#endif
>>
>> I think you should add !CONFIG_I2C stubs to i2c/i2c.h
>>
>>> +
>>> +static __maybe_unused struct driver_d ssd1307fb_spi_driver = {
>>> +	.name = "ssd1307fb-spi",
>>> +	.probe = ssd1307fb_probe,
>>> +	.of_compatible = DRV_OF_COMPAT(ssd1307fb_of_match),
>>> +};
>>> +
>>> +#if IS_ENABLED(CONFIG_SPI)
>>> +device_spi_driver(ssd1307fb_spi_driver);
>>> +#endif
>>
>> Ditto.
>>
>>>
>>
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

