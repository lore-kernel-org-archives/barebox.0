Delivery-date: Sat, 23 Aug 2025 08:40:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uphvE-003aJH-2I
	for lore@lore.pengutronix.de;
	Sat, 23 Aug 2025 08:40:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uphvD-0006gR-GU
	for lore@pengutronix.de; Sat, 23 Aug 2025 08:40:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cAWotjvRilLD0QddZWcW895CeEgTOh/eHAzgzSfEVL4=; b=elGHe7FG3N1qTyyJJGBPIjOjn/
	3EH8dyH5S9VsqQYZiXilrVBVUkD84PY456ZTl4snb6ldIM2rlBlwNo+9Xnn2stW9sLn7XM2I/H/cf
	mMq+HzK0dy8TQ8GxaamGPfrPRkwsuJEaF02jJCwk9RTEGUTMHkheiNxL0cvd1/hpfPRkYlT+vPnT1
	1mPVz8afG5jt4OcYmNQkxfQ27DSFXs28FrDO+3Q6ekeZTf1yFnXGPp3L59oj1mLh51w1M1vSLE76m
	hampyflcjK9claLLXjKJ9m79b4ShmMfi5R/YER3m3jSKrDecsX5FmHONffkj2UH8LMUP8Mtzbju64
	1lEY7p2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uphug-00000004B3M-3Ges;
	Sat, 23 Aug 2025 06:39:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upUdD-00000003Akm-05N0
	for barebox@lists.infradead.org;
	Fri, 22 Aug 2025 16:28:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1upUdA-0007XO-UJ; Fri, 22 Aug 2025 18:28:44 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1upUdA-001biq-2R;
	Fri, 22 Aug 2025 18:28:44 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1upUdA-00ABzp-28;
	Fri, 22 Aug 2025 18:28:44 +0200
Date: Fri, 22 Aug 2025 18:28:44 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@barebox.org>
Cc: barebox@lists.infradead.org, sha@pengutronix.de
Message-ID: <20250822162844.ifx5prklutekz4aj@pengutronix.de>
References: <20250822140111.811702-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250822140111.811702-1-a.fatoum@barebox.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_092847_054986_08176E78 
X-CRM114-Status: GOOD (  16.83  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] ARM: mmu: increase early page table size to 256K
 for now
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On 25-08-22, Ahmad Fatoum wrote:
> With recent changes for W^X, the size of our early page tables have grown
> in some cases, so they no longer fit into the 64K we reserve for them.
> 
> This has been observed in at least two ARM64 platforms:
> 
>   - i.MX8M with OP-TEE at start of RAM (on master)
>   - Raspberry Pi Zero 2 without OP-TEE (on next)
> 
> It's very likely we are overly wasteful of space, but until that's fixed
> properly, increase the size reserved for our early page tables.

shall we add a TODO within the code?

> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

Regards,
  Marco


> ---
>  arch/arm/include/asm/barebox-arm.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
> index da6f5d528338..11be8b85837e 100644
> --- a/arch/arm/include/asm/barebox-arm.h
> +++ b/arch/arm/include/asm/barebox-arm.h
> @@ -26,7 +26,7 @@
>  #include <linux/stringify.h>
>  #include <pbl/handoff-data.h>
>  
> -#define ARM_EARLY_PAGETABLE_SIZE	SZ_64K
> +#define ARM_EARLY_PAGETABLE_SIZE	SZ_256K
>  
>  #define handoff_add_arm_machine(machine)				\
>  	do {								\
> -- 
> 2.39.5
> 
> 


