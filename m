Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x234.google.com ([2a00:1450:4010:c04::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z7doe-00027f-N8
 for barebox@lists.infradead.org; Wed, 24 Jun 2015 06:05:45 +0000
Received: by lbnk3 with SMTP id k3so19864296lbn.1
 for <barebox@lists.infradead.org>; Tue, 23 Jun 2015 23:05:21 -0700 (PDT)
Date: Wed, 24 Jun 2015 09:11:47 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150624091147.c4b5aac4be4a90b23c585cc7@gmail.com>
In-Reply-To: <20150622060022.GC6325@pengutronix.de>
References: <20150615011343.40eddc832febd97ade569cbb@gmail.com>
 <20150617092857.GJ6325@pengutronix.de>
 <20150620140912.b8435aff9de4a645f5d4639e@gmail.com>
 <20150622060022.GC6325@pengutronix.de>
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
Subject: Re: barebox picotcp integration (2015.06.14)
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

On Mon, 22 Jun 2015 08:00:22 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Sat, Jun 20, 2015 at 02:09:12PM +0300, Antony Pavlov wrote:
> > On Wed, 17 Jun 2015 11:28:57 +0200
> > Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > =

> > > On Mon, Jun 15, 2015 at 01:13:43AM +0300, Antony Pavlov wrote:
> > > > Hi!
> > > > =

> > > > I have just published latest picotcp-enabled barebox.
> > > > Please see my 20150614.picotcp branch in my github barebox repo
> > > > (https://github.com/frantony/barebox/tree/20150614.picotcp).
> > > > =

> > ...
> > > =

> > > Why are you using the picotcp tftp implementation? picotcp surely
> > > supports sending/receiving udp packets, right? Wouldn't it be a good
> > > first step to replace the barebox udp API with the one picotcp provid=
es?
> > > I mean I would expect that you replace only the network stack, not the
> > > network stack including the applications. If at some point we decide
> > > that the tftp implementation in picotcp is better than the one in
> > > barebox that would be the time to switch it.
> > > =

> > =

> > I have reworked tftp support: now barebox tftp implementation is used o=
n top
> > of picotcp udp/ip stack and works 2 times slower than original u-boot s=
tack-based
> > implementation (I have tested it with sandbox arch).
> =

> Do you have an idea why this is slower? I had a quick look into it and
> found nothing obvious.
> =


I have added nfs-over-picotcp support, please see https://github.com/franto=
ny/barebox/tree/20150624.picotcp

I use very simple benchmarks.
I have sandbox barebox (192.168.1.2) and nfs- and tftp- servers on the same=
 host (192.168.1.1).
I copy 16MiB (16777216 bytes) file from server to sandbox barebox over netw=
ork several times.
I use time command inside sandox barebox for computing transfer time.

barebox@barebox sandbox:/ eth0.ipaddr=3D192.168.1.2
barebox@barebox sandbox:/ mount -t tftp 192.168.1.1 /mnt
...
barebox@barebox sandbox:/ time cp /mnt/16M .
time: 546ms

Here is typical transfer time values:

+--------+--------------+--------------+
|        |   U-boot     |   picotcp    |
|        |    stack     |    stack     |
+--------+--------------+--------------+
|        |              |              |
|  tftp  |    546ms     |    859ms     |
|        |              |              |
+--------+--------------+--------------+
|        |              |              |
|  nfs   |   1037ms     |   1393ms     |
|        |              |              |
+--------+--------------+--------------+

There are some rather simple possibilities to slighly improve picotcp-bareb=
ox performance:

  * drop extra memory copy;
  * drop extra pico_tick() calls (is_timeout() calls poller_call(), so ther=
e is no need
                                  to call poller_call() explicitly in nfs/t=
ftp code);
  * there is an issue with sustained tftp small file copy. E.g.

         barebox@barebox sandbox:/ ifconfig eth 192.168.1.2 255.255.255.0
         Assigned ipv4 192.168.1.2 to device eth
         barebox@barebox sandbox:/ mount -t tftp 192.168.1.1 /mnt
         barebox@barebox sandbox:/ while true; do time cp /mnt/1M . ; done
         ...
         Warning: I have 122 timers
         Warning: I have 121 timers
         time: 48ms
         Warning: I have 122 timers
         Warning: I have 121 timers
         time: 53ms
         Warning: I have 122 timers
         Warning: I have 121 timers
         time: 54ms

Just now picotcp-enabled barebox uses

   * ping from picotcp;
   * dhcp from picotcp;
   * no DNS support.

Sascha! Do you think I should use barebox' own dhcp and ping realisation or=
 keep one from picotcp?
Should I use DNS from barebox (over picotcp) or picotcp DNS realization?

--
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
