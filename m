Delivery-date: Wed, 19 Aug 2026 16:05:42 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wwgvG-004snI-0N
	for lore@lore.pengutronix.de;
	Wed, 19 Aug 2026 16:05:42 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 4E9982010F9
	for <lore@pengutronix.de>; Wed, 19 Aug 2026 16:05:38 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=iHCU22YJ;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=SA1K2g1T;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RZYq6qpmAr8uzikapWDLOII+nsfPJD4gnIBBRWn7tdo=; b=iHCU22YJg61bgl5KqyIM7PCie6
	PfIxAp5TMf7il3LtgvHBCHSga/P1eiwUDahnDiQST0nZMWyEP+n6kRiIPXvNlLwjDgRWNoQo+ULss
	2u5kQ7r0sbg1dMmImlcuAlHKZEXvu9bBafY04gNvvD4I6gXuKm0flsSqjnwHA/inwdiZPMjpABvkQ
	y7O0FC9Iaay1tHbt2UBJed708Gyc4zM0jKGjto3fTLOXpUVt7sivxrsWCqrTg6tkD5cR+6BiowXH7
	WhScBlfLzTooDaT77W2bo/PNS+eOxhvRLGq1taSYlfNDHn6TMWuWLAIIDXlu1ZpPPnSWJzmFanyvx
	6gYC92iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwgtf-00000009vjL-1EKT;
	Wed, 19 Aug 2026 14:04:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwgte-00000009vgS-0PcV
	for barebox@bombadil.infradead.org;
	Wed, 19 Aug 2026 14:04:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=RZYq6qpmAr8uzikapWDLOII+nsfPJD4gnIBBRWn7tdo=; b=SA1K2g1Tp/V7MYuGxYPL7M6md8
	ycVL5Wsg1Qk3Mhllxm7VsZPJE1nSEhVY+zz2YgABxy/fvIMBpbe1C8Lismd2ITChV4wD4+1gXLV3k
	33dqBkJ9cqAPnDlQgBRqz9L/ZtQw15T6iKIkFfZr5trD/o0h+wJN+0ziloqM3Dj/RGkHJteIQU7oy
	6s9Imi/NWvAKN4FdvpcL2zT6+H3O4tDNOJEiwfMLgJ/wZVHZYqmF+y3xzKK1+zoveUjDQizjguwUF
	TOJ10D7iKKf72im9YT6wjHJsFtyZN6m7XUE7uw9ltCYNtaWoX2G8ijklsF1POTSRNicaHqrq9/dyp
	6z8euvJw==;
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wwgtW-00000002S4D-2klQ
	for barebox@lists.infradead.org;
	Wed, 19 Aug 2026 14:04:00 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 34321200740;
	Wed, 19 Aug 2026 16:03:47 +0200 (CEST)
Message-ID: <3b8a01d2-dd9e-4de2-aa2b-ed5afcb5f309@pengutronix.de>
Date: Wed, 19 Aug 2026 16:03:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] efi: usb: add header for usb-efi
To: Fabian Pflug <f.pflug@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20260817-v2026-06-0-topic-efi_usb-v2-0-3d45c1782ccc@pengutronix.de>
 <20260817-v2026-06-0-topic-efi_usb-v2-1-3d45c1782ccc@pengutronix.de>
 <825db791-decf-448f-a1d0-8368d1f85add@pengutronix.de>
 <712f43633accc86e3f16b4a1f04beef41cdeadd8.camel@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <712f43633accc86e3f16b4a1f04beef41cdeadd8.camel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260819_150354_883231_F240ADDA 
