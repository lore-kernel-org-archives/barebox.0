Delivery-date: Fri, 10 Nov 2023 14:09:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1RGL-005sTj-2x
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 14:09:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1RGL-0007qy-U8
	for lore@pengutronix.de; Fri, 10 Nov 2023 14:09:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ASwu94qeDB9lOdcu3oAq6UocZ51ZncSh10LP+BqQhVo=; b=jlf96MzvaSU1DN1aRSWjt1Y1Jo
	rsxafnZRO9jw1elNmCG2z+LUkCUA9MDR1K222Pf0UfMbpT8/gPxlFe1Xl8+GNwL+CTEEkt5LZ8mO2
	yeG8Gi/toYnNm5X4NWN9oEdp8nVjhbec3oOXDj5NHJBKnVyorMcAXqkRpkR1hjxQ3wxlKkp/Oxb7y
	3BEZWeauyPlwVqry/VcYG8Deq9g+oUgGbA52yRO/MIts0pvK6K/MedGRn/kkUqR41EWzy8O0+FiVg
	HPTK0TiKlkc4DN8feXaOt5hHtBI2DsLTdwPVSNAvbGRPz/n8Kk89S9WooKvmUMNia2j9IjfoFzSxT
	UqfeSkAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1RFJ-008oJw-00;
	Fri, 10 Nov 2023 13:08:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1RFH-008oJm-0F
	for barebox@bombadil.infradead.org;
	Fri, 10 Nov 2023 13:08:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=From:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=ASwu94qeDB9lOdcu3oAq6UocZ51ZncSh10LP+BqQhVo=; b=qd3vYheXceYAx6jgzsihSuXFEg
	8P6d+c18bW6vj6vlTNISxdQZHXf6XUDd1K2gefKoca9jcvJsUP5cowDMb0cS31w7clZ3yhwjjA6KK
	BgoqbIlsTZM+mHiHNBAXw48+moEauje+rIq6CCm8I+UIompvN4GhpHOupHs22VvPEPPR4VymNJ82p
	Dbs9TbYGUOCtgpftoaAHoVLS2RzTF1aldiZoPc2kVNfPjchS7leKtXgODmRUziR5Ar57PLdILvfe/
	/tglq9r5/qt0AKxSTDoc6b7xovg3YlUcvK70i1c/F0kgSiOQmmpA3CpPi4qCknEXHSmWLkW4VCHzt
	bxrVRzBg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1RF8-00FcGn-1i
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 13:08:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1RF8-0007dc-3d; Fri, 10 Nov 2023 14:08:14 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1RF7-00822C-NU; Fri, 10 Nov 2023 14:08:13 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1RF7-001LUX-LF; Fri, 10 Nov 2023 14:08:13 +0100
Date: Fri, 10 Nov 2023 14:08:13 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231110130813.GX3359458@pengutronix.de>
References: <20231109113807.1193935-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231109113807.1193935-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_130816_044763_1A0BEDC5 
X-CRM114-Status: GOOD (  20.16  )
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
Subject: Re: [PATCH 1/2] KASan: test_kasan: hide buggy accesses from compiler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Nov 09, 2023 at 12:38:06PM +0100, Ahmad Fatoum wrote:
> Once we add __alloc_size attributes to allocations, GCC will complain
> about violation of memory safety in test_kasan.c.
> 
> That memory violation is intended though as test_kasan is meant to
> trigger kasan at runtime to verify correct operation.
> 
> Silence the warnings by hiding the origin of ptr, so the compiler loses
> context about the size of the allocation.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  lib/kasan/test_kasan.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/lib/kasan/test_kasan.c b/lib/kasan/test_kasan.c
> index 14511cdb80bd..a74251a6d9ad 100644
> --- a/lib/kasan/test_kasan.c
> +++ b/lib/kasan/test_kasan.c
> @@ -38,6 +38,8 @@ static noinline void malloc_oob_right(void)
>  		return;
>  	}
>  
> +	OPTIMIZER_HIDE_VAR(ptr);
> +
>  	ptr[size] = 'x';
>  
>  	free(ptr);
> @@ -55,6 +57,8 @@ static noinline void malloc_oob_left(void)
>  		return;
>  	}
>  
> +	OPTIMIZER_HIDE_VAR(ptr);
> +
>  	*ptr = *(ptr - 1);
>  	free(ptr);
>  }
> @@ -75,6 +79,8 @@ static noinline void malloc_oob_realloc_more(void)
>  		return;
>  	}
>  
> +	OPTIMIZER_HIDE_VAR(ptr2);
> +
>  	ptr2[size2] = 'x';
>  
>  	free(ptr2);
> @@ -95,6 +101,8 @@ static noinline void malloc_oob_realloc_less(void)
>  		return;
>  	}
>  
> +	OPTIMIZER_HIDE_VAR(ptr2);
> +
>  	ptr2[size2] = 'x';
>  
>  	free(ptr2);
> @@ -115,6 +123,9 @@ static noinline void malloc_oob_16(void)
>  		free(ptr2);
>  		return;
>  	}
> +
> +	OPTIMIZER_HIDE_VAR(ptr1);
> +
>  	*ptr1 = *ptr2;
>  	free(ptr1);
>  	free(ptr2);
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


