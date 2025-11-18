Delivery-date: Tue, 18 Nov 2025 10:50:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLILr-002HTm-2s
	for lore@lore.pengutronix.de;
	Tue, 18 Nov 2025 10:50:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLILr-0001o3-66
	for lore@pengutronix.de; Tue, 18 Nov 2025 10:50:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Vdta3iHM3F+jIkbqUVVCl/+NUc9BzMI0fgt+yhGl+50=; b=29Hs/fr8PekxzeaOG+tpVnvXIV
	UfV2O4KS6kIiREvS4IjEBquzJdBi8D54otTa6T3xLS8xZLJrWIW7VQXrZK+hvZWc/g5RszIkrx8Zk
	LGhl/FI5To9H5NoUu0VP3Xeu9SZBB9aplOUcoDzhWv7mUqZGty9TKjZetnS5Wp7L8NzeY0RhETh7R
	h/9WVBAa3xa/rfW7xChdpS5iheW5+nX5GEGon/MeKDHchTXwPHm4EeMroFSdlnJa/hZkFYjtfTfsA
	NDJTbC6gbM1TWT19aOxldw6tFA+gZqLcs8KLbD8I42rb4crzAeVM/VZAK26wqnmo2e5LlwHr69HpA
	VpyVSL+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLILA-00000000BfT-0b4e;
	Tue, 18 Nov 2025 09:49:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLIL7-00000000Bf3-40AV
	for barebox@lists.infradead.org;
	Tue, 18 Nov 2025 09:49:35 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vLIL6-0001Z8-Ce; Tue, 18 Nov 2025 10:49:32 +0100
Message-ID: <539763d8-582a-4ec0-90b3-bdd265a493d9@pengutronix.de>
Date: Tue, 18 Nov 2025 10:49:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
References: <20251117-tlv_bind_serial-v2-1-60c7b1e3e81b@pengutronix.de>
 <aRww5p7AxPtgEmgm@pengutronix.de>
From: Jonas Rebmann <jre@pengutronix.de>
Content-Language: en-US
In-Reply-To: <aRww5p7AxPtgEmgm@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_014934_000055_AF3F8FE3 
X-CRM114-Status: GOOD (  29.18  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] tlv: Add tlv_bind_soc_uid mapping
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On 2025-11-18 09:40, Sascha Hauer wrote:
> On Mon, Nov 17, 2025 at 06:14:06PM +0100, Jonas Rebmann wrote:
>> Particularly when using secure boot with signed TLVs, it may be required
>> to issue and sign TLVs for specific units. As typically all units of a
>> board are compiled to validate TLVs against the same key, a "binding"
>> mechanism is needed if interchange of TLVs across those units must be
>> prevented. This mapping binds against the UID of the SoC, rendering a
>> signed TLV with such a field invalid for all but the one unit.
>>
>> When generating TLVs that use this mapping, the exact case-sensitive
>> string representation of the SoC UID must be taken into account.
> 
> Do we really want to have this case-sensitive? I am not sure we're not
> creating problems with this once somebody changes the case for
> compatibility with the kernel, it was accidently wrong etc.

To me the big question is: What is a SoC UID?

Is it an arbitrary string that happens to be, for many SoCs composed of
[0-9A-F] and efficiently represented in binary in the efuses? Then it
feels a bit surprising to me to compare this 'arbitrary vendor-provided
string' case-insensitively.

But if we consider this an arbitrary block of binary data, typically
looked at in hexadecimal then I suggest we use the raw "bytes"-format I
sent an RFC patch for on Nov 12, and compare to
barebox_get_soc_uid_bin(). I originally wrote that RFC patch for storing
SoC UIDs but had a conversation with Ahmad that led me to view the SoC
UID as an arbitrary string. However now that we have
barebox_get_soc_uid_bin(), I'm tempted to change my mind.

>> Add the special mapping tlv_bind_soc_uid that aborts TLV parsing if the
>> supplied string does not match the SoC UID number.
>>
>> Include this mapping in barebox_tlv_v1_mappings with tag 0x0024 to make
>> it available in testing and in other setups using the generic tlv
>> parsers.
>>
>> Set up tlv_register_default as a late initcall so that it's loaded after
>> the SoC UID was initialized.
>>
>> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
>> ---
>> Changes in v2:
>> - Switch to using barebox_get_soc_uid and rename and reword everything
>>    accordingly (serial number -> soc uid)
>> - Init tlv_register_default as late_initcall instead of device_initcall
>> - Link to v1: https://lore.barebox.org/barebox/20251112-tlv_bind_serial-v1-1-638cf222553a@pengutronix.de
>> ---
>>   common/tlv/barebox.c | 18 +++++++++++++++++-
>>   include/tlv/tlv.h    |  1 +
>>   2 files changed, 18 insertions(+), 1 deletion(-)
>>
>> diff --git a/common/tlv/barebox.c b/common/tlv/barebox.c
>> index 24de3eeaaa..fdba9fa2a5 100644
>> --- a/common/tlv/barebox.c
>> +++ b/common/tlv/barebox.c
>> @@ -1,8 +1,12 @@
>>   // SPDX-License-Identifier: GPL-2.0-only
>>   
>> +#include "barebox-info.h"
>>   #include <common.h>
>>   #include <net.h>
>>   #include <tlv/tlv.h>
>> +#include <param.h>
>> +#include <string.h>
>> +
>>   
>>   int tlv_handle_serial(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val)
>>   {
>> @@ -16,6 +20,16 @@ int tlv_handle_serial(struct tlv_device *dev, struct tlv_mapping *map, u16 len,
>>   	return 0;
>>   }
>>   
>> +int tlv_bind_soc_uid(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val)
>> +{
>> +	char *tlv_serial = basprintf("%.*s", len, val);
> 
> tlv_serial is not freed.

I'm just doing the same here as all other handlers ("handle"s?) in
common/tlv/barebox.c do. The string representation of the TLV field is
consumed by __tlv_format eventually:

   param->value = buf; /* pass ownership */

So not freeing seems correct here.

>> +
>> +	if (streq_ptr(tlv_serial, barebox_get_soc_uid()))
>> +		return __tlv_format_str(dev, map, len, val) ? 0 : -ENOMEM;
> 
> Why not simply forward the return value __tlv_format_str() instead?
> (which is 0 or -ENOMEM anyway).

Here too I'm doing the same as the other handlers do. __tlv_format with
the underscores returns buf upon success, NULL on error and it seems
right that this is probably (yet not guaranteed to be) ENOMEM then.
Anyway all the handlers return ENOMEM if there's an error in
__tlv_format either because they call via the macro

   #define tlv_format(tlvdev, map, ...) ({ __tlv_format(tlvdev, map, basprintf(__VA_ARGS__)) ? 0 : -ENOMEM; })

Or, as tlv_format_str, check directly:

   int tlv_format_str(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val)
   {
     return __tlv_format_str(dev, map, len, val) ? 0 : -ENOMEM;
   }

Regards,
Jonas

-- 
Pengutronix e.K.                           | Jonas Rebmann               |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


