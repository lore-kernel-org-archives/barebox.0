Delivery-date: Mon, 13 Sep 2021 12:20:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mPj57-0000CY-Au
	for lore@lore.pengutronix.de; Mon, 13 Sep 2021 12:20:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mPj55-0000YO-JC
	for lore@pengutronix.de; Mon, 13 Sep 2021 12:20:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2Y4HCyBZ2X9dZICu0p7jcJiH/q/DjaJSul3DCkXDd5s=; b=S/5U1dU836Fh620TrGw0xdh+TQ
	dl/SlI03fc/YERutaAr0ewy3r66+I+6aSodVOPh8HjdPf1pPpu7k4nb055Aj2w6JtWUmT1r2TG10q
	WKmUrOslP8Wui9pmjCzuxZk+eazc6HELY9CYVw2cfLpL6F9UJcDTxAo5wqaDiPKmYiIfIg2YH1Vz0
	AaBgO4BVDAegUB8PfVAyXVtaiCDAbMARbonlMkq5cz2qbWfP/xCQkFgFnFILwnVwxqN63wDzguxkx
	2S/Hpzh3Gi6LRCfw2qfSr24WFgm2V+Y5jEsC0OABRRFEKp3B61qD7LxV9wLGXLfuiNbw+66namero
	OpqQP98g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mPj3H-001Evq-VO; Mon, 13 Sep 2021 10:19:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mPj3D-001Ev6-CZ
 for barebox@lists.infradead.org; Mon, 13 Sep 2021 10:19:00 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mPj35-00008j-12; Mon, 13 Sep 2021 12:18:51 +0200
To: Jules Maselbas <jmaselbas@kalray.eu>, Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
References: <20210913082942.364324-1-ahmad@a3f.at>
 <20210913100836.GD8023@tellis.lin.mbt.kalray.eu>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <8ab1e448-a21b-38d0-94fa-65caf30b95d4@pengutronix.de>
Date: Mon, 13 Sep 2021 12:18:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210913100836.GD8023@tellis.lin.mbt.kalray.eu>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210913_031859_483529_8389555A 
X-CRM114-Status: GOOD (  25.03  )
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
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] base: driver: fix double removal of child devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Jules,

On 13.09.21 12:08, Jules Maselbas wrote:
> Hi Ahmad,
> 
> On Mon, Sep 13, 2021 at 10:29:42AM +0200, Ahmad Fatoum wrote:
>> Child devices like an ext4 file system on a partition may be removed
>> twice: Once because they're in the active devices list and then once
>> more, because unregister_device is called for the children of its parent.
>>
>> As struct bus_type::remove clears association of a driver with its
>> device, we can set struct device_d::driver to NULL. unregister_device
>> will then skip the second dev->bus->remove.
>>
>> Fixes: 29f1c211d86c ("fs: don't free device in remove callback")
>> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
>> ---
>>  drivers/base/driver.c | 3 +++
>>  1 file changed, 3 insertions(+)
>>
>> diff --git a/drivers/base/driver.c b/drivers/base/driver.c
>> index 0e04ef36868d..0fedb30161b4 100644
>> --- a/drivers/base/driver.c
>> +++ b/drivers/base/driver.c
>> @@ -512,7 +512,10 @@ static void devices_shutdown(void)
>>  
>>  	list_for_each_entry(dev, &active, active) {
>>  		if (dev->bus->remove)
>> +		if (dev->bus->remove) {
> I think there is a typo here, this line is duplicated.

You're right. It still worked because the condition was duplicated... ^^'

I sent out a revised v2.

Thanks,
Ahmad

> 
>>  			dev->bus->remove(dev);
>> +			dev->driver = NULL;
>> +		}
>>  	}
>>  }
>>  devshutdown_exitcall(devices_shutdown);
>> -- 
>> 2.33.0
>>
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
>>
>>
> 
> 
> 
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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

