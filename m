Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail1.g1.pair.com ([66.39.3.162])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WO2jI-0003Cv-0W
 for barebox@lists.infradead.org; Thu, 13 Mar 2014 10:19:12 +0000
Message-ID: <53218604.6080702@kosagi.com>
Date: Thu, 13 Mar 2014 18:18:44 +0800
From: Sean Cross <xobs@kosagi.com>
MIME-Version: 1.0
References: <53211233.5070806@kosagi.com>
 <20140313073817.GR17250@pengutronix.de>
In-Reply-To: <20140313073817.GR17250@pengutronix.de>
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
Subject: Re: Porting barebox to Novena: misc questions
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 13/3/14 3:38 PM, Sascha Hauer wrote:
> Hi Sean,
> 
> On Thu, Mar 13, 2014 at 10:04:35AM +0800, Sean Cross wrote:
>> Hi,
>>
>> I've finally managed to get U-Boot's SPL to configure DDR3 and load
>> barebox off of a FAT partition on an i.MX6DL.  I also have a barebox
>> build with most features turned on, and I'm running into a number of
>> problems.  barebox is able to load a zImage off of the FAT partition,
>> set up ATAGs, and jump to it.  So I have the basics done.  But there are
>> lots of little things that aren't working.
>>
>> When I boot without an Ethernet cable plugged in, the "timeout" command
>> takes a very long time to complete.  It generally freezes at "Hit any
>> key to stop autoboot:  3" and tends to ignore input for around ten
>> seconds.  How can I prevent this from happening, short of compiling out
>> FEC support?
> 
> Are you trying to start from network without a cable plugged in? When I
> start from network without a cable I get:
> 
> running /env/bin/init...
> 
> Hit m for menu or any other key to stop autoboot:  1
> blspec: blspec_scan_directory: net loader/entries
> booting net
> dhcp failed: Network is down
> dhcp: Network is down
> 
> It indeed takes some seconds until we are sure that the link is down.
> That timeout could be reduced, but we must give the phy some time to
> bring up the link.
> 
> Or does this happen when you are not trying to boot from network at all?
> That shouldn't happen. If it does, maybe some automount command triggers
> network accesses.

This was caused by the default environment I imported.  It set
"ip=dhcp", which I guess caused it to try and obtain an address.  I've
set it to "ip=none" for now, and the problem has gone away.

>> The "usb" command just hangs the system.  It should at least detect the
>> other ASIX Ethernet port.  I have &usbh1 configured identically to
>> sabrelite.  Is there something else I need to configure?
> 
> This usually means the phys are not configured correctly. Are you
> probing from devicetree?

I am probing from devicetree.  I don't see phys mentioned anywhere
except in the imx6qdl.dtsi file, which means that in theory there
shouldn't be anything for me to modify.

>>
>> The "usbserial" command returns "usbserial: No such device".  Like usb,
>> I have &usbotg configured the same as sabrelite.  It doesn't work with
>> dr_mode set to either "host" or "otg".
> 
> Ok, from devicetree it seems. I can say that there shouldn't be any bugs
> in the common usb code preventing your devices from being probed. It
> normally boils down to some usbmisc register setting being wrong.

I don't see any usbmisc register mentioned in any of the board bringup
files.  The first time I run usbserial it says "No such device", and
subsequent runs cause it to print out "Invalid argument".

>> How can I pass the correct ram size to Linux?  The comment on
>> barebox_arm_entry() notes that "[memsize] doesn't necessarily have to be
>> the full SDRAM", and indeed I notice that barebox hangs if I pass it the
>> full 3840 MB passed from U-Boot.  So I'm currently limiting it to 1GB in
>> my start_imx6dl_kosagi_novena_6dl routine.  Do I need to somehow add the
>> remainder as another bank somewhere?  Or modify the bank size in my
>> kosagi_novena_init() in board.c?
> 
> If you probe from devicetree the correct amount of memory is taken from
> there. If that doesn't work (dynamic amount of memory for example) you
> can set the memory in the devicetree to 0 and call arm_add_mem_device
> instead.

Thank you.  Now I've got the full memory amount showing up.

>> Finally, I was unable to get barebox to boot with MMU support.  For some
>> reason it kept trying to allocate memory just outside of allocated RAM.
> 
> This is related to the wrong memory setup. That should be solved when
> you get that straight.
> 
>>  Is there any benefit to running with the MMU enabled on i.MX6?
> 
> Definitely, yes. barebox runs much faster with MMU enabled.

If I enable the MMU but disable early MMU, it hangs with this error:

Board: Kosagi i.MX6DL Novena Board
detected i.MX6 DualLite revision 1.1
ERROR: out of memory

[<5062e9ed>] (unwind_backtrace+0x1/0x74) from [<5061c525>] (panic+0x1d/0x34)
[<5061c525>] (panic+0x1d/0x34) from [<5061cc27>] (xmemalign+0xf/0x14)
[<5061cc27>] (xmemalign+0xf/0x14) from [<5062f687>] (mmu_init+0x16b/0x1f8)
[<5062f687>] (mmu_init+0x16b/0x1f8) from [<50600797>]
(start_barebox+0x1b/0xd0)
[<50600797>] (start_barebox+0x1b/0xd0) from [<5062efcd>] (__start+0x91/0xa4)
[<5062efcd>] (__start+0x91/0xa4) from [<50600005>]
(__bare_init_start+0x1/0xc)
### ERROR ### Please RESET the board ###

If I also enable early MMU, it hangs much much earlier.  When I dug into
it, it looked like it was trying to place a TTB just outside of the
allocated memory region, for some reason.

This is with me passing SZ_1G to barebox_arm_entry().  If I pass
something small like SZ_64M, it hangs completely.  If I instead pass it
SZ_128M, it works just fine, but of course the MMU still doesn't work.


Sean

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
