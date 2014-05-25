Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f180.google.com ([209.85.217.180])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WoV1j-0007iP-4M
 for barebox@lists.infradead.org; Sun, 25 May 2014 09:47:35 +0000
Received: by mail-lb0-f180.google.com with SMTP id p9so3560271lbv.25
 for <barebox@lists.infradead.org>; Sun, 25 May 2014 02:47:08 -0700 (PDT)
Date: Sun, 25 May 2014 13:58:19 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140525135819.ebfd62810f698e8f13dbf558@gmail.com>
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
Subject: [RFC] [WIP] incorporate picotcp into barebox: a small demo
To: barebox@lists.infradead.org
Cc: Kristof Roelants <kristof.roelants@tass.be>, Daniele Lacamera <daniele.lacamera@tass.be>, Daniele Lacamera <mlists@danielinux.net>, Sam Van Den Berge <sam.van.den.berge@tass.be>

Hi all!

I have adapted barebox for work with picotcp network stack.

Picotcp is not a small piece of code so I can't easyly send
a patch to the barebox maillist. I have put results of my work on github,
see mini-howto below.

This picotcp integration is a dirty hack in many ways.
We need additional effors for adapting barebox and picotcp
for more easy joint operation.

Please express your opinion on my work. I'm awaiting your comments.

Many thanks to Alessandro Rubini for his pointing on picotcp!


barebox picotcp mini-howto
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D

1. clone and build sandbox barebox

  $ git clone https://github.com/frantony/barebox -b picotcp.20140525
  ...
  $ make sandbox_defconfig
  ...
  $ make

2.  run sandbox barebox

  # ./barebox

3.  Inside sandbox barebox initialize the 'eth' network interface
and check routes:

  barebox@barebox sandbox:/ ifconfig eth 10.0.0.1 255.255.255.0
  Assigned ipv4 10.0.0.1 to device eth
  barebox@barebox sandbox:/ route
  picotcp IPv4 routing table
  Destination     Gateway         Genmask         Metric Iface
  10.0.0.0        0.0.0.0         255.255.255.0   1      eth

4. on host initialize the 'barebox' tap interface (you may need
root account for this and bellow operations on host):

  # ifconfig barebox 10.0.0.2

and check barebox accessibility:

  # ping -c 1 10.0.0.1
  PING 10.0.0.1 (10.0.0.1) 56(84) bytes of data.
  64 bytes from 10.0.0.1: icmp_seq=3D1 ttl=3D64 time=3D0.526 ms

  --- 10.0.0.1 ping statistics ---
  1 packets transmitted, 1 received, 0% packet loss, time 0ms
  rtt min/avg/max/mdev =3D 0.526/0.526/0.526/0.000 ms

5. inside sandbox barebox check host accessibility.
Note: use picoping, not ping!

  barebox@barebox sandbox:/ picoping 10.0.0.2
  barebox@barebox sandbox:/ 48 bytes from 10.0.0.2: icmp_req=3D1 ttl=3D64 t=
ime=3D304 ms
  48 bytes from 10.0.0.2: icmp_req=3D2 ttl=3D64 time=3D0 ms
  48 bytes from 10.0.0.2: icmp_req=3D3 ttl=3D64 time=3D0 ms
  48 bytes from 10.0.0.2: icmp_req=3D4 ttl=3D64 time=3D0 ms
  48 bytes from 10.0.0.2: icmp_req=3D5 ttl=3D64 time=3D0 ms
  48 bytes from 10.0.0.2: icmp_req=3D6 ttl=3D64 time=3D0 ms
  48 bytes from 10.0.0.2: icmp_req=3D7 ttl=3D64 time=3D0 ms
  48 bytes from 10.0.0.2: icmp_req=3D8 ttl=3D64 time=3D0 ms
  48 bytes from 10.0.0.2: icmp_req=3D9 ttl=3D64 time=3D0 ms
  48 bytes from 10.0.0.2: icmp_req=3D10 ttl=3D64 time=3D0 ms

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
