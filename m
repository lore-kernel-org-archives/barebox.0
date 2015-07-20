Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22e.google.com ([2a00:1450:4010:c03::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZH7c9-0002nz-KT
 for barebox@lists.infradead.org; Mon, 20 Jul 2015 09:44:02 +0000
Received: by laem6 with SMTP id m6so93610050lae.0
 for <barebox@lists.infradead.org>; Mon, 20 Jul 2015 02:43:38 -0700 (PDT)
Date: Mon, 20 Jul 2015 12:50:45 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150720125045.55f8ec8b4bdcbc39839c6054@gmail.com>
In-Reply-To: <20150720071013.GX18700@pengutronix.de>
References: <1437336443-8076-1-git-send-email-antonynpavlov@gmail.com>
 <20150720071013.GX18700@pengutronix.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC v2 00/16] barebox picotcp integration (2015.07.19)
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, 20 Jul 2015 09:10:13 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> Hi Antony,
> =

> On Sun, Jul 19, 2015 at 11:07:07PM +0300, Antony Pavlov wrote:
> > I have just published latest picotcp-enabled barebox.
> > Please see my 20150719.picotcp branch in my github barebox repo
> > (https://github.com/frantony/barebox/tree/20150719.picotcp).
> > =

> > This version is based on the latest barebox-next and picotcp v1.5.0
> > (there is also picotcp v1.5.1, but is has no interested
> > for barebox changes since v1.5.0).
> > =

> > =

> > Changes since 2015.07.15 (see http://lists.infradead.org/pipermail/bare=
box/2015-June/024174.html):
> > =

> >     * net: UDP API changed to satisfy the picotcp integration needs;
> >     * nfs, tftp and dns subsystems have no picotcp-related stuff anymor=
e.
> >     * netconsole works on top of picotcp with no additional changes.
> > =

> > =

> > Here are some notes:
> > =

> >   1. just now tftp/nfs file transfer on top of picotcp is slower than
> >      the same transfer on top of legacy network stack;
> > =

> >   2. there is no $<current network interface> anymore,
> >      so dhcp, tftp and ifup commands don't work on top of picotcp.
> >      The ifconfig command is used for network interfaces setup.
         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
This is the reason of your 'Ping timeout!!!'

> =

> I can't get this version to work. I have done:
> =

> # eth0.ethaddr=3D00:04:9f:01:b5:37
> # eth0.ipaddr=3D192.168.23.170
> # eth0.netmask=3D255.255.0.0
> # mount -t tftp 192.168.23.4 /mnt/
> # cp mnt/b b
> T T T T could not open mnt/b: Interrupted system call
> # picoping 192.168.23.4
>  ---- Ping timeout!!!
> PING 1 to 192.168.23.4: Error 1
> picoping: I/O error
> =

> Anything I have missed?

Please use ifconfig for interface setup. E.g.

ifconfig eth 192.168.23.170 255.255.0.0

I think it is possible to implement network interface setup via =

eth0.ipaddr and eth0.netmask manipulation (and even sacrifice ifconfig comm=
and).


Here is my picotcp test script

#!/bin/sh

SERVER=3D192.168.100.1
ifconfig eth 192.168.100.2 255.255.255.0

picoping $SERVER

net.nameserver=3D$SERVER
host barebox.example.com
host www.example.com

mount -t nfs $SERVER:/tftpboot /mnt
ls /mnt
md5sum /mnt/bash
umount /mnt
ls /mnt

mount -t tftp $SERVER /mnt
md5sum /mnt/test
umount /mnt

> I noticed that the MAC address is no longer set and the stack no longer
> checks for a link. I believe picotcp should call eth_send rather than
> invoking eth->send directly.

Hmmm, It looks like I have completely missed any MAC-address manipulation s=
tuff.

I see no means to use eth_send() from picotcp code at the moment.

Just now picotcp "parasitize" on legacy stack: for one phisical network int=
erface
there are the picotcp network interface and the legacy network interface at=
 the same time,
but only picotcp actualy operates (but some legacy network interface functi=
ons are not
realized).

The main problem is that barebox has the 'only one network interface is act=
ive' conception,
but picotcp can handle several active network interfaces at the same time.
In this patchseries the 'only one network interface is active' conception i=
s not used, so
some commands (dhcp, ifup) do not work.

Picotcp selects necessary network interface for eth->send() invoking after =
routing.
But if I just call eth_send() from picotcp a collision is possible.
E.g. if you have two network interfaces and picotcp want to use the 2nd for=
 packet sending
but barebox thinks that the 1st interface is active then eth_send() leads t=
o sending via the 1st one.

I think it is possible to impart current_active_interface
property to picotcp-barebox glue code for smooth integration.

I'll try to take into account your notes in the next picotcp integration pa=
tchseries;

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
