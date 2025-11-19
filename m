Delivery-date: Wed, 19 Nov 2025 16:06:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLjlP-002hKP-25
	for lore@lore.pengutronix.de;
	Wed, 19 Nov 2025 16:06:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLjlO-0005L7-UE
	for lore@pengutronix.de; Wed, 19 Nov 2025 16:06:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qo38AajaeJS7VUigLq/EOoKFrox0oZQwLgX+5a16d0k=; b=WIp+tkDhFuHYVErnhayRc6VD9Y
	Z2ck8NZuf01im2b6KOL5tpfdZ8M2BbGGNT+VCyviksU/r2yh8OaI+cLnKSQuAY291I63Zg8zWe99H
	BEx7IHGZug1UxzG55B9tGMMI9XZhCGFUgEjXjYS3D4XGJbua5YpBX3Tu3p2s+AaoBAd3QU7n9Ag31
	7Db5C637luvx49AG650Z17XqJDhlrIpwfzbLl+ml7bOj7FLYwcXpas7AR/Bs7U1uqbZq0b5UKJe+V
	+Cl4EXZBV87rbL0ihetydx+G8TrYml68VWN6/gsm82Kitv4Iyvn/WSn0SVoIksvwdhlU5J5o3V/zS
	3rA+pvSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLjkn-00000003SlQ-21RG;
	Wed, 19 Nov 2025 15:05:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLjkj-00000003Sip-2bJs
	for barebox@lists.infradead.org;
	Wed, 19 Nov 2025 15:05:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <jlu@pengutronix.de>)
	id 1vLjkg-00059i-4K; Wed, 19 Nov 2025 16:05:46 +0100
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <jlu@pengutronix.de>)
	id 1vLjkf-001Gea-32;
	Wed, 19 Nov 2025 16:05:45 +0100
Received: from localhost ([127.0.0.1] helo=[IPv6:::1])
	by ptz.office.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <jlu@pengutronix.de>)
	id 1vLjkf-0000000FJlh-3BPQ;
	Wed, 19 Nov 2025 16:05:45 +0100
