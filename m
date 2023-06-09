Delivery-date: Fri, 09 Jun 2023 09:39:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7WiJ-00GtfE-0N
	for lore@lore.pengutronix.de; Fri, 09 Jun 2023 09:39:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7WiG-0001fK-Kp
	for lore@pengutronix.de; Fri, 09 Jun 2023 09:39:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K3KX+yLzz/SuBPFRTSPn0jIVpUHRuGWlCqttUVILpBs=; b=Up2AWjfbWCm1aWtTn6iBh2DiK/
	8HSOgKELFKqdJjVMUkbxu2cyMl9QJdpezyJ47NHpG66g1+r+6C2mQ4e+hwY9xNmje6p4Dngity+Yx
	qbokO6B/MjLF+w292EMvqs2YO4LrAOTkiBDppnuzzecIwjFtIzY0C+jMg1fMJEhwZPDUb52cSNQBQ
	t9UgGHIDwectLA0N8ktJQHmERL7bpyIZOC26MyF8eISGf7YSaAWtM0NmjBkZRJFkk5kqDsYdquOwh
	+lhnNBETBMYMesNfA2c7N9l4zyCERO5aDxg0735O1duEUfT5g6WVQM73la10dLYjOOB2PnyW9If8n
	0mZnDfAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7Wh7-00C4GS-1T;
	Fri, 09 Jun 2023 07:38:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7Wh4-00C4EO-1w
	for barebox@lists.infradead.org;
	Fri, 09 Jun 2023 07:38:00 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q7Wh3-0001XM-4Q; Fri, 09 Jun 2023 09:37:57 +0200
Message-ID: <9d4e421d-26c7-8cb1-9783-a9cec4a483cb@pengutronix.de>
Date: Fri, 9 Jun 2023 09:37:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230608072418.3275633-1-a.fatoum@pengutronix.de>
 <20230608072418.3275633-2-a.fatoum@pengutronix.de>
 <20230609072930.GR18491@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230609072930.GR18491@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230609_003758_640513_C6E0A5FD 
X-CRM114-Status: GOOD (  29.35  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/2] file-list: support special 'auto', 'block', 'nvmem'
 specifiers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 09.06.23 09:29, Sascha Hauer wrote:
> On Thu, Jun 08, 2023 at 09:24:18AM +0200, Ahmad Fatoum wrote:
>> Best practice is for each board to populate $global.system.partitions
>> or $global.fastboot.partitions with a string exporting its flashable
>> devices in a descriptive manner, e.g. "/dev/mmc0(eMMC),/dev/mmc1(SD)".
>>
>> This often goes into BSPs though, so upstream boards are left without
>> default partitions, making use a bit cumbersome. Make this easier
>> by providing three new magic specifiers:
>>
>>   - nvmem: exports all registered NVMEM devices (e.g. EEPROMs, Fuse banks)
>>   - block: exports all registered block devices (e.g. eMMC and SD)
>>   - auto:  currently equivalent to "nvmem,block". May be extended
>>            to raw MTD and UBI in future
>>
>> This makes it easy to export devices on any board:
>>
>>   usbgadget -A auto -b
>>
>> or
>>
>>   usbgadget -S auto,/tmp/fitimage(fitimage)c
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  Documentation/user/usb.rst     | 17 +++++++++++++++++
>>  common/block.c                 | 16 ++++++++++++++++
>>  common/file-list.c             | 29 +++++++++++++++++++++++++++--
>>  drivers/nvmem/core.c           | 16 ++++++++++++++++
>>  include/block.h                |  6 ++++++
>>  include/linux/nvmem-consumer.h |  8 ++++++++
>>  6 files changed, 90 insertions(+), 2 deletions(-)
>>
>> diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
>> index f2f57ead98d4..6fed0f619b32 100644
>> --- a/Documentation/user/usb.rst
>> +++ b/Documentation/user/usb.rst
>> @@ -73,6 +73,23 @@ Example:
>>  
>>    /dev/nand0.barebox.bb(barebox)sr,/kernel(kernel)rc
>>  
>> +Board code authors are encouraged to provide a default environment containing
>> +partitions with descriptive names. For boards where this is not specified,
>> +there exist a number of **partition** specifiers for automatically generating entries:
>> +
>> +* ``nvmem`` exports all registered NVMEM devices (e.g. EEPROMs, Fuse banks)
> 
> Blindly exporting NVMEM devices is not a good idea. As the description
> says it's used for fuse banks. These are write-once and modifying them
> is potentially dangerous. Also it's fastboot which means you can't even
> read them before modifying them and there is no way to only partially
> write them.
> 
> There might be good reasons to export some specific NVMEM device, but
> then this should be explicitly exported and not by default.

The few fuse bank drivers that can actually blow fuses have a device
variable that needs to be written to unlock write access.

But yes, the inability to write them partially makes the write
useless. I will just resend without nvmem.

>> +static bool file_list_handle_spec(struct file_list *files, const char *spec)
>> +{
>> +	unsigned count = 0;
>> +
>> +	if (!strcmp(spec, "auto")) {
>> +		count += file_list_add_blockdevs(files);
>> +		count += file_list_add_nvmemdevs(files);
>> +	} else if (!strcmp(spec, "block")) {
>> +		count += file_list_add_blockdevs(files);
>> +	} else if (!strcmp(spec, "nvmem")) {
>> +		count += file_list_add_nvmemdevs(files);
>> +	} else {
>> +		return false;
>> +	}
> 
> Since you are talking about future extensions you could parse "auto"
> first and set a flag variable for it:
> 
> 	bool auto = false;
> 
> 	if (!strcmp(spec, "auto"))
> 		auto = true;
> 	if (!strcmp(spec, "block") || auto)
> 		count += file_list_add_blockdevs(files);
> 	if (!strcmp(spec, "nvmem") || auto)
> 		count += file_list_add_nvmemdevs(files);
> 
> That would make it a bit easier to integrate the future extensions into
> the code.

Ok.

> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



