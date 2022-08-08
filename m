Delivery-date: Mon, 08 Aug 2022 13:40:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL171-00G6fU-DI
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 13:40:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL172-0002oX-0G
	for lore@pengutronix.de; Mon, 08 Aug 2022 13:40:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mA5fHZkeMtzVhEM1dAxhosbsFwi0oNzG2LlAe+cUjmE=; b=1L2EQPjDH6xMbgkxtbNQRXinZ/
	VAuZhI74fzlPIVcxtYd6y7fNb+Dn1gPx3HyCDGyrxhndZaOk6zEBQre//TshwytPM5WQLQwjOfluQ
	cp+NpuPwGdry7x9KQetjlnxVMPWGq6a99O+/UFfuHhW+uCbGKM65ytGY1bi7jmSUdKdTORfqZlUtj
	AM6ZD/iu+PYDpcZurA+4i9ZrpNqP1I8BlNQapz+bqQKmY2iykY1o3xMDLeq9603n23onvpA2sR1x8
	+OnwWdLywLjLmInHXXngUkf8jfa7GA1EcskQa1Y6l3FzBcoqJ8AKoVY4bLWZqZ8AM2x+ODxJAvW/c
	mjJYrJQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL15f-00DFtF-6T; Mon, 08 Aug 2022 11:38:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL15a-00DFrW-Q8
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 11:38:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oL15Y-0002jF-PA; Mon, 08 Aug 2022 13:38:28 +0200
Message-ID: <e99b3667-d0e5-afd8-b9e9-0e3c06a71529@pengutronix.de>
Date: Mon, 8 Aug 2022 13:38:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20220808065648.458142-1-a.fatoum@pengutronix.de>
 <20220808111117.GD7333@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220808111117.GD7333@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_043830_875087_A1BAA176 
X-CRM114-Status: GOOD (  29.45  )
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
Subject: Re: [PATCH] FIT: add first support for compressed images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 08.08.22 13:11, Sascha Hauer wrote:
> On Mon, Aug 08, 2022 at 08:56:48AM +0200, Ahmad Fatoum wrote:
>> FIT image contents are often compressed, but we got by so far, because
>> a compressed initramfs is usually meant to be decompressed by the kernel
>> (and so has compression = "none") and arm32 kernels had their own
>> decompresser embedded. On ARM64, bootloader is responsible for
>> uncompressing kernel, so we should properly process the compression
>> property we so far ignored.
>>
>> The decompression isn't as efficient as one would hope for, because
>> the FIT format only describes length of the compressed data. We thus
>> have two options:
>>
>>   - define an output size up-front, e.g. by guessing the uncompressed
>>      buffer size for decompression or hardcoding it (e.g. U-Boot's
>>      CONFIG_SYS_BOOTM_LEN).
>>
>>   -  Uncompress to a file descriptor
>>
>> We choose the second one to play it safe, but it comes with worse
>> performance because of extra memory copies. Intention is to go with
>> first option for the kernel image: We know how much size we can spare
>> for the kernel image and can have bootm_load_os uncompress there
>> directly without intermittent memory copies. This would involve slight
>> change to the barebox decompresser API to align it with the kernel's,
>> which allows to have it accept and observe an output buffer size.
>> So far, we had the kernel PREBOOT API, which lacks such a parameter,
>> but that's an optimization for another day.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  common/image-fit.c   | 38 +++++++++++++++++++++++++++++++++++---
>>  include/uncompress.h |  6 ++++++
>>  lib/uncompress.c     | 40 ++++++++++++++++++++++++++++++++++++++++
>>  3 files changed, 81 insertions(+), 3 deletions(-)
>>
>> diff --git a/common/image-fit.c b/common/image-fit.c
>> index 507a857cadb4..e692fcdaa737 100644
>> --- a/common/image-fit.c
>> +++ b/common/image-fit.c
>> @@ -21,6 +21,7 @@
>>  #include <linux/err.h>
>>  #include <stringlist.h>
>>  #include <rsa.h>
>> +#include <uncompress.h>
>>  #include <image-fit.h>
>>  
>>  #define FDT_MAX_DEPTH 32
>> @@ -559,6 +560,11 @@ int fit_get_image_address(struct fit_handle *handle, void *configuration,
>>  	return ret;
>>  }
>>  
>> +static void fit_uncompress_error_fn(char *x)
>> +{
>> +	pr_err("%s\n", x);
>> +}
>> +
>>  /**
>>   * fit_open_image - Open an image in a FIT image
>>   * @handle: The FIT image handle
>> @@ -581,8 +587,10 @@ int fit_open_image(struct fit_handle *handle, void *configuration,
>>  		   unsigned long *outsize)
>>  {
>>  	struct device_node *image;
>> -	const char *unit = name, *type = NULL, *desc= "(no description)";
>> -	const void *data;
>> +	const char *unit = name, *type = NULL, *compression = NULL,
>> +	      *desc= "(no description)";
>> +	struct property *dataprop;
>> +	const void *data = NULL;
>>  	int data_len;
>>  	int ret = 0;
>>  
>> @@ -599,7 +607,9 @@ int fit_open_image(struct fit_handle *handle, void *configuration,
>>  		return -EINVAL;
>>  	}
>>  
>> -	data = of_get_property(image, "data", &data_len);
>> +	dataprop = of_find_property(image, "data", &data_len);
>> +	if (dataprop)
>> +		data = of_property_get_value(dataprop);
>>  	if (!data) {
>>  		pr_err("data not found\n");
>>  		return -EINVAL;
>> @@ -613,6 +623,28 @@ int fit_open_image(struct fit_handle *handle, void *configuration,
>>  	if (ret < 0)
>>  		return ret;
>>  
>> +	of_property_read_string(image, "compression", &compression);
>> +	if (compression && strcmp(compression, "none") != 0) {
>> +		if (!IS_ENABLED(CONFIG_UNCOMPRESS)) {
>> +			pr_err("image has compression = \"%s\", but support not compiled in\n");
>> +			return -ENOSYS;
>> +		}
>> +		if (!dataprop->value) {
>> +			void *uc_data;
>> +
>> +			data_len = uncompress_buf_to_buf(data, data_len, &uc_data,
>> +						    fit_uncompress_error_fn);
>> +			if (data_len < 0) {
>> +				pr_err("data couldn't be decompressed\n");
>> +				return data_len;
>> +			}
>> +
>> +			/* associate buffer with FIT, so it's not leaked */
>> +			data = dataprop->value = uc_data;
>> +			dataprop->length = data_len;
> 
> Why are you fiddling with struct property fields directly?
> of_get_property() and of_set_property() should do what you want.

of_set_property copies the data into a new buffer, which I want
to avoid doing again.

Cheers,
Ahmad

> 
> Sascha
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


