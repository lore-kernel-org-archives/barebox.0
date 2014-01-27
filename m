Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from plane.gmane.org ([80.91.229.3])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W7vwj-0005GD-BI
 for barebox@lists.infradead.org; Mon, 27 Jan 2014 23:50:30 +0000
Received: from list by plane.gmane.org with local (Exim 4.69)
 (envelope-from <gcbb-barebox@m.gmane.org>) id 1W7vwJ-0001FV-TQ
 for barebox@lists.infradead.org; Tue, 28 Jan 2014 00:50:04 +0100
Received: from static-82-85-234-51.clienti.tiscali.it ([82.85.234.51])
 by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
 id 1AlnuQ-0007hv-00
 for <barebox@lists.infradead.org>; Tue, 28 Jan 2014 00:50:03 +0100
Received: from cristiano_dealti by static-82-85-234-51.clienti.tiscali.it with
 local (Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
 for <barebox@lists.infradead.org>; Tue, 28 Jan 2014 00:50:03 +0100
From: Cristiano De Alti <cristiano_dealti@hotmail.com>
Date: Mon, 27 Jan 2014 23:46:12 +0000 (UTC)
Message-ID: <loom.20140128T004554-598@post.gmane.org>
Mime-Version: 1.0
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
Subject: i.mx21 ads nor flash
To: barebox@lists.infradead.org

Hi,
  I'm trying to revive an old i.mx21 ads board.
I've flashed barebox-2014.01.0 and the board boots.
Ethernet works and I'm able to boot Linux via tftp.
Adding CONFIG_NAND=y in the .config enables the 64MB NAND flash (why is it
not set in the board defconfig?) and I can erase it.
Nice work, Barebox!
My question is about the NOR flash. The board has two banks of 8Mx16bit NOR
flash paralleled. So the data bus width is 32 bit and the capacity is 32MB.
The NOR is detected by Barebox:

cfi_flash cfi_flash0: found cfi flash at c8000000, size 33554432

and I can see the /dev/nor0 device:

crw-------   33554432 /dev/nor0

I can erase it but only up to 16M. For example, this works:

erase /dev/nor0 10M+6M

Anyway if I try to erase an area above 16M, e.g.:

erase /dev/nor0 16M+1k

or the whole device, e.g.:

erase /dev/nor0

the command fails with:

erase: Invalid argument

I've added printouts and the area I want to delete is past the last eraseregion.

So I wonder how the units of the erase command are meant. If the unit is
byte, the command:

erase /dev/nor0 0+16M

should obviously mean "erase the first half of the whole flash".
But then the above commands shouldn't fail.

Alternatively, given that there are 2 16MB banks in parallel it could also
mean "erase 16MB in each bank" i.e. the whole flash.

I'm not sure what's happening.

Ciao,
  Cristiano


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
