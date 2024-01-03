Delivery-date: Wed, 03 Jan 2024 15:58:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL2hZ-002728-2C
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 15:58:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL2hY-00066v-K8
	for lore@pengutronix.de; Wed, 03 Jan 2024 15:58:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C70NgqhDuX4/PHrIcCCxaL7dhNIlOe5z5sSRXNtBEMc=; b=WHNttgvbx7fR1fJnPeWip6rWaD
	i/V0pdX05tMmicxe8qbsQ/83JUtZIbyxkqUTyykXCPjnUNd7YEc96SztHsKk5PlaPzjw9g5mQuCjp
	0ZusQwzwE015wdkL7krrrbLY+7cnPm+RILcaNHMy+WJbm1LgyIM/+KkYXK40Pc/PV0Qb+Jt7NbJ2w
	+4zCHnK4k4US/QWQm2aosqw3bPX/hqT4GspBUFNx/Q5BALpVETSEf93LwwXwSjQajnizQESZ504IG
	yUkm0vPOCoUT7LIBRffpZJtPaOL5sbZbtp1XKx8zep5ayYGudFMUBungWXCgd9XPxkNeHnkd1Mitc
	MpwnMxiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL2gX-00BBe9-04;
	Wed, 03 Jan 2024 14:57:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL2gS-00BBc1-1S
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 14:57:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rL2gQ-0005o9-KE; Wed, 03 Jan 2024 15:57:26 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rL2gQ-0008gH-7e; Wed, 03 Jan 2024 15:57:26 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rL2gQ-00A50a-5Q; Wed, 03 Jan 2024 15:57:26 +0100
Date: Wed, 3 Jan 2024 15:57:26 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240103145726.GA2402202@pengutronix.de>
References: <20240103101308.2628659-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240103101308.2628659-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_065728_486244_70FC2935 
X-CRM114-Status: GOOD (  18.99  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] ARM: kasan: reserve shadow memory region
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Jan 03, 2024 at 11:13:08AM +0100, Ahmad Fatoum wrote:
> We did not have any protection in place to ensure that KASAN shadow memory
> isn't overwritten during boot. Add that now to avoid strange effects
> during debugging.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/cpu/start.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> index 15f5b2937227..9f4cdfe67fbf 100644
> --- a/arch/arm/cpu/start.c
> +++ b/arch/arm/cpu/start.c
> @@ -133,6 +133,10 @@ static int barebox_memory_areas_init(void)
>  		request_sdram_region("board data", (unsigned long)barebox_boarddata,
>  				     barebox_boarddata_size);
>  
> +	if (IS_ENABLED(CONFIG_KASAN))
> +		request_sdram_region("kasan shadow", kasan_shadow_base,
> +				     mem_malloc_start() - kasan_shadow_base);

This doesn't compile with CONFIG_KASAN disabled because
kasan_shadow_base is declared inside an #ifdef CONFIG_KASAN.

Could you send a v2?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


