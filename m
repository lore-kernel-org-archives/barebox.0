Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SufMr-0004aZ-FI
 for barebox@lists.infradead.org; Fri, 27 Jul 2012 07:53:52 +0000
Date: Fri, 27 Jul 2012 09:53:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120727075333.GV30009@pengutronix.de>
References: <002601cd6b08$37498d50$a5dca7f0$@cpdesign.com.au>
 <201207261127.48919.jbe@pengutronix.de> <1440381.IzydBDPxna@dev1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1440381.IzydBDPxna@dev1>
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
Subject: Re: Way to clear nand bad block table
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org, Juergen Beisert <jbe@pengutronix.de>, Wolfram Sang <wsa@pengutronix.de>

On Fri, Jul 27, 2012 at 11:24:48AM +1000, Marc Reilly wrote:
> Hi Juergen,
> 
> Thanks for your ideas.
> 
> I managed to clear the BBT, it was a bit of a hack... the saga is below for 
> anyone who runs into similar problem.
> 
> On Thursday, July 26, 2012 11:27:48 AM Juergen Beisert wrote:
> > The flash blocks which contains the "bad block table" are protected by
> > the "bad block table" aware MTD layer.
> > 
> > So, the ugly way: run a bootloader which does not use the in-flash bad block
> > table. Then the tables are regular blocks in the flash and can be erased.
> > After that run again the bad block table aware bootloader and it will
> > re-create the in-flash table. But be careful: In this case the generic
> > functions scans all blocks in the NAND to collect the bad block markers in
> > each NAND block's OOB. If this information is already destroyed somehow,
> > this solution does not help.
> 
> Recompiling barebox with bbt support disabled stopped the all the bad block 
> messages, however erasing the nand didn't clear the BBT for subsequent 
> reboots...
> The issue was that the erase commands and functions skip erasing bad blocks, 
> and the blocks that held the actual BBT were being considered bad, so they 
> weren't getting erased. After commenting out calls to nand_block_checkbad() in 
> nand_write.c and block_isbad() in mtd_erase()/core.c I was able to manually 
> erase the blocks. (erasing actual bad blocks results in I/O error)
> Next restart of barebox the BBT was regenerated with the two actual bad 
> blocks.
> 
> After all that, I noticed imx_low_erase() in nand_imx.c. Probably would have 
> been easier to make up a command around that.

This problem comes up regularly. I remember Wolfram implemented a nand
'scrub' command. He was working on i.MX28. I don't know wether his
command was i.MX28 specific, but it would be nice to have such a command
around.

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
