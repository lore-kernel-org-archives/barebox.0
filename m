Delivery-date: Thu, 18 May 2023 20:50:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzihb-005pz4-3K
	for lore@lore.pengutronix.de; Thu, 18 May 2023 20:50:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzihY-0007lM-Ma
	for lore@pengutronix.de; Thu, 18 May 2023 20:50:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aqsiZDF3dk2GfTnvFzdzXB9imY8jzFzZsm4xOxTn52Y=; b=jl4lDKP7rUqXonaVmC81S1zfl9
	QgM4p+rnDEzoM908RtwetsL4iJnhFog/skpdJ3fW7nahRdVT0bYZSPIV0mZfKxknvSk5MOt+jqnTV
	BWb3oT5yBcpWcjn3YdxOMAsISDKs2nMdCmR2xmQc6Uoj8iPlXu4kOiMkhhw8IM+P936lLj2H16nh0
	V0YXpQM4CD6VFOMLILlxM5KfpIAFjcJ2o8znSHU8rB3pnLC2EfJypyWNEKcD25/QkpGkXwwUyCWW+
	vmPVLm5BGjwIqKu2qiGrPX9dKgKWCaIcoVD9zXiCbIOnMOLTpnZWksrWlY8FCYmx/iMB4+3bm3QJy
	Jl/Cb3Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzigb-00DrkC-0X;
	Thu, 18 May 2023 18:49:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzigX-00DrjK-1n
	for barebox@lists.infradead.org;
	Thu, 18 May 2023 18:49:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pzigW-0007bK-AW; Thu, 18 May 2023 20:49:08 +0200
Message-ID: <39632745-4b52-edfa-f4c6-7a7c1875ce57@pengutronix.de>
Date: Thu, 18 May 2023 20:49:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Jules Maselbas <jmaselbas@zdiv.net>, barebox@lists.infradead.org
References: <20230510233711.37345-1-jmaselbas@zdiv.net>
 <20230510233711.37345-4-jmaselbas@zdiv.net>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230510233711.37345-4-jmaselbas@zdiv.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230518_114909_596145_DA7D0E4A 
X-CRM114-Status: GOOD (  19.89  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [RFC PATCH 03/11] ARM: dls: Add ENTRY_HEADER macro to add .text
 section
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 11.05.23 01:37, Jules Maselbas wrote:
> On sunxi platforms the boot rom (BROM) looks for a specific header which
> will also be loaded in memory, causing pbl, or barebox, image not loaded
> at the expected BASE addresse. This also cause an issue with relocatable
> pbl: instruction used for relocation expect the image to be aligned on a
> 4K page boundary.
> 
> The proposed solution here is to allow to specify custom sections to put
> in the very begging of the .text section.
> ---
>  arch/arm/lib/pbl.lds.S            | 1 +
>  include/asm-generic/barebox.lds.h | 4 ++++
>  2 files changed, 5 insertions(+)
> 
> diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
> index 114ec7bc81..6fc97c6c34 100644
> --- a/arch/arm/lib/pbl.lds.S
> +++ b/arch/arm/lib/pbl.lds.S
> @@ -27,6 +27,7 @@ SECTIONS
>  	.text      :
>  	{
>  		_stext = .;
> +		ENTRY_HEADER

Let's just have *(.text_head_soc_header*) here unconditionally. The use of ifdefs
will clash with multiarch.

>  		*(.text_head_prologue*)
>  		*(.text_head_entry*)
>  		__bare_init_start = .;
> diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
> index d3736ebaed..9915ead8a7 100644
> --- a/include/asm-generic/barebox.lds.h
> +++ b/include/asm-generic/barebox.lds.h
> @@ -12,6 +12,10 @@
>  #define PRE_IMAGE
>  #endif
>  
> +#ifndef ENTRY_HEADER
> +#define ENTRY_HEADER
> +#endif
> +
>  #define BAREBOX_INITCALLS			\
>  	STRUCT_ALIGN();				\
>  	__barebox_initcalls_start = .;		\

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



