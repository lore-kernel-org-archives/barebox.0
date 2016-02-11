Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aTql9-0002vR-2c
 for barebox@lists.infradead.org; Thu, 11 Feb 2016 12:54:12 +0000
Date: Thu, 11 Feb 2016 13:53:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160211125348.GQ4118@pengutronix.de>
References: <1455098857-25339-1-git-send-email-r.schwebel@pengutronix.de>
 <1455098857-25339-4-git-send-email-r.schwebel@pengutronix.de>
 <20160210101506.GC3432@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160210101506.GC3432@pengutronix.de>
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
Subject: Re: [PATCH 4/4] Documentation: networking: improve docs
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Feb 10, 2016 at 11:15:06AM +0100, Steffen Trumtrar wrote:
> On Wed, Feb 10, 2016 at 11:07:37AM +0100, Robert Schwebel wrote:
> > Add the following improvements:
> > 
> > - clarify commands vs. filesystems for network file transport protocols
> > - Beautify links with prosa text instead of standard headlines
> > - adapt 'devinfo eth0' parameter output to current code
> > - improve console texts
> > - add docs for netconsole.active
> > 
> > Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
> > ---
> >  Documentation/user/networking.rst | 44 ++++++++++++++++++++++++---------------
> >  1 file changed, 27 insertions(+), 17 deletions(-)
> > 
> > diff --git a/Documentation/user/networking.rst b/Documentation/user/networking.rst
> > index 6eeb93d..c1b1857 100644
> > --- a/Documentation/user/networking.rst
> > +++ b/Documentation/user/networking.rst
> > @@ -1,26 +1,25 @@
> >  Networking
> >  ==========
> >  
> > -barebox has IPv4 networking support. Several protocols such as
> > -:ref:`command_dhcp`, :ref:`filesystems_nfs`, :ref:`command_tftp` are
> > -supported.
> > +barebox has IPv4 networking support. Several protocols such as :ref:`DHCP
> > +<command_dhcp>`, NFS and TFTP are supported.
> >  
> >  Network configuration
> >  ---------------------
> >  
> >  The first step for networking is configuring the network device. The network
> >  device is usually ``eth0``. The current configuration can be viewed with the
> > -:ref:`command_devinfo` command:
> > +:ref:`devinfo <command_devinfo>` command:
> >  
> >  .. code-block:: sh
> >  
> >    barebox:/ devinfo eth0
> >    Parameters:
> > -    ipaddr: 192.168.23.197
> > -    serverip: 192.168.23.1
> > +    ethaddr: 00:1c:49:01:03:4b
> >      gateway: 192.168.23.1
> > +    ipaddr: 192.168.23.197
> >      netmask: 255.255.0.0
> > -    ethaddr: 00:1c:49:01:03:4b
> > +    serverip: 192.168.23.1
> >  
> >  The configuration can be changed on the command line with:
> >  
> > @@ -28,19 +27,21 @@ The configuration can be changed on the command line with:
> >  
> >    eth0.ipaddr=172.0.0.10
> >  
> > -The :ref:`command_dhcp` command will change the settings based on the answer
> > +The :ref:`dhcp command <command_dhcp>` will change the settings based on the answer
> >  from the DHCP server.
> >  
> >  This low-level configuration of the network interface is often not necessary. Normally
> >  the network settings should be edited in ``/env/network/eth0``, then the network interface
> > -can be brought up using the :ref:`command_ifup` command.
> > +can be brought up using the :ref:`ifup command <command_ifup>`.
> >  
> >  Network filesystems
> >  -------------------
> >  
> > -barebox supports NFS and TFTP as filesystem implementations. See :ref:`filesystems_nfs`
> > -and :ref:`filesystems_tftp` for more information. After the network device has been
> > -brought up a network filesystem can be mounted with:
> > +barebox supports NFS and TFTP both with commands (:ref:`nfs <command_nfs>` and
> > +:ref:`tftp <command_tftp>`) and as filesystem implementations; see
> > +:ref:`filesystems_nfs` and :ref:`filesystems_tftp` for more information. After
> > +the network device has been brought up, a network filesystem can be mounted
> > +with:
> >  
> >  .. code-block:: sh
> >  
> > @@ -52,8 +53,9 @@ or
> >  
> >    mount -t nfs 192.168.2.1:/export none /mnt
> >  
> > -**NOTE:** this can often be hidden behind the :ref:`command_automount` command to make
> > -mounting transparent to the user.
> > +**NOTE:** The execution of the mount command can often be hidden behind the
> > +:ref:`automount command <command_automount>`, to make mounting transparent to
> > +the user.
> >  
> >  Network console
> >  ---------------
> > @@ -71,11 +73,19 @@ risks. It can be enabled using:
> >    netconsole.ip=192.168.23.2
> >    netconsole.active=ioe
> >  
> > -This will send UDP packets to 192.168.23.2 on port 6666. On 192.168.23.2 the
> > -scripts/netconsole script can be used to control barebox:
> > +This will send UDP packets to a PC with IP address 192.168.23.2 and port 6666.
> > +
> > +The ``netconsole.active`` parameter consists of the fields "input" (i),
> > +"output" (o) and "error" (e); if the fields are set, the respective channel is
> > +activated on the network console.
> > +
> > +On the PC side, the ``scripts/netconsole`` script can be used to remote control
> > +barebox:
> >  
> >  .. code-block:: sh
> >  
> >    scripts/netconsole <board IP> 6666
> >  
> > -The netconsole can be used just like any other console.
> > +The netconsole can be used just like any other console. Note, however, that the
> > +simple console protocol is is UDP based, so there is no guarantee about packet
> 			   ^^^^^

Fixed while applying.

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
