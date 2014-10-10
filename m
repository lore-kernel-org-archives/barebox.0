Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XcTv8-00075G-13
 for barebox@lists.infradead.org; Fri, 10 Oct 2014 06:43:22 +0000
Date: Fri, 10 Oct 2014 08:42:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141010064259.GM4992@pengutronix.de>
References: <CACSabZ-OeOhLW5JC7Tk8OfryUfNx-9sZnGw16BK4kj+1AFts3g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACSabZ-OeOhLW5JC7Tk8OfryUfNx-9sZnGw16BK4kj+1AFts3g@mail.gmail.com>
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
Subject: Re: Wrong relocation with Mini2440
To: luigi origa <luigi.origa@gmail.com>
Cc: barebox@lists.infradead.org

Hi Luigi,

On Fri, Oct 10, 2014 at 12:24:40AM +0200, luigi origa wrote:
> I'm trying to have barebox working on my mini2440. After many test,
> today i got a jtag interface and after some check i found this:
> 
> - source s3c24x0_nand_boot -
> 2: ldr sp, =(TEXT_BASE - SZ_2M) /* Setup a temporary stack in SDRAM */
> /*
>  * We still run at a location we are not linked to. But lets still running
>  * from the internal SRAM, this may speed up the boot
>  */
> push {lr}
> bl nand_boot
> pop {lr}
> /*
>  * Adjust the return address to the correct address in SDRAM
>  */
> ldr r1, =(TEXT_BASE - SZ_2M)
> add lr, lr, r1
> 
> mov pc, lr
> 
> 
> - compiled s3c24x0_nand_boot -
> ROM:00000320 loc_320                                 ; CODE XREF:
> s3c24x0_nand_boot+10j
> ROM:00000320                 MOV             SP, #0x33C00000
> ROM:00000324                 STMFD           SP!, {LR}
> ROM:00000328                 BL              nand_boot
> ROM:0000032C                 LDMFD           SP!, {LR}
> ROM:00000330                 MOV             R1, #0x33C00000
> ROM:00000334                 ADD             LR, LR, R1
> 
> 
> - source nand_boot -
> void __nand_boot_init nand_boot(void)
> {
> void *dest = _text;
> int size = ld_var(_barebox_image_size);
> int page = 0;
> 
> s3c24x0_nand_load_image(dest, size, page);
> }
> 
> 
> - compiled nand_boot-
> ROM:000001E0                 MOV             R1, R0                  // size
> ROM:000001E4                 LDR             R0, =0x33E00000 // *dest
> ROM:000001E8                 MOV             R2, #0
> ROM:000001EC                 LDMFD           SP!, {R4,LR}
> ROM:000001F0                 B               s3c24x0_nand_load_image
> 
> 
> 0x33c00000 is the sdram stack where the program should be copied from
> nand. Unfortunately the function nand_boot copy from nand to sdram
> @0x33e00000.
> 
> When s3c24x0_nand_boot try to jump in sdram, use  a wrong address
> (0x33c00220 instead 0x33e00220).
> 
> I don't know if the problem is in "TEXT_BASE - SZ_2M" or "_text".

Do you have PBL enabled? Could you enable PBL if not? Additionally
could you revert:

commit 558d72dc5116fc6275ea77c783cc65d6d1a5b521
Author: Michael Olbrich <m.olbrich@pengutronix.de>
Date:   Sun May 18 16:46:29 2014 +0200

    ARM Samsung: fix booting from NAND with pbl
    
    The ARM pbl is linked at (TEXT_BASE - SZ_2M). This conflicts with the temporary
    stack used in s3c24x0_nand_boot. Moving the stack to (TEXT_BASE - SZ_2M) fixes
    this problem. With this patch a compressed barebox with pbl can boot on
    mini2440 from NAND.
    
    Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

I suspect This patch fixed booting with PBL enabled but broke booting
without PBL.

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
