Delivery-date: Tue, 18 Nov 2025 09:41:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLHGp-002GRE-1i
	for lore@lore.pengutronix.de;
	Tue, 18 Nov 2025 09:41:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLHGo-0007tQ-TS
	for lore@pengutronix.de; Tue, 18 Nov 2025 09:41:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=01bZjW70zMFcharyVSWQvP041A8OyZfA2UWf1S5geY0=; b=uIicf4bVCb83w8AJpYkh+tMQdC
	KtXw9QveJHzl4Pf6Y1xdyftq8LOlLB9ae9O16BjLkSqph58IAKnC2hYFc+mCVEdF79TQNUKrrmERy
	X9slN30l7RGEkmsHPUI8qIIK1i2Ffk0vuautY4K+TR19uTU1IylGoXk5pyM6r06dyK/9IE2qnkD9G
	/v+1LYoxj11r+hPLWL8G9v2du1jJZdlDk0hk4uMR1MXVy89q97OMa2InsInybelNANge9wz+FlrJt
	osWyKhxW1HmrL4+7UKGxuPtZJlRDZijGdnp4J9JRNInsUGSEVoCc+RGdmwPYgllgsioJKkGwHafE4
	NsnCL4gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLHG0-000000004HL-0bZx;
	Tue, 18 Nov 2025 08:40:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLHFw-000000004GQ-0dy2
	for barebox@lists.infradead.org;
	Tue, 18 Nov 2025 08:40:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vLHFu-0007lK-HZ; Tue, 18 Nov 2025 09:40:06 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vLHFu-0013I2-17;
	Tue, 18 Nov 2025 09:40:06 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vLHFu-00A98U-0k;
	Tue, 18 Nov 2025 09:40:06 +0100
Date: Tue, 18 Nov 2025 09:40:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jonas Rebmann <jre@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aRww5p7AxPtgEmgm@pengutronix.de>
References: <20251117-tlv_bind_serial-v2-1-60c7b1e3e81b@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251117-tlv_bind_serial-v2-1-60c7b1e3e81b@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_004008_191746_AF6836C4 
X-CRM114-Status: GOOD (  31.21  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] tlv: Add tlv_bind_soc_uid mapping
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Nov 17, 2025 at 06:14:06PM +0100, Jonas Rebmann wrote:
> Particularly when using secure boot with signed TLVs, it may be required
> to issue and sign TLVs for specific units. As typically all units of a
> board are compiled to validate TLVs against the same key, a "binding"
> mechanism is needed if interchange of TLVs across those units must be
> prevented. This mapping binds against the UID of the SoC, rendering a
> signed TLV with such a field invalid for all but the one unit.
> 
> When generating TLVs that use this mapping, the exact case-sensitive
> string representation of the SoC UID must be taken into account.

Do we really want to have this case-sensitive? I am not sure we're not
creating problems with this once somebody changes the case for
compatibility with the kernel, it was accidently wrong etc.

> 
> Add the special mapping tlv_bind_soc_uid that aborts TLV parsing if the
> supplied string does not match the SoC UID number.
> 
> Include this mapping in barebox_tlv_v1_mappings with tag 0x0024 to make
> it available in testing and in other setups using the generic tlv
> parsers.
> 
> Set up tlv_register_default as a late initcall so that it's loaded after
> the SoC UID was initialized.
> 
> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
> ---
> Changes in v2:
> - Switch to using barebox_get_soc_uid and rename and reword everything
>   accordingly (serial number -> soc uid)
> - Init tlv_register_default as late_initcall instead of device_initcall
> - Link to v1: https://lore.barebox.org/barebox/20251112-tlv_bind_serial-v1-1-638cf222553a@pengutronix.de
> ---
>  common/tlv/barebox.c | 18 +++++++++++++++++-
>  include/tlv/tlv.h    |  1 +
>  2 files changed, 18 insertions(+), 1 deletion(-)
> 
> diff --git a/common/tlv/barebox.c b/common/tlv/barebox.c
> index 24de3eeaaa..fdba9fa2a5 100644
> --- a/common/tlv/barebox.c
> +++ b/common/tlv/barebox.c
> @@ -1,8 +1,12 @@
>  // SPDX-License-Identifier: GPL-2.0-only
>  
> +#include "barebox-info.h"
>  #include <common.h>
>  #include <net.h>
>  #include <tlv/tlv.h>
> +#include <param.h>
> +#include <string.h>
> +
>  
>  int tlv_handle_serial(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val)
>  {
> @@ -16,6 +20,16 @@ int tlv_handle_serial(struct tlv_device *dev, struct tlv_mapping *map, u16 len,
>  	return 0;
>  }
>  
> +int tlv_bind_soc_uid(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val)
> +{
> +	char *tlv_serial = basprintf("%.*s", len, val);

tlv_serial is not freed.

> +
> +	if (streq_ptr(tlv_serial, barebox_get_soc_uid()))
> +		return __tlv_format_str(dev, map, len, val) ? 0 : -ENOMEM;

Why not simply forward the return value __tlv_format_str() instead?
(which is 0 or -ENOMEM anyway).

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


