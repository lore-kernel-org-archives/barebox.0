Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ciG5N-00023l-Ap
 for barebox@lists.infradead.org; Mon, 27 Feb 2017 07:51:12 +0000
Date: Mon, 27 Feb 2017 08:50:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170227075044.egcbyi4cfrlmijbk@pengutronix.de>
References: <20170215192932.GB32649@mail.ovh.net>
 <1487187257-29082-1-git-send-email-plagnioj@jcrosoft.com>
 <1487187257-29082-7-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1487187257-29082-7-git-send-email-plagnioj@jcrosoft.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 07/12] efi: move x86 efi boot support to x86 arch
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Feb 15, 2017 at 08:34:15PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> prepare to drop the efi arch as efi boot up is not arch sepecific
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  Documentation/boards/efi.rst                 |   2 +-
>  arch/x86/Kconfig                             |  53 ++++++++++++--
>  arch/x86/Makefile                            |  74 +++++++++++++++++--
>  arch/x86/configs/efi_defconfig               |  78 ++++++++++++++++++++
>  arch/x86/configs/generic_defconfig           |   1 +
>  arch/x86/include/asm/elf.h                   |  86 +++++++++++++++-------
>  arch/x86/include/asm/io.h                    |  71 +++++++++---------
>  arch/x86/include/asm/types.h                 |  51 ++++++++-----
>  arch/x86/include/asm/unaligned.h             |   5 ++
>  arch/x86/lib/Makefile                        |   2 +
>  arch/x86/lib/asm-offsets.c                   |   7 ++
>  arch/x86/mach-efi/.gitignore                 |   2 +
>  arch/x86/mach-efi/Makefile                   |   4 +
>  arch/x86/mach-efi/crt0-efi-ia32.S            |  76 +++++++++++++++++++
>  arch/x86/mach-efi/crt0-efi-x86_64.S          |  75 +++++++++++++++++++
>  arch/x86/mach-efi/elf_ia32_efi.lds.S         | 106 +++++++++++++++++++++++++++
>  arch/x86/mach-efi/elf_x86_64_efi.lds.S       |  99 +++++++++++++++++++++++++
>  arch/x86/mach-efi/include/mach/barebox.lds.h |   0

This empty file gets removed during make distclean causing build
failures here. I made this file non-empty. With this:

aplied, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
