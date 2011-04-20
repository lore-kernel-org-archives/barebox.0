Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout-de.gmx.net ([213.165.64.23])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1QCWBN-0007Z7-WD
	for barebox@lists.infradead.org; Wed, 20 Apr 2011 12:06:59 +0000
Message-ID: <4DAECC5D.8060808@gmx.de>
Date: Wed, 20 Apr 2011 14:06:53 +0200
From: Thomas Mayer <tm.telemotive@gmx.de>
MIME-Version: 1.0
References: <4DAEBBF4.30805@telemotive.de>
	<39A4B204C321D34DA3490E3B119D5A6C6967ED8015@SBS2008.wellsense.local>
In-Reply-To: <39A4B204C321D34DA3490E3B119D5A6C6967ED8015@SBS2008.wellsense.local>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: i.MX35 3-stack use only 128MB RAM
To: barebox@lists.infradead.org

Hi,

wow this was a really quick and good answer, thanks a lot!
I will test it and try to adapt it to barebox too.


Regards,
Thomas


Am 20.04.2011 13:20, schrieb Boaz Ben-David:
> Hi,
>
> This is the procedure for modifying Redboot to support 256MB of RAM in Redboot, you can adapt it to barebox:
>
> How to extend RAM for Linux on MX35PDK
> =======================================
>
> Tested on: redboot_200910, MX35PDK green board, MX35 TO2, DDR2, SDK1.5
>
> The current redboot images enable just half of the physically available DDR2 memory (128MB on MX35PDK).
> This is due to the fact that redboot is only enabling SDCS0 (BANK0) and not SDCS1.
> It seems that there was a little bug in redboot which has prevented the enablement of SDCS1 and so
> nobody has tried this again. Physically the bank1 is working properly on MX35PDK CPU module.
>
> Step0
> =====
>
> Check memory size of existing redboot on your MX35PDK
>
> under redboot check memory on SDCS1 which is mapped physically to 0x90000000.
> You may also use 0x08000000 which is the first virtual address on SDCS1.
> Note in redboot, the virtual address 0x80000000 is mapped to physical address 0x80000000 non cashable.
> Virtual Address 0x0 is mapped to physical address 0x80000000 cashable.
> The virtual address 0x90000000 is not in the MMU table. That is why we receive a "illegal memory address" error message.
>   This is not a memory exception because no memory transaction has  taken place.
> See also below...
>
>
> RedBoot>  dump -b 0x90000000
> 90000000: ** command abort - illegal memory access?
> RedBoot>  dump -b 0x08000000
> 08000000: ** command abort - illegal memory access?
> RedBoot>  dump -b 0x07ffff00
> 07FFFF00: FF FF FF FF FF FF FF FF  FF FF FF FF FF FF FF FF  |................|
> 07FFFF10: FF FF FF FF FF FF FF FF  FF FF FF FF FF FF FF FF  |................|
>
> After booting linux use command "free":
>
> root@freescale ~$ free
>                total         used         free       shared      buffers
>    Mem:       126140         9920       116220            0            0
>   Swap:            0            0            0
> Total:       126140         9920       116220
>
> You have about 128MB free memory. But not 256MB.
>
>
> Step 1
> ======
>
> We will edit and recompile redboot. For this you may untar the redboot_200910.tgz archive in the linux BSP source
> on your linux host.
> Unpack redboot and configure the build process as described in
> redboot_200910/doc/redboot_mx35.pdf Chapter 6
>
> You should be able to run successfully:
>
>              ecosconfig new mx35_3stack redboot
>              ecosconfig import $ECOS_REPOSITORY/hal/arm/mx35/3stack/current/misc/redboot_ROMRAM.ecm
>              ecosconfig tree
>              make
>
> Step 2
> ======
>
> We will know edit some redboot source files as discribed below. Look at the comment
> "// by michael for 256MB".
>
>
> ~/redboot_200910/src/ecos/packages/hal/arm/mx35/3stack/current/include/pkgconf/mlt_arm_board_romram.h
>
> #ifndef __ASSEMBLER__
> #include<cyg/infra/cyg_type.h>
> #include<stddef.h>
>
> #endif
> #define CYGMEM_REGION_ram (0x00000000)
> #define CYGMEM_REGION_ram_SIZE (0x0FF00000) // by michael for 256MB
> #define CYGMEM_REGION_ram_ATTR (CYGMEM_REGION_ATTR_R | CYGMEM_REGION_ATTR_W)
> #define CYGMEM_REGION_rom (0x87F00000)
> #define CYGMEM_REGION_rom_SIZE (0x100000)
> #define CYGMEM_REGION_rom_ATTR (CYGMEM_REGION_ATTR_R)
> #ifndef __ASSEMBLER__
> extern char CYG_LABEL_NAME (__heap1) [];
> #endif
> #define CYGMEM_SECTION_heap1 (CYG_LABEL_NAME (__heap1))
> #define CYGMEM_SECTION_heap1_SIZE (CYGMEM_REGION_ram_SIZE - (size_t) CYG_LABEL_NAME (__heap1))
>
>
> ~/redboot_200910/src/ecos/packages/hal/arm/mx35/3stack/current/include/hal_plaform_setup.h line 712:
>
>         ldr r0, ESDCTL_BASE_W
> /* deleted by michael
>          mov r3, #0x2000
>          str r3, [r0, #0x0]
>          ldr r2, ROM_VER_ADDR_W
>          ldr r4, [r2]
>          cmp r4, #0x1
>          streq r3, [r0, #0x8]
> */
>   mov r12, #0x00
>   mov r2, #0x0 // DDR2
>   mov r1, #RAM_BANK0_BASE
>   bl setup_sdram_bank
>   cmp r3, #0x0
> 3: bne 3b  // loop forever if bank0 is not OK
>
> /* do not repeat with mDDR settings. We know we have DDR2 (r2=0)
>   cmp r3, #0x0
>   orreq r12, r12, #1
>   eorne r2, r2, #0x1
>   blne setup_sdram_bank
> */
> #if 1 // do the same for bank1
>   /* CSD1 */
>   mov r12, #0x00
>   mov r2, #0x0 // DDR2
>   mov r1, #RAM_BANK1_BASE
>   bl setup_sdram_bank
>   cmp r3, #0x0
> 4: bne 4b  //loop forever if bank1 is not OK
>
>
> /* do not try with mDDR again for bank1. we know we have DDR2
>   beq 1b
>   eorne r2, r2, #0x1
>   blne setup_sdram_bank
>   orr r12, r12, #1
> 1:
> */
> #endif
>
> ~/redboot_200910/src/ecos/packages/hal/arm/mx35/3stack/current/include/fsl_board.h
>
> /* MX35 3-Stack SDRAM is from 0x90000000, 64M */
> #define SDRAM_BASE_ADDR             CSD0_BASE_ADDR
> //#define SDRAM_SIZE                  0x08000000
> #define SDRAM_SIZE                  0x10000000   // by michael for 256MB
> #define RAM_BANK0_BASE              CSD0_BASE_ADDR
> #define RAM_BANK1_BASE              CSD1_BASE_ADDR
>
>
> ~/redboot_200910/src/ecos/packages/hal/arm/mx35/3stack/current/src/board_misc.c
>
>     /*              Actual   Virtual  Size   Attributes                                                    Function  */
>      /*              Base     Base     MB     cached?           buffered?        access permissions                 */
>      /*              xxx00000 xxx00000                                                                                */
>      X_ARM_MMU_SECTION(0x000, 0xF00,   0x1,   ARM_UNCACHEABLE, ARM_UNBUFFERABLE, ARM_ACCESS_PERM_RW_RW); /* ROM */
>      X_ARM_MMU_SECTION(0x100, 0x100,   0x1,   ARM_UNCACHEABLE, ARM_UNBUFFERABLE, ARM_ACCESS_PERM_RW_RW); /* iRAM */
>      X_ARM_MMU_SECTION(0x300, 0x300,   0x1,   ARM_UNCACHEABLE, ARM_UNBUFFERABLE, ARM_ACCESS_PERM_RW_RW); /* L2CC */
>      X_ARM_MMU_SECTION(0x400, 0x400,   0x400, ARM_UNCACHEABLE, ARM_UNBUFFERABLE, ARM_ACCESS_PERM_RW_RW); /* Internal Regsisters upto SDRAM*/
>      X_ARM_MMU_SECTION(0x800, 0x000,   0x80,  ARM_CACHEABLE,   ARM_BUFFERABLE,   ARM_ACCESS_PERM_RW_RW); /* SDRAM 0:128M*/
>      X_ARM_MMU_SECTION(0x800, 0x800,   0x80,  ARM_CACHEABLE,   ARM_BUFFERABLE,   ARM_ACCESS_PERM_RW_RW); /* SDRAM 0:128M*/
>      X_ARM_MMU_SECTION(0x800, 0x880,   0x80,  ARM_UNCACHEABLE, ARM_UNBUFFERABLE, ARM_ACCESS_PERM_RW_RW); /* SDRAM 0:128M*/
>      // start by michael for 256MB. Enter new MMU entries for SDCS1
>      X_ARM_MMU_SECTION(0x900, 0x080,   0x80,  ARM_CACHEABLE,   ARM_BUFFERABLE,   ARM_ACCESS_PERM_RW_RW); /* SDRAM 1:128M*/
>      X_ARM_MMU_SECTION(0x900, 0x900,   0x80,  ARM_CACHEABLE,   ARM_BUFFERABLE,   ARM_ACCESS_PERM_RW_RW); /* SDRAM 1:128M*/
>      X_ARM_MMU_SECTION(0x900, 0x980,   0x80,  ARM_CACHEABLE,   ARM_BUFFERABLE,   ARM_ACCESS_PERM_RW_RW); /* SDRAM 1:128M*/
>      // end by michael for 256MB
>      X_ARM_MMU_SECTION(0xA00, 0xA00,   0x40,  ARM_CACHEABLE,   ARM_BUFFERABLE,   ARM_ACCESS_PERM_RW_RW); /* Flash */
>      X_ARM_MMU_SECTION(0xB00, 0xB00,   0x20,  ARM_CACHEABLE,   ARM_BUFFERABLE,   ARM_ACCESS_PERM_RW_RW); /* PSRAM */
>      X_ARM_MMU_SECTION(0xB20, 0xB20,   0x1E0, ARM_UNCACHEABLE, ARM_UNBUFFERABLE,ARM_ACCESS_PERM_RW_RW); /* ESDCTL, WEIM, M3IF, EMI, NFC, External I/O */
>
>
> Step 4
> ======
>
> rebuild redboot. Now it comes:
>
> The make scripte does not recognize any changes in hal_platform_setup.h file because this file is been used to build
> the lib "vectors". This is not in the dependencies of the make script. It is either not removed by "make clean".
> You have to remove the vectors.o by hand.
>
> So to properly rebuild redboot you need to:
>
> cd ~/redboot_200910/src/ecos
> rm install/lib/vectors.*
> make
> cp install/bin/redboot.bin ~/shared_folder/redboot_mx35_TO2_256MB.bin # if you have a VMWare and use a shared_folder in ~/shared_folder
>
>
> Step 5
> ======
>
> Flash new redboot to MX35PDK using ATK1.6. You do not need to erase the NAND flash. So, you keep the
> same fconfig settings. Do not forget the BBT tick!
>
>
> Step 6
> ======
>
> Check the new memories:
>
> RedBoot>  dump -b 0x90000000
> 90000000: 00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  |................|
> 90000010: 00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  |................|
>
>
> root@freescale ~$ free
>                total         used         free       shared      buffers
>    Mem:       256088        10040       246048            0            0
>   Swap:            0            0            0
> Total:       256088        10040       246048
>
>
>
>
> Boaz Ben-David
> R&D Engineer
>
> Tel: +972.2.6470.700Mob: +972.54.678.1511Email: boaz.bd@wellsense-tech.com
> www.themapsystem.com
>
>
>   Please consider the impact on the environment before printing this e-mail and/or the attachment(s).
> ________________________________________
> From: barebox-bounces@lists.infradead.org [barebox-bounces@lists.infradead.org] On Behalf Of Thomas Mayer [thomas.mayer@telemotive.de]
> Sent: Wednesday, April 20, 2011 1:56 PM
> To: barebox@lists.infradead.org
> Subject: i.MX35 3-stack use only 128MB RAM
>
> Hi,
>
> I read in the freescale documentation "U-Boot for i.MX35 based Designs"
> that the i.MX35 3-stack board has 256MB SDRAM, but we can use only 128MB
> because the second chip select isn't configured. Depending on the
> circuit diagrams I think "CSD1" isn't configured.
> I looked already in the datasheet of the cpu, but I couldn't found a
> solution for this problem.
>
> Have anybody ever tried to enable this second chip select?
>
>
> Regards,
> Thomas
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
