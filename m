Delivery-date: Mon, 02 Jun 2025 14:33:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM4Ld-002xZw-0j
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 14:33:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM4Lc-0004Zn-Ir
	for lore@pengutronix.de; Mon, 02 Jun 2025 14:33:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4uUAyEh+Sg7zKF+JlOsJ0M0YKWr/PsxP4qBIWTF2M+E=; b=l+rs7yBHTwfbr6WB5UcBviFPN7
	Y1by4CqkDAEuKOBtOJL6EjHLJlJaAtcyo6A3A/zQZ6XJbFWOxaB2wSGlOnChKlxrRH8YzAXQYNLum
	LKlPr5xGyzX5C+PkYeV9hIoJU+X8I6k5sTzbj4UEOX9xwXlzYkiUj5vkpALgfdYhJvLDwQNT21dGQ
	X7hBBZOBnMmFJoyYzRZ/eYXYprZRK7XZoX4mw9ko/sKpfkgjaEaDh0XsyZ3dHTf5I25B8PRTTXQJo
	/iIt9QcZRUnLP2gR6QWBdZI+sSmRWnYviM2MEKbGoS5NAt12Ce6HbAY/wnAeBxm9QhrCwvN5RYL7b
	tqqDOSNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM4L4-00000007Mv8-3kTT;
	Mon, 02 Jun 2025 12:32:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM4Dq-00000007MJP-3oG0
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 12:25:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM4Dp-0001xU-1z; Mon, 02 Jun 2025 14:24:57 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM4Do-001S9B-2p;
	Mon, 02 Jun 2025 14:24:56 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM4Do-003srB-2W;
	Mon, 02 Jun 2025 14:24:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20250527212300.575031-1-a.fatoum@barebox.org>
References: <20250527212300.575031-1-a.fatoum@barebox.org>
Message-Id: <174886709677.925768.2958517538502623435.b4-ty@pengutronix.de>
Date: Mon, 02 Jun 2025 14:24:56 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_052458_952535_4A95C18A 
X-CRM114-Status: UNSURE (   7.99  )
X-CRM114-Notice: Please train this message.
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
Subject: Re: [PATCH 00/15] efi: loader preparatory patches
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 27 May 2025 23:22:45 +0200, Ahmad Fatoum wrote:
> A random collection of patches in preparation for EFI loader support.
> 
> Ahmad Fatoum (15):
>   lib: wchar: add wide char string comparison functions
>   ARM: select HW_HAS_PCI architecture wide
>   efi: types: define efi_char16_t as wchar_t
>   efi: types: document efi_physical_addr_t being always 64-bit
>   efi: payload: early-mem: EFI_ALLOCATE_ANY_PAGES on non-x86
>   string: implement kmemdup_nul
>   efi: types: implement efi_phys_to_virt/efi_virt_to_phys helpers
>   efi: return pointer from efi_earlymem_alloc
>   efi: payload: image: use new efi_phys_to_virt helper
>   efi: payload: iomem: use virt_start if set
>   efi: use size_t for UINTN array sizes instead of unsigned long
>   efi: payload: unify duplicate code in ifdef
>   efi: payload: use efi_virt_to_phys instead of pointer to u64 casts
>   clocksource: efi: use DIV_ROUND_DOWN_ULL for 64-bit devision
>   efi: payload: use ktime_to_us to avoid plain 64-bit division
> 
> [...]

Applied, thanks!

[01/15] lib: wchar: add wide char string comparison functions
        https://git.pengutronix.de/cgit/barebox/commit/?id=0dce3af7da6e (link may not be stable)
[02/15] ARM: select HW_HAS_PCI architecture wide
        https://git.pengutronix.de/cgit/barebox/commit/?id=fc027c51b187 (link may not be stable)
[03/15] efi: types: define efi_char16_t as wchar_t
        https://git.pengutronix.de/cgit/barebox/commit/?id=7ed44975bf0e (link may not be stable)
[04/15] efi: types: document efi_physical_addr_t being always 64-bit
        https://git.pengutronix.de/cgit/barebox/commit/?id=6612845bb188 (link may not be stable)
[05/15] efi: payload: early-mem: EFI_ALLOCATE_ANY_PAGES on non-x86
        https://git.pengutronix.de/cgit/barebox/commit/?id=6094ad7b6001 (link may not be stable)
[06/15] string: implement kmemdup_nul
        https://git.pengutronix.de/cgit/barebox/commit/?id=dffbd63f6d79 (link may not be stable)
[07/15] efi: types: implement efi_phys_to_virt/efi_virt_to_phys helpers
        https://git.pengutronix.de/cgit/barebox/commit/?id=d403f30c3563 (link may not be stable)
[08/15] efi: return pointer from efi_earlymem_alloc
        https://git.pengutronix.de/cgit/barebox/commit/?id=c72620d46e1f (link may not be stable)
[09/15] efi: payload: image: use new efi_phys_to_virt helper
        https://git.pengutronix.de/cgit/barebox/commit/?id=99ef8b4f5845 (link may not be stable)
[10/15] efi: payload: iomem: use virt_start if set
        https://git.pengutronix.de/cgit/barebox/commit/?id=418b05b292b6 (link may not be stable)
[11/15] efi: use size_t for UINTN array sizes instead of unsigned long
        https://git.pengutronix.de/cgit/barebox/commit/?id=0f729d87d754 (link may not be stable)
[12/15] efi: payload: unify duplicate code in ifdef
        https://git.pengutronix.de/cgit/barebox/commit/?id=e15ef61066c3 (link may not be stable)
[13/15] efi: payload: use efi_virt_to_phys instead of pointer to u64 casts
        https://git.pengutronix.de/cgit/barebox/commit/?id=32d47f04fcfb (link may not be stable)
[14/15] clocksource: efi: use DIV_ROUND_DOWN_ULL for 64-bit devision
        https://git.pengutronix.de/cgit/barebox/commit/?id=cc8b33296a67 (link may not be stable)
[15/15] efi: payload: use ktime_to_us to avoid plain 64-bit division
        https://git.pengutronix.de/cgit/barebox/commit/?id=194148f70564 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



