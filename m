Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aq8TQ-00089I-PY
 for barebox@lists.infradead.org; Wed, 13 Apr 2016 00:16:02 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Wed, 13 Apr 2016 00:15:36 +0000
Message-ID: <1460506588.9103.26.camel@rtred1test09.kymeta.local>
Content-Language: en-US
Content-ID: <040C2C28290ADF4FB993462E60F08E86@kymetacorp.com>
MIME-Version: 1.0
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
Subject: Barebox on small memory systems
To: barebox <barebox@lists.infradead.org>

I'm considering porting barebox to Altera's Arria10 SoC.  A key
difference from the existing Cyclone V support is that the SoC SDRAM
controller is part of the FPGA scanchain.  Which means that in order to
use SDRAM, the bootloader must load a file much larger than the maximum
bootloader size into the FPGA.

With Cyclone V the code needed to use SDRAM is a few kB, fits inside the
60 kB maximum bootloader size, and runs as part of the barebox PBL.  It
seems almost all other ARM SoC's also have SDRAM init code that is small
enough to fit inside barebox.  With Arria 10 the maximum bootloader size
is increased to 204 kB but the code/data needed to use SDRAM is several
MB.  So barebox will need to load it out of flash itself.

In order to get an image file out of flash and programmed into the FPGA,
it's useful to have a number of barebox drivers, like the MCI system,
partition table parsing, FAT filesystem, etc.  Basically getting the
full barebox (with a minimal set of drivers, e.g. no shell) running
without having SDRAM access.

So can one run barebox in 256 Kb?

A minimal config of a non-PBL non-relocatable barebox with the necessary
features is only about 54 Kb.  So that certainly fits.  But that doesn't
include stack, heap, bss, etc.  Can a stripped down barebox actually run
in 256 Kb and mount a FAT filesystem to get a next stage bootloader?
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
