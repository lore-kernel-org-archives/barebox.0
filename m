Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fo0sN-0006wK-B3
 for barebox@lists.infradead.org; Fri, 10 Aug 2018 06:26:21 +0000
Date: Fri, 10 Aug 2018 08:26:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180810062607.4qvynrczohj6x5rd@pengutronix.de>
References: <20180809095146.GA26594@ravnborg.org>
 <6rzhxvhk7p.fsf@pengutronix.de>
 <20180809111433.GA20330@ravnborg.org>
 <6ry3dfhgb0.fsf@pengutronix.de>
 <20180810060804.GA11096@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180810060804.GA11096@ravnborg.org>
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
Subject: Re: NFS boot - could not open /.tftp_tmp_path
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Aug 10, 2018 at 08:08:04AM +0200, Sam Ravnborg wrote:
> Hi Ulrich.
> > > Hi Ulrich
> > >> > Then when I try to boot from nfs I get the following output:
> > >> >
> > >> > barebox: boot nfs://192.168.86.201/nfsboot/arm9/
> > >> 
> > >> you already have the slash separating the host part of the URL and the
> > >> path part, but you missed the slash that is needed at the beginning of
> > >> the absolute path:
> > >> 
> > >>   boot nfs://192.168.86.201//nfsboot/arm9/
> > >> 
> > >> (with a two slashes) should hopefully do the trick.
> > >
> > > Hmm, no luck:
> > > barebox:/ boot nfs://192.168.86.201//nfsboot/arm9/
> > > eth0: DHCP client bound to address 192.168.86.20
> > > T T T T T T T T T T T T T T could not open /.tftp_tmp_path/zImage-at91sam9263ekt
> > >
> > > barebox:/ boot nfs://192.168.86.201//nfsboot/arm9
> > > eth0: DHCP client bound to address 192.168.86.20
> > > T T T T T T T T T T T T T T could not open /.tftp_tmp_path/zImage-at91sam9263ekt
> > >
> > > I will try to add some debugging and see whats going on.
> > 
> > Do you see anything of interest in the server's log?
> 
> 
> I got it working, using a slighly different approach.
> 
> I now have:
> 
> barebox: cat /env/init/automount
> #!/bin/sh
> 
> mkdir -p /mnt/nfs
> automount -d /mnt/nfs 'ifup -a && mount -t nfs 192.168.86.201:/nfsboot/arm9 /mnt/nfs'
> 
> barebox: cat /env/boot/nfs
> #!/bin/sh
> 
> nfsdir="/mnt/nfs"
> 
> global.bootm.image="${nfsdir}/boot/zImage"
> 
> nfsroot="192.168.86.201:/nfsboot/arm9"
> 
> global.linux.bootargs.base="rw rootwait init=/usr/bin/system-init.sh"
> global.linux.bootargs.dyn.root="root=/dev/nfs nfsroot=${nfsroot},v3,tcp"
> 
> 
> Then I can nfsboot my kernel using "boot nfs"
> 
> The solution has my NFS server IP IP hardcoded as the NFS server IP
> is not the same as the DHCP IP, so no way to find it automagically.
> 
> In the linux kernel I also selected NFS + NFS boot to make it work.
> 
> With the above I have something that do what I need - good!
> 
> Thanks for the help/hints.

Nevertheless I would be interested why the original approach did not
work since that would be the preferred one.

Do you have bootloader spec enabled in barebox and do you also have a
bootloader spec config file on the root NFS?

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
