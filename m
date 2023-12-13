Delivery-date: Wed, 13 Dec 2023 07:48:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rDJ30-001yUN-2u
	for lore@lore.pengutronix.de;
	Wed, 13 Dec 2023 07:48:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rDJ31-0004Do-4c
	for lore@pengutronix.de; Wed, 13 Dec 2023 07:48:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HAZXe9xvb9vjGz+rPBlhJvQSr1Q7gEPJmCQfIIzXRUo=; b=0DCSmN3Jedc2njYBefcmXom781
	ND2UpW3hvC8L69h9R6kDYpw7OkmdOGL+le5iOhG7PVJkbKB88VCif7MGKR3HtfMf1bVMLwOOHm2Hw
	CBqPPdK83sjvMuWtOwraQHDUmlnzQUThjDOAj5fXj3L7YcuB6rl0fD3r6l+cg9q5b59ZfP7qOOsTW
	oh0jiMrtdbatf4LU0ZI+m1/utntRcbZ1LG2U+K2LS8+R/EWdDxk6o7MCE+gt7gyJ3C8Nvb1MBacfx
	36yLoCDqtlAW9v3tLw4rr0bU0yhX41CSfv+5FX23E2FZLSkdAvpIs9XNONM8ONDV3bWpkuBIM8t2Q
	cMwtEQhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDJ22-00DpLy-1y;
	Wed, 13 Dec 2023 06:47:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDJ1z-00DpLC-1R
	for barebox@lists.infradead.org;
	Wed, 13 Dec 2023 06:47:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rDJ1y-0003Dh-4U; Wed, 13 Dec 2023 07:47:42 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rDJ1x-00FViS-OR; Wed, 13 Dec 2023 07:47:41 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rDJ1x-006kYd-M6; Wed, 13 Dec 2023 07:47:41 +0100
Date: Wed, 13 Dec 2023 07:47:41 +0100
To: Michael Olbrich <m.olbrich@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231213064741.GG1318922@pengutronix.de>
References: <20231206131145.3096043-1-m.olbrich@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231206131145.3096043-1-m.olbrich@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231212_224743_485214_6BED5B85 
X-CRM114-Status: GOOD (  18.22  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] efi: add more helper functions to write EFI variables
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Dec 06, 2023 at 02:11:44PM +0100, Michael Olbrich wrote:
> Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
> ---
>  common/efi/payload/init.c | 38 ++++++++++++++++++++++++++++++++++++++
>  1 file changed, 38 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/common/efi/payload/init.c b/common/efi/payload/init.c
> index b990b54b2678..19be7ff07fb6 100644
> --- a/common/efi/payload/init.c
> +++ b/common/efi/payload/init.c
> @@ -107,6 +107,44 @@ int efi_set_variable_usec(char *name, efi_guid_t *vendor, uint64_t usec)
>  				(strlen(buf)+1) * sizeof(wchar_t));
>  }
>  
> +static int efi_set_variable_printf(char *name, efi_guid_t *vendor, const char *fmt, ...)
> +{
> +	va_list args;
> +	char *buf;
> +	wchar_t *buf16;
> +
> +	va_start(args, fmt);
> +	buf = xvasprintf(fmt, args);
> +	va_end(args);
> +	buf16 = xstrdup_char_to_wchar(buf);
> +
> +	return efi_set_variable(name, vendor,
> +				EFI_VARIABLE_BOOTSERVICE_ACCESS |
> +				EFI_VARIABLE_RUNTIME_ACCESS, buf16,
> +				(strlen(buf)+1) * sizeof(wchar_t));
> +	free(buf);
> +	free(buf16);
> +}
> +
> +static int efi_set_variable_uint64_le(char *name, efi_guid_t *vendor, uint64_t value)
> +{
> +	uint8_t buf[8];
> +
> +	buf[0] = (uint8_t)(value >> 0U & 0xFF);
> +	buf[1] = (uint8_t)(value >> 8U & 0xFF);
> +	buf[2] = (uint8_t)(value >> 16U & 0xFF);
> +	buf[3] = (uint8_t)(value >> 24U & 0xFF);
> +	buf[4] = (uint8_t)(value >> 32U & 0xFF);
> +	buf[5] = (uint8_t)(value >> 40U & 0xFF);
> +	buf[6] = (uint8_t)(value >> 48U & 0xFF);
> +	buf[7] = (uint8_t)(value >> 56U & 0xFF);
> +
> +	return efi_set_variable(name, vendor,
> +				EFI_VARIABLE_BOOTSERVICE_ACCESS |
> +				EFI_VARIABLE_RUNTIME_ACCESS, buf,
> +				sizeof(buf));
> +}
> +
>  struct efi_boot {
>  	u32 attributes;
>  	u16 file_path_len;
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


