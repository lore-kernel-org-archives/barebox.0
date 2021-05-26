Delivery-date: Wed, 26 May 2021 14:19:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llsVm-0007vZ-OW
	for lore@lore.pengutronix.de; Wed, 26 May 2021 14:19:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llsVl-0007R9-2h
	for lore@pengutronix.de; Wed, 26 May 2021 14:19:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mp2RVqvlFIz0Qk1qHrb0bysg5WvMW/jTnnGgjeGn2WA=; b=IJB0lOGrIiRexlMXtAd6PYC3Rf
	ITI+2dd51Pjb+2QcEuQ66PhB8zTBuPUrVoImaa49xMUjOR+f/wxSo1zKgeGY5XZbR+5d62bXYXpDr
	tjw7zHYPxBSmUD9zDrviBI0OfG5Qyg1lou/eTe5egG2ATl4ExYmIU1TsBBRTIJZSwJerfzznCNZCC
	1c4gw5i8wEdIVVrReVt23qSeC1AjsVAgcZNOeA6/KCYDIM/Oc7gnWi9/KcvxWfjpzxe/JsqC9+hHZ
	YKAGwonMBJpwuHa1bHqfZRxXPptfytrXL+uhx3Qe3uxJaqBdlUSCq+O6tTYIzQ7YtNpv9uGUfaJmM
	lsjSWP+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llsU7-00DtqJ-Mu; Wed, 26 May 2021 12:18:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llqPA-00D4pI-N9
 for barebox@lists.infradead.org; Wed, 26 May 2021 10:04:50 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1llqP8-0006vL-U9; Wed, 26 May 2021 12:04:46 +0200
To: Lucas Stach <l.stach@pengutronix.de>, barebox@lists.infradead.org
References: <20210525183733.3345497-1-l.stach@pengutronix.de>
 <20210525183733.3345497-2-l.stach@pengutronix.de>
 <fbe5be0e-a312-c34d-ccbd-cbfdb0bb698d@pengutronix.de>
 <4037510acbba84d59bdacfd787ac598a075b03a9.camel@pengutronix.de>
 <8389275f-beb6-2b85-d031-3407b571109c@pengutronix.de>
 <ce90316cb8908dcbebee9bcf510611d244841153.camel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <d9eed1a8-98aa-52e0-7390-291fa9558354@pengutronix.de>
Date: Wed, 26 May 2021 12:04:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <ce90316cb8908dcbebee9bcf510611d244841153.camel@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210526_030448_824571_82AA136B 
X-CRM114-Status: GOOD (  23.02  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] bootm: add support for booting compressed images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)



On 26.05.21 11:58, Lucas Stach wrote:
> Am Mittwoch, dem 26.05.2021 um 11:41 +0200 schrieb Ahmad Fatoum:
>> On 26.05.21 11:39, Lucas Stach wrote:
>>> Hi Ahmad,
>>>
>>> Am Mittwoch, dem 26.05.2021 um 11:17 +0200 schrieb Ahmad Fatoum:
>>>> Hello Lucas,
>>>>
>>>> On 25.05.21 20:37, Lucas Stach wrote:
>>>>> ARM64 does not have a self extracting image format, but relies on the image
>>>>> being externally compressed with one of the standard compression algorithms.
>>>>>
>>>>> Add support for decompressing the bootm OS image. It is added in common
>>>>> code as it may also be useful for other images/architectures.
>>>>>
>>>>> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
>>>>> ---
>>>>>  common/bootm.c | 92 ++++++++++++++++++++++++++++++++++++++++++++++++++
>>>>>  1 file changed, 92 insertions(+)
>>>>>
>>>>> diff --git a/common/bootm.c b/common/bootm.c
>>>>> index 092116beb94a..2bfb5cb01593 100644
>>>>> --- a/common/bootm.c
>>>>> +++ b/common/bootm.c
>>>>> @@ -12,6 +12,7 @@
>>>>>  #include <environment.h>
>>>>>  #include <linux/stat.h>
>>>>>  #include <magicvar.h>
>>>>> +#include <uncompress.h>
>>>>>  
>>>>>  static LIST_HEAD(handler_list);
>>>>>  
>>>>> @@ -808,6 +809,85 @@ err_out:
>>>>>  	return ret;
>>>>>  }
>>>>>  
>>>>> +static int do_bootm_compressed(struct image_data *img_data)
>>>>> +{
>>>>> +	struct bootm_data bootm_data = {
>>>>> +		.oftree_file = img_data->oftree_file,
>>>>> +		.initrd_file = img_data->initrd_file,
>>>>> +		.tee_file = img_data->tee_file,
>>>>> +		.verbose = img_data->verbose,
>>>>> +		.verify = img_data->verify,
>>>>> +		.force = img_data->force,
>>>>> +		.dryrun = img_data->dryrun,
>>>>> +		.initrd_address = img_data->initrd_address,
>>>>> +		.os_address = img_data->os_address,
>>>>
>>>> I am wondering whether it makes sense to directly extract
>>>> to os_address to avoid the extra copy. Depending on the subsequent
>>>> bootm handler, the image may still need to be relocated, but if
>>>> we choose a generous alignment here, the copy later on could
>>>> be avoided.
>>>
>>> For the common case where we let Barebox/the bootm image handler decide
>>> where to put the OS image, we don't know this address yet when
>>> decompressing the image here. I don't think it makes sense to optimize
>>> the special case where the OS address is already known.
>>
>> I see. A debug print for higher verbosity levels, just before invoking
>> bootm_boot would be nice, so it's easy to find out how long the
>> extraction took.
> 
> Actually due to the way this is implemented as nested bootm you kind of
> get this naturally. The output when booting a compressed image looks
> like this:
> 
> blspec: booting someboard from somewhere
> Loading LZO compressed 'somewhere/Image.lzo'
> Loading ARM aarch64 Linux image '/tmp/bootm-compressed-6504dc00'
> Loading devicetree from 'somewhere/someboard.dtb'

Great! :-)

> 
> Regards,
> Lucas
> 
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

