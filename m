Delivery-date: Mon, 21 Jul 2025 10:44:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1udm88-002AYw-0O
	for lore@lore.pengutronix.de;
	Mon, 21 Jul 2025 10:44:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1udm87-0003rP-Gf
	for lore@pengutronix.de; Mon, 21 Jul 2025 10:44:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gGDparLYZlrAQcCM28+3KwOZV/uxZlJQDFhGQRoRL2I=; b=gQBCQN74U/aVjOhs6IBk1MgQrH
	5ARicvFUmGVwl8ZFmD4+7vzGfdNoVsPe39wESY5TF5GPorzhb6iWvEhq9ZitLYbB0KBESOYbiD3xd
	7cDS53YP+7BQh2zQu+M8gzdNOVJNaLHFUZrmimWkDv1LyxevMnPO8ZjUSsrIzcP2pgAUwU39nHrzr
	ML2mbwtwrZ/e20KuN9c1HLgaMQnuPqsORGJLSUnkrUf2+tZyekVUoSMMsTE2TyRHi7oidzLBA7GvD
	8z+Q6yi8hO4MiE3Ih08NbvxDexErd91fQYeO3wZNJMwOHKyBlADHdt9Lmf0Zqiyt5TnnQvvATnUia
	0SOv6Ztg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udm7O-0000000GhAj-0Nht;
	Mon, 21 Jul 2025 08:43:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udlkK-0000000GcoS-33Zf
	for barebox@lists.infradead.org;
	Mon, 21 Jul 2025 08:19:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1udlkH-0004lV-6y; Mon, 21 Jul 2025 10:19:37 +0200
Message-ID: <a71446fa-b6e9-46e2-b5ee-b8e9121fab98@pengutronix.de>
Date: Mon, 21 Jul 2025 10:19:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20250618-mmu-xn-ro-v3-0-2a9825725934@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250618-mmu-xn-ro-v3-0-2a9825725934@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250721_011940_771868_EC0CA4EB 
X-CRM114-Status: GOOD (  21.48  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 0/6] ARM: Map sections RO/XN
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 6/18/25 11:34, Sascha Hauer wrote:
> So far we mapped all RAM as read write with execute permission. This
> series series hardens this a bit. The barebox text segment will be
> mapped readonly with execute permission, the RO data section as readonly
> without execute permission and the remaining RAM will lose its execute
> permission.
> 
> I tested this series on ARMv5, ARMv7 and ARMv8. I am not confident
> though that there are no regressions, so this new behaviour is behind a
> Kconfig option. It is default-y, but can be disabled for debugging
> purposses.  Once this series has proven stable it can be removed.

Reservations aren't handled correctly and thus if there is e.g. an
OP-TEE memory region after the barebox code region, the system hangs.

I prepared patches and will send them out soon. Just wanted to give a
heads up, so next isn't merged into master before that.

Cheers,
Ahmad

> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> Changes in v3:
> - rework create_sections() for Ahmads comments
> - mention CR_S bit and DOMAIN_CLIENT in commit message
> - Link to v2: https://lore.barebox.org/20250617-mmu-xn-ro-v2-0-3c7aa9046b67@pengutronix.de
> 
> Changes in v2:
> - Tested and fixed for ARMv5
> - merge create_pages() and create_sections() into one functions (ahmad)
> - introduce function to create mapping flags based on CONFIG_ARM_MMU_PERMISSIONS
> - Link to v1: https://lore.barebox.org/20250606-mmu-xn-ro-v1-0-7ee6ddd134d4@pengutronix.de
> 
> ---
> Sascha Hauer (6):
>       ARM: pass barebox base to mmu_early_enable()
>       ARM: mmu: move ARCH_MAP_WRITECOMBINE to header
>       ARM: MMU: map memory for barebox proper pagewise
>       ARM: MMU: map text segment ro and data segments execute never
>       ARM: MMU64: map memory for barebox proper pagewise
>       ARM: MMU64: map text segment ro and data segments execute never
> 
>  arch/arm/Kconfig                 | 12 ++++++
>  arch/arm/cpu/lowlevel_32.S       |  1 +
>  arch/arm/cpu/mmu-common.h        | 20 +++++++++
>  arch/arm/cpu/mmu_32.c            | 89 ++++++++++++++++++++++++++++++++--------
>  arch/arm/cpu/mmu_64.c            | 74 +++++++++++++++++++++++++--------
>  arch/arm/cpu/uncompress.c        |  9 ++--
>  arch/arm/include/asm/mmu.h       |  2 +-
>  arch/arm/include/asm/pgtable64.h |  1 +
>  arch/arm/lib32/barebox.lds.S     |  3 +-
>  arch/arm/lib64/barebox.lds.S     |  5 ++-
>  common/memory.c                  |  7 +++-
>  include/mmu.h                    |  1 +
>  12 files changed, 181 insertions(+), 43 deletions(-)
> ---
> base-commit: fa92c730b34d7ea90309ca10b399ab1a22dc761a
> change-id: 20250606-mmu-xn-ro-e2a4c4b080a4
> 
> Best regards,

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



