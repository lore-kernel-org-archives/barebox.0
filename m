Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f42.google.com ([209.85.160.42])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TuEBI-0005Op-Hg
 for barebox@lists.infradead.org; Sun, 13 Jan 2013 03:24:21 +0000
Received: by mail-pb0-f42.google.com with SMTP id rp2so1597670pbb.29
 for <barebox@lists.infradead.org>; Sat, 12 Jan 2013 19:24:18 -0800 (PST)
Message-ID: <50F228E8.8050000@acm.org>
Date: Sat, 12 Jan 2013 19:24:24 -0800
From: "Paul B. Henson" <henson@acm.org>
MIME-Version: 1.0
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
Subject: imx23evk NAND support
To: barebox@lists.infradead.org

I'm working with a freescale i.MX23EVK board prototyping a project that 
is going to need to boot from NAND. I'm trying to get barebox  installed 
on the NAND chip on this board, with the next step being getting a linux 
kernel and filesystem on NAND as well.

I've compiled barebox from git as of today, and successfully booted it 
from SD and USB, but have been unable to get the NAND device recognized.

Booting from SD with the mci driver enabled:


devices:
`---- platform
      `---- stm_serial0
           `---- cs0
      `---- mem0
           `---- 0x00000000-0x01ffffff: /dev/ram0
      `---- mem1
           `---- 0x00000000-0xfffffffe: /dev/mem
      `---- mxs_mci0
           `---- mci0
`---- fs
      `---- ramfs0
      `---- devfs0
`---- global

drivers:
stm_serial
ramfs
devfs
mxs_nand
mci
mxs_mci
mem


Booting from SD without the mci driver:

devices:
`---- platform
      `---- stm_serial0
           `---- cs0
      `---- mem0
           `---- 0x00000000-0x01ffffff: /dev/ram0
      `---- mem1
           `---- 0x00000000-0xfffffffe: /dev/mem
      `---- mxs_mci0
`---- fs
      `---- ramfs0
      `---- devfs0
`---- global

drivers:
stm_serial
ramfs
devfs
mxs_nand
mem


In both cases, it seems to find the mci device, but not the nand device. 
(On a side note, running mci0.probe=1 with the mci driver enabled 
appears to completely lock up the board).

My understanding is that the SD card and the NAND chip cannot be used at 
the same time due to a pin conflict. Considering the possibility that 
perhaps the NAND cannot be accessed if booting from SD, I tried booting 
via USB, with the same result:

devices:
`---- platform
      `---- stm_serial0
           `---- cs0
      `---- mem0
           `---- 0x00000000-0x01ffffff: /dev/ram0
      `---- mem1
           `---- 0x00000000-0xfffffffe: /dev/mem
      `---- mxs_mci0
`---- fs
      `---- ramfs0
      `---- devfs0
`---- global

drivers:
stm_serial
ramfs
devfs
mxs_nand
mem

The SD card device is found, but not the nand device.

Am I missing something? Given its inclusion in barebox, I'm assuming 
*somebody* has gotten the i.mx23 NAND driver working :). Any assistance 
much appreciated, thanks.

I wonder why they didn't hook the SD interface up to SSP1 rather than 
SSP2 to avoid the NAND conflict. It looks like you can't use the SD 
device and the ethernet device simultaneously either :(.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
