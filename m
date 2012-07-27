Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SufyJ-000856-BS
 for barebox@lists.infradead.org; Fri, 27 Jul 2012 08:32:32 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 27 Jul 2012 10:31:53 +0200
References: <002601cd6b08$37498d50$a5dca7f0$@cpdesign.com.au>
 <1440381.IzydBDPxna@dev1> <20120727075333.GV30009@pengutronix.de>
In-Reply-To: <20120727075333.GV30009@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201207271031.53984.jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: RFC: How to setup and handle NAND flashes in Barebox
To: barebox@lists.infradead.org
Cc: Wolfram Sang <wsa@pengutronix.de>

Sascha Hauer wrote:
> On Fri, Jul 27, 2012 at 11:24:48AM +1000, Marc Reilly wrote:
> > Thanks for your ideas.
> >
> > I managed to clear the BBT, it was a bit of a hack... the saga is below
> > for anyone who runs into similar problem.
> >
> > On Thursday, July 26, 2012 11:27:48 AM Juergen Beisert wrote:
> > > The flash blocks which contains the "bad block table" are protected by
> > > the "bad block table" aware MTD layer.
> > >
> > > So, the ugly way: run a bootloader which does not use the in-flash bad
> > > block table. Then the tables are regular blocks in the flash and can be
> > > erased. After that run again the bad block table aware bootloader and
> > > it will re-create the in-flash table. But be careful: In this case the
> > > generic functions scans all blocks in the NAND to collect the bad block
> > > markers in each NAND block's OOB. If this information is already
> > > destroyed somehow, this solution does not help.
> >
> > Recompiling barebox with bbt support disabled stopped the all the bad
> > block messages, however erasing the nand didn't clear the BBT for
> > subsequent reboots...
> > The issue was that the erase commands and functions skip erasing bad
> > blocks, and the blocks that held the actual BBT were being considered
> > bad, so they weren't getting erased. After commenting out calls to
> > nand_block_checkbad() in nand_write.c and block_isbad() in
> > mtd_erase()/core.c I was able to manually erase the blocks. (erasing
> > actual bad blocks results in I/O error) Next restart of barebox the BBT
> > was regenerated with the two actual bad blocks.
> >
> > After all that, I noticed imx_low_erase() in nand_imx.c. Probably would
> > have been easier to make up a command around that.
>
> This problem comes up regularly. I remember Wolfram implemented a nand
> 'scrub' command. He was working on i.MX28. I don't know wether his
> command was i.MX28 specific, but it would be nice to have such a command
> around.

Just an idea:

I think we need something like a "NAND handling environment". For example the 
MTD generates a in-flash bad block table without any interaction. That might 
be a nice feature, but only when:

 - the factory bad block markers are still intact
 - the regular NAND driver can read the factory bad block markers (the i.MX
   driver for example cannot)
 - the flash is more or less untouched yet

Whenever one of these dependencies are not valid (anymore), we are in trouble 
with automatically generation of the in-flash bad block table.
Use cases are for example: general development on NAND drivers, a Linux driver 
that crashes the NAND somehow or a different bootloader/operation system that 
uses its own ways to handle and mark bad blocks.
For these use-cases we need a different approach: something we can do 
manually.

 - a 'test' command that checks if the factory bad block markers seems still
   intact (or not). This command should have some parameters where you can
   describe the expected OOB layout to be able to check for various ways to
   mark bad blocks
 - a 'list' command which lists all the currently known bad blocks (from
   whatever source, in-flash or in-ram BBT or freshly read from the OOB area)
   This list could be stored somewhere (like the "bad sector table" in the
   early days of hard disks). At least this would help later on to still use a
   NAND memory where all the OOB based bad block markers are lost. For example
   with my S3C6410 CPU the internal ROM routines force me to write the
   checksums into a position in the OOB where most of the manufacturers 
   stores the factory bad block info. So, there is no simple way later
   on to distinguish checksums from bad block markers.
 - a 'create' command for the in-flash BBT. This command can use the the
   result of the 'list' command or should accept a list of *known' bad blocks
   manually entered

With these tools we could instruct Barebox to use an in-flash BBT only if it 
already exists. If not, it should fall back to OOB scan, and should not write 
an in-flash BBT with the collected information.
A user then can run the various tools to get an idea if the NAND is intact (or 
not) and the 'create' command would then write a correct in-flash BBT (with 
the help of the other collecting commands) to be used by Barebox itself and 
Linux. 

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
