Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMYm9-0006pY-4F
 for barebox@lists.infradead.org; Thu, 19 Sep 2013 07:35:46 +0000
Date: Thu, 19 Sep 2013 09:35:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130919073520.GS30088@pengutronix.de>
References: <CAO-21LPB36R6Gk1RiWah8-pinu3rsKEcN-DgeQZkT65VNCDiEA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAO-21LPB36R6Gk1RiWah8-pinu3rsKEcN-DgeQZkT65VNCDiEA@mail.gmail.com>
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
Subject: Re: Porting to a new board
To: "Allen Kennedy Jr." <allen@kennedystuff.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 18, 2013 at 04:44:29PM -0500, Allen Kennedy Jr. wrote:
> Hello,
>   I have read the documentation but I believe it to be out of date, as it
> does not match up with the source from the git tree.

Yes, you're most probably right :(

> 
>   To that end, I am trying to add a new board, and I can not figure out how
> to do so.  My board uses the mx27 processor, and so I am attempting to
> closely mimic one of the other mx27 boards, when following the steps here:
> http://barebox.org/documentation/barebox-2011.05.0/dev_board.html
> 
> I find the following inconsistencies:
> 1. include/configs/<boardname>.h  -
> the configs directory does not exist.
> 2. modify arch/<architecture>/Kconfig
> 
>    - add your board (MACH_*) to the list
>    - add your default text base address for this architecture
>    (ARCH_TEXT_BASE)
>    - add BOARDINFO with valueable info for your board
> 
> None of this exists.
> 
> 3. modify arch/<architecture>/Makefile:
> 
>    - add board-$(MACH_*) = <your board_dir>
> 
> 
> This does not exist
> 
> And my board will not show up in the menu config.
> 
> Also I am finding it difficult to locate where I set things like flash
> size, ram size, etc...  u-boot has a much simpler (if not less documented)
> layout when it came to boards.  Alas I can not use u-boot, because of the
> nand flash limitations, and thus why I am attempting to use barebox.

Look at arch/arm/boards/pcm038/. It should contain enough information to
get you started. To hooking your board up to the build system look at
arch/arm/boards/Makefile and arch/arm/mach-imx/Kconfig.

> 
> And finally there seems to be some confusiton both in the code and the
> documentation about the difference between a board and a machine.  What is
> the difference?

What we have is:

- board: The PCB in front of you
- SoC: The System on Chip from vendors like Freescale, Marvell,...
- Architecture: Arm, PowerPC, Mips
- subarchitecture: i.MX, PXA, usually a subarchitecture is one of
  arch/*/mach-*

'machine' is sometimes used for 'SoC', sometimes for 'board' and
sometimes for 'subarchitecture'. The term shouldn't be used.

> 
> I'm sorry that there is a lot here, but I can not find the proper
> documentation to answer these questions.
> 
> 
> Also, for those that are curious, or can help me get around this issue.  I
> attempting to get this going on a board with an mx27 booted from NAND
> flash, so I believe I have to use the PBL option to setup and copy out of
> nand to do the real booting.  If there is any advice on this, I would
> appreciate it.  I have no other bootloader, only bare metal and a JTAG
> device.

You don't need the PBL option (you can use it if you want to, it will
make your binary smaller).

Basically what I would do is:

- Start with a nearly empty lowlevel.c (copy from
  arch/arm/boards/pcm038/lowlevel.c, remove SDRAM setup
- Setup the SDRAM via JTAG, make sure it works
- Figure out a way to send signs of life from your board (setup early
  UART, flash a LED), add this to early code
- upload the binary via JTAG to the already configured SDRAM, make it
  work.

This way you can get a working binary without having the complex process
of loading from NAND flash before seeing anything. Also with the working
binary you can use barebox to flash itself to NAND.

Hope that helps.

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
