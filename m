Delivery-date: Tue, 23 May 2023 09:19:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1MIo-00AUQj-Ov
	for lore@lore.pengutronix.de; Tue, 23 May 2023 09:19:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1MIm-0002gd-2m
	for lore@pengutronix.de; Tue, 23 May 2023 09:19:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=T2ac+MXD9jcAKXD1zN7L9sN5Y2HpZq7Oq6psCEPr++E=; b=pGWN1kmxutl4uGjoZ9Q9NGCLQU
	NRbFgwJ2cJ467bYGKNCn2mohkSCgSJ665uyorhAA+Wvb4FD0OosmY3HQYUqUHrjeHPkrWquVOu2+g
	sNfV47J2JLHEyp3CDQwsE8OP1F42ERXfZRS+iWlT6Zybya3CJnJHhWHigRs2ycMYxuzcCvGevYbLY
	KJlRWEA30Y4RZrfd8cuapJNrJo7YrCFm6/IR9WVlxDmReRo1ttuIZMGbrp8KKjjpFLvnSlwGkFGvA
	Yr/uNcDQxdUoEUeE8RHrfoh2au3gee7OVVnVEh2V5c8LVgg4O2BDzeWNb40KWRHckHYn9au37UH36
	QEsXO62A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1MHV-009C72-1J;
	Tue, 23 May 2023 07:18:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1MHP-009C5n-1H
	for barebox@lists.infradead.org;
	Tue, 23 May 2023 07:18:03 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q1MHK-0002Vw-Tq; Tue, 23 May 2023 09:17:54 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q1MHJ-0002ND-V8; Tue, 23 May 2023 09:17:53 +0200
Date: Tue, 23 May 2023 09:17:53 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, lst@pengutronix.de, rcz@pengutronix.de
Message-ID: <20230523071753.GD17518@pengutronix.de>
References: <20230522052835.1039143-1-a.fatoum@pengutronix.de>
 <20230522052835.1039143-3-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230522052835.1039143-3-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_001759_434725_E916A011 
X-CRM114-Status: GOOD (  20.15  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 02/11] mmu: add physical address parameter to
 arch_remap_range
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, May 22, 2023 at 07:28:26AM +0200, Ahmad Fatoum wrote:
> ARM32 has map_io_sections for non-1:1 remapping, but it's limited to 1M
> sections.  arch_remap_range has newly gained support for 4K granularity
> remapping, but supports only changing attributes and no non-1:1
> remapping yet. In preparation for adding this missing feature, adjust
> the prototype.
> 
> No functional change.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/cpu/mmu_32.c          | 25 ++++++++++++++-----------
>  arch/arm/cpu/mmu_64.c          |  8 +++++---
>  arch/arm/include/asm/mmu.h     |  2 +-
>  arch/powerpc/cpu-85xx/mmu.c    |  7 +++++--
>  arch/powerpc/include/asm/mmu.h |  2 +-
>  include/mmu.h                  |  9 ++++++---
>  6 files changed, 32 insertions(+), 21 deletions(-)
> 
> diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
> index e4607d99fd2a..68336fc68be0 100644
> --- a/arch/arm/cpu/mmu_32.c
> +++ b/arch/arm/cpu/mmu_32.c
> @@ -253,20 +253,23 @@ static uint32_t get_pmd_flags(int map_type)
>  	return pte_flags_to_pmd(get_pte_flags(map_type));
>  }
>  
> -int arch_remap_range(void *start, size_t size, unsigned map_type)
> +int arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t size, unsigned map_type)

The prototype is changed here, but not its caller in the same file.
Fixed that up.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


