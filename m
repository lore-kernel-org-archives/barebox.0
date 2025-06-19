Delivery-date: Thu, 19 Jun 2025 20:43:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSKES-0091tb-0P
	for lore@lore.pengutronix.de;
	Thu, 19 Jun 2025 20:43:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSKER-00033g-Gp
	for lore@pengutronix.de; Thu, 19 Jun 2025 20:43:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DtkTZYyc3hwQtsTwiPKm+e7UKgkqVG3Tj0t1udQD3qU=; b=0YswXgynabaaBGEkYmAAcqQGuF
	a1OVGbX3NA8+vfpxPRtH3RN5LglpgoW9jUb46X1khxpiqI9i1dJFPw4eLYA1S0fJElR1JpDYztQA3
	8Re43KjFKiph2lwTF5ri6RFfu+L9qH++3CtmMjLKcrk9ou90TXEzu5ttf7W57vhMhWlahvuiajqQb
	EYWLML1WunKiIWMRIwxC6+8rEvUMhtbTtlIzDLAgzectt6qxv8D1HGD5xCf2crUHqpdHWF6Ru6Ccn
	B9AVBgGNGB5lYGDM90MHuPZAa+4s5tXHDZltbeC5Gv+0CQu0PuSwJcuBby5lJPy17Fhc2+/ioqQFO
	ZS0WsERg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSKDv-0000000E0vg-2VJX;
	Thu, 19 Jun 2025 18:42:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSK1e-0000000DsyF-2x1D
	for barebox@bombadil.infradead.org;
	Thu, 19 Jun 2025 18:30:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=DtkTZYyc3hwQtsTwiPKm+e7UKgkqVG3Tj0t1udQD3qU=; b=Fn2otlj/CV21TRV0aCVuUatZWX
	oLX1wx4jE1Di3jveZllYdKPuQNR0qL5Sp9QoS56j+kCUjif9XOyaKgN7Wl+oO7N3PhvDkoKHEn8KQ
	8hpx/NHYslpAlIM/xFAtqvtzudr+g3n85JlSZ0H0+umCEXOalB7bG+KvnBkWZKrXx8d+yoRP2kPrc
	DH67l3eXDecdBrr9WIYOvdx4bfuh7IQFFJtUZ/HVKHwFZgmdglkB+TSh/m/L3hf6xltbIZgnxGo3T
	LhjcF9FnpCQ1pPfawZSoVRMwerME99Nix6LMa/9biWDesTj0lOEKgiyH/EwAq79HqsR4ra9EkTl5B
	qD5TjCXw==;
Received: from mailrelay-egress4.pub.mailoutpod2-cph3.one.com ([46.30.211.179])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSK1Z-00000004WNF-3lb5
	for barebox@lists.infradead.org;
	Thu, 19 Jun 2025 18:30:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1750353239; x=1750958039;
	d=ravnborg.org; s=rsa1;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=DtkTZYyc3hwQtsTwiPKm+e7UKgkqVG3Tj0t1udQD3qU=;
	b=OnYuO//U2uikPe5HnsMXcBWiAmGlrCe7bXeVgHekfGXFlxbp4DU1dFakDEckdLEO6tqEb3GzO4T03
	 R7LjJXXVA/WWZiXnyDKE6X2vGLOnVK+Sdikym0AWXOH9eIL2l94HRv/DA+z6twlMSEKwz/xm5BYsrD
	 zPeG9GXkOJcfTF3RyyNT0fB45TSQTkmqZ+3SYhYqK0B79JrGIkPQNhybJX8P9qC4Lv7Qtw0xutX15u
	 AoE/igHTcVJrZtIvOFipX90a/bQPN0QBCmKEDhArZyQVRaE02RTu+vBnwYvtCyqY3eVxH3IXoJNu3q
	 W48ibo/C/boosw8ieDtakCCGNiD4ltA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1750353239; x=1750958039;
	d=ravnborg.org; s=ed1;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=DtkTZYyc3hwQtsTwiPKm+e7UKgkqVG3Tj0t1udQD3qU=;
	b=OXN9LVDZFx2D2VLJEPacdUypa8GBPUdiRWybuGbhA+j0gsplfkkcu8Z4Su2HQInKJISE2QO9IPABb
	 LKH/QYWDw==
