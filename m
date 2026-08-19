Delivery-date: Wed, 19 Aug 2026 12:10:13 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wwdFM-004pDl-0h
	for lore@lore.pengutronix.de;
	Wed, 19 Aug 2026 12:10:13 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id F01ED201AC8
	for <lore@pengutronix.de>; Wed, 19 Aug 2026 12:10:11 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=gczTz6kx;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ilomGg1ImufzA6IUSjTDybHAvrHylZme192842PdTWY=; b=gczTz6kxu+WEjsFOO2zVXQ7r1m
	eUkkVr2+YPiNzYMjN9SypCT70KxcbYkpF8Vu1EQKr4VmMABHU0nz99+KAW0VvCQQLecB5x9azs86G
	anq8bCbhAw/4M5O7GSQLvgEd1aEi4RJCnCW+WTI5rCqIb2n20KzufrlwYzdQBwucbQHW9WNIyC0zl
	+iwl2WuJ+h0GpgvpBIH2VFMZxk1OemPfksogwW412vLOS9fGzl4WNjWyeWtxxMdSmI/x6Rb1rIKRo
	2mId0FKPBPYxw5LAH09WdP2jHKe8gYPxtCJuvRSvcrbFhZnFal7DR7uhCHKkiGcpuiwxHw6qt7zh3
	Zi8oUjhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwd6d-00000009T4k-0vO5;
	Wed, 19 Aug 2026 10:01:11 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwd6X-00000009T3s-2VAa
	for barebox@lists.infradead.org;
	Wed, 19 Aug 2026 10:01:08 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 5408E2020ED;
	Wed, 19 Aug 2026 12:01:03 +0200 (CEST)
Message-ID: <825db791-decf-448f-a1d0-8368d1f85add@pengutronix.de>
Date: Wed, 19 Aug 2026 12:01:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] efi: usb: add header for usb-efi
To: Fabian Pflug <f.pflug@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20260817-v2026-06-0-topic-efi_usb-v2-0-3d45c1782ccc@pengutronix.de>
 <20260817-v2026-06-0-topic-efi_usb-v2-1-3d45c1782ccc@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260817-v2026-06-0-topic-efi_usb-v2-1-3d45c1782ccc@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260819_030106_143399_D5A8FC43 
X-CRM114-Status: GOOD (  20.46  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello, On 8/17/26 10:47 AM, Fabian Pflug wrote: > Convert
   the spec in [1] to a header, that is useable for barebox. > The async headers
    are not defined, since it is currently not planned to > support async i [...]
    
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
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
X-Stat-Signature: hxf645h7qhb9yt9dz1zimsba3rfm4ey6
X-Spamd-Result: default: False [-7.51 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:900:1d::77:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: F01ED201AC8

Hello,

On 8/17/26 10:47 AM, Fabian Pflug wrote:
> Convert the spec in [1] to a header, that is useable for barebox.
> The async headers are not defined, since it is currently not planned to
> support async in addition to sync.
> 
> [1] https://uefi.org/specs/UEFI/2.11/17_Protocols_USB_Support.html

Some nitpicks below. You don't need to resend for just those, but if you
are sending a v2, it would be good to address these as well.

> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> 
> ---
> v2:
> - Fixed wrong type in header for get_string_descriptor
> ---
>  include/efi/protocol/usb.h | 66 ++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 66 insertions(+)
> 
> diff --git a/include/efi/protocol/usb.h b/include/efi/protocol/usb.h
> new file mode 100644
> index 0000000000..78953a4fa7
> --- /dev/null
> +++ b/include/efi/protocol/usb.h
> @@ -0,0 +1,66 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +
> +#ifndef __EFI_PROTOCOL_USB_H_
> +#define __EFI_PROTOCOL_USB_H_
> +
> +#include <efi/types.h>
> +#include <linux/usb/usb.h>

Nitpick: I would drop this and just predeclare struct devrequest.

> +
> +enum efi_usb_data_direction {
> +	EFI_USB_DATA_IN,
> +	EFI_USB_DATA_OUT,
> +	EFI_USB_NO_DATA
> +};
> +
> +//
> +// Error code for USB Transfer Results
> +//
> +#define EFI_USB_NOERROR 0x0000
> +#define EFI_USB_ERR_NOTEXECUTE 0x0001
> +#define EFI_USB_ERR_STALL 0x0002
> +#define EFI_USB_ERR_BUFFER 0x0004
> +#define EFI_USB_ERR_BABBLE 0x0008
> +#define EFI_USB_ERR_NAK 0x0010
> +#define EFI_USB_ERR_CRC 0x0020
> +#define EFI_USB_ERR_TIMEOUT 0x0040
> +#define EFI_USB_ERR_BITSTUFF 0x0080
> +#define EFI_USB_ERR_SYSTEM 0x0100

Nitpick: Add some tabs between the macros and the values for indentation?

> +struct efi_usb_io_protocol {
> +	efi_status_t(EFIAPI *control_transfer)(
> +		struct efi_usb_io_protocol *this, struct devrequest *request,
> +		enum efi_usb_data_direction direction, u32 timeout, void *data,
> +		efi_uintn_t length, u32 *status);
> +	efi_status_t(EFIAPI *bulk_transfer)(struct efi_usb_io_protocol *this,
> +					    u8 device_endpoint, void *data,
> +					    efi_uintn_t *length,
> +					    efi_uintn_t timeout, u32 *status);
> +	void *usb_io_async_interrupt_transfer;
> +	efi_status_t(EFIAPI *sync_interrupt_transfer)(
> +		struct efi_usb_io_protocol *this, u8 device_endpoint,
> +		void *data, efi_uintn_t *length, efi_uintn_t timeout,
> +		u32 *status);
> +	void *efi_usb_io_isochronous_transfer;
> +	void *efi_usb_io_async_isochronous_transfer;
> +	efi_status_t(EFIAPI *get_device_descriptor)(
> +		struct efi_usb_io_protocol *this,
> +		struct usb_device_descriptor *desc);
> +	efi_status_t(EFIAPI *get_config_descriptor)(
> +		struct efi_usb_io_protocol *this,
> +		struct usb_config_descriptor *desc);
> +	efi_status_t(EFIAPI *get_interface_descriptor)(
> +		struct efi_usb_io_protocol *this,
> +		struct usb_interface_descriptor *desc);
> +	efi_status_t(EFIAPI *get_endpoint_descriptor)(
> +		struct efi_usb_io_protocol *this, u8 index,
> +		struct usb_endpoint_descriptor *desc);
> +	efi_status_t(EFIAPI *get_string_descriptor)(
> +		struct efi_usb_io_protocol *this, u16 lang_id, u8 string_id,
> +		wchar_t **desc);
> +	efi_status_t(EFIAPI *get_supported_languages)(
> +		struct efi_usb_io_protocol *this, u16 **lang_id_table,
> +		u16 *table_size);
> +	efi_status_t(EFIAPI *port_reset)(struct efi_usb_io_protocol *this);
> +};
> +
> +#endif
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



