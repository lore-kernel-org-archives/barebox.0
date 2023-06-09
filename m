Delivery-date: Fri, 09 Jun 2023 08:44:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7Vra-00GqWr-Qe
	for lore@lore.pengutronix.de; Fri, 09 Jun 2023 08:44:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7VrY-0003TY-9v
	for lore@pengutronix.de; Fri, 09 Jun 2023 08:44:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gqURubSoDINxBubDBnv5F8iJXfFsFzW4AU8CYjKeJzk=; b=PVeVrfH8cR2S7kO4O34oD+Jse/
	LTPoASgiHqhCXWfsGLdJlCLEpO1/qZpzvD6a0MZDCx8eOB0lFdhkuIa8lzQzNO5rIoGnr8e0ZQVlg
	G/GxOvX0K1HxAjDhAv+96DPD+vRjm7RUTTRv+IVKxm5MUla+2ftMdfWqhIkiqX7BGfr6PX/C7FAEx
	foEW2dSiW4ooDxpthKjio9LrLNz0QAKY7osHTLBYbDkvLZH4mL4/14F3VyQ4HDtwHh6SNrmdGc0x5
	s2bf+V7BqgIM0uJYvvP4NZlxWrFhUsFRk0qBw1t1nurl3RIfO0CwWcf6dhim6QDClhAy/YplKcEwF
	2pf9ra3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7VqY-00BvfO-0b;
	Fri, 09 Jun 2023 06:43:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7VqU-00BvdE-2g
	for barebox@lists.infradead.org;
	Fri, 09 Jun 2023 06:43:40 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q7VqT-0003JY-J3; Fri, 09 Jun 2023 08:43:37 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q7VqT-0008Hg-23; Fri, 09 Jun 2023 08:43:37 +0200
Date: Fri, 9 Jun 2023 08:43:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Denis Orlov <denorl2009@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20230609064337.GC15436@pengutronix.de>
References: <20230605202634.42175-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230605202634.42175-1-denorl2009@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_234339_304301_C48A4EF2 
X-CRM114-Status: GOOD (  19.23  )
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
Subject: Re: [PATCH 00/17] MIPS: fix and improve 64BIT support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 05, 2023 at 11:10:31PM +0300, Denis Orlov wrote:
> The existing 64BIT support for MIPS was somewhat incomplete with no
> board having MIPS64 CPUs specified to be available as targets. Define
> Malta as supporting those and fix all the compilation and linking
> errors. Make some optional features available with 64BIT too.
> 
> Denis Orlov (17):
>   MIPS: malta: allow to choose MIPS64 target CPU in config
>   MIPS: malta: use CKSEG instead of KSEG macros
>   MIPS: reloc: fix relocation with CONFIG_64BIT enabled
>   MIPS: o32: provide ta0..ta3 register definitions
>   MIPS: pbl: use o32/n64 compatible register definitions
>   MIPS: pbl: fix linking errors with CONFIG_64BIT
>   MIPS: use MIPS32/MIPS64 generic instruction macros
>   MIPS: malta: fix GT64120 base virtual address on 64BIT
>   MIPS: fix addresses of exception vectors in 64-bit mode
>   MIPS: fix *ADDR macro usage warnings on CONFIG_64BIT
>   MIPS: Makefile: sign-extend TEXT_BASE value on CONFIG_64BIT
>   MIPS: enable 64-bit kernel segment addressing on CONFIG_64BIT
>   MIPS: traps: fix passing wrong sp when returning from exception
>   MIPS: pbl_macros: use generic load/store macros in
>     copy_to_link_location
>   MIPS: add 64-bit support for optimized string functions
>   MIPS: make setjmp/longjmp/initjmp available in 64BIT builds
>   MIPS: main_entry-pbl: fix conversion warnings on CONFIG_64BIT

Applied, thanks

Sascha

> 
>  arch/mips/Kconfig                             |  6 +-
>  arch/mips/Makefile                            | 14 +++--
>  arch/mips/boards/qemu-malta/lowlevel.S        |  4 +-
>  arch/mips/boot/main_entry-pbl.c               | 11 ++--
>  arch/mips/boot/main_entry.c                   |  2 +-
>  arch/mips/boot/start.S                        |  4 +-
>  arch/mips/include/asm/asm.h                   | 10 +--
>  arch/mips/include/asm/debug_ll_ns16550.h      |  6 +-
>  arch/mips/include/asm/dma.h                   | 16 ++---
>  arch/mips/include/asm/io.h                    |  2 +-
>  arch/mips/include/asm/pbl_macros.h            | 62 +++++++++++--------
>  arch/mips/include/asm/pbl_nmon.h              | 10 +--
>  arch/mips/include/asm/regdef.h                |  6 ++
>  arch/mips/include/asm/setjmp.h                |  2 +-
>  arch/mips/lib/genex.S                         |  8 +--
>  arch/mips/lib/memcpy.S                        | 37 +++++++++--
>  arch/mips/lib/reloc.c                         |  7 +--
>  arch/mips/lib/setjmp.S                        | 48 +++++++-------
>  arch/mips/lib/traps.c                         |  2 +-
>  .../mach-malta/include/mach/mach-gt64120.h    |  2 +-
>  arch/mips/mach-malta/pci.c                    |  2 +-
>  21 files changed, 156 insertions(+), 105 deletions(-)
> 
> -- 
> 2.41.0
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


