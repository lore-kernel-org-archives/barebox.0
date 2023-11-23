Delivery-date: Thu, 23 Nov 2023 08:22:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r642J-005U0y-1v
	for lore@lore.pengutronix.de;
	Thu, 23 Nov 2023 08:22:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r642J-0006FH-Kj
	for lore@pengutronix.de; Thu, 23 Nov 2023 08:22:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AmKZMaS3QZzAk6Lj0FjFC55EFKTm14GhXYj54gOKaac=; b=U2vbw2/S2ffgFwVeoTMyUDbxjw
	01215RI9VYsTcdSeGoRd+8uSICPQ06zCm3Vnhss0sj+S3hCtBD3Psx4n3UCla0KFbEpX//NXTdmL5
	MAc2SIlDdwFqR0eicVwjHxf1MQYn46WVouwFh1txdK8XXjve6Mt9tXiaHiXz2At/tMbUXBizAV3qr
	jMH9KYtM9c1nexjqfTIByQh08ZNsFq8erNgkOhrvUPBNsSJT1NBbAgPlkBSMtdYpeivQA53PxheuK
	aG0bee4Wty/X/OUCwDsVW0DJ1Aq63wIY28PzGsGd//G7EQrHP0I/Toar8Q4gvryWq8Dt7YyLNZC+7
	j02+UsPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6412-0040jH-0D;
	Thu, 23 Nov 2023 07:20:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r640y-0040iV-0m
	for barebox@lists.infradead.org;
	Thu, 23 Nov 2023 07:20:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r640x-00061G-2X; Thu, 23 Nov 2023 08:20:43 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r640w-00AzP5-MM; Thu, 23 Nov 2023 08:20:42 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r640w-003QCG-KA; Thu, 23 Nov 2023 08:20:42 +0100
Date: Thu, 23 Nov 2023 08:20:42 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231123072042.GD3359458@pengutronix.de>
References: <20231122170007.3849506-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231122170007.3849506-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_232044_279096_EB667C76 
X-CRM114-Status: GOOD (  19.48  )
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
Subject: Re: [PATCH 1/2] sandbox: libc_malloc: populate barebox errno on error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Nov 22, 2023 at 06:00:06PM +0100, Ahmad Fatoum wrote:
> TLSF already populates errno on errors, so do likewise for the
> allocators that don't.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/sandbox/os/libc_malloc.c | 28 ++++++++++++++++++++++++----
>  1 file changed, 24 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/sandbox/os/libc_malloc.c b/arch/sandbox/os/libc_malloc.c
> index 74e3e2680585..975c41b0ec49 100644
> --- a/arch/sandbox/os/libc_malloc.c
> +++ b/arch/sandbox/os/libc_malloc.c
> @@ -6,18 +6,30 @@
>  #include <stdlib.h>
>  #include <malloc.h>
>  
> +#define BAREBOX_ENOMEM 12
> +extern int barebox_errno;
> +
>  void barebox_malloc_stats(void)
>  {
>  }
>  
>  void *barebox_memalign(size_t alignment, size_t bytes)
>  {
> -	return memalign(alignment, bytes);
> +	void *mem = memalign(alignment, bytes);
> +	if (!mem)
> +		barebox_errno = BAREBOX_ENOMEM;
> +
> +	return mem;
>  }
>  
>  void *barebox_malloc(size_t size)
>  {
> -	return malloc(size);
> +
> +	void *mem = malloc(size);
> +	if (!mem)
> +		barebox_errno = BAREBOX_ENOMEM;
> +
> +	return mem;
>  }
>  
>  void barebox_free(void *ptr)
> @@ -27,10 +39,18 @@ void barebox_free(void *ptr)
>  
>  void *barebox_realloc(void *ptr, size_t size)
>  {
> -	return realloc(ptr, size);
> +	void *mem = realloc(ptr, size);
> +	if (!mem)
> +		barebox_errno = BAREBOX_ENOMEM;
> +
> +	return mem;
>  }
>  
>  void *barebox_calloc(size_t n, size_t elem_size)
>  {
> -	return calloc(n, elem_size);
> +	void *mem = calloc(n, elem_size);
> +	if (!mem)
> +		barebox_errno = BAREBOX_ENOMEM;
> +
> +	return mem;
>  }
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