X-CRM114-Status: GOOD (  22.60  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Fabian, On 8/19/26 3:32 PM, Fabian Pflug wrote: > Hey,
   > > On Wed, 2026-08-19 at 12:01 +0200, Ahmad Fatoum wrote: >> Hello, >> >>
    On 8/17/26 10:47 AM, Fabian Pflug wrote: >>> Convert the spec in [1] to a
    head [...] 
 
 Content analysis details:   (-0.0 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: g6bbumb3ut7g9ithzcqu9sccqnjmaz61
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:900:1d::77:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	DKIM_MIXED(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 4E9982010F9

Hi Fabian,

On 8/19/26 3:32 PM, Fabian Pflug wrote:
> Hey,
> 
> On Wed, 2026-08-19 at 12:01 +0200, Ahmad Fatoum wrote:
>> Hello,
>>
>> On 8/17/26 10:47 AM, Fabian Pflug wrote:
>>> Convert the spec in [1] to a header, that is useable for barebox.
>>> The async headers are not defined, since it is currently not planned to
>>> support async in addition to sync.
>>>
>>> [1] https://uefi.org/specs/UEFI/2.11/17_Protocols_USB_Support.html
>>
>> Some nitpicks below. You don't need to resend for just those, but if you
>> are sending a v2, it would be good to address these as well.
>>
>>>
>>> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
>>
>> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>
>>>
>>> ---
>>> v2:
>>> - Fixed wrong type in header for get_string_descriptor
>>> ---
>>>  include/efi/protocol/usb.h | 66 ++++++++++++++++++++++++++++++++++++++++++++++
>>>  1 file changed, 66 insertions(+)
>>>
>>> diff --git a/include/efi/protocol/usb.h b/include/efi/protocol/usb.h
>>> new file mode 100644
>>> index 0000000000..78953a4fa7
>>> --- /dev/null
>>> +++ b/include/efi/protocol/usb.h
>>> @@ -0,0 +1,66 @@
>>> +/* SPDX-License-Identifier: GPL-2.0-only */
>>> +
>>> +#ifndef __EFI_PROTOCOL_USB_H_
>>> +#define __EFI_PROTOCOL_USB_H_
>>> +
>>> +#include <efi/types.h>
>>> +#include <linux/usb/usb.h>
>>
>> Nitpick: I would drop this and just predeclare struct devrequest.
> 
> It is also
> 
> struct usb_config_descriptor
> struct usb_device_descriptor
> struct usb_interface_descriptor
> struct usb_endpoint_descriptor

as all of these are used behind a pointer, just predeclare them as well
(don't define them).

> 
>>
>>> +
>>> +enum efi_usb_data_direction {
>>> +	EFI_USB_DATA_IN,
>>> +	EFI_USB_DATA_OUT,
>>> +	EFI_USB_NO_DATA
>>> +};
>>> +
>>> +//
>>> +// Error code for USB Transfer Results
>>> +//
>>> +#define EFI_USB_NOERROR 0x0000
>>> +#define EFI_USB_ERR_NOTEXECUTE 0x0001
>>> +#define EFI_USB_ERR_STALL 0x0002
>>> +#define EFI_USB_ERR_BUFFER 0x0004
>>> +#define EFI_USB_ERR_BABBLE 0x0008
>>> +#define EFI_USB_ERR_NAK 0x0010
>>> +#define EFI_USB_ERR_CRC 0x0020
>>> +#define EFI_USB_ERR_TIMEOUT 0x0040
>>> +#define EFI_USB_ERR_BITSTUFF 0x0080
>>> +#define EFI_USB_ERR_SYSTEM 0x0100
>>
>> Nitpick: Add some tabs between the macros and the values for indentation?
> 
> I could, but clang-format will remove the tabs. And I like to just call it to format the rest and not have the hassle to
> revert formatting here.

Does it also do that, when you sync against an up-to-date .clang-format
from the kernel?

Cheers,
Ahmad

> 
> /Fabian
> 
>>
>>> +struct efi_usb_io_protocol {
>>> +	efi_status_t(EFIAPI *control_transfer)(
>>> +		struct efi_usb_io_protocol *this, struct devrequest *request,
>>> +		enum efi_usb_data_direction direction, u32 timeout, void *data,
>>> +		efi_uintn_t length, u32 *status);
>>> +	efi_status_t(EFIAPI *bulk_transfer)(struct efi_usb_io_protocol *this,
>>> +					    u8 device_endpoint, void *data,
>>> +					    efi_uintn_t *length,
>>> +					    efi_uintn_t timeout, u32 *status);
>>> +	void *usb_io_async_interrupt_transfer;
>>> +	efi_status_t(EFIAPI *sync_interrupt_transfer)(
>>> +		struct efi_usb_io_protocol *this, u8 device_endpoint,
>>> +		void *data, efi_uintn_t *length, efi_uintn_t timeout,
>>> +		u32 *status);
>>> +	void *efi_usb_io_isochronous_transfer;
>>> +	void *efi_usb_io_async_isochronous_transfer;
>>> +	efi_status_t(EFIAPI *get_device_descriptor)(
>>> +		struct efi_usb_io_protocol *this,
>>> +		struct usb_device_descriptor *desc);
>>> +	efi_status_t(EFIAPI *get_config_descriptor)(
>>> +		struct efi_usb_io_protocol *this,
>>> +		struct usb_config_descriptor *desc);
>>> +	efi_status_t(EFIAPI *get_interface_descriptor)(
>>> +		struct efi_usb_io_protocol *this,
>>> +		struct usb_interface_descriptor *desc);
>>> +	efi_status_t(EFIAPI *get_endpoint_descriptor)(
>>> +		struct efi_usb_io_protocol *this, u8 index,
>>> +		struct usb_endpoint_descriptor *desc);
>>> +	efi_status_t(EFIAPI *get_string_descriptor)(
>>> +		struct efi_usb_io_protocol *this, u16 lang_id, u8 string_id,
>>> +		wchar_t **desc);
>>> +	efi_status_t(EFIAPI *get_supported_languages)(
>>> +		struct efi_usb_io_protocol *this, u16 **lang_id_table,
>>> +		u16 *table_size);
>>> +	efi_status_t(EFIAPI *port_reset)(struct efi_usb_io_protocol *this);
>>> +};
>>> +
>>> +#endif
>>>

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



