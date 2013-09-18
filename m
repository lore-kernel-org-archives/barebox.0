Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x231.google.com ([2a00:1450:400c:c03::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMPYJ-0007xo-Su
 for barebox@lists.infradead.org; Wed, 18 Sep 2013 21:44:52 +0000
Received: by mail-we0-f177.google.com with SMTP id t60so7050664wes.22
 for <barebox@lists.infradead.org>; Wed, 18 Sep 2013 14:44:29 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 18 Sep 2013 16:44:29 -0500
Message-ID: <CAO-21LPB36R6Gk1RiWah8-pinu3rsKEcN-DgeQZkT65VNCDiEA@mail.gmail.com>
From: "Allen Kennedy Jr." <allen@kennedystuff.com>
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
Subject: Porting to a new board
To: barebox@lists.infradead.org

Hello,
  I have read the documentation but I believe it to be out of date, as it
does not match up with the source from the git tree.

  To that end, I am trying to add a new board, and I can not figure out how
to do so.  My board uses the mx27 processor, and so I am attempting to
closely mimic one of the other mx27 boards, when following the steps here:
http://barebox.org/documentation/barebox-2011.05.0/dev_board.html

I find the following inconsistencies:
1. include/configs/<boardname>.h  -
the configs directory does not exist.
2. modify arch/<architecture>/Kconfig

   - add your board (MACH_*) to the list
   - add your default text base address for this architecture
   (ARCH_TEXT_BASE)
   - add BOARDINFO with valueable info for your board

None of this exists.

3. modify arch/<architecture>/Makefile:

   - add board-$(MACH_*) = <your board_dir>


This does not exist

And my board will not show up in the menu config.

Also I am finding it difficult to locate where I set things like flash
size, ram size, etc...  u-boot has a much simpler (if not less documented)
layout when it came to boards.  Alas I can not use u-boot, because of the
nand flash limitations, and thus why I am attempting to use barebox.

And finally there seems to be some confusiton both in the code and the
documentation about the difference between a board and a machine.  What is
the difference?

I'm sorry that there is a lot here, but I can not find the proper
documentation to answer these questions.


Also, for those that are curious, or can help me get around this issue.  I
attempting to get this going on a board with an mx27 booted from NAND
flash, so I believe I have to use the PBL option to setup and copy out of
nand to do the real booting.  If there is any advice on this, I would
appreciate it.  I have no other bootloader, only bare metal and a JTAG
device.


thank you.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
