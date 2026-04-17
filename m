Delivery-date: Fri, 17 Apr 2026 11:50:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDfqD-00D9C9-1a
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 11:50:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDfqC-0007oG-U2
	for lore@pengutronix.de; Fri, 17 Apr 2026 11:50:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AVUG65yZ+aCWvKJ6kD1G7uOUJWBRav4T0T2Dz6DQ2Q4=; b=vd/iBT4nzbuhh1h3ydYxUjNgp2
	CPcwdE4+sR/NQZByaBTXqrdyHwDq+lXGBQHgny0AmNzZRz/UJBBKhjKuSTvk2GXOint6tWGlwwy0L
	1Zun1GaE+tnzHjA7LjDbcruA5hjd5TWa6d6wAUFRK4O8K9+rwbhEAMLHx197f8uQl6/Y4YS7P0Nfs
	ujpJCOGss8UPca+eBkQxdd9a/NUJidJA3qIsI7HVdVlO4ps0hTXnckBqOgeue9JCbVjjh535ILBT8
	bsUUDl83sQH1sTCJKF1VstEr39Ixta0E+8Y8cocj7HpWXrnP1/gPzP5dJsHJN6V/sCAPjsmFJBU1Q
	0Vr08PPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDfpn-00000003rLE-0w0A;
	Fri, 17 Apr 2026 09:49:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDfpk-00000003rK6-2Cr1
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 09:49:58 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDfpi-0007df-UZ; Fri, 17 Apr 2026 11:49:54 +0200
Message-ID: <9ab4089e-f8ae-45e0-96d0-0bba9d7cb4b8@pengutronix.de>
Date: Fri, 17 Apr 2026 11:49:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Opus 4.6 (1M context)" <noreply@anthropic.com>
References: <20260402-net-dhcp-buffer-overflows-v2-0-fe4ca7c4b718@pengutronix.de>
 <20260402-net-dhcp-buffer-overflows-v2-3-fe4ca7c4b718@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260402-net-dhcp-buffer-overflows-v2-3-fe4ca7c4b718@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_024956_567090_13FA8D98 
X-CRM114-Status: GOOD (  18.16  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 3/3] net: dhcp: cap DHCP option string length to 255
 bytes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 4/2/26 8:59 AM, Sascha Hauer wrote:
> dhcp_set_string_options() stores the string length in a u8 field but
> uses the full strlen() value for memcpy(). If a user sets a DHCP
> option string (hostname, vendor_id, etc.) longer than 255 bytes, the
> length field silently truncates while memcpy() copies the full string,
> writing past the expected region in the packet buffer.
> 
> Cap str_len at 255 to match the maximum DHCP option length defined by
> RFC2132, ensuring the length field and memcpy are consistent.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Co-Authored-By: Claude Opus 4.6 (1M context) <noreply@anthropic.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  net/dhcp.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/net/dhcp.c b/net/dhcp.c
> index f4e4033351..21d48cfcf2 100644
> --- a/net/dhcp.c
> +++ b/net/dhcp.c
> @@ -173,6 +173,10 @@ static int dhcp_set_string_options(int option, const char *str, u8 *e)
>  	if (!str_len)
>  		return 0;
>  
> +	/* DHCP option length field is a single byte per RFC2132 */
> +	if (str_len > 255)
> +		str_len = 255;
> +
>  	*e++ = option;
>  	*e++ = str_len;
>  	memcpy(e, str, str_len);
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