Message-ID: <aba642ab3008f9a8d1a260745cada0f265b739b2.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
To: Jonas Rebmann <jre@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>,  BAREBOX <barebox@lists.infradead.org>
Date: Wed, 19 Nov 2025 16:05:45 +0100
In-Reply-To: <20251117-tlv_bind_serial-v2-1-60c7b1e3e81b@pengutronix.de>
References: <20251117-tlv_bind_serial-v2-1-60c7b1e3e81b@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2+deb12u1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_070549_680329_E36007EF 
X-CRM114-Status: GOOD (  30.86  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] tlv: Add tlv_bind_soc_uid mapping
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, 2025-11-17 at 18:14 +0100, Jonas Rebmann wrote:
> Particularly when using secure boot with signed TLVs, it may be required
> to issue and sign TLVs for specific units. As typically all units of a
> board are compiled to validate TLVs against the same key, a "binding"
> mechanism is needed if interchange of TLVs across those units must be
> prevented. This mapping binds against the UID of the SoC, rendering a
> signed TLV with such a field invalid for all but the one unit.
>=20
> When generating TLVs that use this mapping, the exact case-sensitive
> string representation of the SoC UID must be taken into account.
>=20
> Add the special mapping tlv_bind_soc_uid that aborts TLV parsing if the
> supplied string does not match the SoC UID number.
>=20
> Include this mapping in barebox_tlv_v1_mappings with tag 0x0024 to make
> it available in testing and in other setups using the generic tlv
> parsers.
>=20
> Set up tlv_register_default as a late initcall so that it's loaded after
> the SoC UID was initialized.
>=20
> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
> ---
> Changes in v2:
> - Switch to using barebox_get_soc_uid and rename and reword everything
>   accordingly (serial number -> soc uid)
> - Init tlv_register_default as late_initcall instead of device_initcall
> - Link to v1: https://lore.barebox.org/barebox/20251112-tlv_bind_serial-v=
1-1-638cf222553a@pengutronix.de
> ---
>  common/tlv/barebox.c | 18 +++++++++++++++++-
>  include/tlv/tlv.h    |  1 +
>  2 files changed, 18 insertions(+), 1 deletion(-)
>=20
> diff --git a/common/tlv/barebox.c b/common/tlv/barebox.c
> index 24de3eeaaa..fdba9fa2a5 100644
> --- a/common/tlv/barebox.c
> +++ b/common/tlv/barebox.c
> @@ -1,8 +1,12 @@
>  // SPDX-License-Identifier: GPL-2.0-only
> =20
> +#include "barebox-info.h"
>  #include <common.h>
>  #include <net.h>
>  #include <tlv/tlv.h>
> +#include <param.h>
> +#include <string.h>
> +
> =20
>  int tlv_handle_serial(struct tlv_device *dev, struct tlv_mapping *map, u=
16 len, const u8 *val)
>  {
> @@ -16,6 +20,16 @@ int tlv_handle_serial(struct tlv_device *dev, struct t=
lv_mapping *map, u16 len,
>  	return 0;
>  }
> =20
> +int tlv_bind_soc_uid(struct tlv_device *dev, struct tlv_mapping *map, u1=
6 len, const u8 *val)
> +{
> +	char *tlv_serial =3D basprintf("%.*s", len, val);
> +
> +	if (streq_ptr(tlv_serial, barebox_get_soc_uid()))
> +		return __tlv_format_str(dev, map, len, val) ? 0 : -ENOMEM;
> +
> +	return -EACCES;
> +}
> +
>  int tlv_handle_eth_address(struct tlv_device *dev, struct tlv_mapping *m=
ap, u16 len, const u8 *val)
>  {
>  	int i;
> @@ -169,6 +183,8 @@ struct tlv_mapping barebox_tlv_v1_mappings[] =3D {
>  	{ 0x0011, tlv_handle_eth_address, "ethernet-address" },
>  	/* A sequence of multiple Ethernet addresses */
>  	{ 0x0012, tlv_handle_eth_address_seq, "ethernet-address" },
> +	/* Reject TLVs if device serial number string does not match CPU serial=
 */

This still used the 'serial' term.

> +	{ 0x0024, tlv_bind_soc_uid, "bound-soc_uid"},

Don't start mixing '-' and '_'. All existing property names use only '-'.

Jan

>  	{ /* sentintel */ },
>  };
> =20
> @@ -212,4 +228,4 @@ static int tlv_register_default(void)
>  	}
>  	return 0;
>  }
> -device_initcall(tlv_register_default);
> +late_initcall(tlv_register_default);
> diff --git a/include/tlv/tlv.h b/include/tlv/tlv.h
> index 536f61646c..54e3afed45 100644
> --- a/include/tlv/tlv.h
> +++ b/include/tlv/tlv.h
> @@ -37,6 +37,7 @@ extern int tlv_format_hex(struct tlv_device *dev, struc=
t tlv_mapping *map, u16 l
>  extern int tlv_format_mac(struct tlv_device *dev, struct tlv_mapping *ma=
p, u16 len, const u8 *val);
>  extern int tlv_format_blob(struct tlv_device *dev, struct tlv_mapping *m=
ap, u16 len, const u8 *val);
>  extern int tlv_handle_serial(struct tlv_device *dev, struct tlv_mapping =
*map, u16 len, const u8 *val);
> +extern int tlv_bind_soc_uid(struct tlv_device *dev, struct tlv_mapping *=
map, u16 len, const u8 *val);
>  extern int tlv_handle_eth_address(struct tlv_device *dev, struct tlv_map=
ping *map, u16 len, const u8 *val);
>  extern int tlv_handle_eth_address_seq(struct tlv_device *dev, struct tlv=
_mapping *map, u16 len, const u8 *val);
> =20
>=20
> ---
> base-commit: bafc52d7dc93accb213271e3e5c267c4335d8cb2
> change-id: 20251112-tlv_bind_serial-b8b24a6fd4a0
>=20
> Best regards,
> -- =20
> Jonas Rebmann <jre@pengutronix.de>
>=20
>=20
>=20

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


