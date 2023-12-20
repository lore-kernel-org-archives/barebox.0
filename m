Delivery-date: Wed, 20 Dec 2023 10:01:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFsSd-005tFJ-1R
	for lore@lore.pengutronix.de;
	Wed, 20 Dec 2023 10:01:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFsSc-0005hg-Rw
	for lore@pengutronix.de; Wed, 20 Dec 2023 10:01:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kblzI6GWyZr1akh79Ee2mAXIh78lcvCLgKmHX/zdcvo=; b=fdFMIDN8U987uxrSw2XmAbOifh
	Fa/ELPdQidxywZ4CJkJfrvBtYMYh4BAz6S+Hs5P0FF+IqY4xfyJfLAqN9V0FEzKoTqWdn2VyKBhEC
	get/RPWA3poDaBCVHpKBvz4sgCE3YwaTJaBnjX1YbHoc4B1WDl9OsM+AP99/O64TqLweWvQwAbKfq
	pPL3RxVG5BVfUHzfQnom7ESWeNA+l52MufPzgiykwnr9NR4oqFWiZVaU/yEvJK5gl2TNYjeLpsaFz
	ltWVgtKd7MqG3F+b5Bg2WPii8p79ZUsaah5C7AFSTdgdgbttaIE1+Fa0Nbv+OZaTmkZS9vh8BWhwz
	a9WlafDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFsRI-00GfNx-2J;
	Wed, 20 Dec 2023 09:00:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFsRF-00GfNS-1j
	for barebox@lists.infradead.org;
	Wed, 20 Dec 2023 09:00:27 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rFsRA-000583-Fe; Wed, 20 Dec 2023 10:00:20 +0100
Message-ID: <27a9d947-2358-4e05-ba77-32b26b3b3125@pengutronix.de>
Date: Wed, 20 Dec 2023 10:00:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Robin van der Gracht <robin@protonic.nl>, barebox@lists.infradead.org
Cc: michiel.schelfhout@protonic.nl
References: <20231220082908.360302-1-robin@protonic.nl>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20231220082908.360302-1-robin@protonic.nl>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231220_010025_574729_16E72838 
X-CRM114-Status: GOOD (  10.52  )
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
Subject: Re: [PATCH v2] nvmem: regmap: Fix nvmem size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Robin,

Thanks for the fix.

On 20.12.23 09:29, Robin van der Gracht wrote:
> -	if (roffset + rbytes > stride * regmap_get_max_register(map))
> +	if (roffset + rbytes > regmap_size_bytes(map) * stride)

Shouldn't stride on the right hand side be dropped?

Cheers,
Ahmad

>  		return -EINVAL;
>  
>  	for (i = roffset; i < roffset + rbytes; i += stride) {
> @@ -78,7 +78,7 @@ nvmem_regmap_register_with_pp(struct regmap *map, const char *name,
>  	config.priv = map;
>  	config.stride = 1;
>  	config.word_size = 1;
> -	config.size = regmap_get_max_register(map) * regmap_get_reg_stride(map);
> +	config.size = regmap_size_bytes(map) * regmap_get_reg_stride(map);
>  	config.cell_post_process = cell_post_process;
>  	config.reg_write = nvmem_regmap_write;
>  	config.reg_read = nvmem_regmap_read;

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



