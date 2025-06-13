Delivery-date: Fri, 13 Jun 2025 14:44:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uQ3mB-006rlL-2p
	for lore@lore.pengutronix.de;
	Fri, 13 Jun 2025 14:44:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uQ3mB-0002Zf-9J
	for lore@pengutronix.de; Fri, 13 Jun 2025 14:44:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NlZD5tXPUUzakRLEx97dmTx9zp8IRQLSnmCBjMw06Rk=; b=vZ4LqncBQtXqs60jQ29QnfU1kD
	1qTbykhmpHdmCSqWUFye3tt7mtENbO9EheGvU3PwCzVC3kIX4zELnVh2oLQ9yzTweHWkv8IsWc4q/
	4R+6GkI5iuOqt+OfqpI5qIqoREr3eOM7/o+7yx3yJS4tm5baFpRLqm2OfmeWMxcHXAhMFnDCTO1pz
	Klmsr6FGO2/mMV0qAyhZJsU4UFrfket/59kCxU5fxkMjDeQpC1PL8O0R2xlV699DHzTnUsqT8cUMK
	rVlE/5OkTd1zA03qOLbTcwt5JRGFWpaPpxRG35Nockdt/A19L5xU3m5yaiXasglpGj+1yZdE9YhtV
	MI96/KHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ3lc-0000000GOVr-3RHr;
	Fri, 13 Jun 2025 12:44:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ3lZ-0000000GOVE-3XgF
	for barebox@lists.infradead.org;
	Fri, 13 Jun 2025 12:44:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uQ3lY-0002Nt-3l; Fri, 13 Jun 2025 14:44:16 +0200
Message-ID: <0ee3b17b-a544-4899-9cbf-3e01dc676510@pengutronix.de>
Date: Fri, 13 Jun 2025 14:44:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20250613-arm-mmu-xn-ro-v1-0-60f05c6e7b4b@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250613-arm-mmu-xn-ro-v1-0-60f05c6e7b4b@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_054417_890157_40DF8092 
X-CRM114-Status: GOOD (  19.73  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/7] ARM: Map sections RO/XN
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 6/13/25 09:58, Sascha Hauer wrote:
> So far we mapped all RAM as read write with execute permission. This
> series series hardens this a bit. The barebox text segment will be
> mapped readonly with execute permission, the RO data section as readonly
> without execute permission and the remaining RAM will lose its execute
> permission.

Very nice. Thanks for working on this.

> I tested this series on ARMv7 and ARMv8. I am not confident though that
> there are no regressions, so this new behaviour is behind a Kconfig
> option. It is default-y, but can be disabled for debugging purposses.
> Once this series has proven stable it can be removed.
> 
> I haven't tested it on ARMv4-v6 due to the lack of hardware. I tried on
> Qemu, but the write protection did not work as expected. This should be
> resolved before merging.

I will give it a try and see what I find.

Cheers,
Ahmad

> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> Sascha Hauer (7):
>       memory: request RO data section as separate region
>       ARM: pass barebox base to mmu_early_enable()
>       ARM: mmu: move ARCH_MAP_WRITECOMBINE to header
>       ARM: MMU: map memory for barebox proper pagewise
>       ARM: MMU: map text segment ro and data segments execute never
>       ARM: MMU64: map memory for barebox proper pagewise
>       ARM: MMU64: map text segment ro and data segments execute never
> 
>  arch/arm/Kconfig                 |  12 +++++
>  arch/arm/cpu/mmu-common.h        |   4 ++
>  arch/arm/cpu/mmu_32.c            |  86 +++++++++++++++++++++++++++------
>  arch/arm/cpu/mmu_64.c            | 101 +++++++++++++++++++++++++++++++++++----
>  arch/arm/cpu/uncompress.c        |   9 ++--
>  arch/arm/include/asm/mmu.h       |   2 +-
>  arch/arm/include/asm/pgtable64.h |   1 +
>  arch/arm/lib32/barebox.lds.S     |   3 +-
>  arch/arm/lib64/barebox.lds.S     |   5 +-
>  common/memory.c                  |   6 ++-
>  include/mmu.h                    |   1 +
>  11 files changed, 198 insertions(+), 32 deletions(-)
> ---
> base-commit: 340e930140e76827cf5cac731e6afe2836e28242
> change-id: 20250613-arm-mmu-xn-ro-1a1d996496ae
> 
> Best regards,

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



