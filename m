Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo4.mail-out.ovh.net ([178.33.248.196]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOBVN-0004xJ-M6
 for barebox@lists.infradead.org; Thu, 13 Mar 2014 19:41:27 +0000
Received: from mail639.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 3DAA8FFA0E4
 for <barebox@lists.infradead.org>; Thu, 13 Mar 2014 20:41:19 +0100 (CET)
Date: Thu, 13 Mar 2014 20:42:52 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20140313194252.GB6478@ns203013.ovh.net>
References: <53211233.5070806@kosagi.com>
 <20140313073817.GR17250@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
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

On 08:38 Thu 13 Mar     , Sascha Hauer wrote:
> Hi Sean,
> 
> On Thu, Mar 13, 2014 at 10:04:35AM +0800, Sean Cross wrote:
> > Hi,
> > 
> > I've finally managed to get U-Boot's SPL to configure DDR3 and load
> > barebox off of a FAT partition on an i.MX6DL.  I also have a barebox
> > build with most features turned on, and I'm running into a number of
> > problems.  barebox is able to load a zImage off of the FAT partition,
> > set up ATAGs, and jump to it.  So I have the basics done.  But there are
> > lots of little things that aren't working.
> > 
> > When I boot without an Ethernet cable plugged in, the "timeout" command
> > takes a very long time to complete.  It generally freezes at "Hit any
> > key to stop autoboot:  3" and tends to ignore input for around ten
> > seconds.  How can I prevent this from happening, short of compiling out
> > FEC support?
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

I get the same issue on Calao USB keys

this is quite anoying

can we fix it

Best Regards,
J.
> It indeed takes some seconds until we are sure that the link is down.
> That timeout could be reduced, but we must give the phy some time to
> bring up the link.
> 
> Or does this happen when you are not trying to boot from network at all?
> That shouldn't happen. If it does, maybe some automount command triggers
> network accesses.
> 
> > 
> > The "usb" command just hangs the system.  It should at least detect the
> > other ASIX Ethernet port.  I have &usbh1 configured identically to
> > sabrelite.  Is there something else I need to configure?
> 
> This usually means the phys are not configured correctly. Are you
> probing from devicetree?
> 
> > 
> > The "usbserial" command returns "usbserial: No such device".  Like usb,
> > I have &usbotg configured the same as sabrelite.  It doesn't work with
> > dr_mode set to either "host" or "otg".
> 
> Ok, from devicetree it seems. I can say that there shouldn't be any bugs
> in the common usb code preventing your devices from being probed. It
> normally boils down to some usbmisc register setting being wrong.
> 
> > 
> > How can I pass the correct ram size to Linux?  The comment on
> > barebox_arm_entry() notes that "[memsize] doesn't necessarily have to be
> > the full SDRAM", and indeed I notice that barebox hangs if I pass it the
> > full 3840 MB passed from U-Boot.  So I'm currently limiting it to 1GB in
> > my start_imx6dl_kosagi_novena_6dl routine.  Do I need to somehow add the
> > remainder as another bank somewhere?  Or modify the bank size in my
> > kosagi_novena_init() in board.c?
> 
> If you probe from devicetree the correct amount of memory is taken from
> there. If that doesn't work (dynamic amount of memory for example) you
> can set the memory in the devicetree to 0 and call arm_add_mem_device
> instead.
> 
> > 
> > Finally, I was unable to get barebox to boot with MMU support.  For some
> > reason it kept trying to allocate memory just outside of allocated RAM.
> 
> This is related to the wrong memory setup. That should be solved when
> you get that straight.
> 
> >  Is there any benefit to running with the MMU enabled on i.MX6?
> 
> Definitely, yes. barebox runs much faster with MMU enabled.
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
