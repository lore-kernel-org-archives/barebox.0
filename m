Delivery-date: Tue, 17 Jun 2025 08:57:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRQGB-008BXq-0E
	for lore@lore.pengutronix.de;
	Tue, 17 Jun 2025 08:57:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRQGA-0007Yb-8X
	for lore@pengutronix.de; Tue, 17 Jun 2025 08:57:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1HQW/wuLbUq/jB5kuNGMdYRtavalbN9yUmXJOA9ECew=; b=mnXU4HlqINqcCktwbPn5FGAcWs
	AsdPLdWv2OZTh3KCcaB+ZJrEhJ51co7udwgE4BTImn9IlH9pvdo98aw/KA2XNAp5BoFLiDbicsmrw
	H3vZbSooEJxbRAHDG8NOYBO5TqkKm598Y34O2cuy/o6Ayw54cwvaizjeONB5n2MYHlRyA/1VClnGY
	Il0hLHtqOKu8FaCPBRfELf/p9DJcQ0LsWstnvT1PEWDjMxFRjytMhzPYPOTf1AbeCvqXLCFjw/ZuB
	vDGYx9fclQpKO9an4TV86MxOFDhpdetmMqn0k6vVFDP0/t7jKrjJL5eMSy7pluR8/hO/cdk0lugsg
	3SH5smOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRQFd-00000006P42-05fu;
	Tue, 17 Jun 2025 06:56:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRQFY-00000006P2M-1Cg3
	for barebox@lists.infradead.org;
	Tue, 17 Jun 2025 06:56:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uRQFV-0006YP-CJ; Tue, 17 Jun 2025 08:56:49 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uRQFV-003vmh-0d;
	Tue, 17 Jun 2025 08:56:49 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uRQFV-001MOP-0I;
	Tue, 17 Jun 2025 08:56:49 +0200
Date: Tue, 17 Jun 2025 08:56:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Richard Weinberger <richard@nod.at>
Message-ID: <aFERsXe3651jDCeK@pengutronix.de>
References: <20250616130430.782214-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250616130430.782214-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_235652_390784_5D75654D 
X-CRM114-Status: GOOD (  24.76  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] dlmalloc: remove in favor of TLSF
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Jun 16, 2025 at 03:04:30PM +0200, Ahmad Fatoum wrote:
> We have had a TLSF implementation in barebox for >= 13 years now and it
> has more features than the dlmalloc, which we inherited from U-Boot,
> like multiple pools and KASAN integration.
> 
> We didn't have pressure to retire dlmalloc in that time, but bugs like
> those fixed in commit 7cf25e0733f0 ("dlmalloc: Fix integer overflow in
> request2size()") show that there's a security cost associated with
> keeping bitrotted code, especially as we didn't document TLSF as being
> the recommended allocator anywhere.
> 
> Since then, TLSF has been been made the default allocator in Kconfig[1]
> and dlmalloc deprecation was announced[2]. Follow through now and drop
> dlmalloc altogether.
> 
> [1]: Commit c1552409af30 ("common: make TLSF the default allocator")
> [2]: https://lore.barebox.org/barebox/7a4edaef-a606-4b9d-bdf5-c7b5f896daae@pengutronix.de/
> 
> Cc: Antony Pavlov <antonynpavlov@gmail.com>
> Cc: Richard Weinberger <richard@nod.at>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  .../migration-guides/migration-2025.07.0.rst  |    5 +
>  common/Kconfig                                |    3 -
>  common/Makefile                               |    1 -
>  common/dlmalloc.c                             | 1976 -----------------
>  include/dlmalloc.h                            |   15 -
>  5 files changed, 5 insertions(+), 1995 deletions(-)
>  delete mode 100644 common/dlmalloc.c
>  delete mode 100644 include/dlmalloc.h

With this INTERNAL_SIZE_T becomes unused. Merged the following into
this commit

-------------------------8<-----------------------------

>From 5e436f98aba7dd371856acb41e34a2d4507016fe Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 17 Jun 2025 08:54:08 +0200
Subject: [PATCH] fixup! dlmalloc: remove in favor of TLSF

---
 arch/riscv/include/asm/types.h |  8 --------
 arch/x86/include/asm/types.h   | 13 -------------
 2 files changed, 21 deletions(-)

diff --git a/arch/riscv/include/asm/types.h b/arch/riscv/include/asm/types.h
index add1c94fc7..f89733dcc4 100644
--- a/arch/riscv/include/asm/types.h
+++ b/arch/riscv/include/asm/types.h
@@ -5,12 +5,4 @@
 
 #include <asm-generic/int-ll64.h>
 
-#if __riscv_xlen == 64
-/*
- * This is used in dlmalloc. On RISCV64 we need it to be 64 bit
- */
-#define INTERNAL_SIZE_T unsigned long
-
-#endif
-
 #endif /* __ASM_RISCV_TYPES_H */
diff --git a/arch/x86/include/asm/types.h b/arch/x86/include/asm/types.h
index feb5843b9c..87813325f1 100644
--- a/arch/x86/include/asm/types.h
+++ b/arch/x86/include/asm/types.h
@@ -5,17 +5,4 @@
 
 #include <asm-generic/int-ll64.h>
 
-#ifndef __ASSEMBLY__
-
-#ifdef __x86_64__
-/*
- * This is used in dlmalloc. On X86_64 we need it to be
- * 64 bit
- */
-#define INTERNAL_SIZE_T unsigned long
-
-#endif
-
-#endif
-
 #endif
-- 
2.39.5


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