X-HalOne-ID: c8c9dfd0-4d30-11f0-a573-f3c0f7fef5ee
Received: from ravnborg.org (2-105-16-150-cable.dk.customer.tdc.net [2.105.16.150])
	by mailrelay4.pub.mailoutpod2-cph3.one.com (Halon) with ESMTPSA
	id c8c9dfd0-4d30-11f0-a573-f3c0f7fef5ee;
	Thu, 19 Jun 2025 17:13:59 +0000 (UTC)
Date: Thu, 19 Jun 2025 19:13:58 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20250619171358.GA1859740@ravnborg.org>
References: <20250619103440.76796-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250619103440.76796-1-eagle.alexander923@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_193010_860160_89561DC7 
X-CRM114-Status: GOOD (  19.76  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: at91: remove unused soc type/subtype getter
 functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Alexander.

On Thu, Jun 19, 2025 at 01:34:40PM +0300, Alexander Shiyan wrote:
> The functions at91_get_soc_type() and at91_get_soc_subtype() were
> used only within the setup.c file. They provided simple access to
> string arrays but added an unnecessary layer of abstraction.
> Since they are not used elsewhere, we can safely remove them and
> access the string arrays directly.
> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  arch/arm/mach-at91/setup.c | 22 ++++++----------------
>  include/mach/at91/cpu.h    |  2 --
>  2 files changed, 6 insertions(+), 18 deletions(-)
> 
> diff --git a/arch/arm/mach-at91/setup.c b/arch/arm/mach-at91/setup.c
> index e726495726..5969c32e54 100644
> --- a/arch/arm/mach-at91/setup.c
> +++ b/arch/arm/mach-at91/setup.c
> @@ -281,12 +281,6 @@ static const char *soc_name[] = {
>  	[AT91_SOC_NONE]		= "Unknown"
>  };
>  
> -const char *at91_get_soc_type(struct at91_socinfo *c)
> -{
> -	return soc_name[c->type];
> -}
> -EXPORT_SYMBOL(at91_get_soc_type);
> -
>  static const char *soc_subtype_name[] = {
>  	[AT91_SOC_RM9200_BGA]	= "at91rm9200 BGA",
>  	[AT91_SOC_RM9200_PQFP]	= "at91rm9200 PQFP",
> @@ -330,12 +324,6 @@ static const char *soc_subtype_name[] = {
>  	[AT91_SOC_SUBTYPE_NONE]	= "Unknown"
>  };
>  
> -const char *at91_get_soc_subtype(struct at91_socinfo *c)
> -{
> -	return soc_subtype_name[c->subtype];
> -}
> -EXPORT_SYMBOL(at91_get_soc_subtype);
> -
>  static int at91_detect(void)
>  {
>  	at91_soc_initdata.type = AT91_SOC_NONE;
> @@ -353,9 +341,9 @@ static int at91_detect(void)
>  		panic("AT91: Impossible to detect the SOC type");
>  
>  	pr_info("AT91: Detected soc type: %s\n",
> -		at91_get_soc_type(&at91_soc_initdata));
> +		soc_name[at91_soc_initdata.type]);
>  	pr_info("AT91: Detected soc subtype: %s\n",
> -		at91_get_soc_subtype(&at91_soc_initdata));
> +		soc_subtype_name[at91_soc_initdata.subtype]);
>  
>  	/* Init clock subsystem */
>  	at91_clock_init();
> @@ -372,8 +360,10 @@ static int at91_soc_device(void)
>  	struct device *dev;
>  
>  	dev = add_generic_device_res("soc", DEVICE_ID_SINGLE, NULL, 0, NULL);
> -	dev_add_param_fixed(dev, "name", (char*)at91_get_soc_type(&at91_soc_initdata));
> -	dev_add_param_fixed(dev, "subname", (char*)at91_get_soc_subtype(&at91_soc_initdata));
> +	dev_add_param_fixed(dev, "name",
> +			    (char*)soc_name[at91_soc_initdata.type]);
> +	dev_add_param_fixed(dev, "subname",
> +			    (char*)soc_subtype_name[at91_soc_initdata.subtype]);
The cast can go, as dev_add_param_fixed() take a const already.
Otherwise looks good.
It is good to see at91 gets some attention, despite the age.

	Sam


