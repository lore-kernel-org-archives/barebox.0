Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qc0-f182.google.com ([209.85.216.182])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XcM8x-0007uN-Kh
 for barebox@lists.infradead.org; Thu, 09 Oct 2014 22:25:08 +0000
Received: by mail-qc0-f182.google.com with SMTP id i17so1068532qcy.13
 for <barebox@lists.infradead.org>; Thu, 09 Oct 2014 15:24:42 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 10 Oct 2014 00:24:40 +0200
Message-ID: <CACSabZ-OeOhLW5JC7Tk8OfryUfNx-9sZnGw16BK4kj+1AFts3g@mail.gmail.com>
From: luigi origa <luigi.origa@gmail.com>
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
Subject: Wrong relocation with Mini2440
To: barebox@lists.infradead.org

I'm trying to have barebox working on my mini2440. After many test,
today i got a jtag interface and after some check i found this:

- source s3c24x0_nand_boot -
2: ldr sp, =(TEXT_BASE - SZ_2M) /* Setup a temporary stack in SDRAM */
/*
 * We still run at a location we are not linked to. But lets still running
 * from the internal SRAM, this may speed up the boot
 */
push {lr}
bl nand_boot
pop {lr}
/*
 * Adjust the return address to the correct address in SDRAM
 */
ldr r1, =(TEXT_BASE - SZ_2M)
add lr, lr, r1

mov pc, lr


- compiled s3c24x0_nand_boot -
ROM:00000320 loc_320                                 ; CODE XREF:
s3c24x0_nand_boot+10j
ROM:00000320                 MOV             SP, #0x33C00000
ROM:00000324                 STMFD           SP!, {LR}
ROM:00000328                 BL              nand_boot
ROM:0000032C                 LDMFD           SP!, {LR}
ROM:00000330                 MOV             R1, #0x33C00000
ROM:00000334                 ADD             LR, LR, R1


- source nand_boot -
void __nand_boot_init nand_boot(void)
{
void *dest = _text;
int size = ld_var(_barebox_image_size);
int page = 0;

s3c24x0_nand_load_image(dest, size, page);
}


- compiled nand_boot-
ROM:000001E0                 MOV             R1, R0                  // size
ROM:000001E4                 LDR             R0, =0x33E00000 // *dest
ROM:000001E8                 MOV             R2, #0
ROM:000001EC                 LDMFD           SP!, {R4,LR}
ROM:000001F0                 B               s3c24x0_nand_load_image


0x33c00000 is the sdram stack where the program should be copied from
nand. Unfortunately the function nand_boot copy from nand to sdram
@0x33e00000.

When s3c24x0_nand_boot try to jump in sdram, use  a wrong address
(0x33c00220 instead 0x33e00220).

I don't know if the problem is in "TEXT_BASE - SZ_2M" or "_text".

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
