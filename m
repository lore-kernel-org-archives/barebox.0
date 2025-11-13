Delivery-date: Thu, 13 Nov 2025 10:11:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJTMv-000UP9-0J
	for lore@lore.pengutronix.de;
	Thu, 13 Nov 2025 10:11:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJTMu-0004VD-CL
	for lore@pengutronix.de; Thu, 13 Nov 2025 10:11:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fU7mo2K0lSCKhyUwPkhmaSrX1SHTnpS1HN2zPz1cPss=; b=ZHEURrqEyrUabmZsDzKFPvMbS5
	lr5U8AIelbFCaXNQcHTCCscF3hzFn27UOe1LLY+EWAulVrAp/y/9YnBlhigigGXQDk9diAWOvfZ/z
	Z11iz50WPmlLQYEKK2zOvgD3cLujaYpewLhKwxmiCzL6eL2BviXUAuX28bBkYbqX2RQ1dSKZCuyOn
	UhmeoAEAcHkNrLH7CtQNqZC88StGknIW9BFOU/aVbXsUPb6+9d5QiqlIiKmtAyYyx+ERezxNFOmtr
	l/MMSEB6ZmOAzECbyWFsdyLjGcOYVRsU6xVk3f+HYV6z4N/NSuSzAbMqLsY9mA3oJ5rvQBZU7mjFW
	RL+tFdmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJTMO-0000000AAWQ-02WE;
	Thu, 13 Nov 2025 09:11:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJTMK-0000000AAVx-2OlV
	for barebox@lists.infradead.org;
	Thu, 13 Nov 2025 09:11:17 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vJTMI-0004Ok-Sn; Thu, 13 Nov 2025 10:11:14 +0100
Message-ID: <a6d6bbcb-96b7-4a43-9322-c42562cd1bf1@pengutronix.de>
Date: Thu, 13 Nov 2025 10:11:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jonas Rebmann <jre@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251112-tlv_bind_serial-v1-1-638cf222553a@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251112-tlv_bind_serial-v1-1-638cf222553a@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_011116_614851_6C0B5165 
X-CRM114-Status: GOOD (  30.51  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] tlv: Add tlv_bind_serial mapping
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 11/12/25 5:43 PM, Jonas Rebmann wrote:
> Particularly when using secure boot with signed TLVs, it may be required
> to issue and sign TLVs for specific units. As typically all units of a
> board are compiled to validate TLVs against the same key, a "binding"
> mechanism is needed if interchange of TLVs across those units must be
> prevented. This mapping binds against the SoC serial number (a.k.a. SoC
> UID) of the unit, rendering a signed TLV with such a field invalid for
> all but one unit.
> 
> When generating TLVs that use this mapping, the exact case-sensitive
> string representation of the serial_number must be taken into account:
> All existing soc drivers supply the serial_number as uppercase
> hexadecimal representation without a prefix.
> 
> Add the special mapping tlv_bind_serial that aborts TLV parsing if the
> supplied string does not match the SoC serial number.
> 
> Include this mapping in barebox_tlv_v1_mappings with tag 0x0024 to make
> it available in testing and in other setups using the generic tlv
> parsers. These parsers will store the serial_number in the
> "bound-serial-number" field.

as we have $global.serial_number, which is a different thing, I would
prefer to be more explicit here. Why not call it bound-soc-uid?

> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
> ---
>  common/tlv/barebox.c | 32 ++++++++++++++++++++++++++++++++
>  include/tlv/tlv.h    |  1 +
>  2 files changed, 33 insertions(+)
> 
> diff --git a/common/tlv/barebox.c b/common/tlv/barebox.c
> index 24de3eeaaa..cba9c3e2da 100644
> --- a/common/tlv/barebox.c
> +++ b/common/tlv/barebox.c
> @@ -3,6 +3,10 @@
>  #include <common.h>
>  #include <net.h>
>  #include <tlv/tlv.h>
> +#include <driver.h>
> +#include <param.h>
> +#include <string.h>
> +
>  
>  int tlv_handle_serial(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val)
>  {
> @@ -16,6 +20,32 @@ int tlv_handle_serial(struct tlv_device *dev, struct tlv_mapping *map, u16 len,
>  	return 0;
>  }
>  
> +int tlv_bind_serial(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val)
> +{
> +	struct bus_type *bus;
> +	struct device_d *socdev;
> +	const char *soc_serial;
> +	char *tlv_serial = basprintf("%.*s", len, val);

strndup would also work here.

> +
> +	bus = get_bus_by_name("soc");
> +	if (!bus) {
> +		pr_err("No 'soc' bus found\n");

goto out and use a common error message? That way you also cover the
case of no socdev existing.

> +		return -EACCES;
> +	}
> +
> +	for_each_device(socdev) {
> +		soc_serial = dev_get_param(socdev, "serial_number");
> +		if (!soc_serial)
> +			continue;
> +
> +		if (streq_ptr(tlv_serial, soc_serial))
> +			return __tlv_format_str(dev, map, len, val) ? 0 : -ENOMEM;

	return tlv_format_str(...) directly instead?

I talked with Sascha yesterday and I believe he is implementing a common
get_soc_uid(). If so, that might be suitable for use here.

Cheers,
Ahmad

> +
> +	}
> +
> +	return -EACCES;
> +}
> +
>  int tlv_handle_eth_address(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val)
>  {
>  	int i;
> @@ -169,6 +199,8 @@ struct tlv_mapping barebox_tlv_v1_mappings[] = {
>  	{ 0x0011, tlv_handle_eth_address, "ethernet-address" },
>  	/* A sequence of multiple Ethernet addresses */
>  	{ 0x0012, tlv_handle_eth_address_seq, "ethernet-address" },
> +	/* Reject TLVs if device serial number string does not match CPU serial */
> +	{ 0x0024, tlv_bind_serial, "bound-serial-number"},
>  	{ /* sentintel */ },
>  };
>  
> diff --git a/include/tlv/tlv.h b/include/tlv/tlv.h
> index 536f61646c..cadade27b4 100644
> --- a/include/tlv/tlv.h
> +++ b/include/tlv/tlv.h
> @@ -37,6 +37,7 @@ extern int tlv_format_hex(struct tlv_device *dev, struct tlv_mapping *map, u16 l
>  extern int tlv_format_mac(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val);
>  extern int tlv_format_blob(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val);
>  extern int tlv_handle_serial(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val);
> +extern int tlv_bind_serial(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val);
>  extern int tlv_handle_eth_address(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val);
>  extern int tlv_handle_eth_address_seq(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val);
>  
> 
> ---
> base-commit: f485ddfccf960959d25462073528d314b8bf1aea
> change-id: 20251112-tlv_bind_serial-b8b24a6fd4a0
> 
> Best regards,
> --  
> Jonas Rebmann <jre@pengutronix.de>
> 
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



