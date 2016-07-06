Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bKiKn-0002PE-Ow
 for barebox@lists.infradead.org; Wed, 06 Jul 2016 08:37:30 +0000
Date: Wed, 6 Jul 2016 10:37:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160706083707.GS20657@pengutronix.de>
References: <1467633177-22478-1-git-send-email-poggi.raph@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1467633177-22478-1-git-send-email-poggi.raph@gmail.com>
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
Subject: Re: [PATCH v5 0/14] Add basic support for arm64
To: Raphael Poggi <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jul 04, 2016 at 01:52:43PM +0200, Raphael Poggi wrote:
> Chance since v4:
> 	PATCH 14/14	new patch, add documentation about aarch64 qemu virt
> 
> Change since v3:
> 	PATCH 2/14	remove hunk belonging to PATCH 3/14
> 
> 	PATCH 3/14	create a lib/ for common code and lib32/ lib64/
> 
> 	PATCH 4/14	add setupc_64, for now setup_c() only memset bss
> 
> 	PATCH 12/14	use default memory layout, chance TEXT_BASE address to let
> 			malloc space below
> 
> Change since v2:
> 	PATCH 1/14	add PHYS_ADDR_T_64BIT config
> 
> 	PATCH 3/14	remove modules.c and clean atags functions in armlinux.c,
> 			and fix also parameters passed to linux kernel.
> 
> 	PATCH 12/14	move lowlevel file from mach-qemu/ to boards/ (like others boards)
> 			split dram and flash init
> 			increase dram/flash size
> 
> 	PATCH 13/14	new patch, in case of armv8, swab need to be done on 32-bit wide register
> 			otherwise swapping the value: "0xAAAABBBB" will become "0xAAAABBBB00000000"
> 			and see as a null value in uint32_t variable.
> 
> 	PATCH 14/14	new patch, add define to handle arm64 uimage format
> 
> 
> Change since v1:
> 	PATCH 2/12:	remove hunk which belongs to patch adding mach-qemu
> 
> 	PATCH 3/12:	remove unused files
> 
> 	PATCH 4/12:	create lowlevel64
> 
> 	PATCH 11/12:	create pgtables64 (nothing in common with the arm32 version)
> 
> 	PATCH 12/12:	rename "mach-virt" => "mach-qemu"
> 			rename board "qemu_virt64"
> 			remove board env files
> 
> 
> Hello,
> 
> This patch series introduces a basic support for arm64.
> 
> The arm64 code is merged in the current arch/arm directory.
> I try to be iterative in the merge process, and find correct solutions
> to handle both architecture at some places.
> 
> I test the patch series by compiling arm64 virt machine and arm32 vexpress-a9 and test it
> in qemu, everything seems to work.

Applied, thanks

This series currently runs through my compile tester, but if that works
consider this series applied.

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
