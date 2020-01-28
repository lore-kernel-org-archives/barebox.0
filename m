Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwNGt-0004Nl-Gy
 for barebox@lists.infradead.org; Tue, 28 Jan 2020 09:35:01 +0000
References: <20200128094629.4fb7c2bcad814990c7997eb2@gmail.com>
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <49d641a2-d827-885f-64a1-aac54877cfb5@pengutronix.de>
Date: Tue, 28 Jan 2020 10:34:56 +0100
MIME-Version: 1.0
In-Reply-To: <20200128094629.4fb7c2bcad814990c7997eb2@gmail.com>
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: MIPS: relocation issue
To: Antony Pavlov <antonynpavlov@gmail.com>, Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org, Peter Mamonov <pmamonov@gmail.com>

Hi Antony,

thank you for your bug report. Can you please test my patch "[PATCH v1] MIPS: remove .bss 
to __rel_start overlay" with MMU enabled.

If it works, then we need to decide what should be done with MMU dependency.

On 28.01.20 07:46, Antony Pavlov wrote:
> Hi!
> 
> Since 28ed10d6a6 ("MIPS: relocation: add relocation support")
> iomem output on memory regions is invalid,
> all the code that rely on registered sdram memory regions
> after relocation can fail. E.g. the memtest commands fails
> on barebox.
> 
> How to reproduce the problem ov v2020.01.0:
> 
> $ wget https://www.barebox.org/download/barebox-2020.01.0.tar.bz2
> ...
> $ tar fx barebox-2020.01.0.tar.bz2
> $ cd barebox-2020.01.0
> $ export ARCH=mips
> $ export CROSS_COMPILE=mips-linux-gnu-
> $ make qemu-malta_defconfig
> $ sed -i "s/^.*CONFIG_CMD_MEMTEST.*/CONFIG_CMD_MEMTEST=y/" .config
> $ make
> $ qemu-system-mips -nodefaults -M malta -m 256 -nographic -serial stdio -monitor null -bios barebox-flash-image
> ...
> barebox@qemu malta:/ memtest
> Start iteration 1 of 1.
> Testing memory space: 0xa0865000 -> 0xafffffff:
> Starting data line test.
> Check for address bits stuck high.
> Check for address bits stuck low or shorted.
> Starting moving inversions test of RAM:
> Fill with address, compare, fill with inverted address, compare again
> 	[##########################################                       ]
> FAILURE (read/write): expected 0x03cca9f2, actual 0xa08126c4 at address 0xafb8f7c4.
> 
> Ooops, TLB miss on load or ifetch!
> 
> $ 0   : 00000000 00000000 fffffffb a085c900
> $ 4   : a0407e90 0000000a b80003f8 00000001
> $ 8   : a0858f28 00000000 00000053 00000008
> $12   : 00000000 00000000 0000005c 00000001
> $16   : 03ccab3c 03ccab3d a0825c48 00000000
> $20   : 00000000 00000001 a0853518 a085352c
> $24   : 00000018 a08124b8
> $28   : 00000000 8fb8fcf8 a0860000 03ccab3e
> Hi    : 0000000a
> Lo    : 00000000
> epc   : 03ccab3e
> ra    : 03ccab3e
> Status: 00000002
> Cause : 00000408
> Config: 80008482
> 
> ### ERROR ### Please RESET the board ###
> 
> 
> memtest for qemu-malta can be repaired by disabling relocation, e.g.
> 
> diff --git a/arch/mips/boot/start.S b/arch/mips/boot/start.S
> index c1cd2d9dd5..95b6596dde 100644
> --- a/arch/mips/boot/start.S
> +++ b/arch/mips/boot/start.S
> @@ -34,7 +34,7 @@ EXPORT(_start)
>          move    a0, s0
>          move    a1, s1
>          move    a2, s2
> -       la      v0, relocate_code
> +       la      v0, main_entry
>          jal     v0
>           nop
> 
> 
> Additional testing on real hardware has to be done.
> 

Kind regards,
Oleksij Rempel

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
