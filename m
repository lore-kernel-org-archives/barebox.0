Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail1.g1.pair.com ([66.39.3.162])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WNv13-00024u-Au
 for barebox@lists.infradead.org; Thu, 13 Mar 2014 02:05:02 +0000
Received: from Edmond.local (unknown [210.23.18.184])
 by mail1.g1.pair.com (Postfix) with ESMTPSA id 12BC8288EE
 for <barebox@lists.infradead.org>; Wed, 12 Mar 2014 22:04:38 -0400 (EDT)
Message-ID: <53211233.5070806@kosagi.com>
Date: Thu, 13 Mar 2014 10:04:35 +0800
From: Sean Cross <xobs@kosagi.com>
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
Subject: Porting barebox to Novena: misc questions
To: barebox@lists.infradead.org

Hi,

I've finally managed to get U-Boot's SPL to configure DDR3 and load
barebox off of a FAT partition on an i.MX6DL.  I also have a barebox
build with most features turned on, and I'm running into a number of
problems.  barebox is able to load a zImage off of the FAT partition,
set up ATAGs, and jump to it.  So I have the basics done.  But there are
lots of little things that aren't working.

When I boot without an Ethernet cable plugged in, the "timeout" command
takes a very long time to complete.  It generally freezes at "Hit any
key to stop autoboot:  3" and tends to ignore input for around ten
seconds.  How can I prevent this from happening, short of compiling out
FEC support?

The "usb" command just hangs the system.  It should at least detect the
other ASIX Ethernet port.  I have &usbh1 configured identically to
sabrelite.  Is there something else I need to configure?

The "usbserial" command returns "usbserial: No such device".  Like usb,
I have &usbotg configured the same as sabrelite.  It doesn't work with
dr_mode set to either "host" or "otg".

How can I pass the correct ram size to Linux?  The comment on
barebox_arm_entry() notes that "[memsize] doesn't necessarily have to be
the full SDRAM", and indeed I notice that barebox hangs if I pass it the
full 3840 MB passed from U-Boot.  So I'm currently limiting it to 1GB in
my start_imx6dl_kosagi_novena_6dl routine.  Do I need to somehow add the
remainder as another bank somewhere?  Or modify the bank size in my
kosagi_novena_init() in board.c?

Finally, I was unable to get barebox to boot with MMU support.  For some
reason it kept trying to allocate memory just outside of allocated RAM.
 Is there any benefit to running with the MMU enabled on i.MX6?


Sean

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
