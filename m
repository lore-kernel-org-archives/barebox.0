Delivery-date: Mon, 08 Jan 2024 10:03:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rMlXr-008cJm-2V
	for lore@lore.pengutronix.de;
	Mon, 08 Jan 2024 10:03:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rMlXr-0000hc-3z
	for lore@pengutronix.de; Mon, 08 Jan 2024 10:03:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kBtM1zuGio6W/NRLqZedAMXotVrU3D4nFeZ+SwDue04=; b=P8ratVvt6s2VBo0+pqg3rNIz4B
	Zu+JuIuYyzlCXlHLV1O+g+JKxV2GUVz7ei3GNUAmsoULo5niLIm8q/xHowaijkOnLTSGsF4g3k5ss
	Abi34Li+OBkfv+RWF7IHNNi5IT0wefI4YEYajdU9G7U9Tu4ZCrciCEkz9rixSYpHtwvPJ2S6iVEt5
	VEdqKcL5zVRfuJHEjqXQ35qj2LHoF/NZMdj6gZ2BXrXOzpbY5yYis9wus8f0wyEQ479IWXaLxtPxZ
	rhjQ0hfHuN8DRRpuuFUViKOCc4Ww96ZUV4rpRnm3f873A16MnGYaAyrBifJEQuY6Ipzmjyri8kaaD
	ibj8l/5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rMlWC-004Osn-0p;
	Mon, 08 Jan 2024 09:02:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rMlW8-004Orv-2Q
	for barebox@lists.infradead.org;
	Mon, 08 Jan 2024 09:01:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rMlW7-000088-Bc; Mon, 08 Jan 2024 10:01:55 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rMlW6-001Cme-VT; Mon, 08 Jan 2024 10:01:54 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rMlW6-00ApSu-TA; Mon, 08 Jan 2024 10:01:54 +0100
Date: Mon, 8 Jan 2024 10:01:54 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240108090154.GC1318922@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
 <20240103181312.409668-91-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240103181312.409668-91-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240108_010156_787872_E11865C6 
X-CRM114-Status: GOOD (  23.06  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 090/112] vsprintf: add %pD for printing EFI device path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Jan 03, 2024 at 07:12:50PM +0100, Ahmad Fatoum wrote:
> We already have a few users that will want to print EFI device paths and
> will gain quite a few more with incoming loader support, so let's allow
> printing them directly with printf with the %pD format specifier.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  lib/vsprintf.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/lib/vsprintf.c b/lib/vsprintf.c
> index ea092c06d3d6..e41a1abee652 100644
> --- a/lib/vsprintf.c
> +++ b/lib/vsprintf.c
> @@ -20,6 +20,7 @@
>  #include <kallsyms.h>
>  #include <wchar.h>
>  #include <of.h>
> +#include <efi.h>
>  
>  #include <common.h>
>  #include <pbl.h>
> @@ -348,6 +349,15 @@ char *uuid_string(char *buf, const char *end, const u8 *addr, int field_width,
>  	return string(buf, end, uuid, field_width, precision, flags);
>  }
>  
> +static char *device_path_string(char *buf, const char *end, const struct efi_device_path *dp,
> +				int field_width, int precision, int flags)
> +{
> +	if (!dp)
> +		return string(buf, end, NULL, field_width, precision, flags);
> +
> +	return buf + device_path_to_str_buf(dp, buf, end - buf);
> +}
> +
>  static noinline_for_stack
>  char *hex_string(char *buf, const char *end, const u8 *addr, int field_width,
>  		 int precision, int flags, const char *fmt)
> @@ -519,6 +529,10 @@ static char *pointer(const char *fmt, char *buf, const char *end, const void *pt
>  	case 'J':
>  		if (fmt[1] == 'P' && IS_ENABLED(CONFIG_JSMN))
>  			return jsonpath_string(buf, end, ptr, field_width, precision, flags, fmt);
> +	case 'D':
> +		if (IS_ENABLED(CONFIG_EFI_DEVICEPATH))
> +			return device_path_string(buf, end, ptr, field_width, precision, flags);
> +		break;

Linux uses 'D' to print a filename from a struct file. This might become
useful for barebox as well, so we might better choose a different letter
here.

Otherwise I think it's ok to introduce barebox specific pointer types in
our printf implementation, even when they conflict with ones from the
kernel, but we should update the comment above this function accordingly
and clearly state when a letter is barebox specific.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


