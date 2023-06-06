Delivery-date: Tue, 06 Jun 2023 10:03:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6RfD-00CnI9-Qa
	for lore@lore.pengutronix.de; Tue, 06 Jun 2023 10:03:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6RfA-00009Q-Du
	for lore@pengutronix.de; Tue, 06 Jun 2023 10:03:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k97CEJAJqqcxZ8AyjCDU4qqmGn1kTFis9hffro7Y/XA=; b=DV7ibWIRX7KdjLlaAmOgW3MIar
	KAe0oZtAMWOGFkUmzKYSQ+uxjhupi+U6LQA10+Be6qmNygM4yHD9MYwJ5Cff/2+DfDgK0blhJTmpJ
	f1f//4uxxyjROKplDDZ5F73VBQ+69pa0dnPpZ+eXONlQKm+YI0Ub51YQCG67ukA2TvBVeS5TDQ7jU
	Wa+P2yJocx/Ha1cafFPZsuWiz212kGxbX3ejYXDZEQXHfHmc1yv4DJYGGv81255ZSVnlXVQK9/nXd
	EifRLbJErL3y9RclIdT8aLDPhO4Cc/O5eQaSBQcYeqgusL053qisYUvlpRfVESQTLPcvWYu9FEa/l
	zzXnoYCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Rds-000ibM-2P;
	Tue, 06 Jun 2023 08:02:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Rdp-000iaf-2I
	for barebox@lists.infradead.org;
	Tue, 06 Jun 2023 08:02:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q6Rdm-0008J0-Kp; Tue, 06 Jun 2023 10:02:06 +0200
Message-ID: <af965bd5-aa07-b585-c3d1-494814d875e9@pengutronix.de>
Date: Tue, 6 Jun 2023 10:02:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: Denis Orlov <denorl2009@gmail.com>, barebox@lists.infradead.org
References: <20230605202634.42175-1-denorl2009@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230605202634.42175-1-denorl2009@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_010209_748643_898F9F70 
X-CRM114-Status: GOOD (  19.29  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 00/17] MIPS: fix and improve 64BIT support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Denis,

On 05.06.23 22:10, Denis Orlov wrote:
> The existing 64BIT support for MIPS was somewhat incomplete with no
> board having MIPS64 CPUs specified to be available as targets. Define
> Malta as supporting those and fix all the compilation and linking
> errors. Make some optional features available with 64BIT too.

Would be cool to test this in CI. Could you add:

  - a defconfig that enables this board (I'd call it mips64_defconfig
    and if another MIPS64 SoC is added, we will add it there, like
    we do now for e.g. multi_v8_defconfig on ARM)

  - a Labgrid env file that configures QEMU appropriately
    See test/mips/qemu-malta_defconfig.yaml for an example

If you like, you can go further and send a patch adding it to
CI's test-labgrid-pytest.yml workflow, but I can do that too.

Cheers,
Ahmad

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

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



