Delivery-date: Thu, 27 Jul 2023 07:11:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOtHZ-00BiHB-04
	for lore@lore.pengutronix.de; Thu, 27 Jul 2023 07:11:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOtHW-0006eh-KG
	for lore@pengutronix.de; Thu, 27 Jul 2023 07:11:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IuYYHwubxxsduvpFXNbU9xhWrQ2ZwblotC/vm9yQFOY=; b=R+eVyxYiISxP2KBpgtY+C1rOOL
	FEGiHIxBcjcht1L6D6PeJoawOATF7j10KRvOfpJH/jzY+rvo/R5CrQQCNrnIaVz2dSSFGRr0Z1kfx
	gDWTUsx+LiDuBH/QZAtFifAVDHfkeVNe4xrIwJbuklv1AGMJEYOUNk069RuBIeXxzVlhcgcI2cSsU
	Z3/jXwTunhVWpNZzmAAbiT3DypoJridUaMPnLm0hSAT0S1Nzdsyxz5Y48DUX2zSjDHgwkD62sgmNi
	+A6SlxDz87oFsDi6waqRzz/dUckWL8cxjtZIqhIIWzTDe/CO8iZ3nUD53PXFX7+lhpwXflmpSGrsv
	5UtkHj+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOtG6-00C9mW-2f;
	Thu, 27 Jul 2023 05:09:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOtG1-00C9le-0H
	for barebox@lists.infradead.org;
	Thu, 27 Jul 2023 05:09:53 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qOtFw-0006I2-2p; Thu, 27 Jul 2023 07:09:44 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qOtFv-0002Tu-RX; Thu, 27 Jul 2023 07:09:43 +0200
Date: Thu, 27 Jul 2023 07:09:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Denis Orlov <denorl2009@gmail.com>
Message-ID: <20230727050943.GY18491@pengutronix.de>
References: <20230725050618.3451-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230725050618.3451-1-denorl2009@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230726_220951_029325_8E3578AE 
X-CRM114-Status: GOOD (  17.80  )
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
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 00/21] MIPS: semi-random code improvements
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jul 25, 2023 at 08:05:01AM +0300, Denis Orlov wrote:
> Denis Orlov (21):
>   MIPS: addrspace: rectify ksseg segment naming
>   MIPS: addrspace: simplify the header
>   MIPS: main_entry-pbl: remove unused variable
>   MIPS: barebox.lds: remove extra whitespace
>   MIPS: reloc: mark relocate_code() as noreturn
>   MIPS: cpuinfo: use appropriate format specifiers in printf
>   MIPS: print BadVAddr CP0 register on exception
>   MIPS: malta: merge GT64120 headers
>   MIPS: pbl_macros: use .asciiz instead of .ascii + .byte 0
>   MIPS: malta: remove duplicated barebox magic code
>   MIPS: pbl: put mips_barebox_10h into ENTRY_FUNCTION
>   MIPS: pbl: make sure to disable interrupts/watchpoints on entry
>   MIPS: pbl: do enable 64-bit addressing in PBL
>   MIPS: clean up barebox proper entry point
>   MIPS: main_entry: properly set XTLB handler for 64-bit mode
>   MIPS: main_entry: remove exception vector array
>   MIPS: c-r4k: prettify code in __BUILD_BLAST_CACHE_RANGE
>   MIPS: c-r4k: generate blast_*cache functions via macros
>   MIPS: c-r4k: do flush secondary cache
>   MIPS: c-r4k: remove extra function declaration
>   MIPS: reloc: use IS_ALIGNED macro to check for an alignment

Applied, thanks

Sascha

> 
>  arch/mips/boards/8devices-lima/lowlevel.S     |  2 +-
>  arch/mips/boards/dlink-dir-320/lowlevel.S     |  4 +-
>  arch/mips/boards/img-ci20/lowlevel.S          |  2 +-
>  arch/mips/boards/loongson-ls1b/lowlevel.S     |  4 +-
>  arch/mips/boards/netgear-wg102/lowlevel.S     |  4 +-
>  arch/mips/boards/qemu-malta/lowlevel.S        | 17 +----
>  arch/mips/boards/ritmix-rzx50/lowlevel.S      |  2 +-
>  arch/mips/boards/tplink-wdr4300/lowlevel.S    |  2 +-
>  arch/mips/boot/main_entry-pbl.c               |  4 --
>  arch/mips/boot/main_entry.c                   | 41 +++--------
>  arch/mips/boot/start.S                        | 46 -------------
>  arch/mips/boot/start.c                        | 17 +++++
>  arch/mips/include/asm/addrspace.h             | 47 ++++++-------
>  arch/mips/include/asm/asm.h                   |  4 +-
>  arch/mips/include/asm/cacheops.h              |  5 ++
>  arch/mips/include/asm/pbl_macros.h            | 20 +++++-
>  arch/mips/include/asm/stackframe.h            |  4 ++
>  arch/mips/lib/barebox.lds.S                   |  2 -
>  arch/mips/lib/c-r4k.c                         | 68 ++++++++++---------
>  arch/mips/lib/cpuinfo.c                       |  6 +-
>  arch/mips/lib/genex.S                         | 29 +++-----
>  arch/mips/lib/reloc.c                         |  6 +-
>  arch/mips/lib/traps.c                         |  3 +-
>  .../mips/mach-ath79/include/mach/pbl_macros.h |  4 +-
>  .../asm => mach-malta/include/mach}/gt64120.h | 13 ++--
>  .../mach-malta/include/mach/mach-gt64120.h    | 17 -----
>  arch/mips/mach-malta/pci.c                    |  4 +-
>  27 files changed, 147 insertions(+), 230 deletions(-)
>  delete mode 100644 arch/mips/boot/start.S
>  create mode 100644 arch/mips/boot/start.c
>  rename arch/mips/{include/asm => mach-malta/include/mach}/gt64120.h (92%)
>  delete mode 100644 arch/mips/mach-malta/include/mach/mach-gt64120.h
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


