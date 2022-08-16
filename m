Delivery-date: Tue, 16 Aug 2022 09:49:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNrK5-000RnX-52
	for lore@lore.pengutronix.de; Tue, 16 Aug 2022 09:49:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNrK2-0003Ig-N3
	for lore@pengutronix.de; Tue, 16 Aug 2022 09:49:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:In-reply-to:Date:Subject:Cc:To:From:
	References:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fnk2TX3aOQlPafg0lStMxwrwTFTvVCpedZjPJXF8IAA=; b=ZHi3vydCBq/bKJnuNBHl2gZsZR
	p4HkWitsbEacXdqiKT7B1v3WUJRHGmRGgvBdbs2a0WEwErKeIbeykY5m2084qkvfiRqUE281/HaJV
	JcY4v/2UqdrcFCd8d6k484w1N6fVXj9ghVhdpMs6u3Mj/t+NDYqkUhAl8FwroSQ0vAdFAwql3bv5H
	stZ2xMrPIiNIP1sfGav6BJieSIL4snm9qqxHtVKp+21Ha2Tsus0JrcbmFwX+l8FGwy760X6UGPw8+
	VN9P04AZeHzzb+sog8OIS7AmIoAzc61npCcVjkGz7cJoFEgPBYto6FB4ftM5JiJIUnYP5oFsPTKSU
	F1ADWZqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNrI1-00FhY3-CJ; Tue, 16 Aug 2022 07:47:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNrHX-00FgXE-Gc
	for barebox@lists.infradead.org; Tue, 16 Aug 2022 07:46:37 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <u.oelmann@pengutronix.de>)
	id 1oNrHU-00036C-Ah; Tue, 16 Aug 2022 09:46:32 +0200
Received: from uol by dude.hi.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <u.oelmann@pengutronix.de>)
	id 1oNrHT-008Yyc-S0; Tue, 16 Aug 2022 09:46:31 +0200
References: <20220815153209.2422662-1-a.fatoum@pengutronix.de>
 <20220815153209.2422662-3-a.fatoum@pengutronix.de>
User-agent: mu4e 1.6.9; emacs 29.0.50
From: Ulrich =?utf-8?Q?=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: rcz@pengutronix.de, barebox@lists.infradead.org
Date: Tue, 16 Aug 2022 09:35:41 +0200
In-reply-to: <20220815153209.2422662-3-a.fatoum@pengutronix.de>
Message-ID: <6rczd0ocko.fsf@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220816_004635_578400_332658B4 
X-CRM114-Status: GOOD (  23.57  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 02/10] common: allow requesting SDRAM regions with
 custom flags
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On Mon, Aug 15 2022 at 17:32 +0200, Ahmad Fatoum <a.fatoum@pengutronix.de> =
wrote:
> Now that __request_region accepts a flag parameter, define
> __request_sdram_region, which also accepts a flag parameter and passes
> it through. The default flags for request_sdram_region() will be
> IORESOURCE_MEM as that ensures resource_contains behaves correctly when
> comparing against another memory resource.
>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/memory.c   |  8 +++++---
>  common/resource.c |  2 +-
>  include/memory.h  | 13 +++++++++++--
>  3 files changed, 17 insertions(+), 6 deletions(-)
>
> diff --git a/common/memory.c b/common/memory.c
> index 03fec1f1eb0e..347f83fd4cf8 100644
> --- a/common/memory.c
> +++ b/common/memory.c
> @@ -200,16 +200,18 @@ mmu_initcall(add_mem_devices);
>  /*
>   * Request a region from the registered sdram
>   */
> -struct resource *request_sdram_region(const char *name, resource_size_t =
start,
> -		resource_size_t size)
> +struct resource *__request_sdram_region(const char *name, unsigned flags,
> +					resource_size_t start, resource_size_t size)
>  {
>  	struct memory_bank *bank;
>=20=20
> +	flags |=3D IORESOURCE_MEM;
> +
>  	for_each_memory_bank(bank) {
>  		struct resource *res;
>=20=20
>  		res =3D __request_region(bank->res, start, start + size - 1,
> -				       name, 0);
> +				       name, flags);
>  		if (!IS_ERR(res))
>  			return res;
>  	}
> diff --git a/common/resource.c b/common/resource.c
> index 81f337668ef1..8678609229ab 100644
> --- a/common/resource.c
> +++ b/common/resource.c
> @@ -73,7 +73,7 @@ struct resource *__request_region(struct resource *pare=
nt,
>  	}
>=20=20
>  ok:
> -	debug("%s ok: 0x%08llx:0x%08llx flags=3D%u\n", __func__,
> +	debug("%s ok: 0x%08llx:0x%08llx flags=3D0x%x\n", __func__,

this hunk should be squashed/amended into patch 01/10 where the flags
parameter has originally been introduced into this debug message.

Best regards
Ulrich


>  			(unsigned long long)start,
>  			(unsigned long long)end, flags);
>=20=20
> diff --git a/include/memory.h b/include/memory.h
> index c793bb51ed77..31da5d74d568 100644
> --- a/include/memory.h
> +++ b/include/memory.h
> @@ -23,8 +23,17 @@ int barebox_add_memory_bank(const char *name, resource=
_size_t start,
>=20=20
>  #define for_each_memory_bank(mem)	list_for_each_entry(mem, &memory_banks=
, list)
>=20=20
> -struct resource *request_sdram_region(const char *name, resource_size_t =
start,
> -		resource_size_t size);
> +struct resource *__request_sdram_region(const char *name, unsigned flags,
> +					resource_size_t start, resource_size_t size);
> +
> +static inline struct resource *request_sdram_region(const char *name,
> +						    resource_size_t start,
> +						    resource_size_t size)
> +{
> +	/* IORESOURCE_MEM is implicit for all SDRAM regions */
> +	return __request_sdram_region(name, 0, start, size);
> +}
> +
>  int release_sdram_region(struct resource *res);
>=20=20
>  void memory_bank_find_space(struct memory_bank *bank, resource_size_t *r=
etstart,


--=20
Pengutronix e.K.                           | Ulrich =C3=96lmann            =
   |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


