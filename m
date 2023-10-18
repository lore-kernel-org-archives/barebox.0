Delivery-date: Wed, 18 Oct 2023 15:08:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qt6I0-00D1Fu-B8
	for lore@lore.pengutronix.de; Wed, 18 Oct 2023 15:08:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qt6Hz-00038I-3h
	for lore@pengutronix.de; Wed, 18 Oct 2023 15:08:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SfHinWfiMuZo2/8rSw4W43fmbAqB/+h2DGO7HfvjxV8=; b=Uj74l7Y4FxK7s6Rv36iDbOXclQ
	v0PrgQBEIypsBza2Mz6V6c31oGCq6gJffWMjfkP9I3IzHtjEOJUAozQRaG34JlTCjBGPykBuo6fmj
	MivDPJO9QgGKofdVGlvoSESVb3TDOGIDXQJysJHNzW60IFdkqVODrW7ekVQk3JXRIOgY+4PGImP3R
	GbcGGTA2lv585hrJje5EpQRYFx2Nxwh1PRLJ1OXYDf/9qa1iljMrnoxsblO1O2nbBp19cZrDO7cFu
	t2SCvwP1le99/9yB4MC/vcPYxgWyw1XsC4ZDFMEGcgkglXUx0+4QU5R5r6B9bVIQuNvwipbmlmZHo
	48VqCguw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qt6Gx-00EjyB-0u;
	Wed, 18 Oct 2023 13:07:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qt6Gt-00Ejx9-2F
	for barebox@lists.infradead.org;
	Wed, 18 Oct 2023 13:07:37 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qt6Gs-0002ul-Cs; Wed, 18 Oct 2023 15:07:34 +0200
Message-ID: <139e779b-7c76-699b-d5e2-6ea3fdb69e85@pengutronix.de>
Date: Wed, 18 Oct 2023 15:07:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20231017213608.3494255-1-m.felsch@pengutronix.de>
 <20231017213608.3494255-5-m.felsch@pengutronix.de>
 <cdc0c007-63fd-8261-26d3-bac17fb8cac3@pengutronix.de>
 <20231018125341.zdsymavtt7qszclf@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20231018125341.zdsymavtt7qszclf@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231018_060735_736613_E660DA63 
X-CRM114-Status: GOOD (  28.27  )
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
X-Spam-Status: No, score=-6.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/4] imx-usb-loader: fix windows usage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 18.10.23 14:53, Marco Felsch wrote:
> On 23-10-18, Ahmad Fatoum wrote:
>> On 17.10.23 23:36, Marco Felsch wrote:
>>> This ports commit 561f0377db5e ("Transfer always specified report 2
>>> length") from imx_usb_loader[1] to our implementation.
>>>
>>> | commit 561f0377db5e1a36f5ab5e17f97d774f9f1e22ab
>>> | Author: Stefan Agner <stefan.agner@toradex.com>
>>> | Date:   Wed Nov 2 16:51:24 2016 -0700
>>> |
>>> |     Transfer always specified report 2 length
>>> |
>>> |     The Windows HIDAPI is very strict when it comes to packet lengths:
>>> |     The API always expect the length specified by the device and rejects
>>> |     the transfer otherwise. The report size is specified by the HID
>>> |     Report Descriptor. The i.MX 6 SoC reports a report 2 size of 1024.
>>> |     Currently, imx_usb reads the length from the device specific config
>>> |     files and stores it in max_transfer. This change uses max_transfer
>>> |     for report 2 when using the HID API.
>>> |
>>> |     The boot ROM handles too long transfers just fine. Also NXP's
>>> |     sb_loader transfers always complete reports. The change has been
>>> |     successfully tested on Linux and Windows.
>>> |
>>> |     Given that the device reports the size, it is probably also "the
>>> |     right thing to do"...
>>> |
>>> |     With that change, we might end up transferring up to 1023 bytes
>>> |     more than actually necessary. Make sure that DoIRomDownload does
>>> |     not print an error message and returns successfully even if too
>>> |     many bytes have been transferred (this now typically happens at the
>>> |     end of every file).
>>> |
>>> |     In write_dcd use a signed length variable to keep track of remaining
>>> |     bytes. Continue transfer loop only if more than 0 bytes are left to
>>> |     transfer. Also drop the m_ prefix, m_ is usually used for member
>>> |     variables but this is a local variable.
>>> |
>>> |     Signed-off-by: Stefan Agner <stefan.agner@toradex.com>
>>>
>>> [1] https://github.com/boundarydevices/imx_usb_loader/commit/561f0377db5e1a36f5ab5e17f97d774f9f1e22ab
>>>
>>> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
>>> ---
>>>  scripts/imx/imx-usb-loader.c | 8 ++++++--
>>>  1 file changed, 6 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
>>> index 676f077c25..ece4603b2b 100644
>>> --- a/scripts/imx/imx-usb-loader.c
>>> +++ b/scripts/imx/imx-usb-loader.c
>>> @@ -484,12 +484,16 @@ static int transfer(int report, void *p, unsigned cnt, int *last_trans)
>>>  		err = libusb_bulk_transfer(usb_dev_handle,
>>>  					   (report < 3) ? 1 : 2 + EP_IN, p, cnt, last_trans, 1000);
>>>  	} else {
>>> -		unsigned char tmp[1028];
>>> +		unsigned char tmp[1028] = { 0 };
>>>  
>>>  		tmp[0] = (unsigned char)report;
>>>  
>>>  		if (report < 3) {
>>>  			memcpy(&tmp[1], p, cnt);
>>> +
>>> +			if (report == 2)
>>> +				cnt = mach_id->max_transfer;
>>
>> Did you verify that this can't result in an out-of-bounds read?
> 
> How should that be possible? The tmp-array is always 1028-byte and we
> already do limit cnt to max_transfer if cnt is larger than max_transfer.

In the case that cnt < mach_id->max_transfer, we increase cnt to
mach_id->max_transfer and pass that to libusb. Are we guaranteed
that libusb won't read out of bounds, i.e. buf + cnt - 1 is always
inside tmp?

> 
>> I'd have expected either an adjustment to tmp's size or a description
>> why a buffer overread can't happen in the commit message.
> 
> Sorry but can you elaborate where a buffer overrread can happen?

You groked the code and wrote the patch, so I hoped you could tell me
"no, buffer overflow can't happen because ...".

Cheers,
Ahmad

> 
> Regards,
>   Marco
> 
>>> +
>>>  			if (mach_id->hid_endpoint) {
>>>  				int trans;
>>>  				err = libusb_interrupt_transfer(usb_dev_handle,
>>> @@ -739,7 +743,7 @@ static int send_buf(void *buf, unsigned len)
>>>  	while (1) {
>>>  		int now = get_min(cnt, mach_id->max_transfer);
>>>  
>>> -		if (!now)
>>> +		if (now <= 0)
>>>  			break;
>>>  
>>>  		err = transfer(2, p, now, &now);
>>
>> -- 
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



