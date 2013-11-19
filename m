Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VijWh-0004gO-3m
 for barebox@lists.infradead.org; Tue, 19 Nov 2013 11:31:28 +0000
Date: Tue, 19 Nov 2013 12:31:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131119113104.GD24559@pengutronix.de>
References: <5289EB17.1030802@groupe-cahors.com>
 <20131119095110.GC24559@pengutronix.de>
 <528B4511.6050301@groupe-cahors.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <528B4511.6050301@groupe-cahors.com>
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
Subject: Re: Lowlevel questions
To: Mathieu Anquetin <mathieu.anquetin@groupe-cahors.com>
Cc: barebox@lists.infradead.org

On Tue, Nov 19, 2013 at 12:01:37PM +0100, Mathieu Anquetin wrote:
> On 19/11/2013 10:51, Sascha Hauer wrote:
> > On Mon, Nov 18, 2013 at 11:25:27AM +0100, Mathieu Anquetin wrote:
> >> Hi,
> >>
> >> I am currently trying to port Barebox to a new ARM-based machine and I
> >> am facing some questions concerning low level initialization (before
> >> relocation to RAM). Reading the header files, I came across 3 functions
> >> that may be of interest during startup but I can't find an example of
> >> them being called, they are :
> >>     - board_init
> >>     - dram_init
> >>     - board_init_lowlevel
> > Ok, let's take this opportunity to write it up:
> >
> > Generally we have two different startup mechanisms. The first, simpler
> > version is without pbl image. Here the very first instruction executed
> > is the function in the text_entry section:
> >
> > ./arch/arm/cpu/start.c:125:void __naked __section(.text_entry) start(void)
> >
> > This calls barebox_arm_head() which is a static inline assembly
> > function. This function builds an ARM reset vector table. It also
> > switches the CPU to Thumb2 mode if necessary. The next step is to jump
> > to barebox_arm_reset_vector:
> >
> > ./arch/arm/include/asm/barebox-arm-head.h:58:           "b barebox_arm_reset_vector\n"
> >
> > barebox_arm_reset_vector is a board specific function you have to
> > implement. Depending on your SoC and bootmode this function will run
> > from internal SRAM, SDRAM or maybe NOR flash. Your job here is to
> > initialize your SDRAM, see for example
> > ./arch/arm/boards/eukrea_cpuimx35/lowlevel.c. At the end of this
> > function jump to:
> >
> > void __noreturn barebox_arm_entry(uint32_t membase, uint32_t memsize, uint32_t boarddata);
> >
> > Pass this function the start of your SDRAM and the size. The third value
> > is a value that will be preserved and can be retrieved later from board
> > code. barebox_arm_entry is the common entry point for all ARM boards,
> > This function will move the barebox binary to it's final address, clear
> > the bss segment and jump to start_barebox() which is the common
> > architecture independent entry point.
> >
> > /* ------------------------------------- */
> >
> > The above is the 'traditional' way. Next we have PBL
> > (CONFIG_PBL_IMAGE=y) which was introduced for compressed images. Here
> > two binaries are created, one 'real' image which gets compressed and one
> > uncompressor image (the PBL).  For board code it makes no difference.
> > Boards still implement barebox_arm_reset_vector to setup their SDRAM and
> > in the end jump to barebox_arm_entry(). The difference is that both the
> > board code and barebox_arm_entry() end up in the decompressor image. The
> > 'real' image does not contain any lowlevel code, instead it starts at:
> >
> > ./arch/arm/cpu/start.c:160:void __naked __section(.text_entry) start(uint32_t membase, uint32_t memsize, uint32_t boarddata)
> >
> > /* ------------------------------------- */
> >
> > Finally we have multiimage support (CONFIG_PBL_MULTI_IMAGES=y) which is
> > a variant of the PBL. With multiimage support we have three binaries
> > involved: Again one 'real' binary, one decompressor, and one out of
> > multiple Board specific binaries. The board specific binary is for a
> > single board only and starts with ENTRY_FUNCTION(). This function will
> > be the very first code executed. It's job is again to setup SDRAM and
> > jump to barebox_arm_entry(). With multiimage support barebox_arm_entry
> > will simply jump past the current image which will be where the
> > decompressor code is.
> >
> >
> > So whatever you do you have to implement barebox_arm_reset_vector() or
> > define an ENTRY_FUNCTION(). Both functions should assume that they are
> > executed at another place they are linked at. This means that you can't
> > use global variables. Newer gcc versions also seem to make
> > problems with switch/case.
> >
> >
> > This is no direct answer to your question, but I hope it contains the
> > answers you were looking for ;) If not feel free to ask.
> >
> > Sascha
> >
> Very nice and detailed explanation of the boot process implementation !
> Now I see more clearly which function is called and when during the
> startup code. Concerning the three functions I mentioned, it makes it
> clear for me that they are just prototypes that I can implement for
> naming clarity and I should not worry of them being called elsewhere in
> the code.
> Then, just to make sure, before calling a new function from the
> barebox_arm_reset_vector, do I have to call arm_setup_stack beforehand ?
> Or is it just for functions that have a return value and/or arguments ?

The first three arguments are passed in r0, r1, r2, the return value in
r0. However, the called function may use the stack internally. So you
should play safe and setup the stack before calling into other
functions.

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
