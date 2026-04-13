Delivery-date: Mon, 13 Apr 2026 10:24:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCCaq-00BecW-2x
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 10:24:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCCaq-0004kR-BH
	for lore@pengutronix.de; Mon, 13 Apr 2026 10:24:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JYhCasPYwlZceDPoWpXbUeXcXOsC/KR23WLsU3yrdfs=; b=e9/0FsJ66Z2KwGLoiWBzz2OpWJ
	nnSiqsqDEilvYV7+/+lEvTePgHoFy9CumxN4eOkVKiKQ2WC8aB5TCTMQDhk3ij/PkeCY5/OikdhhR
	Wx//RwGU0tMIETdOPPM+ew/Fy/i5e25MODp7VVAfMOWmyG0Lb7BcnS0jps1B+eGIMvUl4qZZIbJWz
	fGd5pyRCsO6+/lYldF6Cp8gdi3dmnWxVozZF/ZTnlCI6XQXgjdABAWBIifgYLazpnQ3qS7oWj1k2J
	bGlkNBcnvBvP1bYshvurCGkLf37G7yTTwqb+jBgiy9/8BcAsciDuD2JeSD4ewmWwkl4IrruLV+BIw
	LPtW3wMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCCaT-0000000FGUi-1byy;
	Mon, 13 Apr 2026 08:24:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCCaR-0000000FGUL-2qd1
	for barebox@bombadil.infradead.org;
	Mon, 13 Apr 2026 08:24:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=JYhCasPYwlZceDPoWpXbUeXcXOsC/KR23WLsU3yrdfs=; b=Q4i2tcWnJFDv7NSnqX4qYYvXJG
	Y6ZDW5FDxpW5vCjJd0yjU+C+4ZS8MWWvZiqpQGB5XS0Th6QljvL4Svds9oczC+EmuTSmU6lPJLuKD
	Njstw6RM6NBdFqqZ/mhdoSYNdpfPRul87L3dN1wwz8MnO6i0YeA2aH0PjuBNDgjyhysN26TyPEtjt
	xcsUQXGHsONulBt+Fo+Yl2w68n7iNPX8PRj78iAvbJe9hlJ4j9dtSBIFOy9eyyFNBPufaj4yKhz/p
	D1WJABLk87HhhL8BsWWY0hLMygVdksZsEYWdjWZuATyswit8gio+cHljUiaxfu5zchi94JSzVVRLD
	D22daU7A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCCaO-0000000GO8B-0hmP
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 08:24:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wCCaN-0004fu-30; Mon, 13 Apr 2026 10:23:59 +0200
Message-ID: <5c6536b5-c79b-4d12-bde8-f5ca11e0e813@pengutronix.de>
Date: Mon, 13 Apr 2026 10:24:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Fabian Pflug <f.pflug@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20260330-v2026-03-0-topic-soc_bin_id-v1-0-11292f75b196@pengutronix.de>
 <20260330-v2026-03-0-topic-soc_bin_id-v1-1-11292f75b196@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260330-v2026-03-0-topic-soc_bin_id-v1-1-11292f75b196@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_092400_715767_A22A0A41 
X-CRM114-Status: GOOD (  21.69  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] common: misc: add soc_uid_bin to globalvar
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 3/30/26 2:24 PM, Fabian Pflug wrote:
> uidstr and uidbuf could be the same, but don't have to be. This results
> in uncertainty on what exactly is the current UID used for
> machine_set_hashable and to compare against with TLV.
> 
> Add an additional global var, that represents a binary representation
> of the soc_uid_bin variable.
> 
> This can now be used to feed as data for bound-soc-uid into
> `bareboxtlv-generator.py` or as the value for
> `CONFIG_HABV4_CSF_UNLOCK_UID`
> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> ---
>  common/misc.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/common/misc.c b/common/misc.c
> index ecf9574f7a..f18c8b5825 100644
> --- a/common/misc.c
> +++ b/common/misc.c
> @@ -268,6 +268,7 @@ const uuid_t *barebox_get_product_uuid(void)
>  BAREBOX_MAGICVAR(global.product.uuid, "SMBIOS-reported product UUID");
>  
>  static char *soc_uid_str;
> +static char *soc_uid_bin_str;
>  static void *soc_uid;
>  static size_t soc_uid_len;
>  
> @@ -295,16 +296,19 @@ void barebox_set_soc_uid(const char *uidstr, const void *uidbuf, size_t len)
>  	soc_uid = xmemdup(uidbuf, len);
>  	soc_uid_len = len;
>  
> +	soc_uid_bin_str = xzalloc(len * 2 + 1);
> +	bin2hex(soc_uid_bin_str, uidbuf, len);
> +
>  	if (uidstr) {
>  		soc_uid_str = xstrdup(uidstr);
>  	} else {
> -		soc_uid_str = xzalloc(len * 2 + 1);
> -		bin2hex(soc_uid_str, uidbuf, len);
> +		soc_uid_str = soc_uid_bin_str;
>  	}
>  
>  	machine_id_set_hashable(uidbuf, len);
>  
>  	globalvar_add_simple_string("soc_uid", &soc_uid_str);
> +	globalvar_add_simple_string("soc_uid_bin", &soc_uid_bin_str);

I suggest renaming to soc_uid_hex.

Cheers,
Ahmad

>  }
>  BAREBOX_MAGICVAR(global.soc_uid, "SoC Unique ID");
>  
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



