Delivery-date: Mon, 23 Feb 2026 09:41:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuRVp-004lfY-1e
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 09:41:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuRVp-0004g3-RG
	for lore@pengutronix.de; Mon, 23 Feb 2026 09:41:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yvJML2wo9r1zIx45jL2Z+/83ALGVUKhAkZvp6vKGwpg=; b=mDuVLsSB2nsECNB0ohot2L7CXS
	umHU5pRaSoCq31+pf5/O4KCcjGxEUSjzAuQj7P8aS4Siz/PIRCgA7I5hbo6KPorlzwFmfRxSUBV+i
	9vF/Fyx4b2q1LrBMRBI9PcBaIupGw9jzs0QjwMkpsSMf/w6xLhaohHD9FAt1x1sjJDFSQcnnxDjLb
	SrhH/Mx6Y6okx2yVwJ/suEYs8patdEASitaKWATxkwFIdzRX6zwvoVbQ3KY0A/yhiUzDwH/BgzCQX
	/I16Y7UchTG6+9yotDo9oWbO1K/7VjE5UZd5dDHtXix7V4FqeXQJyug/Jfzb7ITcb1976UXtqcbdg
	P8Y5AMzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuRVQ-0000000HR21-3FmY;
	Mon, 23 Feb 2026 08:41:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuRVO-0000000HR1d-1S2b
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 08:41:27 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vuRVL-0004cK-Gi; Mon, 23 Feb 2026 09:41:23 +0100
Message-ID: <d12e0757-a610-47fe-b99d-bbb8e2aaa4de@pengutronix.de>
Date: Mon, 23 Feb 2026 09:41:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20260223-arm-mmu-v1-0-707d45f6f6e1@pengutronix.de>
 <20260223-arm-mmu-v1-4-707d45f6f6e1@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260223-arm-mmu-v1-4-707d45f6f6e1@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_004126_421509_0858DA2F 
X-CRM114-Status: GOOD (  21.84  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/4] ARM: pbl: MMU: Make it callable multiple times
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 2/23/26 9:34 AM, Sascha Hauer wrote:
> mmu_early_enable() is called in barebox_pbl_start() after a call to
> setup_c(). setup_c() clears the BSS which means alloc_pte() starts at
> index zero again when mmu_early_enable() has been called earlier
> already.
> 
> Some boards might want to do exactly that: Call mmu_early_enable()
> earlier to do for example otherwise expensive hashing of xloaded
> binaries.
> 
> Make mmu_early_enable() safe to be called multiple times by moving the
> PTE index out of the BSS.

How about making setup_c() safe for calling multiple times by having it
check and modify a variable in the .data section?

Would that break anything?

Cheers,
Ahmad

> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/cpu/mmu_64.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
> index 7f38473079..2f451b3c91 100644
> --- a/arch/arm/cpu/mmu_64.c
> +++ b/arch/arm/cpu/mmu_64.c
> @@ -86,7 +86,10 @@ static void set_pte_range(unsigned level, uint64_t *virt, phys_addr_t phys,
>  #ifdef __PBL__
>  static uint64_t *alloc_pte(void)
>  {
> -	static unsigned int idx;
> +	static int idx = -1;
> +
> +	if (idx == -1)
> +		idx = 0;
>  
>  	idx++;
>  
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



